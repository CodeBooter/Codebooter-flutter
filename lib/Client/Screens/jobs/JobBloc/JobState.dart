import 'package:codebooter_study_app/Client/Screens/jobs/JobModel.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
abstract class JobState extends Equatable {}

//data loading state
class JobLoadingState extends JobState {
  @override
  List<Object> get props => [];
}

//data loaded state

class JobLoadedState extends JobState {
  JobLoadedState(this.jobs);
  final List<JobModel> jobs;

  @override
  List<Object> get props => [jobs];
}

//data loading error state
class JobErrorState extends JobState {
  JobErrorState(this.error);
  final String error;
  @override
  List<Object> get props => [];
}
