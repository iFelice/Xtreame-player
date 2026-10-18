package com.google.android.gms.internal.cast;

import D3.C0163g;
import android.util.Log;
import com.google.api.Endpoint;

/* JADX INFO: renamed from: com.google.android.gms.internal.cast.s, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC2493s implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f22788G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ C2497t f22789H;

    public /* synthetic */ RunnableC2493s(C2497t c2497t, int i8) {
        this.f22788G = i8;
        this.f22789H = c2497t;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = 0;
        int i9 = this.f22788G;
        C2497t c2497t = this.f22789H;
        switch (i9) {
            case 0:
                Object[] objArr = {Integer.valueOf(c2497t.f22796e)};
                H3.b bVar = C2497t.f22791i;
                Log.i(bVar.f3679a, bVar.c("transfer with type = %d has timed out", objArr));
                c2497t.b(Endpoint.TARGET_FIELD_NUMBER);
                break;
            default:
                r rVar = new r(c2497t, i8);
                C0163g c0163g = c2497t.f22797f;
                com.bumptech.glide.c.h(c0163g);
                c0163g.a(rVar);
                break;
        }
    }
}
