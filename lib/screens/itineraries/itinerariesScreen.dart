import 'package:flutter/material.dart';

class ItinerariesScreen extends StatefulWidget {
  const ItinerariesScreen({super.key});

  static const String routeName = '/itinerariesScreen';

  @override
  State<ItinerariesScreen> createState() => _ItinerariesScreenState();
}

//Will add new features later
// on this screen, the user can see the list of itineraries and add new ones
// also can see the details of each itinerary
// and edit or delete them (Will use slidable package for this)

class _ItinerariesScreenState extends State<ItinerariesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Itinerarios"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //TODO: Acción al presionar el botón
        },
        child: Icon(Icons.add),
      ),
      body: Column(children: [
        Expanded(
          child: ListView.builder(
            itemCount: 1,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Itinerario ${index + 1}',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Text('Descripción del itinerario ${index + 1}'),
                    SizedBox(height: 10),
                    Text('Lugares incluidos: Lugar A, Lugar B, Lugar C'),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        // Acción al presionar el botón
                      },
                      child: Text('Ver Detalles'),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ]),
    );
  }
}
