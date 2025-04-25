import 'package:flutter/material.dart';
import 'package:keep_my_notes/features/medications/models/medication.dart';
import 'package:keep_my_notes/shared/theme/theme_colors.dart';
import 'package:keep_my_notes/shared/theme/theme_radiuses.dart';
import 'package:keep_my_notes/shared/theme/theme_text_styles.dart';

class MedicationTile extends StatelessWidget {
  const MedicationTile({super.key, required this.medication});

  final Medication medication;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      decoration: BoxDecoration(
        color: ThemeColors.background,
        borderRadius: ThemeRadiuses.radiusGeometry12,
        border: Border.all(color: ThemeColors.secondary),
      ),
      child: Column(
        spacing: 12,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            medication.name ?? 'Без названия',
            style: ThemeTextStyles.headingM,
          ),
          if (medication.description != null)
            RichText(
              textAlign: TextAlign.start,
              text: TextSpan(
                style: ThemeTextStyles.subheading18.copyWith(
                  color: ThemeColors.foregroundSecondary,
                ),
                children: [
                  if (medication.description != null)
                    TextSpan(text: medication.description ?? 'Без описания'),
                  if (medication.perDayCount != null)
                    TextSpan(
                      text:
                          ' - ${createPerDayCountText(medication.perDayCount!)}',
                    ),
                ],
              ),
            ),
          Row(
            spacing: 10,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  height: 8,
                  margin: const EdgeInsets.only(top: 1),
                  decoration: BoxDecoration(
                    color: ThemeColors.secondary,
                    borderRadius: ThemeRadiuses.radiusGeometry50,
                  ),
                ),
              ),
              if (medication.perDayCount != null)
                Text(
                  medication.perDayCount.toString(),
                  style: ThemeTextStyles.subheading16.copyWith(
                    color: ThemeColors.foregroundSecondary,
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }

  String createPerDayCountText(int perDayCount) {
    late String text;
    switch (perDayCount) {
      case 1:
        text = '$perDayCount раз в день';
        break;
      default:
        text = '1 раз в день';
    }
    return text;
  }
}
