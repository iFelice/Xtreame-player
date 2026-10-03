package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;

/* JADX INFO: loaded from: classes.dex */
public final class Nr implements InterfaceC1840pl {
    public final C2054ts a(Looper looper, Handler.Callback callback) {
        return new C2054ts(new Handler(looper, callback));
    }
}
