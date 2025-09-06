import 'package:destino_quisquella_front/models/category.model.dart';
import 'package:destino_quisquella_front/models/destiny.model.dart';
import 'package:destino_quisquella_front/utilites/dummyData/places.dart';
import 'package:flutter/material.dart';

class PlacesByCategoryScreen extends StatefulWidget {
  const PlacesByCategoryScreen({super.key});

  static const String routeName = '/placesByCategoryScreen';

  @override
  State<PlacesByCategoryScreen> createState() => _PlacesByCategoryScreenState();
}

class _PlacesByCategoryScreenState extends State<PlacesByCategoryScreen> {
  @override
  Widget build(BuildContext context) {
    final arg = ModalRoute.of(context)!.settings.arguments as PlaceCategory;
    List<Place> places = placesDummy
        .where((element) => element.categoryId == arg.id)
        .toList();
    return Scaffold(
      appBar: AppBar(title: Text(arg.name)),
      body: places.isEmpty
          ? const Center(
              child: Text('No places found', style: TextStyle(fontSize: 25)),
            )
          : Column(
              children: [
                Expanded(
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                        ),
                    itemCount: places.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(5),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.vertical(
                                top: Radius.circular(11),
                              ),
                              child: Image.asset(
                                'assets/localimages/chavon_1.jpg',
                                height: 120,
                                // width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),

                            // const SizedBox(height: 10),
                            Container(
                              height: 50,
                              width: 180,
                              decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.surface,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(11),
                                  bottomRight: Radius.circular(11),
                                ),
                                border: Border.all(
                                  color: Colors.grey.shade300,
                                  width: 1,
                                ),
                              ),
                              child: Text(
                                places[index].name,
                                maxLines: 2,
                                // textAlign: TextAlign.center,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            // Padding(
                            //   padding: const EdgeInsets.symmetric(horizontal: 6),
                            //   child:
                            // ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
    );
  }
}
