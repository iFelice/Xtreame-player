import type { CapacitorConfig } from '@capacitor/cli';

const config: CapacitorConfig = {
  appId: 'com.felice.xtreamplayer',
  appName: 'Xtream Player',
  webDir: 'dist',
  server: {
    androidScheme: 'https',
    cleartext: true, // Consente la riproduzione e connessione diretta a server HTTP non cifrati
    allowNavigation: ['*'], // Permette la connessione a qualsiasi server IPTV
  },
  plugins: {
    CapacitorHttp: {
      enabled: true, // Sostituisce nativamente le chiamate fetch() con il motore nativo (OkHttp su Android, URLSession su iOS)
    },
  },
};

export default config;
