import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_savior/src/features/common/offers_carousel/entities/offer_item.dart';
import 'package:hotel_savior/src/features/common/offers_carousel/offer_item_widget.dart';

class OffersCarousel extends StatelessWidget {
  const OffersCarousel({
    required this.title,
    required this.offers,
    this.onSelected,
    super.key,
  });

  final String title;
  final List<OfferItem> offers;

  final ValueChanged<int>? onSelected;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20).r,
            child: Text(title, style: Theme.of(context).textTheme.titleMedium),
          ),
          5.verticalSpace,
          Expanded(
            child: ListView.builder(
              itemExtent: 250.sp,
              shrinkWrap: true,
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              itemCount: offers.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                final offer = offers[index];

                return OfferItemWidget(
                  offer: offer,
                  onTap: () => onSelected?.call(index),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
