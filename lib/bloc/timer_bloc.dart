import 'package:bloc/bloc.dart';

part 'timer_event.dart';
part 'timer_state.dart';

class TimerBloc extends Bloc<TimerEvent, TimerState>{
  static const int_duration = 60;

  StreamSubscription<int>? _tickerSubscription;

  TimerBloc({required Ticker ticker})
  : _ticker = ticker,
  super(TimerInitial(_duration)){
  //  TODO implement event handlers
  }
}

