import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ssip_signverse_project/Screen/HomeScreen.dart';
import 'package:ssip_signverse_project/introduction_animation/introduction_animation_screen.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

final storage = new FlutterSecureStorage();

Future<void> main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await Permission.camera.request();
  await Permission.microphone.request();

  SharedPreferences preferences = await SharedPreferences.getInstance();
  var email = preferences.getString('email');

  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    home: email == null ? IntroductionAnimationScreen() : HomeScreen(),
  ),);
}



// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:flutter_inappwebview/flutter_inappwebview.dart';
// import 'package:permission_handler/permission_handler.dart';
//
// Future main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//
//   await Permission.camera.request();
//   await Permission.microphone.request();
//
//   runApp(const MyApp());
// }
//
// class MyApp extends StatefulWidget {
//   const MyApp({super.key});
//
//   @override
//   // ignore: library_private_types_in_public_api
//   _MyAppState createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(debugShowCheckedModeBanner: false , home: InAppWebViewPage());
//   }
// }
//
// class InAppWebViewPage extends StatefulWidget {
//   const InAppWebViewPage({super.key});
//
//   @override
//   _InAppWebViewPageState createState() => new _InAppWebViewPageState();
// }
//
// class _InAppWebViewPageState extends State<InAppWebViewPage> {
//   late InAppWebViewController _webViewController;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(title: const Text("Sign Language to text Converter" , style: TextStyle(fontFamily: "poppins"),) , backgroundColor: Color(0xff4339E7),),
//         body: Container(
//           height: MediaQuery.of(context).size.height,
//           width: MediaQuery.of(context).size.width,
//           child: InAppWebView(
//               initialUrlRequest: URLRequest(
//                   url: Uri.parse(
//                       "https://shlok-177.github.io/Converter/templates/Training.html")),
//               initialOptions: InAppWebViewGroupOptions(
//                 crossPlatform: InAppWebViewOptions(
//                   mediaPlaybackRequiresUserGesture: false,
//                 ),
//               ),
//               onWebViewCreated: (InAppWebViewController controller) {
//                 _webViewController = controller;
//               },
//               androidOnPermissionRequest: (InAppWebViewController controller,
//                   String origin, List<String> resources) async {
//                 return PermissionRequestResponse(
//                     resources: resources,
//                     action: PermissionRequestResponseAction.GRANT);
//               }),
//         ));
//   }
// }