import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'points_counter_state.dart';

class PointsCounterCubit extends Cubit<PointsCounterState> {
  PointsCounterCubit() : super(PointsCounterInitial());
  int teamApoints = 0; int teamBpoints = 0;
  int reset = 0;
  getPoints({ required String team,required int buttonPoints}){
    if(team == 'A'){
      teamApoints += buttonPoints;
      emit(PointsACounter());
    }
    else if(team == 'B'){
      teamBpoints += buttonPoints;
      emit(PointsBCounter());
    }
    else if(team == 'reset'){
      teamApoints = reset;
      teamBpoints = reset;
      emit(PointsReset());
    }
  }

}
