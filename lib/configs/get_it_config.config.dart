// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:keep_my_notes/app/shared/theme/cubit/theme_cubit.dart' as _i570;
import 'package:keep_my_notes/features/auth/sign_up/data/data_sources/registration_data_source.dart'
    as _i1072;
import 'package:keep_my_notes/features/auth/sign_up/data/repositories/registration_repository.dart'
    as _i912;
import 'package:keep_my_notes/features/auth/sign_up/presentation/cubits/registration_cubit.dart'
    as _i807;
import 'package:keep_my_notes/features/medications/data/data_sources/medications_data_source.dart'
    as _i642;
import 'package:keep_my_notes/features/medications/data/repositories/medications_repository.dart'
    as _i1049;
import 'package:keep_my_notes/features/medications/presentation/blocs/medications_bloc.dart'
    as _i650;
import 'package:keep_my_notes/features/mood/presentation/bloc/mood_cubit.dart'
    as _i620;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.factory<_i570.ThemeCubit>(() => _i570.ThemeCubit());
    gh.factory<_i620.MoodCubit>(() => _i620.MoodCubit());
    gh.factory<_i642.MedicationsDataSource>(
      () => _i642.MedicationsDataSourceImpl(),
    );
    gh.factory<_i1072.RegistrationDataSource>(
      () => _i1072.RegistrationDataSourceImpl(),
    );
    gh.factory<_i912.RegistrationRepository>(
      () => _i912.RegistrationRepository(gh<_i1072.RegistrationDataSource>()),
    );
    gh.factory<_i807.RegistrationCubit>(
      () => _i807.RegistrationCubit(gh<_i912.RegistrationRepository>()),
    );
    gh.factory<_i1049.MedicationsRepository>(
      () => _i1049.MedicationsRepository(gh<_i642.MedicationsDataSource>()),
    );
    gh.factory<_i650.MedicationsBloc>(
      () => _i650.MedicationsBloc(gh<_i1049.MedicationsRepository>()),
    );
    return this;
  }
}
