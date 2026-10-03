package com.google.android.gms.internal.ads;

import W0.C0374g;
import android.view.View;
import java.lang.reflect.Method;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.k5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1549k5 extends AbstractCallableC2016t5 {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f19583h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Object f19584i;

    public C1549k5(V4 v5, V3 v7, int i8, C0374g c0374g) {
        super(v5, "s/IaC73MjD9vpfzZvssIGR7eelXzGompBCRU9Px19GF39ZofYoD29ElcUTZqSvpM", "t30h8UZEoZP8GE77k4AdlDjTvNQpvs7DHs10k6C9ZzU=", v7, i8, 85);
        this.f19584i = c0374g;
    }

    private final void c() {
        long[] jArr = (long[]) this.f21036e.invoke(null, Long.valueOf(((C0374g) this.f19584i).f7414c), Long.valueOf(((C0374g) this.f19584i).f7415d), Long.valueOf(((C0374g) this.f19584i).f7416e), Long.valueOf(((C0374g) this.f19584i).f7417f));
        synchronized (this.f21035d) {
            V3 v5 = this.f21035d;
            long j8 = jArr[0];
            v5.d();
            C1496j4.d0((C1496j4) v5.f20255H, j8);
            V3 v7 = this.f21035d;
            long j9 = jArr[1];
            v7.d();
            C1496j4.e0((C1496j4) v7.f20255H, j9);
        }
    }

    private final void d() {
        Method method = this.f21036e;
        K4 k8 = (K4) this.f19584i;
        List list = (List) k8.f14301H;
        k8.f14301H = Collections.emptyList();
        int iIntValue = ((Integer) method.invoke(null, list)).intValue();
        synchronized (this.f21035d) {
            V3 v5 = this.f21035d;
            int iB = com.google.android.gms.internal.measurement.H1.B(iIntValue);
            v5.d();
            C1496j4.s0((C1496j4) v5.f20255H, iB);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractCallableC2016t5
    public final void a() {
        int i8 = 2;
        switch (this.f19583h) {
            case 0:
                c();
                return;
            case 1:
                d();
                return;
            case 2:
                StackTraceElement[] stackTraceElementArr = (StackTraceElement[]) this.f19584i;
                if (stackTraceElementArr != null) {
                    J4 j8 = new J4((String) this.f21036e.invoke(null, stackTraceElementArr), 1);
                    synchronized (this.f21035d) {
                        try {
                            V3 v5 = this.f21035d;
                            long jLongValue = j8.f14121b.longValue();
                            v5.d();
                            C1496j4.K((C1496j4) v5.f20255H, jLongValue);
                            if (((Boolean) j8.f14122c).booleanValue()) {
                                V3 v7 = this.f21035d;
                                if (true == ((Boolean) j8.f14123d).booleanValue()) {
                                    i8 = 1;
                                }
                                v7.d();
                                C1496j4.p0((C1496j4) v7.f20255H, i8);
                            } else {
                                V3 v8 = this.f21035d;
                                v8.d();
                                C1496j4.p0((C1496j4) v8.f20255H, 3);
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                        break;
                    }
                    return;
                }
                return;
            default:
                View view = (View) this.f19584i;
                if (view != null) {
                    J7 j9 = Q7.f15834g3;
                    C3099q c3099q = C3099q.f26624d;
                    Boolean bool = (Boolean) c3099q.f26627c.a(j9);
                    Boolean bool2 = (Boolean) c3099q.f26627c.a(Q7.la);
                    String str = (String) this.f21036e.invoke(null, view, this.f21032a.f16939a.getResources().getDisplayMetrics(), bool, bool2);
                    Y4 y7 = new Y4();
                    HashMap mapA = AbstractC2067u4.a(str);
                    if (mapA != null) {
                        y7.f17569a = (Long) mapA.get(0);
                        y7.f17570b = (Long) mapA.get(1);
                        y7.f17571c = (Long) mapA.get(2);
                        y7.f17572d = (Long) mapA.get(3);
                        y7.f17573e = (Long) mapA.get(4);
                    }
                    C1394h4 c1394h4A = C1446i4.A();
                    long jLongValue2 = y7.f17569a.longValue();
                    c1394h4A.d();
                    C1446i4.C((C1446i4) c1394h4A.f20255H, jLongValue2);
                    long jLongValue3 = y7.f17570b.longValue();
                    c1394h4A.d();
                    C1446i4.D((C1446i4) c1394h4A.f20255H, jLongValue3);
                    long jLongValue4 = y7.f17571c.longValue();
                    c1394h4A.d();
                    C1446i4.E((C1446i4) c1394h4A.f20255H, jLongValue4);
                    if (bool2.booleanValue()) {
                        long jLongValue5 = y7.f17573e.longValue();
                        c1394h4A.d();
                        C1446i4.B((C1446i4) c1394h4A.f20255H, jLongValue5);
                    }
                    if (bool.booleanValue()) {
                        long jLongValue6 = y7.f17572d.longValue();
                        c1394h4A.d();
                        C1446i4.F((C1446i4) c1394h4A.f20255H, jLongValue6);
                    }
                    C1446i4 c1446i4 = (C1446i4) c1394h4A.b();
                    V3 v9 = this.f21035d;
                    v9.d();
                    C1496j4.T((C1496j4) v9.f20255H, c1446i4);
                    return;
                }
                return;
        }
    }

    public C1549k5(V4 v5, V3 v7, int i8, View view) {
        super(v5, "1eASkBAriCqBxPWd4okyyc+CHCTvdkAuw8U5qBN0KobaC6TQVXZIuItjy1xo8n06", "/3NjDB70kyJmgPDiCMkSHOH5fxmpgd9Ky8mxWyDVFDM=", v7, i8, 57);
        this.f19584i = view;
    }

    public C1549k5(V4 v5, V3 v7, int i8, K4 k8) {
        super(v5, "qmKK3b5gFczPFV6EXQK4o/dThX0H+NXEfphwaNTcj5pJFkabLh1X9vORrSfnOkeV", "GajzmnIGCWKypTldGXdzGSwHW6ZZV69Bh6cWfmyAJmA=", v7, i8, 94);
        this.f19584i = k8;
    }

    public C1549k5(V4 v5, V3 v7, int i8, StackTraceElement[] stackTraceElementArr) {
        super(v5, "qb9dl/IB08b/6izFoDp5ONFGusaE64enfOjVCLWlhNF7+NrRoaDnYUmwC44nswXK", "+1rx5i0z5L53m4fOjp1rgOA40SLCpA1mGw0uq9igoow=", v7, i8, 45);
        this.f19584i = stackTraceElementArr;
    }
}
