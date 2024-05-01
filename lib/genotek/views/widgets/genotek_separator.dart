part of genotek.common.widgets;

class GenotekSeparator extends StatelessWidget {
  final int heightMultiplier;
  final int widthMultiplier;

  const GenotekSeparator({Key? key, this.heightMultiplier = 0, this.widthMultiplier = 0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: UIConstants.gridStep * heightMultiplier,
      width: UIConstants.gridStep * widthMultiplier,
    );
  }
}
