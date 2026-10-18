package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class U4 implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f16783G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ V4 f16784H;

    public /* synthetic */ U4(V4 v5, int i8) {
        this.f16783G = i8;
        this.f16784H = v5;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f16783G) {
            case 0:
                V4 v5 = this.f16784H;
                v5.getClass();
                try {
                    if (v5.f16944f == null && v5.f16947i) {
                        p075j3.b bVar = new p075j3.b(v5.f16939a);
                        bVar.d(true);
                        v5.f16944f = bVar;
                        break;
                    }
                } catch (J3.g | J3.h | IOException unused) {
                    v5.f16944f = null;
                    return;
                }
                break;
            default:
                Q7.a(this.f16784H.f16939a);
                break;
        }
    }
}
