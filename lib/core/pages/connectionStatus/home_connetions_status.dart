import 'package:flutter/material.dart';
import 'package:marvelapk01/core/models/marvel_model.dart';
import 'package:marvelapk01/core/pages/connectionStatus/home_error.dart';
import 'package:marvelapk01/core/pages/connectionStatus/home_loading.dart';
import 'package:marvelapk01/core/pages/connectionStatus/home_mesage_error.dart';
import 'package:marvelapk01/core/pages/home/home_page.dart';
import 'package:marvelapk01/core/repositories/marvel_repository.dart';
import 'package:marvelapk01/core/repositories/marvel_repository_imp.dart';
import 'package:marvelapk01/core/service/dio_service_imp.dart';

class HomeConnetionsStatus extends StatefulWidget {
  const HomeConnetionsStatus({Key? key}) : super(key: key);

  @override
  State<HomeConnetionsStatus> createState() => _HomeConnetionsStatusState();
}

class _HomeConnetionsStatusState extends State<HomeConnetionsStatus> {
  @override
  Widget build(BuildContext context) {
    return const HomePage();
  }
}
