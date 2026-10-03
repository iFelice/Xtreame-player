package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.ExecutionException;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.ip, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1481ip {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InterfaceExecutorServiceC1504jC f19351a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Wo f19352b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final EJ f19353c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Uw f19354d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Context f19355e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final p120p3.a f19356f;

    public C1481ip(C1936re c1936re, Wo wo, EJ ej, Uw uw, Context context, p120p3.a aVar) {
        this.f19351a = c1936re;
        this.f19352b = wo;
        this.f19353c = ej;
        this.f19354d = uw;
        this.f19355e = context;
        this.f19356f = aVar;
    }

    public final AbstractC1040aC a(C0973Wc c0973Wc, InterfaceC1430hp interfaceC1430hp, C1378gp c1378gp, RB rb) {
        String str = c0973Wc.f17253J;
        p113o3.O o4 = p083k3.l.f25980A.f25983c;
        boolean zC = p113o3.O.c(str);
        InterfaceExecutorServiceC1504jC interfaceExecutorServiceC1504jC = this.f19351a;
        return Cw.D1(Cw.d2(Cw.d2(AbstractC1040aC.r(zC ? Cw.H1(new C1274ep(1)) : Cw.D1(interfaceC1430hp.b(c0973Wc), ExecutionException.class, new C1422hh(7), interfaceExecutorServiceC1504jC)), new C1422hh(6), interfaceExecutorServiceC1504jC), rb, interfaceExecutorServiceC1504jC), C1274ep.class, new C0915Sa(this, c1378gp, c0973Wc, rb, 2), interfaceExecutorServiceC1504jC);
    }
}
