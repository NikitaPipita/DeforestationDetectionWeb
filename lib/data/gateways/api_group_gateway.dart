import 'package:deforestation_detection/data/gateways/api_provider.dart';
import 'package:deforestation_detection/data/models/group_dto.dart';
import 'package:dio/dio.dart';

class ApiGroupGateWay {
  final ApiProvider _apiProvider;

  ApiGroupGateWay(
    this._apiProvider,
  );

  Future<List<GroupDto>> getGroups() async {
    final Response<dynamic> response = await _apiProvider.apiProviderGet(
      'groups',
    );

    if (response.statusCode == 200) {
      final List<dynamic> data = response.data! as List<dynamic>;
      return data.map((dynamic groupData) {
        return GroupDto(
          id: groupData['group_id'] as int,
        );
      }).toList();
    } else {
      throw Exception('Failed to load groups.');
    }
  }

  Future<void> createGroup(int userId) async {
    final Response<dynamic> response = await _apiProvider.apiProviderPost(
      'groups/create',
      data: <String, dynamic> {
        'user_id': userId,
      }
    );

    if (response.statusCode != 201) {
      throw Exception('Failed to create group.');
    }
  }
}
