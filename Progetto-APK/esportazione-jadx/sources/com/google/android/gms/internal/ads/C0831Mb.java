package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import okhttp3.HttpUrl;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Mb, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0831Mb implements p136r3.c {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f14709G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ InterfaceC0711Eb f14710H;

    public /* synthetic */ C0831Mb(InterfaceC0711Eb interfaceC0711Eb, int i8) {
        this.f14709G = i8;
        this.f14710H = interfaceC0711Eb;
    }

    @Override // p136r3.c
    public final void c(B0.w0 w0Var) {
        int i8 = this.f14709G;
        InterfaceC0711Eb interfaceC0711Eb = this.f14710H;
        switch (i8) {
            case 0:
                try {
                    interfaceC0711Eb.c(w0Var.h());
                } catch (RemoteException e8) {
                    p120p3.h.e(HttpUrl.FRAGMENT_ENCODE_SET, e8);
                    return;
                }
                break;
            default:
                try {
                    interfaceC0711Eb.c(w0Var.h());
                } catch (RemoteException e9) {
                    p120p3.h.e(HttpUrl.FRAGMENT_ENCODE_SET, e9);
                }
                break;
        }
    }
}
