import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'modules/login_page/page.dart';

void main() {
  runApp(const GetMaterialApp(
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    )
  );
}
