#!/usr/bin/env bash
#
# Test strumentati del tablet su emulatore, eseguiti dal job "emulatore"
# della CI (android-mobile-ci.yml, solo lancio manuale) tramite
# reactivecircus/android-emulator-runner. L'action esegue lo script una riga
# per volta con /bin/sh: tutta la logica vive qui, in un solo bash,
# richiamato con una riga sola.
#
# Lo script parte con l'emulatore già avviato dall'action (ANDROID_SERIAL
# punta a emulator-5554) e con il mock server Xtream in ascolto sull'host
# (raggiunto dall'emulatore come 10.0.2.2:3333).
set -uo pipefail

sha="$(git rev-parse HEAD)"
export FVP_VERSION_NAME="0.1.0-${sha:0:7}"
export FVP_VERSION_CODE="${GITHUB_RUN_NUMBER:-1}"
echo "::notice::APK di test su emulatore: versione ${FVP_VERSION_NAME} (${FVP_VERSION_CODE})"

cd apps/android-mobile
set +e
timeout 1800 ./gradlew connectedDebugAndroidTest --console=plain --stacktrace 2>&1 | tee /tmp/fvp-connected.log
status=$?
set -e
cd "$GITHUB_WORKSPACE"

# Screenshot salvati dall'app dentro filesDir/screenshots: la build di debug
# è accessibile con run-as, senza adb root.
mkdir -p emulator-artifacts
adb exec-out run-as it.felixvision.mobile tar c -C files screenshots > emulator-artifacts/screenshots.tar || true
if [ -s emulator-artifacts/screenshots.tar ]; then
  mkdir -p emulator-artifacts/screenshots
  tar -xf emulator-artifacts/screenshots.tar -C emulator-artifacts/screenshots || true
  rm -f emulator-artifacts/screenshots.tar
fi
# Piano B: sulle immagini google_apis adb root è consentito.
if [ ! -d emulator-artifacts/screenshots ] || [ -z "$(ls -A emulator-artifacts/screenshots 2> /dev/null)" ]; then
  adb root > /dev/null 2>&1 || true
  adb wait-for-device
  adb pull /data/data/it.felixvision.mobile/files/screenshots emulator-artifacts/screenshots || true
fi
ls -R emulator-artifacts || true
cp /tmp/fvp-connected.log emulator-artifacts/gradle-connected.log || true
cp /tmp/fvp-mock-server.log emulator-artifacts/mock-server.log || true

exit "$status"
