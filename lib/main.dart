import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/points_counter_cubit.dart';
import 'hom_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PointsCounterCubit(),
      child: MaterialApp(
        theme: ThemeData(useMaterial3: false),
        title: 'Containers',
        home: Home(),
      ),
    );
  }
}


