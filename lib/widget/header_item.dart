import 'package:flutter/material.dart';

class HeaderItem extends StatefulWidget {
  const HeaderItem({
    super.key, required this.txt, required this.onTap,
  });
  final String txt;
  final Function() onTap;

  @override
  State<HeaderItem> createState() => _HeaderItemState();
}

class _HeaderItemState extends State<HeaderItem> {
  Color itemColor = Colors.blueGrey;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: MouseRegion(
        onHover: (event) {
          setState(() {
            itemColor = Colors.black;
          });
        },
        onExit: (event) {
          setState(() {
            itemColor = Colors.blueGrey;
          });
        },
        child: Text(widget.txt,style:  TextStyle(color: itemColor,fontSize: 16,fontWeight: FontWeight.bold)),
      ),
    );
  }
}
