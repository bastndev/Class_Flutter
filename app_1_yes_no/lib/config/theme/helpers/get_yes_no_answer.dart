import 'package:class_2/domain/entities/message.dart';
import 'package:class_2/infrastructure/models/yes_no_model.dart';
import 'package:dio/dio.dart';

class GetYesNoAnswer {
  final _dio = Dio();

  Future<Message> getAnswer() async {
    final response = await _dio.get('https://yesno.wtf/api');

    final YesNoModel yesNoModel = YesNoModel.fromJson(response.data);

    return yesNoModel.toMessageEntity();
  }
}
