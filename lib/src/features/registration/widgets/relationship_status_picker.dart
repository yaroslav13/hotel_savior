part of '../registration_screen.dart';

class _RelationshipStatusPicker extends StatelessWidget
    with BlocHelper<RegistrationBloc, RegistrationEvent, RegistrationState> {
  const _RelationshipStatusPicker();

  void _onSelected(
    BuildContext context,
    RelationshipStatus? relationshipStatus,
  ) =>
      getBoundBloc(context).add(
        RegistrationEvent.relationshipStatusPicked(
          relationshipStatus,
        ),
      );

  @override
  Widget build(BuildContext context) {
    const divider = Divider(height: 0);
    const verticalTileRadius = Radius.circular(8);

    return observe(
      builder: (context, state) {
        final selectedRelationshipStatus = state.relationshipStatus;

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26).r,
          child: DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(verticalTileRadius),
              border: Border.all(color: Colors.black12),
            ),
            child: Column(
              children: [
                _RelationshipStatusItem(
                  label: LocaleKeys.single.tr(),
                  selected:
                      selectedRelationshipStatus == RelationshipStatus.single,
                  onTap: () => _onSelected(context, RelationshipStatus.single),
                  shape: const RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.vertical(top: verticalTileRadius),
                  ),
                ),
                divider,
                _RelationshipStatusItem(
                  label: LocaleKeys.inRelationship.tr(),
                  selected: selectedRelationshipStatus ==
                      RelationshipStatus.inRelationship,
                  onTap: () => _onSelected(
                    context,
                    RelationshipStatus.inRelationship,
                  ),
                ),
                divider,
                _RelationshipStatusItem(
                  label: LocaleKeys.married.tr(),
                  selected:
                      selectedRelationshipStatus == RelationshipStatus.married,
                  onTap: () => _onSelected(context, RelationshipStatus.married),
                ),
                divider,
                _RelationshipStatusItem(
                  label: LocaleKeys.iPreferNotToSay.tr(),
                  selected: selectedRelationshipStatus == null,
                  onTap: () => _onSelected(context, null),
                  shape: const RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.vertical(bottom: verticalTileRadius),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _RelationshipStatusItem extends StatelessWidget {
  const _RelationshipStatusItem({
    required this.label,
    required this.onTap,
    this.selected = false,
    this.shape,
  });

  final String label;
  final bool selected;

  final ShapeBorder? shape;

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) => ListTile(
        title: Center(
          child: Text(label),
        ),
        selected: selected,
        onTap: onTap,
        shape: shape,
      );
}
