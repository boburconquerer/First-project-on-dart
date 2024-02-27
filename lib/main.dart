import 'package:flutter/material.dart';
import 'package:mydemo1/pages/1_page.dart';
import 'package:mydemo1/pages/3_page.dart';
import 'package:mydemo1/pages/advanced/flutter_toast.dart';
import 'package:mydemo1/pages/advanced/google_fonts.dart';
import 'package:mydemo1/pages/alert_dialog.dart';
import 'package:mydemo1/pages/animation1.dart';
import 'package:mydemo1/pages/animation2.dart';
import 'package:mydemo1/pages/animation3.dart';
import 'package:mydemo1/pages/animation4.dart';
import 'package:mydemo1/pages/appOneLogin.dart';
import 'package:mydemo1/pages/appOnePage.dart';
import 'package:mydemo1/pages/appOneSplash.dart';
import 'package:mydemo1/pages/button_page.dart';
import 'package:mydemo1/pages/follow_page.dart';
import 'package:mydemo1/pages/home_page.dart';
import 'package:mydemo1/pages/intermadiate/amazon_ui.dart';
import 'package:mydemo1/pages/intermadiate/app_intro_ui.dart';
import 'package:mydemo1/pages/intermadiate/facebook_ui.dart';
import 'package:mydemo1/pages/intermadiate/hotel_ui.dart';
import 'package:mydemo1/pages/intermadiate/instagram/home_page.dart';
import 'package:mydemo1/pages/intermadiate/jet_market_ui.dart';
import 'package:mydemo1/pages/intermadiate/login_ui.dart';
import 'package:mydemo1/pages/intermadiate/shop_ui.dart';
import 'package:mydemo1/pages/new_page.dart';
import 'package:mydemo1/pages/profile_page.dart';
import 'package:mydemo1/pages/search_page.dart';
import 'package:mydemo1/pages/second_page.dart';
import 'package:mydemo1/pages/settings_page.dart';
import 'package:mydemo1/pages/watch_page.dart';
import '../pages/appOneSignUp.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: false,
      ),
      home:const GoogleFontsWidget(),
      routes: {
        FlutterToast.id: (context) => const FlutterToast(),

        HomePageInsta.id: (context) => const HomePageInsta(),
        FaceBookUI.id: (context) => const FaceBookUI(),
        AmazonUI.id: (context) => const AmazonUI(),
        HotelUI.id: (context) => const HotelUI(),
        JetMarketUI.id: (context) => const JetMarketUI(),
        AppIntroUI.id: (context) => const AppIntroUI(),
        ShopUI.id: (context) => const ShopUI(),
        LoginUI.id: (context) => const LoginUI(),
        SignUpOne.id: (context) => const SignUpOne(),
        PageOne.id: (context) => const PageOne(),
        SplashOne.id: (context) => const SplashOne(),
        LoginOne.id: (context) => const LoginOne(),

        AnimationFour.id: (context) => const AnimationFour(),
        AnimationThree.id: (context) => const AnimationThree(),
        AnimationTwo.id: (context) => const AnimationTwo(),
        Animation_one.id: (context) => const Animation_one(),
        ThirdPage.id: (context) => const ThirdPage(),
        NewPage.id: (context) => const NewPage(),
        SettingsPage.id: (context) => const SettingsPage(),
        HomePage.id: (context) => const HomePage(),
        ProfilePage.id: (context) => const ProfilePage(),
        SearchPage.id: (context) => const SearchPage(),
        SecondPage.id: (context) => const SecondPage(),
        AlertDialogPage.id: (context) => const AlertDialogPage(),
        FirstPage.id: (context) => const FirstPage(),
        FollowPage.id: (context) => const FollowPage(),
        WatchPage.id: (context) => const WatchPage(),
        ButtonPage.id: (context) => const ButtonPage()
      },
    );
  }
}


