import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_id.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'gen_l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('id')
  ];

  /// No description provided for @signIn.
  ///
  /// In en, this message translates to:
  /// **'Sign In'**
  String get signIn;

  /// No description provided for @signUp.
  ///
  /// In en, this message translates to:
  /// **'Sign Up'**
  String get signUp;

  /// No description provided for @signOut.
  ///
  /// In en, this message translates to:
  /// **'Sign Out'**
  String get signOut;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

  /// No description provided for @pleaseEnterValidEmail.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid email'**
  String get pleaseEnterValidEmail;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @pleaseEnterPassword.
  ///
  /// In en, this message translates to:
  /// **'Please enter your password'**
  String get pleaseEnterPassword;

  /// No description provided for @passwordTooShort.
  ///
  /// In en, this message translates to:
  /// **'Password must be at least 6 characters'**
  String get passwordTooShort;

  /// No description provided for @confirmPassword.
  ///
  /// In en, this message translates to:
  /// **'Confirm Password'**
  String get confirmPassword;

  /// No description provided for @pleaseConfirmPassword.
  ///
  /// In en, this message translates to:
  /// **'Please confirm your password'**
  String get pleaseConfirmPassword;

  /// No description provided for @passwordsDoNotMatch.
  ///
  /// In en, this message translates to:
  /// **'Passwords do not match'**
  String get passwordsDoNotMatch;

  /// No description provided for @dontHaveAccount.
  ///
  /// In en, this message translates to:
  /// **'Don\'t have an account?'**
  String get dontHaveAccount;

  /// No description provided for @fullName.
  ///
  /// In en, this message translates to:
  /// **'Full Name'**
  String get fullName;

  /// No description provided for @pleaseEnterFullName.
  ///
  /// In en, this message translates to:
  /// **'Please enter your full name'**
  String get pleaseEnterFullName;

  /// No description provided for @noUserFound.
  ///
  /// In en, this message translates to:
  /// **'No user found with that email'**
  String get noUserFound;

  /// No description provided for @wrongPassword.
  ///
  /// In en, this message translates to:
  /// **'Wrong password. Please try again.'**
  String get wrongPassword;

  /// No description provided for @weakPassword.
  ///
  /// In en, this message translates to:
  /// **'The password provided is too weak.'**
  String get weakPassword;

  /// No description provided for @emailAlreadyInUse.
  ///
  /// In en, this message translates to:
  /// **'The account already exists for that email.'**
  String get emailAlreadyInUse;

  /// No description provided for @invalidEmail.
  ///
  /// In en, this message translates to:
  /// **'The email address is not valid.'**
  String get invalidEmail;

  /// No description provided for @genericError.
  ///
  /// In en, this message translates to:
  /// **'An error occurred. Please try again.'**
  String get genericError;

  /// No description provided for @errorOccurred.
  ///
  /// In en, this message translates to:
  /// **'An error occurred: {error}'**
  String errorOccurred(Object error);

  /// No description provided for @reportDetail.
  ///
  /// In en, this message translates to:
  /// **'Report Detail'**
  String get reportDetail;

  /// No description provided for @viewFullImage.
  ///
  /// In en, this message translates to:
  /// **'View full image'**
  String get viewFullImage;

  /// No description provided for @openInGoogleMaps.
  ///
  /// In en, this message translates to:
  /// **'Open in Google Maps'**
  String get openInGoogleMaps;

  /// No description provided for @unableToOpenMaps.
  ///
  /// In en, this message translates to:
  /// **'Unable to open Google Maps'**
  String get unableToOpenMaps;

  /// No description provided for @filterCategory.
  ///
  /// In en, this message translates to:
  /// **'Filter Category'**
  String get filterCategory;

  /// No description provided for @allCategories.
  ///
  /// In en, this message translates to:
  /// **'All Categories'**
  String get allCategories;

  /// No description provided for @noReportsInThisCategory.
  ///
  /// In en, this message translates to:
  /// **'No reports in this category.'**
  String get noReportsInThisCategory;

  /// No description provided for @secondsAgo.
  ///
  /// In en, this message translates to:
  /// **'{count} secs ago'**
  String secondsAgo(Object count);

  /// No description provided for @minutesAgo.
  ///
  /// In en, this message translates to:
  /// **'{count} mins ago'**
  String minutesAgo(Object count);

  /// No description provided for @hoursAgo.
  ///
  /// In en, this message translates to:
  /// **'{count} hrs ago'**
  String hoursAgo(Object count);

  /// No description provided for @oneDayAgo.
  ///
  /// In en, this message translates to:
  /// **'1 day ago'**
  String get oneDayAgo;

  /// No description provided for @categoryJalanRusak.
  ///
  /// In en, this message translates to:
  /// **'Damaged Road'**
  String get categoryJalanRusak;

  /// No description provided for @categoryMarkaPudar.
  ///
  /// In en, this message translates to:
  /// **'Faded Road Markings'**
  String get categoryMarkaPudar;

  /// No description provided for @categoryLampuMati.
  ///
  /// In en, this message translates to:
  /// **'Broken Street Light'**
  String get categoryLampuMati;

  /// No description provided for @categoryTrotoarRusak.
  ///
  /// In en, this message translates to:
  /// **'Damaged Sidewalk'**
  String get categoryTrotoarRusak;

  /// No description provided for @categoryRambuRusak.
  ///
  /// In en, this message translates to:
  /// **'Broken Traffic Sign'**
  String get categoryRambuRusak;

  /// No description provided for @categoryJembatanRusak.
  ///
  /// In en, this message translates to:
  /// **'Broken Bridge'**
  String get categoryJembatanRusak;

  /// No description provided for @categorySampahMenumpuk.
  ///
  /// In en, this message translates to:
  /// **'Piled Garbage'**
  String get categorySampahMenumpuk;

  /// No description provided for @categorySaluranTersumbat.
  ///
  /// In en, this message translates to:
  /// **'Clogged Drain'**
  String get categorySaluranTersumbat;

  /// No description provided for @categorySungaiTercemar.
  ///
  /// In en, this message translates to:
  /// **'Polluted River'**
  String get categorySungaiTercemar;

  /// No description provided for @categorySampahSungai.
  ///
  /// In en, this message translates to:
  /// **'River Garbage'**
  String get categorySampahSungai;

  /// No description provided for @categoryPohonTumbang.
  ///
  /// In en, this message translates to:
  /// **'Fallen Tree'**
  String get categoryPohonTumbang;

  /// No description provided for @categoryTamanRusak.
  ///
  /// In en, this message translates to:
  /// **'Damaged Park'**
  String get categoryTamanRusak;

  /// No description provided for @categoryFasilitasRusak.
  ///
  /// In en, this message translates to:
  /// **'Broken Facility'**
  String get categoryFasilitasRusak;

  /// No description provided for @categoryPipaBocor.
  ///
  /// In en, this message translates to:
  /// **'Leaking Pipe'**
  String get categoryPipaBocor;

  /// No description provided for @categoryVandalisme.
  ///
  /// In en, this message translates to:
  /// **'Vandalism'**
  String get categoryVandalisme;

  /// No description provided for @categoryBanjir.
  ///
  /// In en, this message translates to:
  /// **'Flood'**
  String get categoryBanjir;

  /// No description provided for @categoryLainnya.
  ///
  /// In en, this message translates to:
  /// **'Others'**
  String get categoryLainnya;

  /// No description provided for @addPost.
  ///
  /// In en, this message translates to:
  /// **'Add Post'**
  String get addPost;

  /// No description provided for @takePicture.
  ///
  /// In en, this message translates to:
  /// **'Take a picture'**
  String get takePicture;

  /// No description provided for @chooseFromGallery.
  ///
  /// In en, this message translates to:
  /// **'Choose from gallery'**
  String get chooseFromGallery;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @pleaseAddImageAndDescription.
  ///
  /// In en, this message translates to:
  /// **'Please add an image and description.'**
  String get pleaseAddImageAndDescription;

  /// No description provided for @userNotFoundPleaseSignIn.
  ///
  /// In en, this message translates to:
  /// **'User not found. Please sign in.'**
  String get userNotFoundPleaseSignIn;

  /// No description provided for @postUploadedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Post uploaded successfully!'**
  String get postUploadedSuccessfully;

  /// No description provided for @failedToUploadPost.
  ///
  /// In en, this message translates to:
  /// **'Failed to upload the post: {error}'**
  String failedToUploadPost(Object error);

  /// No description provided for @locationServicesDisabled.
  ///
  /// In en, this message translates to:
  /// **'Location services are disabled.'**
  String get locationServicesDisabled;

  /// No description provided for @locationPermissionsDenied.
  ///
  /// In en, this message translates to:
  /// **'Location permissions are denied.'**
  String get locationPermissionsDenied;

  /// No description provided for @failedToRetrieveLocation.
  ///
  /// In en, this message translates to:
  /// **'Failed to retrieve location: {error}'**
  String failedToRetrieveLocation(Object error);

  /// No description provided for @failedToPickImage.
  ///
  /// In en, this message translates to:
  /// **'Failed to pick image: {error}'**
  String failedToPickImage(Object error);

  /// No description provided for @failedToCompressImage.
  ///
  /// In en, this message translates to:
  /// **'Failed to compress image: {error}'**
  String failedToCompressImage(Object error);

  /// No description provided for @generateAnotherDescription.
  ///
  /// In en, this message translates to:
  /// **'Generate another description'**
  String get generateAnotherDescription;

  /// No description provided for @addBriefDescription.
  ///
  /// In en, this message translates to:
  /// **'Add a brief description...'**
  String get addBriefDescription;

  /// No description provided for @post.
  ///
  /// In en, this message translates to:
  /// **'Post'**
  String get post;

  /// No description provided for @notificationSent.
  ///
  /// In en, this message translates to:
  /// **'✅ Notification sent successfully'**
  String get notificationSent;

  /// No description provided for @notificationFailed.
  ///
  /// In en, this message translates to:
  /// **'❌ Failed to send notification: {error}'**
  String notificationFailed(Object error);

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @unknownLanguage.
  ///
  /// In en, this message translates to:
  /// **'Unknown Language'**
  String get unknownLanguage;

  /// No description provided for @english.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get english;

  /// No description provided for @indonesian.
  ///
  /// In en, this message translates to:
  /// **'Indonesian'**
  String get indonesian;

  get categorySampah => null;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'id'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'id': return AppLocalizationsId();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
