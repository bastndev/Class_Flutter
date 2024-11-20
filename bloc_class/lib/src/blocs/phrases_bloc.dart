import 'package:bloc/bloc.dart';
import 'package:bloc_class/src/data/phrases_repository.dart';

class PhrasesBloc extends Bloc<PhrasesEvent, PhrasesState> {

  final PhrasesRepository _phrasesRepository;

  PhrasesBloc(this._phrasesRepository);

  @override
  PhrasesState get initialState => throw UnimplementedError();


  @override
  Stream<PhrasesState> mapEventToState(PhrasesEvent event) async* {
    if(event is changePhrase){
      yield* _changePhrase();
    }
  }
  
  Stream<PhrasesState> _changePhrase() async* {
    String newPhrase = await _phrasesRepository.aleatoryPhrase();
    yield PhraseChanged(newPhrase);
  }
}

abstract class PhrasesEvent {}

class changePhrase  {}

abstract class PhrasesState {}

class PhraseChanged extends PhrasesState {...}
class PhraseNoChanged  extends PhrasesState {}
