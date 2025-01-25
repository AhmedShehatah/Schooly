import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../app/di/injection_container.dart' as di;
import '../core/assets/assets.gen.dart';
import 'app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  await Future.wait([
    ScreenUtil.ensureScreenSize(),
    dotenv.load(fileName: Assets.aEnv),
  ]);
  await di.init();
  runApp(const MyApp());
}
