import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

part 'nav_state_state.dart';

DateTime dateTime = DateTime.now();
final String valueOfDate = DateFormat('yyyy/MM/dd').format(dateTime);

class NavStateCubit extends Cubit<NavStateState> {
  // ignore: prefer_const_constructors
  NavStateCubit()
      : super(NavStateState(dateOfBirth: valueOfDate, wasSelected: false));


      void datePicked() => emit(NavStateState(dateOfBirth: state.dateOfBirth, wasSelected: true));
}
