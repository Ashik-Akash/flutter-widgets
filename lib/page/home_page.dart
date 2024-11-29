import 'package:flutter/material.dart';
import 'package:project/core/route.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FloatingActionButton(
              onPressed: () {
                Navigator.pushNamed(context, Routes.kDescriptionPage);
              },
              backgroundColor: Colors.redAccent,
              child: const Icon(Icons.add),
            ),
            FloatingActionButton(
              onPressed: () {
                Navigator.pushNamed(context, Routes.kProductListPage);
              },
              backgroundColor: Colors.redAccent,
              child: const Icon(Icons.add),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text("Home Page"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,

        leading: const Icon(
          Icons.arrow_back,
          color: Colors.greenAccent,
          size: 24,
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_a_photo),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.menu),
            color: Colors.redAccent,
            onPressed: () {},
          ),
        ],
        // backgroundColor: Colors.orange,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 100),
              child: Container(
                alignment: Alignment.center,
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                    color: Colors.red,
                    border: Border.all(
                      color: Colors.green,
                      width: 2,
                    ),
                    //borderRadius: BorderRadius.circular(8),
                    shape: BoxShape.circle),
                child: const Icon(
                  Icons.add_a_photo,
                  size: 35,
                  color: Colors.yellow,
                ),
              ),
            ),
            const SizedBox(
              height: 50,
              width: 20,
            ),
            Center(
              child: Stack(
                //alignment: Alignment.center,
                children: <Widget>[
                  Container(
                    height: 300,
                    width: 300,
                    color: Colors.green,
                  ),
                  const Positioned(
                    left: 85,
                    top: 70,
                    child: CircleAvatar(
                      radius: 70,
                      backgroundColor: Colors.red,
                    ),
                  )
                ],
              ),
            ),
            const Column(
              children: [
                SizedBox(
                  height: 20,
                )
              ],
            ),
            Column(
              children: [
                Container(
                  child: Image.network(
                    "https://cdn.pixabay.com/photo/2023/11/05/15/25/winter-8367632_1280.jpg",
                    height: 200,
                    width: 200,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
