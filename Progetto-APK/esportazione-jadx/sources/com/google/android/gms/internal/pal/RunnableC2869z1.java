package com.google.android.gms.internal.pal;

import O1.C0325y;
import android.content.Context;
import java.io.IOException;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.z1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC2869z1 implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f24089G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ A1 f24090H;

    public /* synthetic */ RunnableC2869z1(A1 a8, int i8) {
        this.f24089G = i8;
        this.f24090H = a8;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f24089G) {
            case 0:
                A1 a8 = this.f24090H;
                a8.getClass();
                try {
                    if (a8.f23430f == null && a8.f23433i) {
                        p075j3.b bVar = new p075j3.b(a8.f23425a);
                        bVar.d(true);
                        a8.f23430f = bVar;
                        break;
                    }
                } catch (J3.g | J3.h | IOException unused) {
                    a8.f23430f = null;
                    return;
                }
                break;
            default:
                Context context = this.f24090H.f23425a;
                C0325y c0325y = AbstractC2759l2.f23924a;
                AbstractC2864y4.l(new C2805r1(context, 3));
                break;
        }
    }
}
