part of genotek.common.widgets;

class GenotekSectionListItem extends StatefulWidget {
  const GenotekSectionListItem({
    super.key,
    required this.package,
  });

  final GenotekPackagePriceData package;

  @override
  State<GenotekSectionListItem> createState() => _GenotekSectionListItemState();
}

class _GenotekSectionListItemState extends State<GenotekSectionListItem> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Flexible(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, UIConstants.gridStep * 4),
            child: Text(
              widget.package.name ?? "",
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w500),
              textAlign: TextAlign.left,
              softWrap: true,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
        const GenotekSeparator(widthMultiplier: 2),
        GenotekPackagePrice(package: widget.package),
      ],
    );
  }
}
