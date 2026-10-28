package it.felixvision.tv

/**
 * Ancora compilatoria per il codice condiviso con l'app TV.
 *
 * `it.felixvision.tv.data.update.UpdateInstallReceiver` — sorgente condiviso
 * con la TV, compilato anche nel tablet ma mai usato da questa app (vede
 * README di apps/android-mobile) — importa `it.felixvision.tv.MainActivity`
 * per riaprire l'app dopo un aggiornamento. Senza una classe con questo
 * fully-qualified name i sorgenti condivisi non compilerebbero.
 *
 * Il tablet non registra questo receiver, non richiede REQUEST_INSTALL_PACKAGES
 * e non esegue l'aggiornamento in-app (arriverà nel PR4 in un package proprio):
 * la classe resta quindi un puro ponte di compilazione, non è dichiarata nel
 * manifest e non viene mai istanziata.
 */
class MainActivity
