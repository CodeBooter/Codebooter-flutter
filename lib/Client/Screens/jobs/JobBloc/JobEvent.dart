import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
abstract class JobEvent extends Equatable {
  const JobEvent();
}

class LoadJobEvent extends JobEvent {
  @override
  List<Object> get props => [];
}
