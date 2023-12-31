import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import '../components/widgets/header_item.dart';
import '../components/widgets/information_section.dart';
import '../components/widgets/sikll_indicator.dart';
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
                // header items
                Center(
                  child: SizedBox(
                    height: size.height * 0.04,
                    width: size.width / 3,
                    child: ListView.builder(
                        itemCount: headerItemList.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          final item = headerItemList[index];
                          return Padding(
                            padding: const EdgeInsets.only(top: 12),
                            child: HeaderItem(txt: item.txt, onTap: item.onTap),
                          );
                        },
                    ),
                  ),
                )
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
                     itemCount: skillList.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 2,
                    ),
                    itemBuilder: (context, index) {
                       final item = skillList[index];
                      return SkillItem(
                        icon: item.icon,
                        title: item.title,
                        content: item.content,
                      );
                    },),
              ),
            ),

            // my skills
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //image
                  SizedBox(
                    width: size.width / 3.5,
                    height: size.height / 1.9,
                    child: Stack(
                      children: [
                        Container(
                          width: size.width / 5.8,
                          height: size.height / 1.9,
                          color: Colors.blueGrey.shade600,
                        ),
                        //image
                        Positioned(
                          top: 20,
                          left: 20,
                          right: 20,
                          bottom: 20,
                          child: SizedBox(
                            width: size.width / 6,
                            height: size.height / 2,
                            child: Image.network(
                              "https://www.uplooder.net/img/image/79/ac963fc31a71c0b57d73cb08e6c1de3b/img.jpg",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // indicators
                   Column(
                     children: [
                       //title
                       Padding(
                         padding : EdgeInsets.only(top: size.height * 0.05),
                         child: RichText(
                           text: TextSpan(
                             text: "My ",
                             style: TextStyle(fontWeight: FontWeight.bold,fontSize: 48,color: Colors.blueGrey.shade800),
                             children: [
                               TextSpan(
                                   text: "Skills",
                                 style: TextStyle(fontWeight: FontWeight.bold,fontSize: 48,color: Colors.amberAccent.shade700),
                               )
                             ]
                           ),
                         )
                       ),
                       // skill indicators
                       Padding(
                         padding:  EdgeInsets.only(top: size.height * 0.04),
                         child: SizedBox(
                           height: size.height / 3.2,
                           width: size.width / 1.6,
                           child: ListView.builder(
                                itemCount: skillIndicatorList.length,
                                itemBuilder: (context, index) {
                                  final item = skillIndicatorList[index];
                                 return SkillIndicator(
                                   percent: item.percent,
                                   skillName: item.skillName,
                                 );
                               },
                           ),
                         ),
                       ),
                     ],
                   )
                ],
              ),
            ),

            // footer
            Container(
              width: double.infinity,
              height: size.height * 0.09,
              color: Colors.blueGrey,
              child: const Center(
                child: Text("Developer : Mohammad Dehghanifard"),
              ),
            )
          ],
        ),
      ),
    );
  }
}







