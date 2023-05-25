part of '../home_screen.dart';

class _BackgroundWave extends StatelessWidget {
  const _BackgroundWave();

  @override
  Widget build(BuildContext context) {
    final colorsContainer = context.getDependency<ColorsContainer>();

    return Container(
      height: MediaQuery.of(context).size.height / 2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: const Radius.circular(30).r,
          bottomRight: const Radius.circular(30).r,
        ),
        color: colorsContainer.lightSkyBlue,
      ),
    );
  }
}
