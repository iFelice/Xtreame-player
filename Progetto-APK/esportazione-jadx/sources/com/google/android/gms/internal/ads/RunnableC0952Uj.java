package com.google.android.gms.internal.ads;

import java.lang.ref.WeakReference;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Uj, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC0952Uj implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f16878G = 0;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final WeakReference f16879H;

    public /* synthetic */ RunnableC0952Uj(C0966Vj c0966Vj) {
        this.f16879H = new WeakReference(c0966Vj);
    }

    @Override // java.lang.Runnable
    public final void run() {
        WeakReference weakReference = this.f16879H;
        switch (this.f16878G) {
            case 0:
                C0966Vj c0966Vj = (C0966Vj) weakReference.get();
                if (c0966Vj != null) {
                    c0966Vj.Z0(new F2.G(13));
                }
                break;
            default:
                C0966Vj c0966Vj2 = (C0966Vj) weakReference.get();
                if (c0966Vj2 != null) {
                    c0966Vj2.Z0(new F2.G(14));
                }
                break;
        }
    }

    public /* synthetic */ RunnableC0952Uj(C0966Vj c0966Vj, int i8) {
        this.f16879H = new WeakReference(c0966Vj);
    }
}
