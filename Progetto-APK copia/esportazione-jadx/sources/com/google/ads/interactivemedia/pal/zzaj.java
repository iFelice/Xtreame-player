package com.google.ads.interactivemedia.pal;

import E1.W;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.internal.pal.InterfaceC2868z0;

/* JADX INFO: loaded from: classes.dex */
final class zzaj implements InterfaceC2868z0 {
    public static final Handler zza() {
        return new W(Looper.getMainLooper(), 3);
    }
}
