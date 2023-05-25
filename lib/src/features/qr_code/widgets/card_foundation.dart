part of '../qr_code_screen.dart';

class _CardFoundation extends StatelessWidget {
  const _CardFoundation({
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: const BorderRadius.all(Radius.circular(20)).r,
      ),
      child: child,
    );
  }
}
