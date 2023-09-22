// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'demo.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RegisterAdapter extends TypeAdapter<Register> {
  @override
  final int typeId = 0;

  @override
  Register read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Register(
      emailregister: fields[2] as String?,
      lastname: fields[1] as String?,
      name: fields[0] as String?,
      phone: fields[3] as String?,
      password: fields[4] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Register obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.lastname)
      ..writeByte(2)
      ..write(obj.emailregister)
      ..writeByte(3)
      ..write(obj.phone)
      ..writeByte(4)
      ..write(obj.password);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RegisterAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
