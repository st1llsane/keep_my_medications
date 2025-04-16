import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keep_my_notes/features/medications/data/repositories/medications_repository.dart';
import 'package:keep_my_notes/features/medications/models/events/medications_event.dart';
import 'package:keep_my_notes/features/medications/models/medication.dart';
import 'package:keep_my_notes/features/medications/models/states/medications_state.dart';

class MedicationsBloc extends Bloc<MedicationsEvent, MedicationsState> {
  MedicationsBloc(this._medicationsRepository)
    : super(const MedicationsState()) {
    on<InitializeMedications>(_onInitialize);

    add(InitializeMedications());
  }

  final MedicationsRepository _medicationsRepository;

  Future<void> _onInitialize(
    InitializeMedications event,
    Emitter<MedicationsState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    final List<Medication> medications =
        await _medicationsRepository.getMedications();
    emit(state.copyWith(medications: medications, isLoading: false));
  }
}
