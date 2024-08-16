import 'package:class_2/domain/entities/message.dart';

class YesNoModel {
  final String answer;
  final bool forced;
  final String image;

  YesNoModel({
    required this.answer,
    required this.forced,
    required this.image,
  });

  factory YesNoModel.fromJson(Map<String, dynamic> json) => YesNoModel(
        answer: json["answer"],
        forced: json["forced"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "answer": answer,
        "forced": forced,
        "image": image,
      };

// method to convert YesNoModel to Message
  Message toMessageEntity() => Message(
        text: answer == "yes" ? "Yes" : "No",
        fromWho: FromWho.her,
        imgUrl: image,
      );
}
