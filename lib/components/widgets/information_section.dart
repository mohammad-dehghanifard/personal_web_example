import 'package:flutter/material.dart';

class InformationSection extends StatelessWidget {
  const InformationSection({
    super.key,
    required this.size, required this.onTap,
  });

  final Size size;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // image
          Image.network(
            "https://www.uplooder.net/img/image/79/ac963fc31a71c0b57d73cb08e6c1de3b/img.jpg",
            width: size.width / 4,
          ),
          SizedBox(width: size.width *0.02,),
          // information
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //title
              const Text("I'm John, a Flutter developer",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.blueGrey),),
              SizedBox(height: size.height *0.01,),
              // description
              SizedBox(
                  width: size.width / 2.4,
                  child: const Text(
                    "I am a Flutter programmer and developer and have worked with many companies. If you want, I can do your Fluttery projects. You can see a part of my daily life through this site. After viewing the project, if you wish, you can register your project so that I can contact you and negotiate about your project and reach the best result!",
                    maxLines: 4,
                    textAlign: TextAlign.justify,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 18),)),
              SizedBox(height: size.height *0.12),

              //btn
              ElevatedButton(
                  onPressed: onTap,
                  child: const Text("View resume"))
            ],
          ),

        ],
      ),
    );
  }
}