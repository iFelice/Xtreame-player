package com.google.android.gms.internal.pal;

import O1.C0325y;
import android.content.Context;
import android.os.Build;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.n1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2774n1 extends AbstractC2766m1 {

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public static final /* synthetic */ int f23965C = 0;

    @Override // com.google.android.gms.internal.pal.AbstractC2766m1
    public final ArrayList h(A1 a8, Context context, L4 l4, F2 f8) {
        long j8;
        long j9;
        a8.getClass();
        int iA = a8.a();
        ArrayList arrayList = new ArrayList();
        if (a8.f23440p) {
            arrayList.add(new L1(a8, l4, iA, context, f8));
            arrayList.add(new N1(a8, l4, AbstractC2766m1.f23956z, iA));
            arrayList.add(new R1(a8, l4, iA));
            arrayList.add(new S1(a8, l4, iA));
            arrayList.add(new W1(a8, "5BhEc19mhLCb3gixLpO/usqpdcrz8iDHUvKRNr8tUAX9rUzF0wog6vEOJrftvcpW", "yZHUQ89G8fTgEsMNs0hBrXwZIrb4VL1iE12C/t/Y3UE=", l4, iA, 33));
            arrayList.add(new K1(a8, l4, iA, context));
            arrayList.add(new J1(a8, l4, iA, 2));
            arrayList.add(new J1(a8, l4, iA, 5));
            arrayList.add(new J1(a8, l4, iA, 6));
            arrayList.add(new M1(a8, l4, iA));
            arrayList.add(new P1(a8, l4, iA));
            arrayList.add(new J1(a8, l4, iA, 9));
            arrayList.add(new J1(a8, l4, iA, 1));
            arrayList.add(new J1(a8, l4, iA, 8));
            arrayList.add(new T1(a8, l4, iA));
            if (Build.VERSION.SDK_INT >= 24) {
                if (((Boolean) C2727h2.f23833d.f23836c.a(AbstractC2759l2.f23942s)).booleanValue()) {
                    H1 h8 = AbstractC2766m1.f23953B;
                    if (h8 != null) {
                        long j10 = h8.f23541d ? h8.f23539b - h8.f23538a : -1L;
                        long j11 = h8.f23540c;
                        h8.f23540c = -1L;
                        j9 = j11;
                        j8 = j10;
                    } else {
                        j8 = -1;
                        j9 = -1;
                    }
                    arrayList.add(new Q1(a8, l4, iA, AbstractC2766m1.f23952A, j8, j9));
                }
            }
            C0325y c0325y = AbstractC2759l2.f23941r;
            C2727h2 c2727h2 = C2727h2.f23833d;
            if (((Boolean) c2727h2.f23836c.a(c0325y)).booleanValue()) {
                arrayList.add(new J1(a8, l4, iA, 7));
            }
            arrayList.add(new J1(a8, l4, iA, 4));
            if (((Boolean) c2727h2.f23836c.a(AbstractC2759l2.f23945v)).booleanValue()) {
                arrayList.add(new J1(a8, l4, iA, 0));
            }
        } else {
            l4.g(16384L);
        }
        return arrayList;
    }
}
