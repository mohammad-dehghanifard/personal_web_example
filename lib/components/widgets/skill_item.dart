import 'package:flutter/material.dart';

class SkillItem extends StatelessWidget {
  const SkillItem({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: const EdgeInsets.only(top: 12),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.grey.shade300
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // icon
              const Icon(Icons.code,size: 64,),
              SizedBox(height: size.height * 0.02),
              // title
              const Text("Title"),
              SizedBox(height: size.height * 0.02),
              //content
              SizedBox(
                  width: size.width / 1.6,
                  child: const Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                    maxLines: 4,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 14),)),
            ],
          ),
        )
    );
  }
}