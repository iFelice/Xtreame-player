package com.google.android.gms.internal.ads;

import android.content.pm.PackageInfo;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import okhttp3.HttpUrl;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.vg, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2146vg {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final K.k f21549a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C0671Bg f21550b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MJ f21551c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final C0687Ch f21552d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final C0687Ch f21553e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final C0843Mn f21554f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Ou f21555g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final C2263xt f21556h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final C0799Jo f21557i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final C0687Ch f21558j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Lu f21559k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final MJ f21560l;

    public C2146vg(C0671Bg c0671Bg, K.k kVar) {
        this.f21550b = c0671Bg;
        this.f21549a = kVar;
        this.f21551c = HJ.b(new Ou(c0671Bg.f12460q, 8));
        Ru ru = new Ru(kVar);
        Su su = new Su(kVar);
        Uu uu = new Uu(kVar);
        Bw bw = AbstractC1717nH.f20123h0;
        C0799Jo c0799Jo = Cw.f12717a;
        C1523jg c1523jg = c0671Bg.f12442h;
        MJ mj = c0671Bg.f12436e;
        this.f21552d = new C0687Ch(bw, c1523jg, mj, c0799Jo, ru, su, uu, 12);
        Qu qu = new Qu(kVar);
        MJ mj2 = c0671Bg.f12417O;
        this.f21553e = new C0687Ch(bw, ru, c1523jg, mj2, mj, c0799Jo, qu, 13);
        this.f21554f = new C0843Mn(c1523jg);
        this.f21555g = new Ou(qu);
        this.f21556h = new C2263xt(mj, (IJ) c1523jg, 18);
        this.f21557i = new C0799Jo(9, 0);
        this.f21558j = new C0687Ch(mj2, new Tu(kVar), uu, AbstractC1717nH.f20125i0, c0799Jo, qu, mj, 14);
        this.f21559k = new Lu(qu, AbstractC1717nH.f20121g0, mj2, mj, 0);
        C1116bl c1116bl = new C1116bl(kVar, 3);
        MJ mjB = HJ.b(AbstractC1270el.f18568m);
        MJ mjB2 = HJ.b(AbstractC1270el.f18567l);
        MJ mjB3 = HJ.b(AbstractC1270el.f18569n);
        MJ mjB4 = HJ.b(AbstractC1270el.f18570o);
        int i8 = KJ.f14324b;
        LinkedHashMap linkedHashMapG0 = Cw.G0(4);
        linkedHashMapG0.put(Iw.GMS_SIGNALS, mjB);
        linkedHashMapG0.put(Iw.BUILD_URL, mjB2);
        linkedHashMapG0.put(Iw.HTTP, mjB3);
        linkedHashMapG0.put(Iw.PRE_PROCESS, mjB4);
        MJ mjB5 = HJ.b(new p167v3.E((IJ) c1116bl, (MJ) c0671Bg.f12442h, (MJ) new KJ(linkedHashMapG0), 17));
        int i9 = NJ.f14896c;
        List listEmptyList = Collections.emptyList();
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(mjB5);
        this.f21560l = HJ.b(new C2263xt(c0671Bg.f12436e, (IJ) new Mw(new NJ(listEmptyList, arrayList)), 20));
    }

    public final C2366zs a() {
        C1936re c1936re = AbstractC1988se.f20906a;
        Cw.N0(c1936re);
        K.k kVar = this.f21549a;
        String string = ((C0973Wc) kVar.f4295I).f17250G.getString("ms");
        if (string == null) {
            string = HttpUrl.FRAGMENT_ENCODE_SET;
        }
        PackageInfo packageInfo = ((C0973Wc) kVar.f4295I).f17255L;
        return new C2366zs(c1936re, string);
    }
}
