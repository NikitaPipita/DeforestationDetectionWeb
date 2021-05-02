import 'package:deforestation_detection/data/gateways/api_provider.dart';
import 'package:deforestation_detection/data/models/iot_dto.dart';
import 'package:deforestation_detection/data/models/suitable_position_dto.dart';
import 'package:dio/dio.dart';

class ApiIotGateWay {
  final ApiProvider _apiProvider;

  ApiIotGateWay(
    this._apiProvider,
  );

  Future<List<IotDto>> getIots() async {
    final Response<dynamic> response = await _apiProvider.apiProviderGet(
      'iots',
    );

    if (response.statusCode == 200) {
      final List<dynamic> data = response.data! as List<dynamic>;
      return data.map((dynamic iotData) {
        final dynamic groupData = iotData['group'];
        return IotDto(
          id: iotData['iot_id'] as int,
          groupId: groupData['group_id'] as int,
          longitude: iotData['longitude'] as double,
          latitude: iotData['latitude'] as double,
          state: iotData['iot_state'] as String,
          type: iotData['iot_type'] as String,
        );
      }).toList();
    } else {
      throw Exception('Failed to load iots.');
    }
  }

  Future<List<IotDto>> getSignalingIots() async {
    final Response<dynamic> response = await _apiProvider.apiProviderGet(
      'iot/signal',
    );

    if (response.statusCode == 200) {
      final List<dynamic> data = response.data! as List<dynamic>;
      return data.map((dynamic iotData) {
        return IotDto(
          longitude: iotData['longitude'] as double,
          latitude: iotData['latitude'] as double,
          state: iotData['iot_state'] as String,
        );
      }).toList();
    } else {
      throw Exception('Failed to load signaling iots.');
    }
  }

  Future<SuitablePositionDto> checkSuitableIotPosition(IotDto iot) async {
    final Response<dynamic> response = await _apiProvider.apiProviderPost(
      'iot/check',
      data: <String, dynamic>{
        'group_id': iot.groupId!,
        'longitude': iot.longitude,
        'latitude': iot.latitude,
        'iot_type': iot.type,
      },
    );

    if (response.statusCode == 200) {
      return SuitablePositionDto(
        isSuitable: response.data['suitable'] as bool,
        minimumDistanceToMoveAway:
            response.data['minimum_distance_to_move_away'] as double,
      );
    } else {
      throw Exception('Failed to check suitable iot position.');
    }
  }

  Future<void> createIot(IotDto iot) async {
    final Response<dynamic> response = await _apiProvider.apiProviderPost(
      'iots/create',
      data: <String, dynamic>{
        'user_id': iot.userId!,
        'group_id': iot.groupId!,
        'longitude': iot.longitude,
        'latitude': iot.latitude,
        'iot_state': iot.state,
        'iot_type': iot.type,
      },
    );

    if (response.statusCode != 201) {
      throw Exception('Failed to create iot.');
    }
  }

  Future<void> changeIotState(IotDto iot) async {
    final Response<dynamic> response = await _apiProvider.apiProviderPut(
      'iot/state',
      data: <String, dynamic>{
        'iot_id': iot.id!,
        'iot_state': iot.state,
      },
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to change state of the iot id ${iot.id}.');
    }
  }
}
