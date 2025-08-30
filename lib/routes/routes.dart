import 'package:destino_quisquella/screens/addPlacesScreen/addPlacesScreen.dart';
import 'package:destino_quisquella/screens/closeToYouScreen/closseToYouScreen.dart';
import 'package:destino_quisquella/screens/favoriteScreen/favoriteScreem.dart';
import 'package:destino_quisquella/screens/home/homeScreen.dart';
import 'package:destino_quisquella/screens/profile/profileScreen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  HomeScreen.routeName: (context) => const HomeScreen(),
  CloseToYouScreen.routeName: (context) => const CloseToYouScreen(),
  ProfileScreen.routeName: (context) => const ProfileScreen(),
  FavoriteScreen.routeName: (context) => const FavoriteScreen(),
  AddPlacesScreen.routeName: (context) => const AddPlacesScreen()
};
