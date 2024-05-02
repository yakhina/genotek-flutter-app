part of genotek.common.widgets;

class GenotekPackagePrice extends StatefulWidget {
  const GenotekPackagePrice({
    super.key,
    required this.package,
  });

  final GenotekPackagePriceData package;

  @override
  State<GenotekPackagePrice> createState() => _GenotekPackagePriceState();
}

class _GenotekPackagePriceState extends State<GenotekPackagePrice> {
  @override
  Widget build(BuildContext context) {
    return Stack(
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
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                TextSpan(
                  text: "₽",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ],
            ),
          ),
        ),
        widget.package.discountState != null && widget.package.discountState == true
            ? Positioned(
                bottom: 0,
                right: 0,
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
    );
  }
}
