
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/widgets/header_item.dart';
import '../components/widgets/sikll_indicator.dart';
import '../components/widgets/skill_item.dart';
import '../components/widgets/slider_item.dart';

final List<SliderItem> sliderList = [
  SliderItem(
    title: "Hi, I'm John, a Flutter developer",
    content: "I am a Flutter programmer and developer and have worked with many companies. If you want, I can do your Fluttery projects. You can see a part of my daily life through this site. After viewing the project, if you wish, you can register your project so that I can contact you and negotiate about your project and reach the best result!",
    imagePath: "https://www.uplooder.net/img/image/63/1939c5b67b29e64ab10cc9de984323d8/38dab210-9afa-43c8-bf4f-febb529508a5140003300933370836268.jpg",
    isBtn: true,
    onTap: () {},
    btnTxt: "Project registration",
  ),
  const SliderItem(
    title: "title 2",
    content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    imagePath: "https://www.uplooder.net/img/image/5/3ec6c625bc8917e34c0c453587ca53ef/vti8w9p39pud.jpg",
  ),
  const SliderItem(
    title: "title 3",
    content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    imagePath: "https://www.uplooder.net/img/image/96/85c407e0033a1ac9150bdc0dcf783e2d/word-image-2.jpg",
  ),
  const SliderItem(
    title: "title 4",
    content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    imagePath: "https://www.uplooder.net/img/image/70/64e1072d9b53cc21ef9ef8f6e5713bb0/necessary-programmer-skills-min.jpg",
  ),
];

final List<SkillItem> skillList = [
  const SkillItem(
    icon: Icons.code,
    title: "Title 1",
    content:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
  ),
  const SkillItem(
    icon: Icons.laptop,
    title: "Title 2",
    content:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
  ),
  const SkillItem(
    icon: CupertinoIcons.pen,
    title: "Title 3",
    content:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
  ),
  const SkillItem(
    icon: CupertinoIcons.device_desktop,
    title: "Title 4",
    content:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
  ),
  const SkillItem(
    icon: Icons.web,
    title: "Title 5",
    content:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
  ),
  const SkillItem(
    icon: Icons.person_2,
    title: "Title 6",
    content:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
  ),
];

final List<SkillIndicator> skillIndicatorList = [
  const SkillIndicator(
    percent: 0.9,
    skillName: "Flutter",
  ),
  const SkillIndicator(
    percent: 0.6,
    skillName: "WordPress",
  ),
  const SkillIndicator(
    percent: 0.8,
    skillName: "C#",
  ),
  const SkillIndicator(
    percent: 0.5,
    skillName: "Unity",
  ),
  const SkillIndicator(
    percent: 0.8,
    skillName: "Ui/Ux",
  ),
  const SkillIndicator(
    percent: 0.9,
    skillName: "Kotlin",
  ),
  const SkillIndicator(
    percent: 0.8,
    skillName: "Java",
  ),
  const SkillIndicator(
    percent: 0.6,
    skillName: "FireBase",
  ),
];

final List<HeaderItem> headerItemList = [
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
];