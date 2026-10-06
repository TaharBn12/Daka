#!/usr/bin/env bash
set -euo pipefail

if ! command -v flutter >/dev/null 2>&1; then
  echo "Flutter SDK غير مثبت. ثبّت Flutter ثم أعد تشغيل هذا السكربت."
  exit 1
fi
flutter doctor
flutter create --platforms=android .
flutter pub get
flutter analyze
flutter build apk --release
printf '\nتم إنشاء APK في: build/app/outputs/flutter-apk/app-release.apk\n'
