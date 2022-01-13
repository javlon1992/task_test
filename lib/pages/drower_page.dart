import 'package:flutter/material.dart';

class DrawerPage extends StatefulWidget {
  static String id = "drawer_page";

  const DrawerPage({Key? key}) : super(key: key);

  @override
  _DrawerPageState createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(builder: (context) {
          return IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        }),
        actions: [
          Builder(builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
              icon: Icon(Icons.menu),
            );
          }),
        ],
      ),
      endDrawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          children: [
            Container(
              color: Colors.blue.shade200,
              child: DrawerHeader(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      minRadius: 40,
                      backgroundImage: AssetImage("assets/imeges/telegram.png"),
                    ),
                    Text(
                      "Fullname",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "email@gmail.com",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 80,
              child: Row(
                children: [
                  Card(
                    elevation: 7,
                    child: Container(
                      width: 66,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.star_border),
                          Text("Orders"),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 7,
                    child: Container(
                      width: 66,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.collections_bookmark_outlined),
                          Text("Coupons"),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 7,
                    child: Container(
                      width: 66,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.account_balance_wallet),
                          Text("Wallet"),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 7,
                    child: Container(
                      width: 66,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.credit_card),
                          Text("Card"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 80,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 6,
                  itemExtent: 120,
                  itemBuilder: (context, index) {
                    return Card(
                      margin: EdgeInsets.all(8),
                      elevation: 8,
                      child: Container(
                        alignment: Alignment.center,
                        child: Text("Text $index"),
                      ),
                    );
                  }),
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 4 / 3,
                  crossAxisSpacing: 1,
                  mainAxisSpacing: 1),
              itemCount: 10,
              itemBuilder: (context, index) {
                return Card(
                  margin: EdgeInsets.all(15),
                  elevation: 6,
                  child: Center(child: Text("Category $index")),
                );
              },
            ),
          ],
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          children: [
            Container(
              color: Colors.blue.shade200,
              child: DrawerHeader(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      minRadius: 40,
                      backgroundImage: AssetImage("assets/imeges/telegram.png"),
                    ),
                    Text(
                      "Fullname",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "email@gmail.com",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 80,
              child: Row(
                children: [
                  Card(
                    elevation: 7,
                    child: Container(
                      width: 66,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.star_border),
                          Text("Orders"),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 7,
                    child: Container(
                      width: 66,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.collections_bookmark_outlined),
                          Text("Coupons"),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 7,
                    child: Container(
                      width: 66,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.account_balance_wallet),
                          Text("Wallet"),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 7,
                    child: Container(
                      width: 66,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.credit_card),
                          Text("Card"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 80,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 6,
                  itemExtent: 120,
                  itemBuilder: (context, index) {
                    return Card(
                      margin: EdgeInsets.all(8),
                      elevation: 8,
                      child: Container(
                        alignment: Alignment.center,
                        child: Text("Text $index"),
                      ),
                    );
                  }),
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                itemCount: 8,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(Icons.category),
                    title: Text("Category $index"),
                    onTap: () {},
                  );
                }),
          ],
        ),
      ),
      // body: Builder(builder: (context) {
      //   return Text("");
        // return Dismissible(
        //   // Provide a function that tells the app
        //   // what to do after an item has been swiped away.
        //   onDismissed: (direction) {
        //     // Remove the item from the data source.
        //     // Then show a snackbar.
        //     Scaffold.of(context)
        //         .showSnackBar(SnackBar(content: Text("$item dismissed")));
        //   },
        //   // Show a red background as the item is swiped away.
        //   background: Container(color: Colors.red,child: Icon(Icons.cancel),),
        //   secondaryBackground: Container(color: Colors.green,child: Icon(Icons.check),),
        //   key: "",
        //   child: ListTile(title: Text('$item')),
        // );
      //}),
    );
  }
}
