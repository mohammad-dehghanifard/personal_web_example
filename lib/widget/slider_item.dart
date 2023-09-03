import 'package:flutter/material.dart';

class SliderItem extends StatelessWidget {
  const SliderItem({
    super.key,
    required this.title,
    required this.content,
    required this.imagePath,
    this.isBtn = false,
    this.onTap,
    this.btnTxt ='',
  });
  final String title;
  final String content;
  final String imagePath;
  final String btnTxt;
  final bool isBtn;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return Container(
        width: size.width,
        margin: const EdgeInsets.symmetric(horizontal: 5.0),
        padding: const EdgeInsets.all(24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title),
                Text(content),
                Visibility(
                  visible: isBtn ,
                    child: ElevatedButton(
                      onPressed: onTap,
                      child: Text(btnTxt),
                    )
                )
              ],
            ),
            SizedBox(
                width: size.width / 4,
                height: size.height / 2.8,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.network(imagePath,fit: BoxFit.fill,))),
          ],
        )
    );
  }
}