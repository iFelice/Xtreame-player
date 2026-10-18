package com.google.android.gms.internal.ads;

import android.view.View;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.iq, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC1482iq implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f19357G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ C2267xx f19358H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ View f19359I;

    public /* synthetic */ RunnableC1482iq(C2267xx c2267xx, View view, int i8) {
        this.f19357G = i8;
        this.f19358H = c2267xx;
        this.f19359I = view;
    }

    @Override // java.lang.Runnable
    public final void run() {
        G.c cVar = Cw.f12720d;
        int i8 = this.f19357G;
        C2267xx c2267xx = this.f19358H;
        View view = this.f19359I;
        switch (i8) {
            case 0:
                if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15626G4)).booleanValue() && cVar.f3280H) {
                    EnumC2371zx enumC2371zx = EnumC2371zx.f22235G;
                    if (!c2267xx.f21961f) {
                        c2267xx.f21957b.a(view, enumC2371zx);
                        break;
                    }
                }
                break;
            default:
                if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15626G4)).booleanValue() && cVar.f3280H) {
                    c2267xx.b(view);
                    break;
                }
                break;
        }
    }
}
