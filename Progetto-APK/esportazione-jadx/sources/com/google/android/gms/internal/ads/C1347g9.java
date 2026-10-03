package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import okhttp3.HttpUrl;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.g9, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1347g9 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InterfaceC1295f9 f18907a;

    public C1347g9(InterfaceC1295f9 interfaceC1295f9) {
        Context context;
        this.f18907a = interfaceC1295f9;
        try {
            context = (Context) R3.b.v0(interfaceC1295f9.zzh());
        } catch (RemoteException | NullPointerException e8) {
            p120p3.h.e(HttpUrl.FRAGMENT_ENCODE_SET, e8);
            context = null;
        }
        if (context != null) {
            try {
                this.f18907a.H(new R3.b(new p067i3.b(context)));
            } catch (RemoteException e9) {
                p120p3.h.e(HttpUrl.FRAGMENT_ENCODE_SET, e9);
            }
        }
    }
}
