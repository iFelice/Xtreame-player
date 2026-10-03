package com.google.android.gms.internal.ads;

import A0.C0022w;
import java.util.ArrayList;
import java.util.Iterator;
import p090l3.C3097p;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.bw, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1127bw {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Ov f18133a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Qv f18134b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C1172cq f18135c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final C1488ix f18136d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Tw f18137e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final C1784oh f18138f;

    public C1127bw(C1172cq c1172cq, C1488ix c1488ix, Ov ov, Qv qv, C1784oh c1784oh, Tw tw) {
        this.f18133a = ov;
        this.f18134b = qv;
        this.f18135c = c1172cq;
        this.f18136d = c1488ix;
        this.f18138f = c1784oh;
        this.f18137e = tw;
    }

    public final void a(ArrayList arrayList) {
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            b(2, (String) it.next());
        }
    }

    public final void b(int i8, String str) {
        if (!this.f18133a.f15263i0) {
            this.f18136d.a(str, this.f18137e);
            return;
        }
        p083k3.l.f25980A.f25990j.getClass();
        this.f18135c.E(new C0022w(System.currentTimeMillis(), i8, this.f18134b.f16150b, str));
    }

    public final void c(int i8, ArrayList arrayList) {
        D4.b bVarN1;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            if (((Boolean) C3099q.f26624d.f26627c.a(Q7.p9)).booleanValue() && C1784oh.b(str)) {
                bVarN1 = this.f18138f.a(str, C3097p.f26618f.f26623e);
            } else {
                bVarN1 = Cw.N1(str);
            }
            Cw.h2(bVarN1, new K.k(this, i8, 10), AbstractC1988se.f20906a);
        }
    }
}
