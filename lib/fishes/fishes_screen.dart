import 'package:flutter/material.dart';
import 'package:flutter_mini_project/fishes/big_fishes.dart';
import 'package:flutter_mini_project/fishes/lowprice_fishes.dart';
import 'package:flutter_mini_project/fishes/popular_fishes.dart';
import 'package:flutter_mini_project/fishes/small_fishes.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class FishItemScreen extends StatelessWidget {
  const FishItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List addtoCart = [];
    List pages = [
      const PopularFishes(),
      const LowPriceFishes(),
      const SmallFishes(),
      const BigFishes(),
    ];
    List pageName = [
      'Popular',
      'Low Price',
      'Small Fishes',
      'Big Fishes',
    ];
    List productData = [
      {
        'price': '\$325',
        'title': 'Clown Tang',
      },
      {
        'price': '\$89',
        'title': 'Clown Fish',
      },
      {
        'price': '\$89',
        'title': 'Gold Fish',
      },
      {
        'price': '\$325',
        'title': 'Fish',
      },
      {
        'price': '\$325',
        'title': 'Clown Tang',
      },
      {
        'price': '\$89',
        'title': 'Clown Fish',
      },
    ];
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios_new_rounded,
                      size: 14,
                    ),
                  ),
                  Text(
                    "Big & Small Fishes",
                    style: GoogleFonts.manrope(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.5,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/svg/Search.svg'),
                        const SizedBox(
                          width: 9,
                        ),
                        SvgPicture.asset('assets/svg/Cart.svg'),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(vertical: 10),
                width: double.infinity,
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: pages.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => pages[index],
                          ),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        height: 36,
                        alignment: Alignment.center,
                        margin: const EdgeInsets.only(right: 6),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: index == 0
                                ? const Color(0XFFF9B023)
                                : Colors.grey,
                          ),
                          color: index == 0
                              ? const Color(0XFFF9B023)
                              : Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          pageName[index],
                          style: GoogleFonts.manrope(
                            color: index == 0 ? Colors.white : Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 10,
                ),
                height: MediaQuery.of(context).size.height * 0.80,
                width: double.infinity,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: productData.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.all(8.0),
                      color: const Color(0XFFF8F9FB),
                      height: 160,
                      width: 100,
                      child: Column(
                        children: [
                          SvgPicture.asset('assets/svg/ImageIcon.svg'),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                GestureDetector(
                                    onTap: () {
                                      addtoCart.add(productData[index]);
                                      print(productData[index]);
                                    },
                                    child: SvgPicture.asset(
                                        'assets/svg/AddProduct.svg')),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 24),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      productData[index]['price'],
                                      style: GoogleFonts.manrope(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text(
                                      productData[index]['title'],
                                      style: GoogleFonts.manrope(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: const Color(0XFF616A7D),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
