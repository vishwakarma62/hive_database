

import 'package:hive/hive.dart';
part 'demo.g.dart';

@HiveType(typeId: 0)
class Register extends HiveObject{

  @HiveField(0)
  String? name;

  @HiveField(1)
  String? lastname;

  @HiveField(2)
  String? emailregister;

  @HiveField(3)
  String? phone;

  @HiveField(4)
  String? password;

  Register({required this.emailregister, required this.lastname, required this.name, required this.phone, required this.password});
}

