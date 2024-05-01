// ignore_for_file: use_string_in_part_of_directives

part of genotek.common.widgets;

class GenotekSectionTitle extends StatelessWidget {
  const GenotekSectionTitle({super.key, required this.sectionTitle});

  final String sectionTitle;

  @override
  Widget build(BuildContext context) {
    return Text(sectionTitle,
        style: Theme.of(context).textTheme.headlineSmall, textAlign: TextAlign.left);
  }
}
