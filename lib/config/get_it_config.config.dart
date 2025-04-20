// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:keep_my_notes/features/medications/data/data_sources/medications_data_source.dart'
    as _i598;
import 'package:keep_my_notes/features/medications/data/repositories/medications_repository.dart'
    as _i1049;
import 'package:keep_my_notes/features/medications/presentation/blocs/medications_bloc.dart'
    as _i650;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.factory<_i598.MedicationsDataSource>(
      () => _i598.MedicationsDataSourceImpl(),
    );
    gh.factory<_i1049.MedicationsRepository>(
      () => _i1049.MedicationsRepository(gh<_i598.MedicationsDataSource>()),
    );
    gh.factory<_i650.MedicationsBloc>(
      () => _i650.MedicationsBloc(gh<_i1049.MedicationsRepository>()),
    );
    return this;
  }
}
