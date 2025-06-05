import 'package:fasum/helper/locale_provider.dart';
import 'package:fasum/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context);
    final provider = Provider.of<LocaleProvider>(context);
    final currentLocale = provider.locale;

    final supportedLanguages = {
      'en': Locale('en'),
      'id': Locale('id'),
    };

    final languageNames = {
      'en': loc?.english ?? 'English',
      'id': loc?.indonesian ?? 'Indonesian',
    };

    return Scaffold(
      appBar: AppBar(title: Text(loc?.settings ?? 'Settings')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListTile(
          title: Text(loc?.language ?? 'Language'),
          subtitle: Text(languageNames[currentLocale.languageCode] ?? loc?.unknownLanguage ?? 'Unknown Language'),
          trailing: DropdownButton<Locale>(
            value: currentLocale,
            items: supportedLanguages.entries.map((entry) {
              return DropdownMenuItem<Locale>(
                value: entry.value,
                child: Text(languageNames[entry.key] ?? entry.key),
              );
            }).toList(),
            onChanged: (locale) {
              if (locale != null) {
                provider.setLocale(locale);
              }
            },
          ),
        ),
      ),
    );
  }
}