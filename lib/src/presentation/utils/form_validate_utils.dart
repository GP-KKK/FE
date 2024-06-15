import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class FormValidateUtils {
  String? validateName(FocusNode focusNode, String value) {
    if (value.isEmpty) {
      focusNode.requestFocus();
      return Intl.message('enterName');
    } else if (value.length < 2) {
      focusNode.requestFocus();
      return Intl.message('nameLengthMinimum');
    } else if (value.length > 20) {
      focusNode.requestFocus();
      return Intl.message('nameLengthMaximum');
    } else if (!RegExp(r'^[a-zA-Z가-힣\s]+$').hasMatch(value)) {
      focusNode.requestFocus();
      return Intl.message('invalidNameFormat');
    } else {
      return null;
    }
  }

  String? validateEmail(FocusNode focusNode, String value) {
    if (value.isEmpty) {
      focusNode.requestFocus();
      return Intl.message('enterEmail');
    } else {
      String pattern =
          r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
      RegExp regExp = RegExp(pattern);
      if (!regExp.hasMatch(value)) {
        focusNode.requestFocus(); //포커스를 해당 textformfield에 맞춘다.
        return Intl.message('invalidEmailFormat');
      } else {
        return null;
      }
    }
  }

  String? validateBirthYear(FocusNode focusNode, String value) {
    int currentYear = DateTime.now().year;

    if (value.isEmpty) {
      focusNode.requestFocus();
      return Intl.message('enterBirthYear');
    } else {
      String pattern = r'^\d{4}$';
      RegExp regExp = RegExp(pattern);
      if (!regExp.hasMatch(value)) {
        focusNode.requestFocus();
        return Intl.message('birthYearDigits');
      } else {
        int inputYear = int.parse(value);

        if (inputYear <= currentYear - 20 || inputYear >= currentYear) {
          focusNode.requestFocus();
          return Intl.message('invalidChildBirthYear');
        } else {
          return null;
        }
      }
    }
  }

  String? validateGrade(FocusNode focusNode, String value) {
    // 입력값이 비어있는지 확인
    if (value.isEmpty) {
      focusNode.requestFocus();
      return Intl.message('putGrade');
    } else {
      // 입력값이 숫자인지 확인
      String pattern = r'^\d+$';
      RegExp regExp = RegExp(pattern);
      if (!regExp.hasMatch(value)) {
        focusNode.requestFocus();
        return Intl.message('gradeDigits');
      } else {
        int inputGrade = int.parse(value);

        // 입력된 숫자가 1부터 12 사이인지 확인
        if (inputGrade < 1 || inputGrade > 12) {
          focusNode.requestFocus();
          return Intl.message('validGradeRange');
        } else {
          return null;
        }
      }
    }
  }

  String? validateTextAnswer(FocusNode focusNode, String value) {
    if (value.isEmpty) {
      focusNode.requestFocus();
      return Intl.message('enterContent');
    } else if (value.length < 2) {
      focusNode.requestFocus();
      return Intl.message('contentLengthMinimum');
    } else if (value.length > 20) {
      focusNode.requestFocus();
      return Intl.message('contentLengthMaximum20');
    } else {
      return null;
    }
  }

  String? validateTextareaAnswer(FocusNode focusNode, String value) {
    if (value.isEmpty) {
      focusNode.requestFocus();
      return Intl.message('enterContent');
    } else if (value.length < 2) {
      focusNode.requestFocus();
      return Intl.message('contentLengthMinimum');
    } else if (value.length > 100) {
      focusNode.requestFocus();
      return Intl.message('contentLengthMaximum100');
    } else {
      return null;
    }
  }

  String? validateMyRecordComment(FocusNode focusNode, String value) {
    if (value.length > 60) {
      focusNode.requestFocus();
      return Intl.message('contentLengthMaximum60');
    } else {
      return null;
    }
  }
}
