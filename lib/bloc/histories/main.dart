// ? Bloc manage list of histories state
import 'package:flutter_bloc/flutter_bloc.dart';

sealed class HistoriesEvent {}

class HistoriesState {

}

class HistoriesBloc extends Bloc<HistoriesEvent, HistoriesState> { 
  HistoriesBloc(super.initialState);
}


final class FetchHistoriesEvent extends HistoriesEvent{}