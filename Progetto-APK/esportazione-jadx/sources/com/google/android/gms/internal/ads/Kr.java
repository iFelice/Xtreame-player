package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import java.util.Collections;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class Kr implements InterfaceC1845pq {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InterfaceC1948rq f14421a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final InterfaceC2156vq f14422b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Kw f14423c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final InterfaceExecutorServiceC1504jC f14424d;

    public Kr(Kw kw, InterfaceExecutorServiceC1504jC interfaceExecutorServiceC1504jC, InterfaceC1948rq interfaceC1948rq, InterfaceC2156vq interfaceC2156vq) {
        this.f14423c = kw;
        this.f14424d = interfaceExecutorServiceC1504jC;
        this.f14422b = interfaceC2156vq;
        this.f14421a = interfaceC1948rq;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1845pq
    public final D4.b a(Tv tv, Ov ov) {
        C2000sq c2000sqA;
        Iterator it = ov.f15284t.iterator();
        while (true) {
            if (!it.hasNext()) {
                c2000sqA = null;
                break;
            }
            try {
                c2000sqA = this.f14421a.a(ov.f15288v, (String) it.next());
                break;
            } catch (C1075aw unused) {
            }
        }
        int i8 = 3;
        if (c2000sqA == null) {
            return Cw.H1(new C1070ar(3, "Unable to instantiate mediation adapter class."));
        }
        C2040te c2040te = new C2040te();
        c2000sqA.f20995c.i2(new J2.t(c2000sqA, c2040te));
        if (ov.f15232M) {
            Bundle bundle = ((Yv) tv.f16754a.f17529H).f17677d.f26529S;
            Bundle bundle2 = bundle.getBundle(AdMobAdapter.class.getName());
            if (bundle2 == null) {
                bundle2 = new Bundle();
                bundle.putBundle(AdMobAdapter.class.getName(), bundle2);
            }
            bundle2.putBoolean("render_test_ad_label", true);
        }
        Iw iw = Iw.ADAPTER_LOAD_AD_SYN;
        CallableC1419he callableC1419he = new CallableC1419he(new Jr(this, tv, ov, c2000sqA), 29);
        return new C1950rs(this.f14423c, iw, null, Gw.f13664d, Collections.emptyList(), ((IB) this.f14424d).b(callableC1419he)).g(Iw.ADAPTER_LOAD_AD_ACK).n(new C1996sm(i8, c2040te), AbstractC1988se.f20911f).g(Iw.ADAPTER_WRAP_ADAPTER).k(new Jr(this, tv, ov, c2000sqA)).c();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1845pq
    public final boolean b(Tv tv, Ov ov) {
        return !ov.f15284t.isEmpty();
    }
}
