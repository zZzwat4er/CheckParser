// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ip.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class IPAdapter extends TypeAdapter<IP> {
  @override
  final int typeId = 0;

  @override
  IP read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return IP(
      fields[0] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, IP obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.ip);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is IPAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
