package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.SystemClock;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.vu, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2160vu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f21609a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Set f21610b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Executor f21611c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Tw f21612d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final C0738Fn f21613e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f21614f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f21615g = 0;

    public C2160vu(Context context, C1936re c1936re, Set set, Tw tw, C0738Fn c0738Fn) {
        this.f21609a = context;
        this.f21611c = c1936re;
        this.f21610b = set;
        this.f21612d = tw;
        this.f21613e = c0738Fn;
    }

    public final WB a(Bundle bundle, Object obj) {
        Ow owH = U4.a.h(this.f21609a, 8);
        owH.zzi();
        Set<InterfaceC2108uu> set = this.f21610b;
        ArrayList arrayList = new ArrayList(set.size());
        List arrayList2 = new ArrayList();
        J7 j8 = Q7.bb;
        C3099q c3099q = C3099q.f26624d;
        boolean zIsEmpty = ((String) c3099q.f26627c.a(j8)).isEmpty();
        O7 o7 = c3099q.f26627c;
        if (!zIsEmpty) {
            arrayList2 = Arrays.asList(((String) o7.a(j8)).split(","));
        }
        List list = arrayList2;
        p083k3.l lVar = p083k3.l.f25980A;
        lVar.f25990j.getClass();
        this.f21614f = SystemClock.elapsedRealtime();
        Bundle bundle2 = new Bundle();
        if (((Boolean) o7.a(Q7.f15734U1)).booleanValue() && bundle != null) {
            lVar.f25990j.getClass();
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (obj instanceof Bundle) {
                bundle.putLong("client-signals-start", jCurrentTimeMillis);
            } else {
                bundle.putLong("gms-signals-start", jCurrentTimeMillis);
            }
        }
        for (InterfaceC2108uu interfaceC2108uu : set) {
            if (!list.contains(String.valueOf(interfaceC2108uu.zza()))) {
                if (!((Boolean) C3099q.f26624d.f26627c.a(Q7.f15967w5)).booleanValue() || interfaceC2108uu.zza() != 44) {
                    p083k3.l.f25980A.f25990j.getClass();
                    long jElapsedRealtime = SystemClock.elapsedRealtime();
                    D4.b bVarZzb = interfaceC2108uu.zzb();
                    bVarZzb.a(new RunnableC1420hf(this, jElapsedRealtime, interfaceC2108uu, bundle2), AbstractC1988se.f20911f);
                    arrayList.add(bVarZzb);
                }
            }
        }
        AbstractC2073uA abstractC2073uAT = AbstractC2073uA.t(arrayList);
        CallableC0808Ki callableC0808Ki = new CallableC0808Ki(arrayList, obj, bundle, bundle2, 2);
        WB wb = new WB(abstractC2073uAT, true, false);
        wb.f17176V = new UB(wb, callableC0808Ki, this.f21611c);
        wb.x();
        if (Uw.a()) {
            com.google.android.gms.internal.measurement.H1.N(wb, this.f21612d, owH, false);
        }
        return wb;
    }
}
