part of genotek.common.widgets;

class GenotekSection extends StatefulWidget {
  const GenotekSection({super.key, required this.sectionTitle, required this.packages});

  final Map<String, GenotekPackagePriceData> packages;
  final String sectionTitle;

  @override
  State<GenotekSection> createState() => _GenotekSectionState();
}

class _GenotekSectionState extends State<GenotekSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(widget.sectionTitle, style: Theme.of(context).textTheme.headlineSmall),
        const GenotekSeparator(heightMultiplier: 4),
        GenotekSectionPropertiesList(
          packages: widget.packages,
        )
      ],
    );
  }
}
