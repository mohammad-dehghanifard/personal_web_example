import 'package:flutter/material.dart';

class SkillItem extends StatefulWidget {
  const SkillItem({
    super.key, required this.icon, required this.title, required this.content,
  });

  final IconData icon;
  final String title;
  final String content;
  @override
  State<SkillItem> createState() => _SkillItemState();
}

class _SkillItemState extends State<SkillItem> {
  Color backgroundColor = Colors.grey.shade300;
  Color foregroundColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: MouseRegion(
          onHover: (event) {
            setState(() {
              backgroundColor = Colors.blueGrey;
              foregroundColor = Colors.white;
            });
          },
          onExit: (event) {
            setState(() {
              backgroundColor = Colors.grey.shade300;
              foregroundColor = Colors.black;
            });
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 700),
            padding: const EdgeInsets.only(top: 12),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: backgroundColor
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // icon
                Icon(widget.icon,size: 64,color: foregroundColor,),
                SizedBox(height: size.height * 0.02),
                // title
                Text(widget.title,style: TextStyle(color: foregroundColor,fontSize: 22,fontWeight: FontWeight.bold),),
                SizedBox(height: size.height * 0.02),
                //content
                SizedBox(
                    width: size.width / 1.6,
                    child:  Text(
                      widget.content,
                      maxLines: 4,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 14,color: foregroundColor),)),
              ],
            ),
          ),
        )
    );
  }
}