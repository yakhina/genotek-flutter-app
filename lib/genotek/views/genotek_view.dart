import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:genotek/genotek/models/models.dart';
import 'package:genotek/genotek/cubit/genotek_cubit.dart';
import 'package:genotek/utils/resources/ui_constants.dart';
import 'package:genotek/genotek/views/widgets/widgets.dart';

class GenotekView extends StatefulWidget {
  const GenotekView({super.key});

  @override
  State<GenotekView> createState() => _GenotekViewState();
}

class _GenotekViewState extends State<GenotekView> {
  GenotekData? genotekData;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var padding = MediaQuery.of(context).padding;
    return BlocConsumer<GenotekCubit, GenotekState>(listener: (context, state) {
      debugPrint('Genotek: GenotekCubit ${state.status}');
      if (state.status.isDataReady) {
        setState(() {
          genotekData = state.genotekData;
        });
        debugPrint('Genotek: genotekData Ready $genotekData');
      }
    }, builder: (context, state) {
      switch (state.status) {
        case GenotekStatus.failure:
          return const GenotekError(errorText: "Error while loading the data");
        case GenotekStatus.loading:
        case GenotekStatus.initial:
        case GenotekStatus.dataReady:
          return Scaffold(
            backgroundColor: Theme.of(context).canvasColor,
            body: Container(
              width: size.width - padding.left - padding.right,
              height: size.height - UIConstants.gridStep * 8,
              padding: const EdgeInsets.all(UIConstants.gridStep * 4),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const GenotekSeparator(heightMultiplier: 16),
                    const GenotekAppHeader(),
                    const GenotekSeparator(heightMultiplier: 4),
                    (genotekData != null && genotekData!.genetics != null
                        ? GenotekSection(sectionTitle: "Генетика", packages: genotekData!.genetics!)
                        : const GenotekSectionTitle(sectionTitle: "Данных нет")),
                    const GenotekSeparator(heightMultiplier: 4),
                    (genotekData != null && genotekData!.diagnostic != null
                        ? GenotekSection(
                            sectionTitle: "Диагностика", packages: genotekData!.diagnostic!)
                        : const Center()),
                    const GenotekSeparator(heightMultiplier: 4),
                    (genotekData != null && genotekData!.premium != null
                        ? GenotekSection(sectionTitle: "Премиум", packages: genotekData!.premium!)
                        : const Center())
                  ],
                ),
              ),
            ),
          );
      }
    });
  }
}
