package com.google.ads.interactivemedia.v3.internal;

/* JADX INFO: loaded from: classes.dex */
public final class zzxo {
    private static final int zza;

    static {
        int i8;
        String property = System.getProperty("java.version");
        try {
            String[] strArrSplit = property.split("[._]", 3);
            i8 = Integer.parseInt(strArrSplit[0]);
            if (i8 == 1) {
                i8 = strArrSplit.length > 1 ? Integer.parseInt(strArrSplit[1]) : 1;
            }
        } catch (NumberFormatException unused) {
            i8 = -1;
        }
        if (i8 == -1) {
            try {
                StringBuilder sb = new StringBuilder();
                for (int i9 = 0; i9 < property.length(); i9++) {
                    char cCharAt = property.charAt(i9);
                    if (!Character.isDigit(cCharAt)) {
                        break;
                    }
                    sb.append(cCharAt);
                }
                i8 = Integer.parseInt(sb.toString());
            } catch (NumberFormatException unused2) {
                i8 = -1;
            }
        }
        if (i8 == -1) {
            i8 = 6;
        }
        zza = i8;
    }

    public static boolean zza() {
        return zza >= 9;
    }
}
