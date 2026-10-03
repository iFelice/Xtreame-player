package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.regex.Pattern;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Mo, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0844Mo implements InterfaceC1222dp {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Pattern f14797h = Pattern.compile("Received error HTTP response code: (.*)");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C0724Eo f14798a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final InterfaceExecutorServiceC1504jC f14799b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Yv f14800c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ScheduledExecutorService f14801d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Up f14802e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Tw f14803f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Context f14804g;

    public C0844Mo(Context context, Yv yv, C0724Eo c0724Eo, C1936re c1936re, ScheduledExecutorService scheduledExecutorService, Up up, Tw tw) {
        this.f14804g = context;
        this.f14800c = yv;
        this.f14798a = c0724Eo;
        this.f14799b = c1936re;
        this.f14801d = scheduledExecutorService;
        this.f14802e = up;
        this.f14803f = tw;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1222dp
    public final D4.b a(C0973Wc c0973Wc) {
        D4.b bVarD1;
        C0724Eo c0724Eo = this.f14798a;
        c0724Eo.getClass();
        String str = c0973Wc.f17253J;
        p113o3.O o4 = p083k3.l.f25980A.f25983c;
        boolean zC = p113o3.O.c(str);
        InterfaceExecutorServiceC1504jC interfaceExecutorServiceC1504jC = c0724Eo.f13215b;
        if (zC) {
            bVarD1 = Cw.H1(new C1274ep(1));
        } else {
            bVarD1 = Cw.D1(((IB) c0724Eo.f13214a).b(new CallableC1497j5(4, c0724Eo, c0973Wc)), ExecutionException.class, new C1422hh(3), interfaceExecutorServiceC1504jC);
        }
        C1918rB c1918rBD1 = Cw.D1(bVarD1, C1274ep.class, new C0709Do(c0724Eo, c0973Wc, Binder.getCallingUid(), 0), interfaceExecutorServiceC1504jC);
        Ow owH = U4.a.h(this.f14804g, 11);
        com.google.android.gms.internal.measurement.H1.L(c1918rBD1, owH);
        D4.b bVarD2 = Cw.d2(c1918rBD1, new No(this, 9), this.f14799b);
        J7 j8 = Q7.f15792b5;
        C3099q c3099q = C3099q.f26624d;
        if (((Boolean) c3099q.f26627c.a(j8)).booleanValue()) {
            bVarD2 = Cw.D1(Cw.e2(bVarD2, ((Integer) c3099q.f26627c.a(Q7.f15801c5)).intValue(), TimeUnit.SECONDS, this.f14801d), TimeoutException.class, new C1422hh(4), AbstractC1988se.f20911f);
        }
        com.google.android.gms.internal.measurement.H1.N(bVarD2, this.f14803f, owH, false);
        Cw.h2(bVarD2, new C0864Of(this, 15), AbstractC1988se.f20911f);
        return bVarD2;
    }
}
