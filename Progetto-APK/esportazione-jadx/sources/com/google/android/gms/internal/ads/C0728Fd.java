package com.google.android.gms.internal.ads;

import android.content.Context;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import okhttp3.HttpUrl;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Fd, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0728Fd implements InterfaceC0758Hd {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final List f13368l = Collections.synchronizedList(new ArrayList());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CI f13369a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LinkedHashMap f13370b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Context f13373e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f13374f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final C0743Gd f13375g;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f13371c = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ArrayList f13372d = new ArrayList();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Object f13376h = new Object();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final HashSet f13377i = new HashSet();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f13378j = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f13379k = false;

    public C0728Fd(Context context, p120p3.a aVar, C0743Gd c0743Gd, String str) {
        this.f13373e = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.f13370b = new LinkedHashMap();
        this.f13375g = c0743Gd;
        Iterator it = c0743Gd.f13565K.iterator();
        while (it.hasNext()) {
            this.f13377i.add(((String) it.next()).toLowerCase(Locale.ENGLISH));
        }
        this.f13377i.remove("cookie".toLowerCase(Locale.ENGLISH));
        CI ciA = C1823pJ.A();
        ciA.d();
        C1823pJ.O((C1823pJ) ciA.f20255H, 9);
        ciA.d();
        C1823pJ.E((C1823pJ) ciA.f20255H, str);
        ciA.d();
        C1823pJ.F((C1823pJ) ciA.f20255H, str);
        DI diA = EI.A();
        String str2 = this.f13375g.f13561G;
        if (str2 != null) {
            diA.d();
            EI.B((EI) diA.f20255H, str2);
        }
        EI ei = (EI) diA.b();
        ciA.d();
        C1823pJ.G((C1823pJ) ciA.f20255H, ei);
        C1409hJ c1409hJA = C1461iJ.A();
        boolean zD = Q3.c.a(this.f13373e).d();
        c1409hJA.d();
        C1461iJ.D((C1461iJ) c1409hJA.f20255H, zD);
        String str3 = aVar.f28196G;
        if (str3 != null) {
            c1409hJA.d();
            C1461iJ.B((C1461iJ) c1409hJA.f20255H, str3);
        }
        J3.f fVar = J3.f.f4145b;
        Context context2 = this.f13373e;
        fVar.getClass();
        long jA = J3.f.a(context2);
        if (jA > 0) {
            c1409hJA.d();
            C1461iJ.C((C1461iJ) c1409hJA.f20255H, jA);
        }
        C1461iJ c1461iJ = (C1461iJ) c1409hJA.b();
        ciA.d();
        C1823pJ.L((C1823pJ) ciA.f20255H, c1461iJ);
        this.f13369a = ciA;
    }

    public final void a(String str, Map map, int i8) {
        synchronized (this.f13376h) {
            int i9 = 1;
            if (i8 == 3) {
                try {
                    this.f13379k = true;
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (this.f13370b.containsKey(str)) {
                if (i8 == 3) {
                    C1305fJ c1305fJ = (C1305fJ) this.f13370b.get(str);
                    c1305fJ.d();
                    C1357gJ.H((C1357gJ) c1305fJ.f20255H, 4);
                }
                return;
            }
            C1305fJ c1305fJB = C1357gJ.B();
            if (i8 != 0) {
                if (i8 == 1) {
                    i9 = 2;
                } else if (i8 != 2) {
                    i9 = i8 != 3 ? 0 : 4;
                } else {
                    i9 = 3;
                }
            }
            if (i9 != 0) {
                c1305fJB.d();
                C1357gJ.H((C1357gJ) c1305fJB.f20255H, i9);
            }
            int size = this.f13370b.size();
            c1305fJB.d();
            C1357gJ.D((C1357gJ) c1305fJB.f20255H, size);
            c1305fJB.d();
            C1357gJ.E((C1357gJ) c1305fJB.f20255H, str);
            MI miA = OI.A();
            if (!this.f13377i.isEmpty() && map != null) {
                for (Map.Entry entry : map.entrySet()) {
                    String str2 = entry.getKey() != null ? (String) entry.getKey() : HttpUrl.FRAGMENT_ENCODE_SET;
                    String str3 = entry.getValue() != null ? (String) entry.getValue() : HttpUrl.FRAGMENT_ENCODE_SET;
                    if (this.f13377i.contains(str2.toLowerCase(Locale.ENGLISH))) {
                        KI kiA = LI.A();
                        Charset charset = AbstractC2288yH.f22010a;
                        VG vg = new VG(str2.getBytes(charset));
                        kiA.d();
                        LI.B((LI) kiA.f20255H, vg);
                        VG vg2 = new VG(str3.getBytes(charset));
                        kiA.d();
                        LI.C((LI) kiA.f20255H, vg2);
                        LI li = (LI) kiA.b();
                        miA.d();
                        OI.B((OI) miA.f20255H, li);
                    }
                }
            }
            OI oi = (OI) miA.b();
            c1305fJB.d();
            C1357gJ.F((C1357gJ) c1305fJB.f20255H, oi);
            this.f13370b.put(str, c1305fJB);
        }
    }

    public final void b() {
        synchronized (this.f13376h) {
            this.f13370b.keySet();
            C1298fC c1298fCN1 = Cw.N1(Collections.emptyMap());
            No no = new No(this, 2);
            C1936re c1936re = AbstractC1988se.f20911f;
            JB jbD2 = Cw.d2(c1298fCN1, no, c1936re);
            D4.b bVarE2 = Cw.e2(jbD2, 10L, TimeUnit.SECONDS, AbstractC1988se.f20909d);
            Cw.h2(jbD2, new K4(25, bVarE2), c1936re);
            f13368l.add(bVarE2);
        }
    }

    public final void c(String str) {
        synchronized (this.f13376h) {
            try {
                if (str == null) {
                    CI ci = this.f13369a;
                    ci.d();
                    C1823pJ.J((C1823pJ) ci.f20255H);
                } else {
                    CI ci2 = this.f13369a;
                    ci2.d();
                    C1823pJ.I((C1823pJ) ci2.f20255H, str);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
