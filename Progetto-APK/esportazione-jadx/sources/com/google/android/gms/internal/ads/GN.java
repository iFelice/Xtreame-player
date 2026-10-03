package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class GN {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Uri f13537a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RI f13538b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C1093bD f13539c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final N f13540d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final G.c f13541e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public volatile boolean f13543g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f13545i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public CD f13546j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public InterfaceC1234e0 f13547k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f13548l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final /* synthetic */ KN f13549m;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final W0.w f13542f = new W0.w();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f13544h = true;

    public GN(KN kn, Uri uri, InterfaceC1556kC interfaceC1556kC, C1093bD c1093bD, N n7, G.c cVar) {
        this.f13549m = kn;
        this.f13537a = uri;
        this.f13538b = new RI(interfaceC1556kC);
        this.f13539c = c1093bD;
        this.f13540d = n7;
        this.f13541e = cVar;
        C1827pN.f20449a.getAndIncrement();
        this.f13546j = b(0L);
    }

    /* JADX WARN: Code duplicated, block: B:122:0x0236  */
    /* JADX WARN: Code duplicated, block: B:124:0x0242  */
    public final void a() throws Throwable {
        int i8;
        C1093bD c1093bD;
        boolean z7;
        int i9;
        String str;
        String str2;
        String str3;
        boolean zEquals;
        int i10;
        InterfaceC1556kC interfaceC1556kC;
        int i11;
        L l4;
        int i12;
        int i13;
        int i14;
        while (!this.f13543g) {
            try {
                long j8 = this.f13542f.f7458a;
                CD cdB = b(j8);
                this.f13546j = cdB;
                long jA = this.f13538b.a(cdB);
                if (this.f13543g) {
                    C1093bD c1093bD2 = this.f13539c;
                    if (c1093bD2.m() != -1) {
                        this.f13542f.f7458a = c1093bD2.m();
                    }
                    try {
                        this.f13538b.zzd();
                        return;
                    } catch (IOException unused) {
                        return;
                    }
                }
                if (jA != -1) {
                    jA += j8;
                    KN kn = this.f13549m;
                    kn.f14349T.post(new EN(kn, 0));
                }
                long j9 = jA;
                KN kn2 = this.f13549m;
                Map mapZze = this.f13538b.f16234a.zze();
                List list = (List) mapZze.get("icy-br");
                if (list != null) {
                    String str4 = (String) list.get(0);
                    try {
                        i14 = Integer.parseInt(str4) * 1000;
                        if (i14 > 0) {
                            i9 = i14;
                            z7 = true;
                        } else {
                            try {
                                Zo.f("IcyHeaders", "Invalid bitrate: " + str4);
                                z7 = false;
                                i9 = -1;
                            } catch (NumberFormatException unused2) {
                                Zo.f("IcyHeaders", "Invalid bitrate header: ".concat(String.valueOf(str4)));
                                i9 = i14;
                                z7 = false;
                            }
                        }
                    } catch (NumberFormatException unused3) {
                        i14 = -1;
                    }
                } else {
                    z7 = false;
                    i9 = -1;
                }
                List list2 = (List) mapZze.get("icy-genre");
                if (list2 != null) {
                    str = (String) list2.get(0);
                    z7 = true;
                } else {
                    str = null;
                }
                List list3 = (List) mapZze.get("icy-name");
                if (list3 != null) {
                    str2 = (String) list3.get(0);
                    z7 = true;
                } else {
                    str2 = null;
                }
                List list4 = (List) mapZze.get("icy-url");
                if (list4 != null) {
                    str3 = (String) list4.get(0);
                    z7 = true;
                } else {
                    str3 = null;
                }
                List list5 = (List) mapZze.get("icy-pub");
                if (list5 != null) {
                    zEquals = ((String) list5.get(0)).equals("1");
                    z7 = true;
                } else {
                    zEquals = false;
                }
                List list6 = (List) mapZze.get("icy-metaint");
                if (list6 != null) {
                    String str5 = (String) list6.get(0);
                    try {
                        i13 = Integer.parseInt(str5);
                        if (i13 > 0) {
                            i10 = i13;
                            z7 = true;
                        } else {
                            try {
                                Zo.f("IcyHeaders", "Invalid metadata interval: " + str5);
                                i10 = -1;
                            } catch (NumberFormatException unused4) {
                                Zo.f("IcyHeaders", "Invalid metadata interval: ".concat(String.valueOf(str5)));
                                i10 = i13;
                            }
                        }
                    } catch (NumberFormatException unused5) {
                        i13 = -1;
                    }
                } else {
                    i10 = -1;
                }
                kn2.f14351V = z7 ? new I0(i9, i10, str, str2, str3, zEquals) : null;
                RI ri = this.f13538b;
                I0 i15 = this.f13549m.f14351V;
                if (i15 == null || (i12 = i15.f13833L) == -1) {
                    interfaceC1556kC = ri;
                } else {
                    C1775oN c1775oN = new C1775oN(ri, i12, this);
                    KN kn3 = this.f13549m;
                    kn3.getClass();
                    InterfaceC1234e0 interfaceC1234e0O = kn3.o(new IN(0, true));
                    this.f13547k = interfaceC1234e0O;
                    interfaceC1234e0O.d(KN.f14335t0);
                    interfaceC1556kC = c1775oN;
                }
                this.f13539c.u(interfaceC1556kC, this.f13537a, this.f13538b.f16234a.zze(), j8, j9, this.f13540d);
                if (this.f13549m.f14351V != null && (l4 = (L) this.f13539c.f18026H) != null && (l4 instanceof C1493j1)) {
                    ((C1493j1) l4).f19418o = true;
                }
                if (this.f13544h) {
                    C1093bD c1093bD3 = this.f13539c;
                    long j10 = this.f13545i;
                    L l8 = (L) c1093bD3.f18026H;
                    l8.getClass();
                    l8.e(j8, j10);
                    try {
                        this.f13544h = false;
                    } catch (Throwable th) {
                        th = th;
                        i8 = 0;
                        if (i8 != 1) {
                            c1093bD = this.f13539c;
                            if (c1093bD.m() != -1) {
                                this.f13542f.f7458a = c1093bD.m();
                            }
                        }
                        try {
                            this.f13538b.zzd();
                        } catch (IOException unused6) {
                        }
                        throw th;
                    }
                }
                long j11 = j8;
                int iC = 0;
                while (iC == 0) {
                    try {
                        if (this.f13543g) {
                            iC = 0;
                            break;
                        }
                        try {
                            G.c cVar = this.f13541e;
                            synchronized (cVar) {
                                while (!cVar.f3280H) {
                                    try {
                                        cVar.wait();
                                    } catch (Throwable th2) {
                                        throw th2;
                                    }
                                }
                            }
                            C1093bD c1093bD4 = this.f13539c;
                            W0.w wVar = this.f13542f;
                            L l9 = (L) c1093bD4.f18026H;
                            l9.getClass();
                            M m7 = (M) c1093bD4.f18027I;
                            m7.getClass();
                            iC = l9.c(m7, wVar);
                            long jM = this.f13539c.m();
                            if (jM > this.f13549m.f14342M + j11) {
                                this.f13541e.d();
                                KN kn4 = this.f13549m;
                                kn4.f14349T.post(kn4.f14348S);
                                j11 = jM;
                            }
                        } catch (InterruptedException unused7) {
                            throw new InterruptedIOException();
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        i8 = iC;
                        if (i8 != 1) {
                            c1093bD = this.f13539c;
                            if (c1093bD.m() != -1) {
                                this.f13542f.f7458a = c1093bD.m();
                            }
                        }
                        this.f13538b.zzd();
                        throw th;
                    }
                }
                if (iC == 1) {
                    i11 = 0;
                } else {
                    C1093bD c1093bD5 = this.f13539c;
                    if (c1093bD5.m() != -1) {
                        this.f13542f.f7458a = c1093bD5.m();
                    }
                    i11 = iC;
                }
                try {
                    this.f13538b.zzd();
                } catch (IOException unused8) {
                }
                if (i11 != 0) {
                    return;
                }
            } catch (Throwable th4) {
                th = th4;
            }
        }
    }

    public final CD b(long j8) {
        Collections.emptyMap();
        Map map = KN.f14334s0;
        Uri uri = this.f13537a;
        if (uri != null) {
            return new CD(uri, map, j8, -1L, 6);
        }
        throw new IllegalStateException("The uri must be set.");
    }
}
