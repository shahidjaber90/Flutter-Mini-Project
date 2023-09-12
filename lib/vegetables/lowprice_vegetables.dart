import 'package:flutter/material.dart';
import 'package:flutter_mini_project/vegetables/all_vegetables.dart';
import 'package:flutter_mini_project/vegetables/popular_vegetables.dart';
import 'package:flutter_mini_project/vegetables/seasonal_vegetables.dart';

class LowPriceVegetables extends StatelessWidget {
  const LowPriceVegetables({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: const Padding(
                      padding: EdgeInsets.only(
                        top: 10,
                      ),
                      child: Icon(
                        Icons.arrow_back,
                        size: 25,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 9,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      left: 35,
                      top: 10,
                    ),
                    child: Text(
                      "Low Price Vegetables",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 9,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      left: 5,
                      top: 10,
                    ),
                    child: Icon(Icons.search),
                  ),
                  const SizedBox(
                    width: 9,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 8, top: 10),
                    child: Icon(Icons.notifications),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PopularVegetables(),
                          ),
                        );
                      },
                      child: Container(
                        width: 100,
                        height: 30,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 1),
                            borderRadius: BorderRadius.circular(50)),
                        child: const Center(
                          child: Text(
                            "Popular",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LowPriceVegetables(),
                          ),
                        );
                      },
                      child: Container(
                        width: 110,
                        height: 30,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 1),
                            borderRadius: BorderRadius.circular(50)),
                        child: const Center(
                          child: Text(
                            "LowPrice",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AllVegetables(),
                          ),
                        );
                      },
                      child: Container(
                        width: 50,
                        height: 30,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 1),
                            borderRadius: BorderRadius.circular(50)),
                        child: const Center(
                          child: Text(
                            "All",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SeasonalVegetables(),
                          ),
                        );
                      },
                      child: Container(
                        width: 110,
                        height: 30,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 1),
                            borderRadius: BorderRadius.circular(50)),
                        child: const Center(
                          child: Text(
                            "Seasonal",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 15,
                      ),
                      child: Container(
                        height: 220,
                        width: 160,
                        decoration: BoxDecoration(
                          color: const Color(0xFFEEEEEE),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.perm_media,
                              size: 50,
                              color: Color(0xFF616161),
                            ),
                            Text(
                              "Dollar 05/01KG",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Potatoes",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w800),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 55),
                                  child: Icon(
                                    Icons.favorite_border_outlined,
                                    size: 20,
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Icon(
                                  Icons.add_circle_outline,
                                  size: 20,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 15,
                      ),
                      child: Container(
                        height: 220,
                        width: 160,
                        decoration: BoxDecoration(
                          color: const Color(0xFFEEEEEE),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.perm_media,
                              size: 50,
                              color: Color(0xFF616161),
                            ),
                            Text(
                              "Dollar 05/01KG",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Carrots",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w800),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 55),
                                  child: Icon(
                                    Icons.favorite_border_outlined,
                                    size: 20,
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Icon(
                                  Icons.add_circle_outline,
                                  size: 20,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}


