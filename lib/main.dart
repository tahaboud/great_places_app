import 'package:flutter/material.dart';
import './screens/add_place_screen.dart';
import './screens/places_list_screen.dart';
import './providers/great_places.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: GreatPlaces(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.purple,
          colorScheme:
              ThemeData().colorScheme.copyWith(secondary: Colors.amber),
        ),
        home: PlacesListScreen(),
        routes: {AddPlaceScreen.routeName: (context) => AddPlaceScreen()},
      ),
    );
  }
}
