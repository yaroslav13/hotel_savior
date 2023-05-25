import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_savior/src/features/common/offers_carousel/entities/offer_item.dart';
import 'package:hotel_savior/src/features/common/offers_carousel/offer_item_widget.dart';

class HotelsOffersCarousel extends HookWidget {
  const HotelsOffersCarousel({
    required this.offers,
    required this.onPageChanged,
    super.key,
  });

  final List<OfferItem> offers;
  final ValueChanged<int> onPageChanged;

  @override
  Widget build(BuildContext context) {
    final pageController = usePageController(
      viewportFraction: 0.8,
    );

    useEffect(() {
      onPageChanged(0);

      final listener = pageController.addListener(() {
        //ignore: avoid-non-null-assertion
        onPageChanged(pageController.page!.round());
      });

      return () => pageController.removeListener(() => listener);
    });

    return SizedBox(
      height: 250.h,
      child: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: SizedBox(
          height: 339.h,
          child: Padding(
            padding: const EdgeInsets.only(top: 200, bottom: 10).r,
            child: PageView.builder(
              controller: pageController,
              clipBehavior: Clip.none,
              itemCount: offers.length,
              itemBuilder: (_, i) => OfferItemWidget(
                offer: offers[i],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
