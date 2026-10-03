package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import android.util.Base64;
import android.util.Pair;
import java.nio.charset.StandardCharsets;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import okhttp3.HttpUrl;
import org.json.JSONException;
import org.json.JSONObject;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Li, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0823Li {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Oo f14531a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Yv f14532b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Kw f14533c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final C1112bh f14534d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final C1949rr f14535e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final C1735nk f14536f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Tv f14537g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final C1481ip f14538h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final C1062aj f14539i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Executor f14540j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final C1120bp f14541k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final C2104uq f14542l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final C1896qp f14543m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final C1999sp f14544n;

    public C0823Li(Oo oo, Yv yv, Kw kw, C1112bh c1112bh, C1949rr c1949rr, C1735nk c1735nk, Tv tv, C1481ip c1481ip, C1062aj c1062aj, C1936re c1936re, C1120bp c1120bp, C2104uq c2104uq, C1896qp c1896qp, C1999sp c1999sp) {
        this.f14531a = oo;
        this.f14532b = yv;
        this.f14533c = kw;
        this.f14534d = c1112bh;
        this.f14535e = c1949rr;
        this.f14536f = c1735nk;
        this.f14537g = tv;
        this.f14538h = c1481ip;
        this.f14539i = c1062aj;
        this.f14540j = c1936re;
        this.f14541k = c1120bp;
        this.f14542l = c2104uq;
        this.f14543m = c1896qp;
        this.f14544n = c1999sp;
    }

    public final Fw a(D4.b bVar) {
        C1950rs c1950rsM = this.f14533c.b(bVar, Iw.RENDERER).k(new C0793Ji(this, 0)).m(this.f14535e);
        J7 j8 = Q7.f15792b5;
        C3099q c3099q = C3099q.f26624d;
        if (!((Boolean) c3099q.f26627c.a(j8)).booleanValue()) {
            c1950rsM = c1950rsM.q(((Integer) c3099q.f26627c.a(Q7.f15801c5)).intValue(), TimeUnit.SECONDS);
        }
        return c1950rsM.c();
    }

    /* JADX WARN: Code duplicated, block: B:57:0x0158 A[Catch: all -> 0x00a8, TryCatch #2 {, blocks: (B:27:0x0081, B:29:0x00a1, B:33:0x00ab, B:34:0x00b0, B:36:0x00bb, B:39:0x00c5, B:43:0x00e9, B:45:0x00ff, B:46:0x0112, B:42:0x00d3, B:47:0x011f, B:50:0x013c, B:52:0x0142, B:53:0x014f, B:55:0x0152, B:58:0x015b, B:57:0x0158), top: B:88:0x0081, inners: #0 }] */
    /* JADX WARN: Code duplicated, block: B:69:0x0196  */
    /* JADX WARN: Code duplicated, block: B:71:0x019e  */
    /* JADX WARN: Code duplicated, block: B:74:0x01b1  */
    /* JADX WARN: Code duplicated, block: B:81:0x01fa  */
    public final Fw b() {
        p090l3.L l4;
        D4.b bVarH1;
        String strC;
        String strA;
        String strOptString;
        p090l3.b1 b1Var = this.f14532b.f17677d;
        if (b1Var.f26540d0 == null && b1Var.f26535Y == null) {
            return c(this.f14539i.a());
        }
        Kw kw = this.f14533c;
        Oo oo = this.f14531a;
        Iw iw = Iw.PRELOADED_LOADER;
        String strD = oo.f15204d.f17677d.f26540d0;
        if (TextUtils.isEmpty(strD)) {
            l4 = oo.f15204d.f17677d.f26535Y;
            if (l4 != null) {
                if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15937s6)).booleanValue()) {
                    String str = l4.f26490G;
                    String str2 = l4.f26491H;
                    String strC2 = Oo.c(str);
                    strC = Oo.c(str2);
                    if (TextUtils.isEmpty(strC)) {
                    }
                    oo.f15208h.f12691a.put("ridmm", "true");
                    bVarH1 = Cw.H1(new C1898qr(14, "Mismatch request IDs."));
                }
                bVarH1 = oo.a(l4.f26490G, oo.b(l4.f26491H));
            } else {
                bVarH1 = Cw.H1(new C1898qr(14, "Mismatch request IDs."));
            }
        } else {
            String strC3 = Oo.c(strD);
            J7 j8 = Q7.f15604D6;
            C3099q c3099q = C3099q.f26624d;
            if (((Boolean) c3099q.f26627c.a(j8)).booleanValue() && strC3.isEmpty()) {
                int iLastIndexOf = strD.lastIndexOf("&request_id=");
                strC3 = iLastIndexOf != -1 ? strD.substring(iLastIndexOf + 12) : HttpUrl.FRAGMENT_ENCODE_SET;
            }
            if (TextUtils.isEmpty(strC3)) {
                bVarH1 = Cw.H1(new C1898qr(15, "Invalid ad string."));
            } else {
                if (((Boolean) c3099q.f26627c.a(Q7.f15731T6)).booleanValue()) {
                    synchronized (oo.f15209i) {
                        p167v3.C c8 = (p167v3.C) ((C0671Bg) oo.f15201a).f12414L.zzb();
                        strA = c8.a(strC3, oo.f15208h);
                        if (((Boolean) c3099q.f26627c.a(j8)).booleanValue()) {
                            strD = Oo.d(strD, strC3, strA, oo.f15208h);
                        }
                        try {
                            strOptString = new JSONObject(strD).optString("render_id", HttpUrl.FRAGMENT_ENCODE_SET);
                        } catch (JSONException unused) {
                            strOptString = HttpUrl.FRAGMENT_ENCODE_SET;
                        }
                        String str3 = null;
                        int i8 = 0;
                        if (!TextUtils.isEmpty(strOptString)) {
                            String str4 = HttpUrl.FRAGMENT_ENCODE_SET;
                            try {
                                str4 = new String(Base64.decode(strOptString, 0), StandardCharsets.UTF_8);
                            } catch (IllegalArgumentException e8) {
                                p113o3.I.k("Ad grouping: Has render_id, but not base64 encoded: ".concat(String.valueOf(strOptString)));
                                p083k3.l.f25980A.f25987g.i("PreloadedLoader.decodeRenderId", e8);
                            }
                            List listS = Xu.j(new C2061tz(':')).s(str4);
                            if (listS.size() == 2) {
                                str3 = (String) listS.get(0);
                                i8 = Integer.parseInt((String) listS.get(1));
                            } else {
                                p113o3.I.k("Ad grouping: Has render_id, but invalid format: ".concat(String.valueOf(strOptString)));
                            }
                        }
                        Pair pair = new Pair(str3, Integer.valueOf(i8));
                        String str5 = (String) pair.first;
                        int iIntValue = ((Integer) pair.second).intValue();
                        if (TextUtils.isEmpty(str5) || iIntValue <= 0) {
                            c8.b(strC3);
                        } else if (c8.d(strC3, str5)) {
                            bVarH1 = Cw.H1(new C1898qr(10, "The ad has already been shown."));
                        } else if (!c8.c(iIntValue, strC3, str5)) {
                            c8.b(strC3);
                        }
                    }
                } else {
                    strA = ((p167v3.C) ((C0671Bg) oo.f15201a).f12414L.zzb()).a(strC3, oo.f15208h);
                    if (((Boolean) c3099q.f26627c.a(j8)).booleanValue()) {
                        strD = Oo.d(strD, strC3, strA, oo.f15208h);
                    }
                }
                if (TextUtils.isEmpty(strA)) {
                    l4 = oo.f15204d.f17677d.f26535Y;
                    if (l4 != null) {
                        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15937s6)).booleanValue()) {
                            String str6 = l4.f26490G;
                            String str7 = l4.f26491H;
                            String strC4 = Oo.c(str6);
                            strC = Oo.c(str7);
                            if (TextUtils.isEmpty(strC) && strC4.equals(strC)) {
                                ((p167v3.C) ((C0671Bg) oo.f15201a).f12414L.zzb()).b(strC4);
                                oo.f15208h.f12691a.put("request_id", strC4);
                            } else {
                                oo.f15208h.f12691a.put("ridmm", "true");
                                bVarH1 = Cw.H1(new C1898qr(14, "Mismatch request IDs."));
                            }
                        }
                        bVarH1 = oo.a(l4.f26490G, oo.b(l4.f26491H));
                    } else {
                        bVarH1 = Cw.H1(new C1898qr(14, "Mismatch request IDs."));
                    }
                } else {
                    bVarH1 = oo.a(strD, oo.b(strA));
                }
            }
        }
        return new C1950rs(kw, iw, null, Gw.f13664d, Collections.emptyList(), bVarH1).c();
    }

    public final Fw c(D4.b bVar) {
        int i8 = 1;
        Tv tv = this.f14537g;
        if (tv != null) {
            return new C1950rs(this.f14533c, Iw.SERVER_TRANSACTION, null, Gw.f13664d, Collections.emptyList(), Cw.N1(tv)).c();
        }
        C1950rs c1950rs = p083k3.l.f25980A.f25989i;
        c1950rs.getClass();
        J7 j8 = Q7.U3;
        C3099q c3099q = C3099q.f26624d;
        if (((Boolean) c3099q.f26627c.a(j8)).booleanValue()) {
            synchronized (c1950rs.f20798J) {
                try {
                    c1950rs.s();
                    ScheduledFuture scheduledFuture = (ScheduledFuture) c1950rs.f20796H;
                    if (scheduledFuture != null) {
                        scheduledFuture.cancel(false);
                    }
                    c1950rs.f20796H = AbstractC1988se.f20909d.schedule((Runnable) c1950rs.f20797I, ((Long) c3099q.f26627c.a(Q7.f15743V3)).longValue(), TimeUnit.MILLISECONDS);
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        if (!((Boolean) c3099q.f26627c.a(Q7.Qa)).booleanValue() || ((Boolean) AbstractC2227x8.f21843c.l()).booleanValue()) {
            C1950rs c1950rsB = this.f14533c.b(bVar, Iw.SERVER_TRANSACTION);
            C1120bp c1120bp = this.f14541k;
            Objects.requireNonNull(c1120bp);
            return c1950rsB.m(new No(c1120bp, 7)).c();
        }
        C1896qp c1896qp = this.f14543m;
        Objects.requireNonNull(c1896qp);
        JB jbD2 = Cw.d2(bVar, new No(c1896qp, 5), this.f14540j);
        C1950rs c1950rsB2 = this.f14533c.b(jbD2, Iw.BUILD_URL);
        C1481ip c1481ip = this.f14538h;
        Objects.requireNonNull(c1481ip);
        Fw fwC = c1950rsB2.m(new No(c1481ip, 6)).c();
        return this.f14533c.a(Iw.SERVER_TRANSACTION, bVar, jbD2, fwC).m(new CallableC0808Ki(this, bVar, jbD2, fwC, 0)).m(new C1422hh(i8)).c();
    }
}
