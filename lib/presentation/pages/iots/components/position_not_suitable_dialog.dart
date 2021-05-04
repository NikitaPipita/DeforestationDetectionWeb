import 'package:deforestation_detection/domain/entities/suitable_position.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class NotSuitablePositionDialog extends StatelessWidget {
  const NotSuitablePositionDialog({
    required SuitablePosition suitablePosition,
    Function()? onCancelTap,
    Key? key,
  })  : _suitablePosition = suitablePosition,
        _onCancelTap = onCancelTap,
        super(key: key);

  final SuitablePosition _suitablePosition;
  final Function()? _onCancelTap;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const Icon(
                Icons.clear,
                color: Colors.red,
              ),
              const SizedBox(
                width: 10.0,
              ),
              Text(
                'unsuitable_place_iot'.tr(),
              ),
            ],
          ),
          const SizedBox(
            height: 10.0,
          ),
          Text(
            'step_back_at_least'.tr() +
                ' ${_suitablePosition.minimumDistanceToMoveAway} ' +
                'meters'.tr(),
          ),
        ],
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            if (_onCancelTap != null) {
              _onCancelTap!();
            }
            Navigator.pop(context);
          },
          child: Text(
            'place_anyway'.tr(),
            style: const TextStyle(
              color: Colors.red,
            ),
          ),
        ),
        const SizedBox(
          width: 20.0,
        ),
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
            'ok'.tr(),
          ),
        ),
      ],
    );
  }
}
