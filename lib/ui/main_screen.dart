import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../components/widgets/header_item.dart';
import '../components/widgets/information_section.dart';
import '../components/widgets/skill_item.dart';
import '../components/widgets/slider_item.dart';
import '../data/fake_data.dart';


class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                  items: sliderList.map((item) {
                    return Builder(
                      builder: (BuildContext context) {
                        return SliderItem(
                          title: item.title,
                          content: item.content,
                          imagePath: item.imagePath,
                          isBtn: item.isBtn,
                          onTap: item.onTap,
                          btnTxt: item.btnTxt,
                        );
                      },
                    );
                  }).toList(),
                  options: CarouselOptions(
                    scrollDirection: Axis.vertical,
                      height: size.height / 2.5,
                      viewportFraction: 1.1),),
            ),
            SizedBox(height: size.height * 0.02),

            // user information section
            InformationSection(size: size,onTap: () {}),
            SizedBox(height: size.height * 0.06),

            //my service
            const Text("What i do?",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 32,color: Colors.blueGrey),),
            Padding(
              padding: const EdgeInsets.all(16),
              child: SizedBox(
                height: size.height / 1.6,
                child: GridView.builder(
                     itemCount: 6,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 2,
                    ),
                    itemBuilder: (context, index) {
                      return SkillItem(size: size);
                    },),
              ),
            ),


          ],
        ),
      ),
    );
  }
}






