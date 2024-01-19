import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quraan/information_helper.dart';
import 'package:quraan/shared_pref.dart';
import 'home.dart';

class Fehrs extends StatefulWidget {
  const Fehrs({super.key});

  @override
  State<Fehrs> createState() => _FehrsState();
}

class _FehrsState extends State<Fehrs> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (BuildContext context, int index) {
        return Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {
              SharedPreferenceHelper.changeValue(getSurahPage(index + 1) - 1);
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const Homee()));
            },
            child: SizedBox(
              height: 55.h,
              width: 375.w,
              child: ListTile(
                leading: Text(
                  getSurahPage(index + 1).toString(),
                  style: TextStyle(fontSize: 25.sp, color: Colors.white),
                ),
                trailing: Text(
                  getSurahNameArabic(index + 1),
                  style: TextStyle(fontSize: 25.sp, color: Colors.white),
                ),
              ),
            ),
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return const Divider(
          color: Colors.white,
        );
      },
      itemCount: 114,
    );
  }
}
