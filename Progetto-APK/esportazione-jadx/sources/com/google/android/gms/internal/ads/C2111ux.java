package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.ClientApi;
import java.util.concurrent.ScheduledExecutorService;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.ux, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2111ux {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f21405a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final p120p3.a f21406b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ScheduledExecutorService f21407c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ClientApi f21408d = new ClientApi();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public InterfaceC1157cb f21409e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final P3.a f21410f;

    public C2111ux(Context context, p120p3.a aVar, ScheduledExecutorService scheduledExecutorService, P3.a aVar2) {
        this.f21405a = context;
        this.f21406b = aVar;
        this.f21407c = scheduledExecutorService;
        this.f21410f = aVar2;
    }

    public static C1696mx b() {
        J7 j8 = Q7.f15922r;
        C3099q c3099q = C3099q.f26624d;
        return new C1696mx(((Long) c3099q.f26627c.a(j8)).longValue(), ((Long) c3099q.f26627c.a(Q7.f15930s)).longValue());
    }

    public final C1644lx a(p090l3.T0 t7, p090l3.O o4) {
        p043f3.a aVarA = p043f3.a.a(t7.f26501H);
        if (aVarA == null) {
            return null;
        }
        int iOrdinal = aVarA.ordinal();
        p120p3.a aVar = this.f21406b;
        if (iOrdinal == 1) {
            int i8 = aVar.f28198I;
            InterfaceC1157cb interfaceC1157cb = this.f21409e;
            C1696mx c1696mxB = b();
            return new C1644lx(this.f21408d, this.f21405a, i8, interfaceC1157cb, t7, o4, this.f21407c, c1696mxB, this.f21410f, 1);
        }
        if (iOrdinal == 2) {
            int i9 = aVar.f28198I;
            InterfaceC1157cb interfaceC1157cb2 = this.f21409e;
            C1696mx c1696mxB2 = b();
            return new C1644lx(this.f21408d, this.f21405a, i9, interfaceC1157cb2, t7, o4, this.f21407c, c1696mxB2, this.f21410f, 2);
        }
        if (iOrdinal != 5) {
            return null;
        }
        int i10 = aVar.f28198I;
        InterfaceC1157cb interfaceC1157cb3 = this.f21409e;
        C1696mx c1696mxB3 = b();
        return new C1644lx(this.f21408d, this.f21405a, i10, interfaceC1157cb3, t7, o4, this.f21407c, c1696mxB3, this.f21410f, 0);
    }
}
