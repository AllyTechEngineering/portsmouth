import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../classes/portsmouth_categories.dart';
import '../common/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var categoriesClass = CategoriesClass();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.description_outlined,
            // color: Colors.white,
          ),
          // iconSize: 40.0,
          onPressed: () => context.go('/definition_screen'),
        ),
        centerTitle: true,
        // backgroundColor: Colors.blueAccent,
        title: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            'NA Portsmouth Precalc Handicap',
            // style: TextStyle(
            //   // fontFamily: kFontTypeForApp,
            //   color: Colors.white,
            //   fontSize: 16.0,
            //   fontWeight: FontWeight.bold,
            //   overflow: TextOverflow.ellipsis,
            // ),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.settings,
              // color: Colors.white,
            ),
            onPressed: () => context.go('/settings_screen'),
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/ocean_background.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 50.0, 8.0, 25.0),
            child: ListView.separated(
              // padding: const EdgeInsets.all(8),
              itemCount: categoriesClass.categoriesTitles.length,
              itemBuilder: (BuildContext context, int index) {
                return _buildInkWell(index);
              },
              separatorBuilder: (BuildContext context, int index) => const Divider(
                height: 25.0,
              ),
            ),
          ),
        ),
      ),
    );
  } //Widget

  InkWell _buildInkWell(int index) {
    return InkWell(
      onTap: () {
        switch (index) {
          case 0:
            {
              _detectOnTapMethod(categoriesClass.categoriesScreens[index]);
            }
            break;
          case 1:
            {
              _detectOnTapMethod(categoriesClass.categoriesScreens[index]);
            }
            break;
          case 2:
            {
              _detectOnTapMethod(categoriesClass.categoriesScreens[index]);
            }
            break;
          case 3:
            {
              _detectOnTapMethod(categoriesClass.categoriesScreens[index]);
            }
            break;
          case 4:
            {
              _detectOnTapMethod(categoriesClass.categoriesScreens[index]);
            }
            break;
          case 5:
            {
              _detectOnTapMethod(categoriesClass.categoriesScreens[index]);
            }
            break;
          case 6:
            {
              _detectOnTapMethod(categoriesClass.categoriesScreens[index]);
            }
            break;
          case 7:
            {
              _detectOnTapMethod(categoriesClass.categoriesScreens[index]);
            }
            break;
          default:
            {
              print('Default');
            }
            break;
        } //switch
      },
      child: _containerMethod(index),
    );
  }

  Container _containerMethod(int index) {
    return Container(
      decoration: styleBoxDecoration,
      height: 65.0,
      width: 20.0,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 15.0, 8.0, 1.0),
        child: Text(
          categoriesClass.categoriesTitles[index],
          style: const TextStyle(
              color: Colors.white,
              fontFamily: kFontTypeForApp,
              fontSize: 20.0,
              fontWeight: FontWeight.bold),
          textAlign: TextAlign.left,
        ),
      ),
    );
  } //Widget

  _detectOnTapMethod(String valueOfScreen) {
    print('Inside of _detectOnTapMethod');
    context.go('/$valueOfScreen');
  }
} //class
