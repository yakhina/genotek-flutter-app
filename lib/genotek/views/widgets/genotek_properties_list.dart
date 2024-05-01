part of genotek.common.widgets;

class GenotekSectionPropertiesList extends StatefulWidget {
  const GenotekSectionPropertiesList({super.key, required this.packages});

  final Map<String, GenotekPackagePriceData> packages;

  @override
  State<GenotekSectionPropertiesList> createState() => _GenotekSectionPropertiesListState();
}

class _GenotekSectionPropertiesListState extends State<GenotekSectionPropertiesList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(UIConstants.gridStep * 3),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor.withOpacity(0.5),
        borderRadius: BorderRadius.circular(UIConstants.gridStep * 4),
      ),
      child: Column(
          children: widget.packages.entries.map((package) {
        return GenotekSectionListItem(package: package.value);
      }).toList()),
    );
  }
}
