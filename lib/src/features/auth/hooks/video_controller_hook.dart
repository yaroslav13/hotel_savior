import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:video_player/video_player.dart';

VideoPlayerController useVideoPlayerController(String dataSource) => use(
      _VideoPlayerHook(
        dataSource: dataSource,
      ),
    );

class _VideoPlayerHook extends Hook<VideoPlayerController> {
  const _VideoPlayerHook({required this.dataSource});

  final String dataSource;

  @override
  HookState<VideoPlayerController, Hook<VideoPlayerController>> createState() =>
      _VideoPlayerHookState();
}

class _VideoPlayerHookState
    extends HookState<VideoPlayerController, _VideoPlayerHook> {
  late final VideoPlayerController _controller;

  @override
  void initHook() {
    super.initHook();

    _controller = VideoPlayerController.asset(hook.dataSource)..initialize();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  VideoPlayerController build(BuildContext context) => _controller;
}
