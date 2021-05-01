class IotDto {
  final int? id;
  final int? userId;
  final int? groupId;
  final double longitude;
  final double latitude;
  final String state;
  final String? type;

  IotDto({
    required this.longitude,
    required this.latitude,
    required this.state,
    this.id,
    this.userId,
    this.groupId,
    this.type,
  });
}
