import 'package:class_2/domain/entities/message.dart';
import 'package:dio/dio.dart';

class GetYesNoAnswer {
  final _dio = Dio();

  Future<Message> getAnswer() async {
    final response = await _dio.get('https://yesno.wtf/api');

    return Message(
      text: response.data['answer'],
      fromWho: FromWho.her,
      imgUrl: response.data['image'],
    );
  }
}
