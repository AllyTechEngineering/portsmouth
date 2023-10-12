import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portsmouth/models/centerboard_class.dart';
// import 'package:provider/provider.dart';

class CenterBoardScreen extends StatefulWidget {
  const CenterBoardScreen({super.key});

  @override
  State<CenterBoardScreen> createState() => _CenterBoardScreenState();
}

class _CenterBoardScreenState extends State<CenterBoardScreen> {
  CenterboardClass centerboardData = CenterboardClass();

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
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_circle_left_outlined,
          ),
          onPressed: () => context.go('/'),
        ),
        title: const FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            'Portsmouth Centerboard Class',
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
              style: const TextStyle(),
              onChanged: (value) {
                filterSearchResults(value);
              },
              controller: editingController,
              decoration: const InputDecoration(
                hintText: "Search",
                prefixIcon: Icon(Icons.search),
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
                    // style: Theme.of(context).listTileTheme.style,
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
