import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_savior/src/features/common/offers_carousel/entities/offer_item.dart';

class OfferItemWidget extends StatelessWidget {
  const OfferItemWidget({
    required this.offer,
    this.onTap,
    super.key,
  });

  final OfferItem offer;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final borderRadius = const BorderRadius.all(Radius.circular(20)).r;

    return Card(
      shape: RoundedRectangleBorder(borderRadius: borderRadius),
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 2).r,
      child: InkWell(
        onTap: onTap,
        borderRadius: borderRadius,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _OfferImage(offer.imageUrl),
            10.verticalSpace,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10).r,
              child: Text(
                offer.name,
                style: textTheme.titleSmall,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            3.verticalSpace,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 11).r,
              child: Text(offer.place, style: textTheme.bodySmall),
            ),
            5.verticalSpace,
          ],
        ),
      ),
    );
  }
}

class _OfferImage extends StatelessWidget {
  const _OfferImage(this.imageUrl);

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        fit: BoxFit.cover,
        height: 90.h,
        width: double.infinity,
      ),
    );
  }
}
