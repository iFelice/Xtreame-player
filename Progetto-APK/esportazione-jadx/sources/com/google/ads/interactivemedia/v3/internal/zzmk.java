package com.google.ads.interactivemedia.v3.internal;

import android.os.StrictMode;

/* JADX INFO: loaded from: classes.dex */
public final class zzmk {
    public static Object zza(zzqn zzqnVar) {
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        try {
            StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitDiskReads().permitDiskWrites().build());
            return zzqnVar.zza();
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }
}
