import 'package:flutter/material.dart';
import 'package:listview_mvvm/screens/item_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

navigateToItemPage(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => ItemPage()));
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'H O M E',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          const Text(
            'LIST OF USERS',
            style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 2,
                itemBuilder: ((context, index) {
                  return _listTile(context, "User Name", "email");
                })),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          navigateToItemPage(context);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

Widget _listTile(BuildContext context, title, subtitle) {
  return ListTile(
    title: Text(title),
    subtitle: Text(subtitle),
    onTap: () {
      navigateToItemPage(context);
    },
  );
}
