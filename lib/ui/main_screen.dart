import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../widget/header_item.dart';
import '../widget/slider_item.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return  Scaffold(
      body: Column(
        children: [
          //header
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const FlutterLogo(size: 48,),
              const Expanded(child: SizedBox()),

              HeaderItem(
                onTap: () {},
                txt: "Home",
              ),
              HeaderItem(
                onTap: () {},
                txt: "Blog",
              ),
              HeaderItem(
                onTap: () {},
                txt: "About Me",
              ),
              HeaderItem(
                onTap: () {},
                txt: "Contact Me",
              ),
              HeaderItem(
                onTap: () {},
                txt: "Project",
              ),
              HeaderItem(
                onTap: () {},
                txt: "resume",
              ),


            ],
          ),
          //slider
          Container(
            margin: const EdgeInsets.all(16),
            width: size.width,
            height: size.height / 2.5,
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.circular(12),
            ),
            child: CarouselSlider(
                items: [1,2,3,4,5].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return SliderItem(
                        title: "title $i",
                        content: "this is content $i",
                        imagePath: "https://www.uplooder.net/img/image/63/1939c5b67b29e64ab10cc9de984323d8/38dab210-9afa-43c8-bf4f-febb529508a5140003300933370836268.jpg",
                        isBtn: true,
                        onTap: () {},
                        btnTxt: "btn",
                      );
                    },
                  );
                }).toList(),
                options: CarouselOptions(
                  scrollDirection: Axis.vertical,
                    height: size.height / 2.5,
                    viewportFraction: 1.1),),
          ),
        ],
      ),
    );
  }
}

