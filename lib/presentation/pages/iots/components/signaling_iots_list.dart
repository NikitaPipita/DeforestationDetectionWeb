import 'package:deforestation_detection/domain/entities/iot.dart';
import 'package:flutter/material.dart';

class SignalingIotsList extends StatefulWidget {
  const SignalingIotsList({
    required List<Iot> iotsInfo,
    Key? key,
  })  : _iotsInfo = iotsInfo,
        super(key: key);

  final List<Iot> _iotsInfo;

  @override
  _SignalingIotsListState createState() => _SignalingIotsListState();
}

class _SignalingIotsListState extends State<SignalingIotsList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: widget._iotsInfo.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          onTap: (){},
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
