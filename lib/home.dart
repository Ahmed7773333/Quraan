import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quraan/fehrs.dart';
import 'package:quraan/guzs.dart';
import 'package:quraan/information_helper.dart';
import 'package:quraan/search.dart';
import 'package:quraan/shared_pref.dart';

class Homee extends StatefulWidget {
  const Homee({super.key});

  @override
  State<Homee> createState() => _HomeeState();
}

class _HomeeState extends State<Homee> {
  final List<Widget> pages = surahs
      .map((e) => Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(e),
                  fit: BoxFit.fill,
                  filterQuality: FilterQuality.high,
                ),
                color: const Color.fromARGB(255, 242, 229, 199)),
          ))
      .toList();

  int _currentIndex = 0;
  late PageController _pageController;
  bool visiblee = true;
  @override
  void initState() {
    super.initState();
    _currentIndex = SharedPreferenceHelper.getIndexValue() ?? 0;
    _pageController = PageController(
      initialPage: _currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 242, 229, 199),
      child: Stack(
        fit: StackFit.expand,
        children: [
          SafeArea(
            child: Material(
              color: Colors.transparent,
              elevation: 0,
              child: InkWell(
                onTap: () {
                  setState(() {
                    visiblee = !visiblee;
                  });
                },
                child: PageView(
                  reverse: true,
                  controller: _pageController,
                  children: pages,
                  onPageChanged: (index) {
                    SharedPreferenceHelper.changeValue(index);
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                ),
              ),
            ),
          ),
          Visibility(
            visible: visiblee,
            child: Positioned(
              top: 0,
              child: Container(
                width: 375.w,
                height: 80.h,
                color: Colors.black,
                child: Stack(
                  children: [
                    Positioned(
                      right: 10.w,
                      top: 30.h,
                      child: IconButton(
                        onPressed: () {
                          showCustomMenu(context);
                        },
                        icon: Icon(
                          Icons.menu_open,
                          color: const Color.fromARGB(255, 242, 229, 199),
                          size: 35.r,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Visibility(
            visible: visiblee,
            child: Positioned(
              bottom: 0,
              child: Container(
                width: 375.w,
                height: 80.h,
                color: Colors.black,
                child: Material(
                  color: Colors.transparent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        pageInfo[_currentIndex + 1].length == 2
                            ? getSurahNameArabic(pageInfo[_currentIndex + 1][1]
                                .values
                                .toList()
                                .first)
                            : getSurahNameArabic(pageInfo[_currentIndex + 1]
                                .first
                                .values
                                .toList()
                                .first),
                        style: TextStyle(
                            fontSize: 20.sp,
                            color: Colors.white,
                            fontFamily: 'Gulzar'),
                      ),
                      Text(
                        (_currentIndex + 1).toString(),
                        style: TextStyle(fontSize: 20.sp, color: Colors.white),
                      ),
                      Text(
                        convertToArabicJuzs(getJuzNumber(
                            pageInfo[_currentIndex + 1]
                                .first
                                .values
                                .toList()
                                .first,
                            pageInfo[_currentIndex + 1]
                                .first
                                .values
                                .toList()
                                .last)),
                        style: TextStyle(
                            fontSize: 20.sp,
                            color: Colors.white,
                            fontFamily: 'Gulzar'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void showCustomMenu(BuildContext context) {
  showMenu(
    context: context,
    position: RelativeRect.fromLTRB(10.w, 30.h, 0, 0),
    items: [
      PopupMenuItem(
        child: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Fehrs()),
            );
          },
          child: const Text(
            'فهرس',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      PopupMenuItem(
        child: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Guzs()),
            );
          },
          child: const Text(
            'اجزاء',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      PopupMenuItem(
        child: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Search()),
            );
          },
          child: const Text(
            'بحث',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    ],
    color: Colors.black, // Background color of the menu
  );
}
