import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portsmouth/models/centerboard_class.dart';
import 'package:portsmouth/utilities/theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  CenterboardClass centerboardData = CenterboardClass();
  // var duplicateItems = portsmouth;

  var items = <String>[];
  TextEditingController editingController = TextEditingController();

  @override
  void initState() {
    var duplicateItemsInit = centerboardData.portsmouth;
    items = duplicateItemsInit;
    super.initState();
  }

  void filterSearchResults(String query) {
    setState(() {
      var duplicateItemsSearch = centerboardData.portsmouth;
      items = duplicateItemsSearch
          .where((item) => item.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    String columnValues = centerboardData.columnHeadings;
    return Scaffold(
      // backgroundColor: Colors.blue,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.description_outlined,
            color: Colors.white,
          ),
          iconSize: 40.0,
          onPressed: () => context.go('/definition_screen'),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        title: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            'Portsmouth Precalc Handicaps',
            style: TextStyle(
              // fontFamily: kFontTypeForApp,
              color: Colors.white,
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.settings,
              color: Colors.white,
            ),
            onPressed: () => context.go('/settings_screen'),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              style: const TextStyle(
                color: Colors.black,
              ),
              onChanged: (value) {
                filterSearchResults(value);
              },
              controller: editingController,
              decoration: const InputDecoration(
                filled: true, fillColor: Colors.white70,
                // labelStyle: TextStyle(color: Colors.black),
                // helperStyle: TextStyle(color: Colors.black),
                // fillColor: Colors.blue,
                // labelText: "Search",
                hintText: "Search", hintStyle: TextStyle(color: Colors.black),
                prefixIcon: Icon(Icons.search), prefixIconColor: Colors.black,
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(25.0))),
              ),
            ),
          ),
          Expanded(
            child: ListView.separated(
              shrinkWrap: true,
              itemCount: items.length,
              itemBuilder: (context, index) {
                /// Using themeData for the ListTile styling
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    style: Theme.of(context).listTileTheme.style,
                    title: Text(
                      columnValues,
                    ),
                    subtitle: Text(
                      items[index],
                    ),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const Divider(
                  thickness: 2,
                );
              },
            ),
          ),
        ],
      ),
    );
  } //Widget
} //class
//TextStyle(fontSize: 10.0, color: Colors.white)