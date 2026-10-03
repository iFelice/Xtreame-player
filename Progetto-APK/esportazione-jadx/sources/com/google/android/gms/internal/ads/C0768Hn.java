package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Hn, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0768Hn implements Lw {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final C0693Cn f13788H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final P3.a f13789I;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final HashMap f13787G = new HashMap();

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final HashMap f13790J = new HashMap();

    public C0768Hn(C0693Cn c0693Cn, Set set, P3.a aVar) {
        this.f13788H = c0693Cn;
        Iterator it = set.iterator();
        while (it.hasNext()) {
            C0753Gn c0753Gn = (C0753Gn) it.next();
            HashMap map = this.f13790J;
            c0753Gn.getClass();
            map.put(Iw.RENDERER, c0753Gn);
        }
        this.f13789I = aVar;
    }

    public final void a(Iw iw, boolean z7) {
        HashMap map = this.f13790J;
        Iw iw2 = ((C0753Gn) map.get(iw)).f13634b;
        HashMap map2 = this.f13787G;
        if (map2.containsKey(iw2)) {
            String str = true != z7 ? "f." : "s.";
            ((P3.b) this.f13789I).getClass();
            this.f13788H.f12691a.put("label.".concat(((C0753Gn) map.get(iw)).f13633a), str.concat(String.valueOf(Long.toString(SystemClock.elapsedRealtime() - ((Long) map2.get(iw2)).longValue()))));
        }
    }

    @Override // com.google.android.gms.internal.ads.Lw
    public final void c(Iw iw, String str, Throwable th) {
        HashMap map = this.f13787G;
        if (map.containsKey(iw)) {
            ((P3.b) this.f13789I).getClass();
            long jElapsedRealtime = SystemClock.elapsedRealtime() - ((Long) map.get(iw)).longValue();
            String strValueOf = String.valueOf(str);
            this.f13788H.f12691a.put("task.".concat(strValueOf), "f.".concat(String.valueOf(Long.toString(jElapsedRealtime))));
        }
        if (this.f13790J.containsKey(iw)) {
            a(iw, false);
        }
    }

    @Override // com.google.android.gms.internal.ads.Lw
    public final void d(Iw iw, String str) {
        HashMap map = this.f13787G;
        if (map.containsKey(iw)) {
            ((P3.b) this.f13789I).getClass();
            long jElapsedRealtime = SystemClock.elapsedRealtime() - ((Long) map.get(iw)).longValue();
            String strValueOf = String.valueOf(str);
            this.f13788H.f12691a.put("task.".concat(strValueOf), "s.".concat(String.valueOf(Long.toString(jElapsedRealtime))));
        }
        if (this.f13790J.containsKey(iw)) {
            a(iw, true);
        }
    }

    @Override // com.google.android.gms.internal.ads.Lw
    public final void e(String str) {
    }

    @Override // com.google.android.gms.internal.ads.Lw
    public final void i(Iw iw, String str) {
        ((P3.b) this.f13789I).getClass();
        this.f13787G.put(iw, Long.valueOf(SystemClock.elapsedRealtime()));
    }
}
