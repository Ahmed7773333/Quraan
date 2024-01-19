import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'home.dart';
import 'information_helper.dart';
import 'shared_pref.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final TextEditingController controll = TextEditingController();
  @override
  Widget build(BuildContext context) {
    List<Map> result = searchWords(['ٱلۡحَمۡدُ لِلَّهِ رَبِّ ٱلۡعَٰلَمِينَ']);
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: controll,
          decoration: const InputDecoration(hintText: 'ابحث عن آية'),
          onSubmitted: (value) {
            result = searchWords(['ٱلۡحَمۡدُ لِلَّهِ رَبِّ ٱلۡعَٰلَمِينَ']);
            setState(() {});
          },
        ),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              SharedPreferenceHelper.changeValue(-1 +
                  getPageNumberr(
                      result[index]['surah'], result[index]['verse']));
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const Homee()));
            },
            child: Text(
              getVerse(result[index]['surah'], result[index]['verse']),
              locale: const Locale('ar'),
              style: TextStyle(
                  fontSize: 15.sp, color: Colors.black, fontFamily: 'Gulzar'),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const Divider(
            color: Colors.white,
          );
        },
        itemCount: result.length,
      ),
    );
  }
}
