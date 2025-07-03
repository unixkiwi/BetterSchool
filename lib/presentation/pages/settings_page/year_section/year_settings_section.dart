import 'package:flutter/material.dart';
import 'package:school_app/domain/settings/settings_provider.dart';
import 'package:school_app/presentation/pages/settings_page/year_section/school_year_menu_button.dart';
import 'package:school_app/domain/models/school_year.dart';

class YearSettingsSection extends StatefulWidget {
  const YearSettingsSection({super.key});

  @override
  State<YearSettingsSection> createState() => _YearSettingsSectionState();
}

class _YearSettingsSectionState extends State<YearSettingsSection> {
  SchoolYear? _selectedYear;

  @override
  void initState() {
    super.initState();
    _selectedYear = SettingsProvider.instance.schoolYear;
  }

  void _onChanged(dynamic value) async {
    if (value is SchoolYear) {
      await SettingsProvider.instance.setCurrentSchoolYear(value);
      setState(() {
        _selectedYear = value;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    _selectedYear = SettingsProvider.instance.schoolYear;
    return Column(
      children: [
        Text('School Year', style: Theme.of(context).textTheme.labelLarge),
        const SizedBox(height: 12),
        FutureBuilder<List<SchoolYear>>(
          future: SettingsProvider.instance.getSchoolYears(),
          builder: (context, future) {
            if (future.hasData &&
                future.data != null &&
                future.data!.isNotEmpty) {
              final selected = _selectedYear;

              return DropdownButton<SchoolYear>(
                value: future.data!.contains(selected)
                    ? selected
                    : future.data!.first,
                items: future.data!
                    .map<DropdownMenuItem<SchoolYear>>(
                      (year) => DropdownMenuItem<SchoolYear>(
                        value: year,
                        child: SchoolYearMenuButton(year: year),
                      ),
                    )
                    .toList(),
                onChanged: _onChanged,
                isExpanded: true,
              );
            } else {
              return CircularProgressIndicator();
            }
          },
        ),
        const SizedBox(height: 24),
      ],
    );
  }
}
