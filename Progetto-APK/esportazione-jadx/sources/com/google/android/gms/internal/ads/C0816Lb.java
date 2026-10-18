package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import okhttp3.HttpUrl;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Lb, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0816Lb implements p136r3.c {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f14512G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ InterfaceC0651Ab f14513H;

    public /* synthetic */ C0816Lb(InterfaceC0651Ab interfaceC0651Ab, int i8) {
        this.f14512G = i8;
        this.f14513H = interfaceC0651Ab;
    }

    @Override // p136r3.c
    public final void c(B0.w0 w0Var) {
        int i8 = this.f14512G;
        InterfaceC0651Ab interfaceC0651Ab = this.f14513H;
        switch (i8) {
            case 0:
                try {
                    interfaceC0651Ab.c(w0Var.h());
                } catch (RemoteException e8) {
                    p120p3.h.e(HttpUrl.FRAGMENT_ENCODE_SET, e8);
                    return;
                }
                break;
            default:
                try {
                    interfaceC0651Ab.c(w0Var.h());
                } catch (RemoteException e9) {
                    p120p3.h.e(HttpUrl.FRAGMENT_ENCODE_SET, e9);
                }
                break;
        }
    }
}
