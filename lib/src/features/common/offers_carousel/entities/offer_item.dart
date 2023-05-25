import 'package:flutter/foundation.dart';

@immutable
class OfferItem {
  const OfferItem({
    required this.name,
    required this.place,
    required this.imageUrl,
  });

  final String name;
  final String place;
  final String imageUrl;
}
