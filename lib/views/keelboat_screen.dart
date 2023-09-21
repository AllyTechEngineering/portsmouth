import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portsmouth/models/centerboard_class.dart';
import 'package:portsmouth/models/keelboat_class.dart';

class KeelboatScreen extends StatefulWidget {
  const KeelboatScreen({super.key});

  @override
  State<KeelboatScreen> createState() => _KeelboatScreenState();
}

class _KeelboatScreenState extends State<KeelboatScreen> {
  KeelboatClass keelboatData = KeelboatClass();

  var items = <String>[];
  TextEditingController editingController = TextEditingController();

  @override
  void initState() {
    var duplicateItemsInit = keelboatData.portsmouth;
    items = duplicateItemsInit;
    super.initState();
  }

  void filterSearchResults(String query) {
    setState(() {
      var duplicateItemsSearch = keelboatData.portsmouth;
      items = duplicateItemsSearch
          .where((item) => item.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    String columnValues = keelboatData.columnHeadings;
    return Scaffold(
      // backgroundColor: Colors.blue,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_circle_left_outlined,
          ),
          onPressed: () => context.go('/'),
        ),
        title: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            'Portsmouth Keelboat Class',
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.settings,
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
}
