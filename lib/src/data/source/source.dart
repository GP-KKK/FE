import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:fe/src/data/model/model.dart';
import 'package:fe/src/data/repository/repository.dart';
import 'package:fe/src/data/service/auth/social_login/naver_service.dart';
import 'package:fe/src/data/service/service.dart';
import 'package:fe/src/shared/provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:fe/src/data/repository/auth/social_login_repository.dart';
import 'package:fe/src/shared/constants/constants.dart';

part 'source.g.dart';
part 'news/news_data_source.dart';
part 'auth/auth_data_source.dart';
