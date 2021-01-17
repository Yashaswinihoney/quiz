import 'package:flutter_application_1/Option.dart';
import 'package:flutter_application_1/Questions.dart';

class QuestionsRepository{
  static Map<int,Question> question_map = {1: Question(1, [Option(1,'opt a'), Option(2, 'opt b')], 'question 1'),
    2: Question(2, [Option(3,'opt c'), Option(4, 'opt d')], 'question 2')
  };
  String get_question(int question_id){
    return question_map[question_id].question_info;
  }
  List<Option> get_options(int question_id, {bool reset = false}){
    return question_map[question_id].options;
  }
  bool toggle_option_selection(int question_id, int option_id, bool current_selected_state ){
    Option option = question_map[question_id].options.firstWhere((opt) => opt.option_id == option_id);
    return option.set_selection_state(!current_selected_state);
  }
}