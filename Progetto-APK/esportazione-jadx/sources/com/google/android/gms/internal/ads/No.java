package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.Parcel;
import java.io.InputStreamReader;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import okhttp3.HttpUrl;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p021c4.C0621y;
import p090l3.C3099q;
import p113o3.C3161t;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class No implements RB {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15089a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f15090b;

    public No(C1053aa c1053aa) {
        this.f15089a = 1;
        this.f15090b = c1053aa;
    }

    @Override // com.google.android.gms.internal.ads.RB
    public final D4.b zza(Object obj) throws C0679Bo {
        C1305fJ c1305fJ;
        KB kbB2;
        Xs xs;
        C1851pw c1851pw;
        C1486iv c1486iv;
        int i8 = 11;
        int i9 = 10;
        int i10 = 8;
        int i11 = 9;
        int i12 = 4;
        final int i13 = 0;
        int i14 = 3;
        int i15 = 2;
        final int i16 = 1;
        switch (this.f15089a) {
            case 0:
                return ((C0915Sa) this.f15090b).a((JSONObject) obj);
            case 1:
                C1156ca c1156ca = (C1156ca) obj;
                C2040te c2040te = new C2040te();
                BinderC1208da binderC1208da = new BinderC1208da(c2040te);
                C1053aa c1053aa = (C1053aa) this.f15090b;
                Parcel parcelJ0 = c1156ca.j0();
                A5.c(parcelJ0, c1053aa);
                A5.e(parcelJ0, binderC1208da);
                c1156ca.k3(2, parcelJ0);
                return c2040te;
            case 2:
                C0728Fd c0728Fd = (C0728Fd) this.f15090b;
                Map map = (Map) obj;
                c0728Fd.getClass();
                if (map != null) {
                    try {
                        for (String str : map.keySet()) {
                            JSONArray jSONArrayOptJSONArray = new JSONObject((String) map.get(str)).optJSONArray("matches");
                            if (jSONArrayOptJSONArray != null) {
                                synchronized (c0728Fd.f13376h) {
                                    try {
                                        int length = jSONArrayOptJSONArray.length();
                                        synchronized (c0728Fd.f13376h) {
                                            try {
                                                c1305fJ = (C1305fJ) c0728Fd.f13370b.get(str);
                                            } catch (Throwable th) {
                                                throw th;
                                            }
                                            break;
                                        }
                                        if (c1305fJ == null) {
                                            S3.e.w("Cannot find the corresponding resource object for " + str);
                                        } else {
                                            for (int i17 = 0; i17 < length; i17++) {
                                                String string = jSONArrayOptJSONArray.getJSONObject(i17).getString("threat_type");
                                                c1305fJ.d();
                                                C1357gJ.G((C1357gJ) c1305fJ.f20255H, string);
                                            }
                                            c0728Fd.f13374f |= length > 0;
                                        }
                                    } catch (Throwable th2) {
                                        throw th2;
                                    }
                                }
                            }
                        }
                    } catch (JSONException e8) {
                        if (((Boolean) AbstractC2331z8.f22133a.l()).booleanValue()) {
                            p120p3.h.c("Failed to get SafeBrowsing metadata", e8);
                        }
                        return Cw.H1(new Exception("Safebrowsing report transmission failed."));
                    }
                }
                if (c0728Fd.f13374f) {
                    synchronized (c0728Fd.f13376h) {
                        CI ci = c0728Fd.f13369a;
                        ci.d();
                        C1823pJ.O((C1823pJ) ci.f20255H, 10);
                        break;
                    }
                }
                boolean z7 = c0728Fd.f13374f;
                if (!(z7 && c0728Fd.f13375g.f13567M) && (!(c0728Fd.f13379k && c0728Fd.f13375g.f13566L) && (z7 || !c0728Fd.f13375g.f13564J))) {
                    return Cw.N1(null);
                }
                synchronized (c0728Fd.f13376h) {
                    try {
                        for (C1305fJ c1305fJ2 : c0728Fd.f13370b.values()) {
                            CI ci2 = c0728Fd.f13369a;
                            C1357gJ c1357gJ = (C1357gJ) c1305fJ2.b();
                            ci2.d();
                            C1823pJ.H((C1823pJ) ci2.f20255H, c1357gJ);
                        }
                        CI ci3 = c0728Fd.f13369a;
                        ArrayList arrayList = c0728Fd.f13371c;
                        ci3.d();
                        C1823pJ.M((C1823pJ) ci3.f20255H, arrayList);
                        CI ci4 = c0728Fd.f13369a;
                        ArrayList arrayList2 = c0728Fd.f13372d;
                        ci4.d();
                        C1823pJ.N((C1823pJ) ci4.f20255H, arrayList2);
                        if (((Boolean) AbstractC2331z8.f22133a.l()).booleanValue()) {
                            StringBuilder sb = new StringBuilder("Sending SB report\n  url: " + ((C1823pJ) c0728Fd.f13369a.f20255H).C() + "\n  clickUrl: " + ((C1823pJ) c0728Fd.f13369a.f20255H).B() + "\n  resources: \n");
                            for (C1357gJ c1357gJ2 : Collections.unmodifiableList(((C1823pJ) c0728Fd.f13369a.f20255H).D())) {
                                sb.append("    [");
                                sb.append(c1357gJ2.A());
                                sb.append("] ");
                                sb.append(c1357gJ2.C());
                            }
                            S3.e.w(sb.toString());
                        }
                        byte[] bArrD = ((C1823pJ) c0728Fd.f13369a.b()).d();
                        String str2 = c0728Fd.f13375g.f13562H;
                        new p113o3.v(c0728Fd.f13373e);
                        C3161t c3161tA = p113o3.v.a(1, str2, null, bArrD);
                        if (((Boolean) AbstractC2331z8.f22133a.l()).booleanValue()) {
                            c3161tA.a(new RunnableC2171w4(1), AbstractC1988se.f20906a);
                        }
                        kbB2 = Cw.b2(c3161tA, new C2064u1(3), AbstractC1988se.f20911f);
                    } catch (Throwable th3) {
                        throw th3;
                    }
                    break;
                }
                return kbB2;
            case 3:
                String str3 = (String) C3099q.f26624d.f26627c.a(Q7.y9);
                Uri.Builder builder = (Uri.Builder) this.f15090b;
                builder.appendQueryParameter(str3, "12");
                return Cw.N1(builder.toString());
            case 4:
                ((InterfaceC1195dC) this.f15090b).zza((Throwable) obj);
                return Cw.N1(null);
            case 5:
                C1896qp c1896qp = (C1896qp) this.f15090b;
                C0973Wc c0973Wc = (C0973Wc) obj;
                c1896qp.getClass();
                C1298fC c1298fCN1 = Cw.N1(null);
                C1844pp c1844pp = new C1844pp(c0973Wc);
                InterfaceExecutorServiceC1504jC interfaceExecutorServiceC1504jC = c1896qp.f20641a;
                C1950rs c1950rsB = c1896qp.f20643c.b(Cw.b2(c1298fCN1, c1844pp, interfaceExecutorServiceC1504jC), Iw.GMS_SIGNALS);
                C1740np c1740np = c1896qp.f20642b;
                Objects.requireNonNull(c1740np);
                return Cw.b2(c1950rsB.m(new No(c1740np, i8)).c(), new C1844pp(c0973Wc, 0), interfaceExecutorServiceC1504jC);
            case 6:
                C1481ip c1481ip = (C1481ip) this.f15090b;
                c1481ip.getClass();
                return Cw.d2(AbstractC1040aC.r(Cw.N1((JSONObject) obj)), p083k3.l.f25980A.f25996p.b(c1481ip.f19355e, c1481ip.f19356f, c1481ip.f19354d).a("AFMA_getAdDictionary", AbstractC0873Pa.f15389b, new C0621y(8)), c1481ip.f19351a);
            case 7:
                return ((C1120bp) this.f15090b).a((C0973Wc) obj);
            case 8:
                C0707Dm c0707Dm = (C0707Dm) this.f15090b;
                InterfaceC0715Ef interfaceC0715EfA = c0707Dm.f12871c.a(p090l3.d1.l(), null, null);
                C1862q6 c1862q6 = new C1862q6(interfaceC0715EfA);
                c0707Dm.a(interfaceC0715EfA);
                interfaceC0715EfA.zzN().f17464N = new C0790Jf(c1862q6, 3);
                interfaceC0715EfA.loadUrl((String) C3099q.f26624d.f26627c.a(Q7.f15981y3));
                return c1862q6;
            case 9:
                C1326fp c1326fp = (C1326fp) obj;
                return Cw.N1(new Tv(new Xu(((C0844Mo) this.f15090b).f14800c, 7), C2246xc.i(new InputStreamReader(c1326fp.f18807a), c1326fp.f18808b)));
            case 10:
                return Cw.N1(new Tv(new Xu(((Oo) this.f15090b).f15204d, 7), C2246xc.i(new StringReader(((JSONObject) obj).toString()), null)));
            case 11:
                final C1740np c1740np2 = (C1740np) this.f15090b;
                final C0757Hc c0757Hc = (C0757Hc) obj;
                c1740np2.getClass();
                String str4 = c0757Hc.f13759H;
                p113o3.O o4 = p083k3.l.f25980A.f25983c;
                boolean zC = p113o3.O.c(str4);
                InterfaceExecutorServiceC1504jC interfaceExecutorServiceC1504jC2 = c1740np2.f20198b;
                return Cw.d2(Cw.D1(AbstractC1040aC.r(zC ? Cw.H1(new C1274ep(1, "Ads signal service force local")) : Cw.D1(Cw.W1(new QB() { // from class: com.google.android.gms.internal.ads.kp
                    private final D4.b a() {
                        D4.b bVarE2;
                        C1636lp c1636lp = (C1636lp) c1740np2;
                        C0787Jc c0787Jc = (C0787Jc) c0757Hc;
                        c1636lp.getClass();
                        long jLongValue = ((Long) C3099q.f26624d.f26627c.a(Q7.Sa)).longValue();
                        C2103up c2103up = c1636lp.f19851c;
                        synchronized (c2103up) {
                            if (c2103up.f22199b) {
                                bVarE2 = Cw.e2(c2103up.f22198a, jLongValue, TimeUnit.MILLISECONDS, c2103up.f22204g);
                            } else {
                                c2103up.f22199b = true;
                                c2103up.f21389h = c0787Jc;
                                c2103up.a();
                                bVarE2 = Cw.e2(c2103up.f22198a, jLongValue, TimeUnit.MILLISECONDS, c2103up.f22204g);
                                bVarE2.a(new RunnableC1026Zn(c2103up, 3), AbstractC1988se.f20911f);
                            }
                        }
                        return bVarE2;
                    }

                    @Override // com.google.android.gms.internal.ads.QB
                    public final D4.b zza() {
                        D4.b bVarE2;
                        switch (i16) {
                            case 0:
                                return a();
                            default:
                                C1740np c1740np3 = (C1740np) c1740np2;
                                C0757Hc c0757Hc2 = (C0757Hc) c0757Hc;
                                c1740np3.getClass();
                                long jLongValue = ((Long) C3099q.f26624d.f26627c.a(Q7.Ra)).longValue();
                                C2207wp c2207wp = c1740np3.f20199c;
                                synchronized (c2207wp) {
                                    if (c2207wp.f22199b) {
                                        bVarE2 = Cw.e2(c2207wp.f22198a, jLongValue, TimeUnit.MILLISECONDS, c2207wp.f22204g);
                                    } else {
                                        c2207wp.f22199b = true;
                                        c2207wp.f21750h = c0757Hc2;
                                        c2207wp.a();
                                        bVarE2 = Cw.e2(c2207wp.f22198a, jLongValue, TimeUnit.MILLISECONDS, c2207wp.f22204g);
                                        bVarE2.a(new RunnableC1026Zn(c2207wp, 4), AbstractC1988se.f20911f);
                                    }
                                }
                                return bVarE2;
                        }
                    }
                }, c1740np2.f20197a), ExecutionException.class, new C1422hh(i11), interfaceExecutorServiceC1504jC2)), C1274ep.class, new C1422hh(i9), interfaceExecutorServiceC1504jC2), new C1422hh(i8), interfaceExecutorServiceC1504jC2);
            case 12:
                final C1636lp c1636lp = (C1636lp) this.f15090b;
                final C0787Jc c0787Jc = (C0787Jc) obj;
                c1636lp.getClass();
                String str5 = c0787Jc.f14168L;
                p113o3.O o7 = p083k3.l.f25980A.f25983c;
                boolean zC2 = p113o3.O.c(str5);
                InterfaceExecutorServiceC1504jC interfaceExecutorServiceC1504jC3 = c1636lp.f19850b;
                return Cw.D1(zC2 ? Cw.H1(new C1274ep(1, "Ads service proxy force local")) : Cw.D1(Cw.W1(new QB() { // from class: com.google.android.gms.internal.ads.kp
                    private final D4.b a() {
                        D4.b bVarE2;
                        C1636lp c1636lp2 = (C1636lp) c1636lp;
                        C0787Jc c0787Jc2 = (C0787Jc) c0787Jc;
                        c1636lp2.getClass();
                        long jLongValue = ((Long) C3099q.f26624d.f26627c.a(Q7.Sa)).longValue();
                        C2103up c2103up = c1636lp2.f19851c;
                        synchronized (c2103up) {
                            if (c2103up.f22199b) {
                                bVarE2 = Cw.e2(c2103up.f22198a, jLongValue, TimeUnit.MILLISECONDS, c2103up.f22204g);
                            } else {
                                c2103up.f22199b = true;
                                c2103up.f21389h = c0787Jc2;
                                c2103up.a();
                                bVarE2 = Cw.e2(c2103up.f22198a, jLongValue, TimeUnit.MILLISECONDS, c2103up.f22204g);
                                bVarE2.a(new RunnableC1026Zn(c2103up, 3), AbstractC1988se.f20911f);
                            }
                        }
                        return bVarE2;
                    }

                    @Override // com.google.android.gms.internal.ads.QB
                    public final D4.b zza() {
                        D4.b bVarE2;
                        switch (i13) {
                            case 0:
                                return a();
                            default:
                                C1740np c1740np3 = (C1740np) c1636lp;
                                C0757Hc c0757Hc2 = (C0757Hc) c0787Jc;
                                c1740np3.getClass();
                                long jLongValue = ((Long) C3099q.f26624d.f26627c.a(Q7.Ra)).longValue();
                                C2207wp c2207wp = c1740np3.f20199c;
                                synchronized (c2207wp) {
                                    if (c2207wp.f22199b) {
                                        bVarE2 = Cw.e2(c2207wp.f22198a, jLongValue, TimeUnit.MILLISECONDS, c2207wp.f22204g);
                                    } else {
                                        c2207wp.f22199b = true;
                                        c2207wp.f21750h = c0757Hc2;
                                        c2207wp.a();
                                        bVarE2 = Cw.e2(c2207wp.f22198a, jLongValue, TimeUnit.MILLISECONDS, c2207wp.f22204g);
                                        bVarE2.a(new RunnableC1026Zn(c2207wp, 4), AbstractC1988se.f20911f);
                                    }
                                }
                                return bVarE2;
                        }
                    }
                }, c1636lp.f19849a), ExecutionException.class, new C1422hh(i10), interfaceExecutorServiceC1504jC3), C1274ep.class, new C0709Do(c1636lp, c0787Jc, Binder.getCallingUid(), i15), interfaceExecutorServiceC1504jC3);
            case 13:
                return ((C2302yg) this.f15090b).a().a(new Bundle(), new JSONObject());
            case 14:
                Zt zt = (Zt) this.f15090b;
                Throwable th4 = (Throwable) obj;
                zt.getClass();
                if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15789b2)).booleanValue()) {
                    p083k3.l.f25980A.f25987g.i("OptionalSignalTimeout:" + zt.f17811a.zza(), th4);
                }
                return Cw.N1(null);
            case 15:
                Hu hu = (Hu) this.f15090b;
                Throwable th5 = (Throwable) obj;
                hu.getClass();
                ((IB) hu.f13815c).a(new RunnableC1026Zn(th5, 9));
                boolean z8 = th5 instanceof SecurityException;
                String str6 = HttpUrl.FRAGMENT_ENCODE_SET;
                if (z8) {
                    xs = new Xs(str6, i15);
                } else if (th5 instanceof IllegalStateException) {
                    xs = new Xs(str6, i14);
                } else if (th5 instanceof IllegalArgumentException) {
                    xs = new Xs(str6, i12);
                } else {
                    xs = th5 instanceof TimeoutException ? new Xs(str6, 5) : new Xs(str6, i13);
                }
                return Cw.N1(xs);
            case 16:
                return Cw.N1(new Cs((String) ((C2366zs) this.f15090b).f22226c, i12));
            case 17:
                C1538jv c1538jv = (C1538jv) this.f15090b;
                C2214ww c2214ww = (C2214ww) obj;
                c1538jv.getClass();
                if (c2214ww == null || (c1851pw = c2214ww.f21770a) == null || (c1486iv = c2214ww.f21771b) == null) {
                    throw new C0679Bo(1, "Empty prefetch");
                }
                C1087b7 c1087b7A = C1397h7.A();
                Z6 z6C = C1035a7.C();
                z6C.d();
                C1035a7.D((C1035a7) z6C.f20255H);
                C1241e7 c1241e7B = C1241e7.B();
                z6C.d();
                C1035a7.A((C1035a7) z6C.f20255H, c1241e7B);
                c1087b7A.d();
                C1397h7.B((C1397h7) c1087b7A.f20255H, (C1035a7) z6C.b());
                c1851pw.f20503a.zzb().f14536f.E((C1397h7) c1087b7A.b());
                return c1538jv.b(c1851pw, c1486iv.f19381b);
            default:
                return Cw.N1(((Dw) this.f15090b).zza(obj));
        }
    }

    public /* synthetic */ No(Object obj, int i8) {
        this.f15089a = i8;
        this.f15090b = obj;
    }
}
