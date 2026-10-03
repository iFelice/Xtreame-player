package com.google.android.gms.internal.ads;

import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.kq, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC1585kq implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f19646G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ C2267xx f19647H;

    public /* synthetic */ RunnableC1585kq(C2267xx c2267xx, int i8) {
        this.f19646G = i8;
        this.f19647H = c2267xx;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f19646G;
        C2267xx c2267xx = this.f19647H;
        switch (i8) {
            case 0:
                c2267xx.c();
                break;
            default:
                if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15626G4)).booleanValue() && Cw.f12720d.f3280H) {
                    c2267xx.a();
                    break;
                }
                break;
        }
    }
}
