import 'package:destino_quisquella_front/generated/l10n.dart';
import 'package:destino_quisquella_front/models/category.model.dart';
import 'package:destino_quisquella_front/screens/places/placeDetailsScreen/placeDetailScreen.dart';
import 'package:destino_quisquella_front/screens/places/placesByCategoryScreen/placesByCategoryScreen.dart';
import 'package:destino_quisquella_front/utilites/app_colors.dart';
import 'package:destino_quisquella_front/utilites/dummyData/category.dart';
import 'package:destino_quisquella_front/utilites/dummyData/places.dart';
import 'package:destino_quisquella_front/widgets/placesCard.widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AnonimusHomeScreen extends StatefulWidget {
  const AnonimusHomeScreen({super.key});

  static const String routeName = '/AnonimusHomeScreen';

  @override
  State<AnonimusHomeScreen> createState() => _AnonimusHomeScreenState();
}

class _AnonimusHomeScreenState extends State<AnonimusHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            centerTitle: true,
            backgroundColor: AppColors.darkPrimary,
            pinned: true,
            expandedHeight: 300,
            // toolbarHeight: 150,
            // snap: true,
            // floating: true,
            leading: Icon(Icons.menu, color: Colors.white, size: 40),
            // floating: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/localimages/samana2.webp',
                fit: BoxFit.cover,
              ),
              title: Text(
                S.of(context).appTitle,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          // SliverPersistentHeader(
          //   pinned: true,
          //   delegate: _PinnedHeaderDelegate(
          //     child: Container(
          //       color: Colors.white,
          //       padding: const EdgeInsets.all(16.0),
          //       alignment: Alignment.centerLeft,
          //       child: const Text(
          //         'Encabezado Fijo',
          //         style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          //       ),
          //     ),
          //     height: 60,
          //   ),
          // ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 16, left: 10),
                  child: Text(
                    "Lo más visitado",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      // color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  height: 210,
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: placesDummy.length,
                    itemBuilder: (BuildContext context, int index) {
                      return PlaceCardWidget(
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            PlaceDetailScreen.routeName,
                            arguments: placesDummy[index],
                          );
                        },
                        placeName: placesDummy[index].name,
                        photo: placesDummy[index].photos.first,
                      );

                      // Text('Item $index', style: TextStyle(fontSize: 20));
                    },
                  ),
                ),
              ],
            ),
          ),

          // SliverList(
          //   delegate: SliverChildBuilderDelegate((context, index) {
          //     return Container(
          //       width: 200,
          //       margin: const EdgeInsets.all(8),
          //       color: Colors.blue[100 * ((index % 8) + 1)],
          //       alignment: Alignment.center,
          //       child: Text(
          //         'Ítem #$index',
          //         style: const TextStyle(fontSize: 20),
          //       ),
          //     );
          //   }, childCount: 10),
          // ),
          // SliverToBoxAdapter(
          //   child:
          //   GridView.builder(
          //     itemCount: categoriesDummy.length,
          //     shrinkWrap: true,
          //     physics: const NeverScrollableScrollPhysics(),
          //     padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          //       crossAxisCount: 3,
          //       mainAxisSpacing: 12,
          //       crossAxisSpacing: 12,
          //       childAspectRatio: .9,
          //     ),
          //     itemBuilder: (context, i) {
          //       final cat = categoriesDummy[i];
          //       return _CategoryItem(
          //         category: cat,
          //         onTap: (cat) {
          //           Navigator.pushNamed(
          //             context,
          //             '/category',
          //             arguments: cat.kind,
          //           );
          //         },
          //       );
          //     },
          //   ),
          // ),
          SliverAnimatedList(
            // key: const Key('list'),
            // physics: const BouncingScrollPhysics(),
            // shrinkWrap: true,
            itemBuilder: (context, index, animation) {
              return SizeTransition(
                axis: Axis.horizontal,
                sizeFactor: animation,
                child: ListTile(title: Text('Item $index')),
              );
            },
            initialItemCount: 5,
          ),
          SliverToBoxAdapter(
            child: Text(
              'Scroll down to see more content',
              style: TextStyle(fontSize: 16),
            ),
          ),
          SliverFillRemaining(
            child: SingleChildScrollView(
              // scrollDirection: Axis.horizontal,
              physics: NeverScrollableScrollPhysics(),
              child: Column(
                children: [
                  SizedBox(
                    height: 210,
                    width: double.infinity,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: placesDummy.length,
                      itemBuilder: (BuildContext context, int index) {
                        return PlaceCardWidget(
                          onTap: () {},
                          placeName: placesDummy[index].name,
                          photo: placesDummy[index].photos.first,
                        );

                        // Text('Item $index', style: TextStyle(fontSize: 20));
                      },
                    ),
                  ),
                  Text(
                    "Busca lugares especificos",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      // color: Colors.black,
                    ),
                  ),
                  GridView.builder(
                    itemCount: categoriesDummy.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          mainAxisSpacing: 12,
                          crossAxisSpacing: 12,
                          childAspectRatio: .9,
                        ),
                    itemBuilder: (context, i) {
                      final cat = categoriesDummy[i];
                      return CategoryItem(
                        category: cat,
                        onTap: (cat) {
                          Navigator.pushNamed(
                            context,
                            PlacesByCategoryScreen.routeName,
                            arguments: cat,
                          );
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// class _PinnedHeaderDelegate extends SliverPersistentHeaderDelegate {
//   final Widget child;
//   final double height;
//   _PinnedHeaderDelegate({required this.child, required this.height});
//   @override
//   double get minExtent => height;
//   @override
//   double get maxExtent => height;
//   @override
//   Widget build(
//     BuildContext context,
//     double shrinkOffset,
//     bool overlapsContent,
//   ) {
//     return Material(elevation: overlapsContent ? 4 : 0, child: child);
//   }
//   @override
//   bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
//       true;
// }

class CategoryItem extends StatelessWidget {
  final PlaceCategory category;
  final void Function(PlaceCategory category)? onTap;

  const CategoryItem({super.key, required this.category, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(16),
      onTap: () => onTap?.call(category),
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.grey.shade300),
        ),
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FaIcon(category.icon, size: 28, color: category.color),
            const SizedBox(height: 8),
            Text(
              category.name,
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 13),
            ),
          ],
        ),
      ),
    );
  }
}
