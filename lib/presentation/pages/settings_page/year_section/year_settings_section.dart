import 'package:flutter/material.dart';
import 'package:school_app/domain/settings/settings_provider.dart';
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
    return FutureBuilder<List<SchoolYear>>(
      future: SettingsProvider.instance.getSchoolYears(),
      builder: (context, future) {
        if (future.hasData && future.data != null && future.data!.isNotEmpty) {
          final selected = _selectedYear;

          return DropdownMenu<SchoolYear>(
            initialSelection: future.data!.contains(selected)
                ? selected
                : future.data!.first,
            onSelected: (SchoolYear? value) {
              if (value != null) {
                _onChanged(value);
              }
            },
            dropdownMenuEntries: future.data!
                .map<DropdownMenuEntry<SchoolYear>>(
                  (year) => DropdownMenuEntry<SchoolYear>(
                    value: year,
                    label: year.name,
                    enabled: true,
                    style: MenuItemButton.styleFrom(),
                    leadingIcon: Icon(Icons.calendar_month_rounded),
                  ),
                )
                .toList(),
            menuHeight: 300,
          );
        } else {
          return CircularProgressIndicator();
        }
      },
    );
  }
}
