import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keep_my_notes/config/get_it_config.dart';
import 'package:keep_my_notes/features/auth/registration/domain/states/registration_state.dart';
import 'package:keep_my_notes/features/auth/registration/presentation/cubits/registration_cubit.dart';
import 'package:keep_my_notes/shared/theme/theme_colors.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<RegistrationCubit>(),
      child: BlocBuilder<RegistrationCubit, RegistrationState>(
        builder: builder,
      ),
    );
  }

  Widget builder(BuildContext context, RegistrationState state) {
    return Scaffold(
      backgroundColor: ThemeColors.background,
      body: Column(children: [
      
    ],),
    );
  }
}
