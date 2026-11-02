#!/usr/bin/env bash
#
# Osserva l'avvio dell'emulatore (avviato in background dal job "emulatore"
# della CI, prima del lancio): campiona i dispositivi adb e il processo
# dell'emulatore ogni 20 secondi, per capire se l'avvio è lento, bloccato
# o fallito. L'output finisce in /tmp/emulator-watch.log e da lì nella
# diagnostica del job.
while true; do
  echo "== $(date -Is) =="
  adb devices
  ps -eo pid,pcpu,pmem,etime,args | grep '[e]mulator' | grep -v grep | head -2
  sleep 20
done
