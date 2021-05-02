import 'package:deforestation_detection/dependency_injection.dart' as di;
import 'package:deforestation_detection/domain/entities/iot.dart';
import 'package:deforestation_detection/presentation/blocs/iots/iots_bloc.dart';
import 'package:flutter/material.dart';

import 'iot_info_dialog.dart';

class AllIotsList extends StatefulWidget {
  const AllIotsList({
    required List<Iot> iotsInfo,
    Key? key,
  })  : _iotsInfo = iotsInfo,
        super(key: key);

  final List<Iot> _iotsInfo;

  @override
  _AllIotsListState createState() => _AllIotsListState();
}

class _AllIotsListState extends State<AllIotsList> {
  final IotsBloc _iotsBloc = di.sl.get();

  void _changeIotState(Iot iot) {
    showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return IotInfoDialog(
          iot: iot,
          callback: (Iot iot) {
            _iotsBloc.add(IotsBlocEvent.changeIotState(iot));
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: widget._iotsInfo.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          onTap: (){
            _changeIotState(widget._iotsInfo[index]);
          },
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Longitude: ' + widget._iotsInfo[index].longitude.toString(),
              ),
              Text(
                'Latitude: ' + widget._iotsInfo[index].latitude.toString(),
              ),
            ],
          ),
          subtitle: Text(
            widget._iotsInfo[index].state,
          ),
        );
      },
    );
  }
}
