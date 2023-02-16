import 'package:freezed_annotation/freezed_annotation.dart';

enum Users{
  @JsonValue(0)
  stepa,
  @JsonValue(1)
  valentin,
  @JsonValue(2)
  dima,
  @JsonValue(4)
  tham,
  @JsonValue(3)
  trong;

  const Users();

  @override
  String toString(){
    return _userToString[this]!;
  } 
  
}
final Map<Users, String> _userToString = {
  Users.dima: 'Dima',
  Users.stepa: 'Stepa',
  Users.valentin: 'Valentin',
  Users.tham: 'Tham',
  Users.trong: 'Vetnam',
};