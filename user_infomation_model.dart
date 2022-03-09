import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hive/hive.dart';
import 'package:todo_list/hive_config/hive_type_id.dart';
part 'user_infomation_model.g.dart';

@HiveType(typeId: HiveTypeId.userInfomationType)
class UserInfomationModel {
  // uid người dùng
  @HiveField(0)
  final String id;
  // tên người dùng
  @HiveField(1)
  final String userName;
  // email người dùng nếu có
  @HiveField(2)
  final String? email;
  // url avatar nếu có
  @HiveField(3)
  final String? avatar;
  //số điện thoại người dùng
  @HiveField(4)
  final String phoneNumber;

  const UserInfomationModel({
    required this.phoneNumber,
    required this.id,
    this.userName = '',
    this.email,
    this.avatar,
  });

  UserInfomationModel copyWith({
    String? userName,
    String? email,
    String? avatar,
  }) {
    return UserInfomationModel(
      id: id,
      phoneNumber: phoneNumber,
      userName: userName ?? this.userName,
      email: email ?? this.email,
      avatar: avatar ?? this.avatar,
    );
  }

  factory UserInfomationModel.fromDocument(DocumentSnapshot snapshot) {
    if (snapshot.data() == null) {
      throw Exception;
    }
    final data = snapshot.data() as Map<String, dynamic>;

    return UserInfomationModel(
      id: snapshot.id,
      userName: data['userName'] as String,
      email: data['email'] as String?,
      avatar: data['avatar'] as String?,
      phoneNumber: data['phoneNumber'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'phoneNumber': phoneNumber,
      'userName': userName,
      'avatar': avatar,
      'email': email,
    };
  }
}
