import 'package:bloc/bloc.dart';

part 'timer_event.dart';
part 'timer_state.dart';

class TimerBloc extends Bloc<TimerEvent, TimerState>{
  static const int_duration = 60;

  StreamSubscription<int>? _tickerSubscription;

  TimerBloc({required Ticker ticker})
  : _ticker = ticker,
  super(TimerInitial(_duration)){
  on<TimerStarted>(_onStarted);
  }

  @override
  Future<void> close(){
    _tickerSubscription?.cancel();
    return super.close();
  }

  void _onStarted(TimerStarted event, Emitter<TimerState> emit){
    emit(TimerRunInProgress(event.duration));
    _tickerSubscription?.cancel();
    _tickerSubscription = _ticker
      .tick(ticks: event.duration)
      .listen((duration) => add(TimerTicked(duration: duration)));
  }
}

