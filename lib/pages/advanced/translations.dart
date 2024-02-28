import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class Translations extends StatefulWidget {
  const Translations({super.key});
  static const String id = "Translations";

  @override
  State<Translations> createState() => _TranslationsState();
}

class _TranslationsState extends State<Translations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            MaterialButton(onPressed: (){}, height: 50,color: Colors.black, padding: EdgeInsets.all(10), child: Text("first_button",style: TextStyle(color: Colors.white)).tr(),),
            MaterialButton(onPressed: (){}, height: 50,color: Colors.black, padding: EdgeInsets.all(10), child: Text("second_button", style: TextStyle(color: Colors.white)).tr()),
            MaterialButton(onPressed: (){}, height: 50,color: Colors.black, padding: EdgeInsets.all(10), child: Text("third_button",style: TextStyle(color: Colors.white)).tr()),
            Row(
              children: [
                Expanded(child: MaterialButton(
                  height: 50,
                  color: Colors.blue,
                  onPressed: (){
                    context.locale = Locale('en', 'US');
                  },
                  child: Text(
                    "English",
                    style: TextStyle(color: Colors.white),
                  ),
                )),
                Expanded(child: MaterialButton(
                  height: 50,
                  color: Colors.green,
                  onPressed: (){
                    context.locale = Locale('uz', 'UZ');
                  },
                  child: Text(
                    "O'zbekcha",
                    style: TextStyle(color: Colors.white),
                  ),
                )),
                Expanded(child: MaterialButton(
                  height: 50,
                  color: Colors.redAccent,
                  onPressed: (){
                    context.locale = Locale('ru', 'RU');
                  },
                  child: Text(
                    "Русский",
                    style: TextStyle(color: Colors.white),
                  ),
                ))

              ],
            )
          ],
        ),
      ),
    );
  }
}
