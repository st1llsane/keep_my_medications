import 'package:injectable/injectable.dart';
import 'package:keep_my_notes/features/medications/models/medication.dart';
import 'package:keep_my_notes/shared/global.dart';

abstract interface class MedicationsDataSource {
  Future<List<Medication>> getMedications();
}

@Injectable(as: MedicationsDataSource)
class MedicationsDataSourceImpl implements MedicationsDataSource {
  @override
  Future<List<Medication>> getMedications() => supabase
      .from('medications')
      .select()
      .withConverter((data) => data.map(Medication.fromJson).toList());
}
