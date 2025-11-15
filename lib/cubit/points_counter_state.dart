part of 'points_counter_cubit.dart';

@immutable
sealed class PointsCounterState {}

final class PointsCounterInitial extends PointsCounterState {}

final class PointsACounter extends PointsCounterState {}
final class PointsBCounter extends PointsCounterState {}
final class PointsReset extends PointsCounterState {}
