import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: const Text("Biplob Shil"),
         centerTitle: true,
         elevation: 5,
         backgroundColor: Colors.amber,
       ),
      body: const Center(child: Text("Page 01")),

      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: const EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
                  decoration: const BoxDecoration(color: Colors.amber),
                  accountName: const Text("BIPLOB SHIL",style: TextStyle(color: Colors.black),),
                  accountEmail: const Text("biplobshil.duet@gmail.com",style: TextStyle(color: Colors.black)),
                  currentAccountPicture: Image.asset('images/profile_picture.png'),
                )
            ),
            const ListTile(title: Text("Home"),leading: Icon(Icons.home),),
            const ListTile(title: Text("Email"),leading: Icon(Icons.email),),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle),label: "Profile"),
          BottomNavigationBarItem(icon: Icon(Icons.add_alert),label: "Notifications"),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber,
        child: const Icon(Icons.add),
        onPressed: (){},
      ),



    );
  }
}


