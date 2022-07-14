import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_timer/ticker.dart';

part 'timer_event.dart';
part 'timer_state.dart';

class TimerBloc extends Bloc<TimerEvent, TimerState>{
  static const int_duration = 60;

  StreamSubscription<int>? _tickerSubscription;

  TimerBloc({required Ticker ticker})
  : _ticker = ticker,
  super(TimerInitial(_duration)){
  on<TimerStarted>(_onStarted);
  on<TimerPaused>(_onPaused);
  on<TimerResumed>(_onResumed);
  on<TimerReset>(onReset);
  on<TimerTicked>(_onTicked);
  }

  @override
  Future<void> close(){
    _tickerSubscription?.cancel();
    return super.close();
  }

  //TimerStarted event handler
  void _onStarted(TimerStarted event, Emitter<TimerState> emit){
    emit(TimerRunInProgress(event.duration));
    _tickerSubscription?.cancel();
    _tickerSubscription = _ticker
      .tick(ticks: event.duration)
      .listen((duration) => add(TimerTicked(duration: duration)));
  }

  //TimerPaused event handler
  void _onPaused(TimerPaused event, Emitter<TimerState> emit){
    if(state is TimerRunInProgress){
      _tickerSubscription?.pause();
      emit(TimerRunPause(state.duration));
    }
  }

  //TimerResumed event handler
  void _onResumed(TimerResumed resume, Emitter<TimerState> emit){
    if (state is TimerRunPause){
      _tickerSubscription?.resume();
      emit(TimerRunInProgress(state.duration));
    }
  }

  //TimerReset event handler
  void _onReset(TimerReset event, Emitter<TimerState> emit){
    _tickerSubscription?.cancel();
    emit(TimerInitial(_duration));
  }

  //  TimerTicked event handler
  void _onTicked(TimerTicked event, Emitter<TimerState> emit){
    emit(
      event.duration > 0
          ? TimerRunInProgress(event.duration)
          : TimerRunComplete(),
    );
  }

}

