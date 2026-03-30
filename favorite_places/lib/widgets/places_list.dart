import 'package:favorite_places/models/place.dart';
import 'package:favorite_places/providers/user_places.dart';
import 'package:favorite_places/screens/place_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PlacesList extends ConsumerWidget {
  const PlacesList({super.key, required this.places});

  final List<Place> places;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return places.isEmpty
        ? Center(
            child: Text(
              'No places added yet.',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
          )
        : ListView.builder(
            itemCount: places.length,
            itemBuilder: (context, index) => Dismissible(
              key: ValueKey(places[index].id),
              onDismissed: (direction) => ref
                  .read(userPlacesProvider.notifier)
                  .removePlace(places[index].id),
              child: ListTile(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) =>
                        PlaceDetailScreen(place: places[index]),
                  ),
                ),
                title: Text(
                  places[index].title,
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
              ),
            ),
          );
  }
}
