import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:genotek/genotek/cubit/genotek_cubit.dart';
import 'package:genotek/utils/resources/ui_constants.dart';
import 'package:genotek/genotek/views/widgets/widgets.dart';

class GenotekView extends StatefulWidget {
  const GenotekView({super.key});

  @override
  State<GenotekView> createState() => _GenotekViewState();
}

class _GenotekViewState extends State<GenotekView> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var padding = MediaQuery.of(context).padding;
    return BlocConsumer<GenotekCubit, GenotekState>(listener: (context, state) {
      debugPrint('Genotek: GenotekCubit ${state.status}');
      if (state.status.isInitial) {
        setState(() {
          // tunnels = state.chatVPNData.tunnels;
          // pincode = state.chatVPNData.pincode;
          // subscriptionId = state.chatVPNData.subscriptionId;
          // subscribtionFinished = state.chatVPNData.subscriptionFinished;
        });
        debugPrint('Genotek: isPincodeReady');
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
              height: size.height - padding.top - padding.bottom,
              padding: const EdgeInsets.all(UIConstants.gridStep * 2),
              child: const Stack(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [],
                  )
                ],
              ),
            ),
          );
      }
    });
  }
}
