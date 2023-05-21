part of '../registration_screen.dart';

class _RegistrationSectionLabel extends StatelessWidget {
  const _RegistrationSectionLabel({
    required this.label,
    this.hint,
  });

  final String label;
  final String? hint;

  @override
  Widget build(BuildContext context) {
    final hint = this.hint;

    return Align(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16).r,
        child: Column(
          children: [
            Text(
              label,
              style: Theme.of(context).textTheme.titleSmall,
            ),
            if (hint != null) ...[
              4.verticalSpace,
              Text(
                hint,
                style: Theme.of(context).textTheme.bodySmall,
                textAlign: TextAlign.center,
              ),
            ],
          ],
        ),
      ),
    );
  }
}
