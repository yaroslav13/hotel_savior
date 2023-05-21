part of '../auth_screen.dart';

const _introductionVideo = 'assets/videos/introduction_video.mp4';

class _IntroductionVideoPlayer extends HookWidget {
  const _IntroductionVideoPlayer();

  @override
  Widget build(BuildContext context) {
    final videoPlayerController = useVideoPlayerController(_introductionVideo);
    unawaited(videoPlayerController.play());
    unawaited(videoPlayerController.setLooping(true));

    final logoStyle = Theme.of(context).textTheme.headlineLarge;

    return Expanded(
      flex: 2,
      child: Stack(
        alignment: Alignment.center,
        children: [
          VideoPlayer(videoPlayerController),
          Text(
            LocaleKeys.logo.tr().toUpperCase(),
            style: logoStyle?.copyWith(
              color: context.colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
