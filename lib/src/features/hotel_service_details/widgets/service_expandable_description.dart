part of '../hotel_service_details_screen.dart';

class _ServiceExpandableDescription extends HookWidget
    with
        BlocHelper<HotelServiceDetailsBloc, HotelServiceDetailsEvent,
            HotelServiceDetailsState> {
  const _ServiceExpandableDescription({
    required this.description,
  });

  final String description;

  @override
  Widget build(BuildContext context) {
    final descriptionDocument = parse(description);
    final headers = descriptionDocument.getElementsByTagName('h3');
    final paragraphs = descriptionDocument.getElementsByTagName('p');

    final colorsContainer = context.getDependency<ColorsContainer>();
    final bloc = getBoundBloc(context);

    return observe(
      buildWhen: (previous, current) =>
          previous.selectedDescriptionSections !=
          current.selectedDescriptionSections,
      builder: (context, state) {
        final selectedDescriptionSections = state.selectedDescriptionSections;

        return ExpansionPanelList(
          elevation: 0,
          dividerColor: colorsContainer.cambridgeBlue80,
          //ignore: prefer-extracting-callbacks
          expansionCallback: (panelIndex, isExpanded) {
            bloc.add(
              HotelServiceDetailsEvent.descriptionSectionPressed(
                header: headers[panelIndex].text,
              ),
            );
          },
          children: headers.mapIndexed((i, e) {
            return ExpansionPanel(
              canTapOnHeader: true,
              headerBuilder: (context, isExpanded) {
                return ListTile(
                  title: Text(
                    e.text,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                );
              },
              body: ListTile(
                title: Text(
                  paragraphs[i].text,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
              isExpanded: selectedDescriptionSections.contains(e.text),
            );
          }).toList(),
        );
      },
    );
  }
}
