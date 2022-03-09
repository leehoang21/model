// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_infomation_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserInfomationModelAdapter extends TypeAdapter<UserInfomationModel> {
  @override
  final int typeId = 1;

  @override
  UserInfomationModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserInfomationModel(
      phoneNumber: fields[4] as String,
      id: fields[0] as String,
      userName: fields[1] as String,
      email: fields[2] as String,
      avatar: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, UserInfomationModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.userName)
      ..writeByte(2)
      ..write(obj.email)
      ..writeByte(3)
      ..write(obj.avatar)
      ..writeByte(4)
      ..write(obj.phoneNumber);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserInfomationModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
