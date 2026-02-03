import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfViewerPage extends StatefulWidget {
  final String filePath;

  const PdfViewerPage({super.key, required this.filePath});

  @override
  State<PdfViewerPage> createState() => _PdfViewerPageState();
}

class _PdfViewerPageState extends State<PdfViewerPage> {
  final PdfViewerController _pdfViewerController = PdfViewerController();

  Uint8List? _pdfBytes;
  String? _errorMessage;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadPdfBytes();
  }

  Future<void> _loadPdfBytes() async {
    try {
      final file = File(widget.filePath);

      if (!await file.exists()) {
        setState(() {
          _errorMessage = 'The PDF file does not exist.';
          _isLoading = false;
        });
        return;
      }

      final bytes = await file.readAsBytes();

      if (bytes.isEmpty) {
        setState(() {
          _errorMessage = 'The PDF file is empty.';
          _isLoading = false;
        });
        return;
      }

      setState(() {
        _pdfBytes = bytes;
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _errorMessage = 'Error loading PDF: $e';
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Documentos Atlantica'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: _isLoading
          ? const Center(
              child: CircularProgressIndicator(
                // color: AppColors.primaryPink,
              ),
            )
          : _errorMessage != null
          ? _ErrorView(message: _errorMessage!)
          : SfPdfViewer.memory(
              _pdfBytes!,
              controller: _pdfViewerController,
              canShowScrollHead: true,
              canShowScrollStatus: true,
              enableDoubleTapZooming: true,
              onDocumentLoadFailed: (details) {
                setState(() {
                  _errorMessage = details.error;
                });
              },
            ),
    );
  }

  @override
  void dispose() {
    _pdfViewerController.dispose();
    super.dispose();
  }
}

class _ErrorView extends StatelessWidget {
  final String message;

  const _ErrorView({required this.message});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Text(
          message,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.red,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
