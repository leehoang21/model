import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo_list/hive_config/hive_box_name.dart';
import 'package:todo_list/user_infomation_model.dart';

class HiveConfig {
  late Box<UserInfomationModel> userInfomationBox;

  Future<void> init() async {
    await Hive.initFlutter();
    Hive.registerAdapter(UserInfomationModelAdapter());
    await openBox();
  }

  Future openBox() async {
    userInfomationBox = await Hive.openBox(HiveBoxName.userInfomationBox);
  }
}
