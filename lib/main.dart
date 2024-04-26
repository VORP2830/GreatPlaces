import 'package:flutter/material.dart';
import 'package:great_places/pages/place_detail_page.dart';
import 'package:great_places/pages/place_form_page.dart';
import 'package:great_places/pages/places_list_page.dart';
import 'package:great_places/providers/great_places.dart';
import 'package:great_places/utils/app_routes.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => GreatPlaces(),
      child: MaterialApp(
        title: 'Great Places',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: Colors.indigo,
            secondary: Colors.amber,
            background: Colors.white,
          ),
          visualDensity: VisualDensity.adaptivePlatformDensity,
          useMaterial3: true,
        ),
        home: const PlacesListPage(),
        routes: {
          AppRoutes.PLACE_FORM: (ctx) => const PlaceFormPage(),
          AppRoutes.PLACE_DETAIL: (ctx) => const PlaceDetailPage(),
        },
      ),
    );
  }
}
