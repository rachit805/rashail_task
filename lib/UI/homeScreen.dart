import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.amberAccent,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_max_outlined), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.currency_rupee), label: "Finance"),
            BottomNavigationBarItem(
                icon: Icon(Icons.track_changes), label: "Trade"),
            // BottomNavigationBarItem(
            // icon: Icon(Icons.currency_rupee), label: "Finance"),
            // BottomNavigationBarItem(
            //     icon: Icon(Icons.currency_rupee), label: "Finance")
          ]),
      body: Column(
        children: [
          SafeArea(
            child: Container(
              color: const Color.fromARGB(255, 75, 130, 84),
              width: MediaQuery.of(context).size.width,
              height: 40,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Container(
                                height: 35,
                                width: 35,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                    border: Border.all(color: Colors.black))),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              alignment: Alignment.topLeft,
                              child: const Column(
                                // mainAxisAlignment: ,
                                children: [
                                  Text(
                                    "User Name",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        color: Colors.white),
                                  ),
                                  Text(
                                    "VERIFIED ACCOUNT",
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.message_outlined,
                                  color: Colors.white,
                                )),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.notifications_outlined,
                                    color: Colors.white))
                          ],
                        ),
                      )
                    ]),
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            color: Colors.amberAccent,
            width: MediaQuery.of(context).size.width,
            height: 30,
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Center(
                child: Text(
                  "You have some new orders pending to be shipped || You have received y...",
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ),
          ),

          const SizedBox(
            height: 8,
          ),
          // CarouselSlider.builder(itemCount: 10, itemBuilder: itemBuilder, options: options)
        ],
      ),
    );
  }
}
