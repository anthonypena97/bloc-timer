import 'package:bloc/bloc.dart';

part 'timer_event.dart';
part 'timer_state.dart';

class TimerBloc extends Bloc<TimerEvent, TimerState>{
  static const int_duration = 60;
  TimerBloc(): super(){
//  TODO implement event handlers
  }
}

