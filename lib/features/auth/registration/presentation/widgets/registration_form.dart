import 'package:flutter/widgets.dart';
import 'package:keep_my_notes/shared/theme/theme_colors.dart';
import 'package:keep_my_notes/shared/theme/theme_radiuses.dart';
import 'package:keep_my_notes/shared/theme/theme_text_styles.dart';

class RegistrationForm extends StatelessWidget {
  const RegistrationForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 24, bottom: 20),
      decoration: BoxDecoration(
        color: ThemeColors.background,
        borderRadius: ThemeRadiuses.radiusGeometry16,
      ),
      child: Column(
        spacing: 20,
        children: [
          Column(
            children: [
              Text(
                'Sign up to manage your medications',
                style: ThemeTextStyles.heading22,
              ),
              Text(
                'Sign up to manage your medications',
                style: ThemeTextStyles.subheading16,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
