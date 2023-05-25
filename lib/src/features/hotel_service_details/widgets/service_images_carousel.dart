part of '../hotel_service_details_screen.dart';

class _ServiceImagesCarousel extends HookWidget {
  const _ServiceImagesCarousel({
    required this.imagesUrls,
  });

  final List<String> imagesUrls;

  @override
  Widget build(BuildContext context) {
    final pageController = usePageController();

    final currentPage = useState(0);
    useEffect(() {
      final listener = pageController.addListener(() {
        if (pageController.hasClients) {
          currentPage.value = pageController.page?.toInt() ?? 0;
        }
      });

      return () => pageController.removeListener(() => listener);
    });

    return SizedBox(
      height: MediaQuery.of(context).size.height / 4,
      child: Stack(
        children: [
          PageView.builder(
            controller: pageController,
            itemCount: imagesUrls.length,
            itemBuilder: (context, index) {
              return CachedNetworkImage(
                imageUrl: imagesUrls[index],
                fit: BoxFit.cover,
              );
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: DotsIndicator(
                dotsCount: imagesUrls.length,
                position: currentPage.value,
                decorator: DotsDecorator(
                  activeSize: const Size(18, 9),
                  activeShape: RoundedRectangleBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(5)).r,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
