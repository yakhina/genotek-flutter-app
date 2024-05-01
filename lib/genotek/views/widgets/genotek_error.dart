part of genotek.common.widgets;

class GenotekError extends StatelessWidget {
  const GenotekError({super.key, required this.errorText});

  final String errorText;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(errorText),
    );
  }
}
