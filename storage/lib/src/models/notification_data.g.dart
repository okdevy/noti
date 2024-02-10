// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_data.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class NotificationDataAdapter extends TypeAdapter<NotificationData> {
  @override
  final int typeId = 3;

  @override
  NotificationData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return NotificationData(
      message: fields[0] as String,
      time: fields[1] as String,
      iconColorIndex: fields[2] as int,
      iconIndex: fields[3] as int,
    );
  }

  @override
  void write(BinaryWriter writer, NotificationData obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.message)
      ..writeByte(1)
      ..write(obj.time)
      ..writeByte(2)
      ..write(obj.iconColorIndex)
      ..writeByte(3)
      ..write(obj.iconIndex);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NotificationDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
