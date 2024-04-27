// ignore_for_file: file_names

import 'package:devconnect/utils/assets_helper.dart';

class OnbordingModel {
  final String title;
  final String image;
  final String desc;

  OnbordingModel({
    required this.title,
    required this.image,
    required this.desc,
  });
}

List<OnbordingModel> contents = [
  OnbordingModel(
    title: "Track Your work and get the result",
    image: assetsImageHelper.onbording1,
    desc: "Remember to keep track of your professional accomplishments.",
  ),
  OnbordingModel(
    title: "Stay organized with team",
    image: assetsImageHelper.onbording2,
    desc:
        "But understanding the contributions our colleagues make to our teams and companies.",
  ),
  OnbordingModel(
    title: "Get notified when work happens",
    image: assetsImageHelper.onbording3,
    desc:
        "Take control of notifications, collaborate live or on your own time.",
  ),
];
