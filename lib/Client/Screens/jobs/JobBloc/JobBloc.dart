import 'package:codebooter_study_app/Client/Screens/jobs/FetchApi.dart';
import 'package:codebooter_study_app/Client/Screens/jobs/JobBloc/JobEvent.dart';
import 'package:codebooter_study_app/Client/Screens/jobs/JobBloc/JobState.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class JobBloc extends Bloc<JobEvent, JobState> {
  final FetchJobApi _fetchJobApi;
  JobBloc(this._fetchJobApi) : super(JobLoadingState()) {
    on<LoadJobEvent>((event, emit) async {
      emit(JobLoadingState());
      try {
        final jobs = await _fetchJobApi.getJobs();
        emit(JobLoadedState(jobs));
      } catch (e) {
        emit(JobErrorState(e.toString()));
      }
    });
  }
}
