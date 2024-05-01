part of genotek.common.widgets;

class GenotekAppHeader extends StatelessWidget {
  const GenotekAppHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const Center(
        child: Image(
          image: AssetImage('assets/images/genotek_icon.png'),
          height: UIConstants.iconSize,
          width: UIConstants.iconSize,
        ),
      ),
      const GenotekSeparator(heightMultiplier: 2),
      Text("Genotek",
          style: Theme.of(context).textTheme.headlineLarge, textAlign: TextAlign.center),
    ]);
  }
}
