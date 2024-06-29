import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:school_room/Feature/Teacher/BottomNavigationBar/presentation/pages/teacher_index_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Base/common/shared_preference_manger.dart';
import 'package:flutter_localizations/flutter_localizations.dart';




Future<void> main() async {
  HttpOverrides.global = MyHttpOverrides();
  WidgetsFlutterBinding.ensureInitialized();
  await LocalizeAndTranslate.init(
    defaultType: LocalizationDefaultType.device,
    supportedLanguageCodes: <String>['ar', 'en'],
    assetLoader: AssetLoaderRootBundleJson(
      'assets/i18n/',
    ),

  );

 // await Firebase.initializeApp();


  await ScreenUtil.ensureScreenSize();
  runApp(const SchoolRoom());
}
GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class SchoolRoom extends StatelessWidget{
  const SchoolRoom({Key?key}) : super(key:key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LocalizedApp(
            child:MyMaterial()
        ) );
  }
}

class MyMaterial extends StatefulWidget{
  static var app_langauge;

  @override
  MyMaterialState createState() => MyMaterialState();

  static void setLocale(BuildContext context, Locale newLocale) {
    MyMaterialState? state = context.findAncestorStateOfType();

    app_langauge = newLocale.languageCode;
    state?.setState(() => state.local = newLocale);
  }

  static void restartApp(BuildContext context) {
    context.findAncestorStateOfType<MyMaterialState>()?.restartApp();
  }
}

class MyMaterialState extends State<MyMaterial> {

  Locale? local;
  Key? key = UniqueKey();
  void restartApp() {
    setState(() {
      get_Static_data();
      key = UniqueKey();
    });
  }

  void get_Static_data() async {
    await sharedPreferenceManager.readString(CachingKey.APP_LANGUAGE).then((value) {
      if (value == '') {
        MyMaterial.app_langauge = LocalizeAndTranslate.getLanguageCode();
      } else {
        MyMaterial.app_langauge = value;
      }
    });
  }

  @override
  void initState() {
    get_Static_data();

  }




  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return FutureBuilder<SharedPreferences>(
      future: SharedPreferences.getInstance(),
      builder: (context, snapshot) {
        return MaterialApp(
          navigatorKey: navigatorKey,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(fontFamily: 'Cairo'),
          locale: local,
          supportedLocales: LocalizeAndTranslate.getLocals(),

          localizationsDelegates: [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            DefaultCupertinoLocalizations.delegate,
          ],

          home: TeacherIndexScreen(index: 0,),
        );
      },
    );
  }





}


class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext? context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
}