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
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, UIConstants.gridStep * 4),
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: widget.package.discountPrice != null
                          ? widget.package.discountPrice.toString()
                          : widget.package.price.toString(),
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    TextSpan(
                      text: "₽",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
            ),
            widget.package.discountState != null && widget.package.discountState == true
                ? Positioned(
                    bottom: 0,
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: widget.package.startPrice.toString(),
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(decoration: TextDecoration.lineThrough),
                          ),
                          TextSpan(
                              text: "₽",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(decoration: TextDecoration.lineThrough)),
                        ],
                      ),
                    ),
                  )
                : const Positioned(child: Center())
          ],
        ),
      ],
    );
  }
}
