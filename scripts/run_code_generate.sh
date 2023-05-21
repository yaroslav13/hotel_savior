fvm flutter pub get
fvm flutter packages pub run build_runner build --delete-conflicting-outputs
fvm flutter pub run easy_localization:generate -f keys -o locale_keys.g.dart -S assets/translations -O lib/src/features/localization
 
