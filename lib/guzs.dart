import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'home.dart';
import 'information_helper.dart';
import 'shared_pref.dart';

class Guzs extends StatefulWidget {
  const Guzs({super.key});

  @override
  State<Guzs> createState() => _GuzsState();
}

class _GuzsState extends State<Guzs> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (BuildContext context, int index) {
        return SizedBox(
          height: 450.h,
          width: 375.w,
          child: Material(
            color: Colors.transparent,
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  child: SizedBox(
                    height: 50.h,
                    width: 375.w,
                    child: Center(
                      child: Text(
                        convertToArabicJuzs(index + 1),
                        style: TextStyle(
                            fontSize: 20.sp,
                            color: Colors.white,
                            fontFamily: 'Gulzar'),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 25,
                  right: 20,
                  child: SizedBox(
                    height: 50.h,
                    child: Center(
                      child: Text(
                        convertToArabicHizbs(((index + 1) * 2) - 1),
                        style: TextStyle(
                            fontSize: 20.sp,
                            color: Colors.white,
                            fontFamily: 'Gulzar'),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 60,
                  right: 20,
                  child: SizedBox(
                    height: 50.h,
                    child: Center(
                      child: InkWell(
                        onTap: () {
                          SharedPreferenceHelper.changeValue(-1 +
                              getPageNumberr(
                                  hezbs[((index + 1) * 2) - 2]
                                      .firstQuarterVerse
                                      .first,
                                  hezbs[((index + 1) * 2) - 2]
                                      .firstQuarterVerse
                                      .last));
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Homee()));
                        },
                        child: Text(
                          'الربع الاول: ${getVerse(hezbs[((index + 1) * 2) - 2].firstQuarterVerse.first, hezbs[((index + 1) * 2) - 2].firstQuarterVerse.last)}/الصفحة: ${getPageNumberr(hezbs[((index + 1) * 2) - 2].firstQuarterVerse.first, hezbs[((index + 1) * 2) - 2].firstQuarterVerse.last)}',
                          locale: const Locale('ar'),
                          style: TextStyle(
                              fontSize: 15.sp,
                              color: Colors.white,
                              fontFamily: 'Gulzar'),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 90,
                  right: 20,
                  child: SizedBox(
                    height: 50.h,
                    child: Center(
                      child: InkWell(
                        onTap: () {
                          SharedPreferenceHelper.changeValue(-1 +
                              getPageNumberr(
                                  hezbs[((index + 1) * 2) - 2]
                                      .secondQuarterVerse
                                      .first,
                                  hezbs[((index + 1) * 2) - 2]
                                      .secondQuarterVerse
                                      .last));
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Homee()));
                        },
                        child: Text(
                          'الربع الثاني: ${getVerse(hezbs[((index + 1) * 2) - 2].secondQuarterVerse.first, hezbs[((index + 1) * 2) - 2].secondQuarterVerse.last)}/الصفحة: ${getPageNumberr(hezbs[((index + 1) * 2) - 2].secondQuarterVerse.first, hezbs[((index + 1) * 2) - 2].secondQuarterVerse.last)}',
                          locale: const Locale('ar'),
                          style: TextStyle(
                              fontSize: 15.sp,
                              color: Colors.white,
                              fontFamily: 'Gulzar'),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 120,
                  right: 20,
                  child: SizedBox(
                    height: 50.h,
                    child: Center(
                      child: InkWell(
                        onTap: () {
                          SharedPreferenceHelper.changeValue(-1 +
                              getPageNumberr(
                                  hezbs[((index + 1) * 2) - 2]
                                      .thirdQuarterVerse
                                      .first,
                                  hezbs[((index + 1) * 2) - 2]
                                      .thirdQuarterVerse
                                      .last));
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Homee()));
                        },
                        child: Text(
                          'الربع الثالث: ${getVerse(hezbs[((index + 1) * 2) - 2].thirdQuarterVerse.first, hezbs[((index + 1) * 2) - 2].thirdQuarterVerse.last)}/الصفحة: ${getPageNumberr(hezbs[((index + 1) * 2) - 2].thirdQuarterVerse.first, hezbs[((index + 1) * 2) - 2].thirdQuarterVerse.last)}',
                          locale: const Locale('ar'),
                          style: TextStyle(
                              fontSize: 15.sp,
                              color: Colors.white,
                              fontFamily: 'Gulzar'),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 150,
                  right: 20,
                  child: SizedBox(
                    height: 50.h,
                    child: Center(
                      child: InkWell(
                        onTap: () {
                          SharedPreferenceHelper.changeValue(-1 +
                              getPageNumberr(
                                  hezbs[((index + 1) * 2) - 2]
                                      .fourthQuarterVerse
                                      .first,
                                  hezbs[((index + 1) * 2) - 2]
                                      .fourthQuarterVerse
                                      .last));
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Homee()));
                        },
                        child: Text(
                          'الربع الرابع: ${getVerse(hezbs[((index + 1) * 2) - 2].fourthQuarterVerse.first, hezbs[((index + 1) * 2) - 2].fourthQuarterVerse.last)}/الصفحة: ${getPageNumberr(hezbs[((index + 1) * 2) - 2].fourthQuarterVerse.first, hezbs[((index + 1) * 2) - 2].fourthQuarterVerse.last)}',
                          locale: const Locale('ar'),
                          style: TextStyle(
                              fontSize: 15.sp,
                              color: Colors.white,
                              fontFamily: 'Gulzar'),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 220,
                  right: 20,
                  child: SizedBox(
                    height: 50.h,
                    child: Center(
                      child: Text(
                        convertToArabicHizbs(((index + 1) * 2)),
                        style: TextStyle(
                            fontSize: 20.sp,
                            color: Colors.white,
                            fontFamily: 'Gulzar'),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 250,
                  right: 20,
                  child: SizedBox(
                    height: 50.h,
                    child: Center(
                      child: InkWell(
                        onTap: () {
                          SharedPreferenceHelper.changeValue(-1 +
                              getPageNumberr(
                                  hezbs[((index + 1) * 2) - 1]
                                      .firstQuarterVerse
                                      .first,
                                  hezbs[((index + 1) * 2) - 1]
                                      .firstQuarterVerse
                                      .last));
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Homee()));
                        },
                        child: Text(
                          'الربع الاول: ${getVerse(hezbs[((index + 1) * 2) - 1].firstQuarterVerse.first, hezbs[((index + 1) * 2) - 1].firstQuarterVerse.last)}/الصفحة: ${getPageNumberr(hezbs[((index + 1) * 2) - 1].firstQuarterVerse.first, hezbs[((index + 1) * 2) - 1].firstQuarterVerse.last)}',
                          locale: const Locale('ar'),
                          style: TextStyle(
                              fontSize: 15.sp,
                              color: Colors.white,
                              fontFamily: 'Gulzar'),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 280,
                  right: 20,
                  child: SizedBox(
                    height: 50.h,
                    child: Center(
                      child: InkWell(
                        onTap: () {
                          SharedPreferenceHelper.changeValue(-1 +
                              getPageNumberr(
                                  hezbs[((index + 1) * 2) - 1]
                                      .secondQuarterVerse
                                      .first,
                                  hezbs[((index + 1) * 2) - 1]
                                      .secondQuarterVerse
                                      .last));
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Homee()));
                        },
                        child: Text(
                          'الربع الثاني: ${getVerse(hezbs[((index + 1) * 2) - 1].secondQuarterVerse.first, hezbs[((index + 1) * 2) - 1].secondQuarterVerse.last)}/الصفحة: ${getPageNumberr(hezbs[((index + 1) * 2) - 1].secondQuarterVerse.first, hezbs[((index + 1) * 2) - 1].secondQuarterVerse.last)}',
                          locale: const Locale('ar'),
                          style: TextStyle(
                              fontSize: 15.sp,
                              color: Colors.white,
                              fontFamily: 'Gulzar'),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 310,
                  right: 20,
                  child: SizedBox(
                    height: 50.h,
                    child: Center(
                      child: InkWell(
                        onTap: () {
                          SharedPreferenceHelper.changeValue(-1 +
                              getPageNumberr(
                                  hezbs[((index + 1) * 2) - 1]
                                      .thirdQuarterVerse
                                      .first,
                                  hezbs[((index + 1) * 2) - 1]
                                      .thirdQuarterVerse
                                      .last));
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Homee()));
                        },
                        child: Text(
                          'الربع الثالث: ${getVerse(hezbs[((index + 1) * 2) - 1].thirdQuarterVerse.first, hezbs[((index + 1) * 2) - 1].thirdQuarterVerse.last)}/الصفحة: ${getPageNumberr(hezbs[((index + 1) * 2) - 1].thirdQuarterVerse.first, hezbs[((index + 1) * 2) - 1].thirdQuarterVerse.last)}',
                          locale: const Locale('ar'),
                          style: TextStyle(
                              fontSize: 15.sp,
                              color: Colors.white,
                              fontFamily: 'Gulzar'),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 340,
                  right: 20,
                  child: SizedBox(
                    height: 50.h,
                    child: Center(
                      child: InkWell(
                        onTap: () {
                          SharedPreferenceHelper.changeValue(-1 +
                              getPageNumberr(
                                  hezbs[((index + 1) * 2) - 1]
                                      .fourthQuarterVerse
                                      .first,
                                  hezbs[((index + 1) * 2) - 1]
                                      .fourthQuarterVerse
                                      .last));
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Homee()));
                        },
                        child: Text(
                          'الربع الرابع: ${getVerse(hezbs[((index + 1) * 2) - 1].fourthQuarterVerse.first, hezbs[((index + 1) * 2) - 1].fourthQuarterVerse.last)}/الصفحة: ${getPageNumberr(hezbs[((index + 1) * 2) - 1].fourthQuarterVerse.first, hezbs[((index + 1) * 2) - 1].fourthQuarterVerse.last)}',
                          locale: const Locale('ar'),
                          style: TextStyle(
                              fontSize: 15.sp,
                              color: Colors.white,
                              fontFamily: 'Gulzar'),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return const Divider(
          color: Colors.white,
        );
      },
      itemCount: 30,
    );
  }
}
