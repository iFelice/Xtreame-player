package com.google.android.gms.internal.cast;

import android.content.Context;

/* JADX INFO: renamed from: com.google.android.gms.internal.cast.k, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC2462k implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f22751G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ C2474n f22752H;

    public /* synthetic */ RunnableC2462k(C2474n c2474n, int i8) {
        this.f22751G = i8;
        this.f22752H = c2474n;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f22751G;
        C2474n c2474n = this.f22752H;
        switch (i8) {
            case 0:
                p096m2.c cVar = c2474n.f22761e;
                if (((E1.H) cVar.f27211I) == null) {
                    cVar.f27211I = E1.H.d((Context) cVar.f27210H);
                }
                E1.H h8 = (E1.H) cVar.f27211I;
                if (h8 != null) {
                    h8.e(c2474n);
                }
                break;
            default:
                c2474n.g();
                break;
        }
    }
}
