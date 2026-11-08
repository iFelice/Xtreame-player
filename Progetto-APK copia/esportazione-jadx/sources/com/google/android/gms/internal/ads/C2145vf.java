package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.util.SparseBooleanArray;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import okhttp3.HttpUrl;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.vf, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2145vf implements InterfaceC1615lJ, InterfaceC1255eL {

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public static final AtomicInteger f21527a0 = new AtomicInteger(0);

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public static final AtomicInteger f21528b0 = new AtomicInteger(0);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Context f21529G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final C1886qf f21530H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final C1983sO f21531I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final C0849Ne f21532J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final WeakReference f21533K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final NN f21534L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public C1049aL f21535M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public ByteBuffer f21536N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public boolean f21537O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public InterfaceC0759He f21538P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public int f21539Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public int f21540R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public long f21541S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public final String f21542T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public final int f21543U;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public Integer f21545W;

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public final ArrayList f21546X;

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public volatile C1937rf f21547Y;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public final Object f21544V = new Object();

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public final HashSet f21548Z = new HashSet();

    /* JADX WARN: Code duplicated, block: B:25:0x0107  */
    /* JADX WARN: Code duplicated, block: B:26:0x0109  */
    /* JADX WARN: Code duplicated, block: B:29:0x010e  */
    public C2145vf(Context context, C0849Ne c0849Ne, InterfaceC0863Oe interfaceC0863Oe, Integer num) {
        final boolean z7;
        VB c2218x;
        this.f21529G = context;
        this.f21532J = c0849Ne;
        this.f21545W = num;
        this.f21533K = new WeakReference(interfaceC0863Oe);
        C1886qf c1886qf = new C1886qf();
        this.f21530H = c1886qf;
        C1983sO c1983sO = new C1983sO(context);
        this.f21531I = c1983sO;
        if (p113o3.I.m()) {
            p113o3.I.k("SimpleExoPlayerAdapter initialize ".concat(toString()));
        }
        f21527a0.incrementAndGet();
        C1668mK c1668mK = new C1668mK(context, new C2093uf(this));
        final int i8 = 1;
        p113o3.r.M(!c1668mK.f19947r);
        final int i9 = 2;
        c1668mK.f19934e = new C1594kz(c1983sO, 2);
        p113o3.r.M(!c1668mK.f19947r);
        c1668mK.f19935f = new C1594kz(c1886qf, 1);
        p113o3.r.M(!c1668mK.f19947r);
        c1668mK.f19947r = true;
        C1049aL c1049aL = new C1049aL(c1668mK);
        this.f21535M = c1049aL;
        c1049aL.m(this);
        final int i10 = 0;
        this.f21539Q = 0;
        this.f21541S = 0L;
        this.f21540R = 0;
        this.f21546X = new ArrayList();
        this.f21547Y = null;
        String strZzr = interfaceC0863Oe != null ? interfaceC0863Oe.zzr() : null;
        this.f21542T = (String) (strZzr == null ? C1957rz.f20814G : new Az(strZzr)).b();
        this.f21543U = interfaceC0863Oe != null ? interfaceC0863Oe.zzf() : 0;
        final String strW = p083k3.l.f25980A.f25983c.w(context, interfaceC0863Oe.zzn().f28196G);
        if (!this.f21537O || this.f21536N.limit() <= 0) {
            J7 j8 = Q7.f15702Q1;
            C3099q c3099q = C3099q.f26624d;
            if (((Boolean) c3099q.f26627c.a(j8)).booleanValue()) {
                if (((Boolean) c3099q.f26627c.a(Q7.f15639I1)).booleanValue()) {
                    z7 = true;
                } else if (c0849Ne.f14928i) {
                    z7 = false;
                } else {
                    z7 = true;
                }
            } else if (c0849Ne.f14928i) {
                z7 = true;
            } else {
                z7 = false;
            }
            VB vb = c0849Ne.f14931l ? new VB(this) { // from class: com.google.android.gms.internal.ads.tf

                /* JADX INFO: renamed from: H, reason: collision with root package name */
                public final /* synthetic */ C2145vf f21084H;

                {
                    this.f21084H = this;
                }

                @Override // com.google.android.gms.internal.ads.VB
                /* JADX INFO: renamed from: zza */
                public final InterfaceC1556kC mo5zza() {
                    int i11 = i10;
                    boolean z8 = z7;
                    C2145vf c2145vf = this.f21084H;
                    switch (i11) {
                        case 0:
                            c2145vf.getClass();
                            C2145vf c2145vf2 = true != z8 ? null : c2145vf;
                            C0849Ne c0849Ne2 = c2145vf.f21532J;
                            return new C2249xf(strW, c2145vf2, c0849Ne2.f14923d, c0849Ne2.f14924e, c0849Ne2.f14932m, c0849Ne2.f14933n);
                        case 1:
                            c2145vf.getClass();
                            C2145vf c2145vf3 = true != z8 ? null : c2145vf;
                            C0849Ne c0849Ne3 = c2145vf.f21532J;
                            C1834pf c1834pf = new C1834pf(strW, c2145vf3, c0849Ne3.f14923d, c0849Ne3.f14924e, c0849Ne3.f14927h);
                            c2145vf.f21548Z.add(new WeakReference(c1834pf));
                            return c1834pf;
                        default:
                            c2145vf.getClass();
                            WD wd = new WD();
                            C2145vf c2145vf4 = true == z8 ? c2145vf : null;
                            C0849Ne c0849Ne4 = c2145vf.f21532J;
                            C1922rF c1922rF = new C1922rF(strW, c0849Ne4.f14923d, c0849Ne4.f14924e, true, wd);
                            if (c2145vf4 != null) {
                                c1922rF.f(c2145vf4);
                            }
                            return c1922rF;
                    }
                }
            } : c0849Ne.f14927h > 0 ? new VB(this) { // from class: com.google.android.gms.internal.ads.tf

                /* JADX INFO: renamed from: H, reason: collision with root package name */
                public final /* synthetic */ C2145vf f21084H;

                {
                    this.f21084H = this;
                }

                @Override // com.google.android.gms.internal.ads.VB
                /* JADX INFO: renamed from: zza */
                public final InterfaceC1556kC mo5zza() {
                    int i11 = i8;
                    boolean z8 = z7;
                    C2145vf c2145vf = this.f21084H;
                    switch (i11) {
                        case 0:
                            c2145vf.getClass();
                            C2145vf c2145vf2 = true != z8 ? null : c2145vf;
                            C0849Ne c0849Ne2 = c2145vf.f21532J;
                            return new C2249xf(strW, c2145vf2, c0849Ne2.f14923d, c0849Ne2.f14924e, c0849Ne2.f14932m, c0849Ne2.f14933n);
                        case 1:
                            c2145vf.getClass();
                            C2145vf c2145vf3 = true != z8 ? null : c2145vf;
                            C0849Ne c0849Ne3 = c2145vf.f21532J;
                            C1834pf c1834pf = new C1834pf(strW, c2145vf3, c0849Ne3.f14923d, c0849Ne3.f14924e, c0849Ne3.f14927h);
                            c2145vf.f21548Z.add(new WeakReference(c1834pf));
                            return c1834pf;
                        default:
                            c2145vf.getClass();
                            WD wd = new WD();
                            C2145vf c2145vf4 = true == z8 ? c2145vf : null;
                            C0849Ne c0849Ne4 = c2145vf.f21532J;
                            C1922rF c1922rF = new C1922rF(strW, c0849Ne4.f14923d, c0849Ne4.f14924e, true, wd);
                            if (c2145vf4 != null) {
                                c1922rF.f(c2145vf4);
                            }
                            return c1922rF;
                    }
                }
            } : new VB(this) { // from class: com.google.android.gms.internal.ads.tf

                /* JADX INFO: renamed from: H, reason: collision with root package name */
                public final /* synthetic */ C2145vf f21084H;

                {
                    this.f21084H = this;
                }

                @Override // com.google.android.gms.internal.ads.VB
                /* JADX INFO: renamed from: zza */
                public final InterfaceC1556kC mo5zza() {
                    int i11 = i9;
                    boolean z8 = z7;
                    C2145vf c2145vf = this.f21084H;
                    switch (i11) {
                        case 0:
                            c2145vf.getClass();
                            C2145vf c2145vf2 = true != z8 ? null : c2145vf;
                            C0849Ne c0849Ne2 = c2145vf.f21532J;
                            return new C2249xf(strW, c2145vf2, c0849Ne2.f14923d, c0849Ne2.f14924e, c0849Ne2.f14932m, c0849Ne2.f14933n);
                        case 1:
                            c2145vf.getClass();
                            C2145vf c2145vf3 = true != z8 ? null : c2145vf;
                            C0849Ne c0849Ne3 = c2145vf.f21532J;
                            C1834pf c1834pf = new C1834pf(strW, c2145vf3, c0849Ne3.f14923d, c0849Ne3.f14924e, c0849Ne3.f14927h);
                            c2145vf.f21548Z.add(new WeakReference(c1834pf));
                            return c1834pf;
                        default:
                            c2145vf.getClass();
                            WD wd = new WD();
                            C2145vf c2145vf4 = true == z8 ? c2145vf : null;
                            C0849Ne c0849Ne4 = c2145vf.f21532J;
                            C1922rF c1922rF = new C1922rF(strW, c0849Ne4.f14923d, c0849Ne4.f14924e, true, wd);
                            if (c2145vf4 != null) {
                                c1922rF.f(c2145vf4);
                            }
                            return c1922rF;
                    }
                }
            };
            c2218x = c0849Ne.f14928i ? new C2218x(17, this, vb) : vb;
            ByteBuffer byteBuffer = this.f21536N;
            if (byteBuffer != null && byteBuffer.limit() > 0) {
                byte[] bArr = new byte[this.f21536N.limit()];
                this.f21536N.get(bArr);
                c2218x = new C2218x(18, c2218x, bArr);
            }
        } else {
            byte[] bArr2 = new byte[this.f21536N.limit()];
            this.f21536N.get(bArr2);
            c2218x = new K4(bArr2, 27);
        }
        this.f21534L = new NN(c2218x, new MN(((Boolean) C3099q.f26624d.f26627c.a(Q7.f15875l)).booleanValue() ? new C0650Aa(16) : new C0650Aa(15)));
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1255eL
    public final void E() {
        InterfaceC0759He interfaceC0759He = this.f21538P;
        if (interfaceC0759He != null) {
            interfaceC0759He.h();
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1255eL
    public final void a(C1804p0 c1804p0) {
        InterfaceC0863Oe interfaceC0863Oe = (InterfaceC0863Oe) this.f21533K.get();
        if (!((Boolean) C3099q.f26624d.f26627c.a(Q7.f15639I1)).booleanValue() || interfaceC0863Oe == null) {
            return;
        }
        HashMap map = new HashMap();
        map.put("frameRate", String.valueOf(c1804p0.f20391u));
        map.put("bitRate", String.valueOf(c1804p0.f20379i));
        map.put("resolution", c1804p0.f20389s + "x" + c1804p0.f20390t);
        String str = c1804p0.f20382l;
        if (str != null) {
            map.put("videoMime", str);
        }
        String str2 = c1804p0.f20383m;
        if (str2 != null) {
            map.put("videoSampleMime", str2);
        }
        String str3 = c1804p0.f20380j;
        if (str3 != null) {
            map.put("videoCodec", str3);
        }
        interfaceC0863Oe.w("onMetadataEvent", map);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1255eL
    public final /* synthetic */ void b(C1204dL c1204dL, C1721nL c1721nL) {
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1255eL
    public final void c(IOException iOException) {
        InterfaceC0759He interfaceC0759He = this.f21538P;
        if (interfaceC0759He != null) {
            if (this.f21532J.f14929j) {
                interfaceC0759He.c(iOException);
            } else {
                interfaceC0759He.e("onLoadError", iOException);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1615lJ
    public final void d(CD cd, boolean z7) {
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1255eL
    public final /* synthetic */ void e(InterfaceC0959Vc interfaceC0959Vc, C0871Om c0871Om) {
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1615lJ
    public final void f(CD cd, boolean z7, int i8) {
        this.f21539Q += i8;
    }

    public final void finalize() {
        f21527a0.decrementAndGet();
        if (p113o3.I.m()) {
            p113o3.I.k("SimpleExoPlayerAdapter finalize ".concat(toString()));
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1615lJ
    public final void g(InterfaceC1556kC interfaceC1556kC, CD cd, boolean z7) {
        if (interfaceC1556kC instanceof DH) {
            synchronized (this.f21544V) {
                this.f21546X.add((DH) interfaceC1556kC);
            }
        } else if (interfaceC1556kC instanceof C1937rf) {
            this.f21547Y = (C1937rf) interfaceC1556kC;
            InterfaceC0863Oe interfaceC0863Oe = (InterfaceC0863Oe) this.f21533K.get();
            if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15639I1)).booleanValue() && interfaceC0863Oe != null && this.f21547Y.f20757n) {
                HashMap map = new HashMap();
                map.put("gcacheHit", String.valueOf(this.f21547Y.f20759p));
                map.put("gcacheDownloaded", String.valueOf(this.f21547Y.f20760q));
                p113o3.O.f27924l.post(new RunnableC0755Ha(16, interfaceC0863Oe, map));
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1255eL
    public final void h(AbstractC0985Xa abstractC0985Xa) {
        InterfaceC0759He interfaceC0759He = this.f21538P;
        if (interfaceC0759He != null) {
            interfaceC0759He.e("onPlayerError", abstractC0985Xa);
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1255eL
    public final /* synthetic */ void i(C1151cK c1151cK) {
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1255eL
    public final /* synthetic */ void j(C1204dL c1204dL, int i8, long j8) {
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1255eL
    public final void k(C1804p0 c1804p0) {
        InterfaceC0863Oe interfaceC0863Oe = (InterfaceC0863Oe) this.f21533K.get();
        if (!((Boolean) C3099q.f26624d.f26627c.a(Q7.f15639I1)).booleanValue() || interfaceC0863Oe == null) {
            return;
        }
        HashMap map = new HashMap();
        String str = c1804p0.f20382l;
        if (str != null) {
            map.put("audioMime", str);
        }
        String str2 = c1804p0.f20383m;
        if (str2 != null) {
            map.put("audioSampleMime", str2);
        }
        String str3 = c1804p0.f20380j;
        if (str3 != null) {
            map.put("audioCodec", str3);
        }
        interfaceC0863Oe.w("onMetadataEvent", map);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1255eL
    public final void l(C2043th c2043th) {
        InterfaceC0759He interfaceC0759He = this.f21538P;
        if (interfaceC0759He != null) {
            interfaceC0759He.i(c2043th.f21090a, c2043th.f21091b);
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1255eL
    public final /* synthetic */ void m(int i8) {
    }

    public final long n() {
        if (this.f21547Y != null && this.f21547Y.f20758o) {
            return this.f21547Y.l();
        }
        synchronized (this.f21544V) {
            while (!this.f21546X.isEmpty()) {
                long j8 = this.f21541S;
                Map mapZze = ((DH) this.f21546X.remove(0)).zze();
                long j9 = 0;
                if (mapZze != null) {
                    for (Map.Entry entry : mapZze.entrySet()) {
                        if (entry != null) {
                            try {
                                if (entry.getKey() != null && p113o3.r.F("content-length", (CharSequence) entry.getKey()) && entry.getValue() != null && ((List) entry.getValue()).get(0) != null) {
                                    j9 = Long.parseLong((String) ((List) entry.getValue()).get(0));
                                    break;
                                }
                            } catch (NumberFormatException unused) {
                                continue;
                            }
                        }
                    }
                }
                this.f21541S = j8 + j9;
            }
        }
        return this.f21541S;
    }

    public final void o(Uri[] uriArr, ByteBuffer byteBuffer, boolean z7) {
        AbstractC1257eN dn;
        if (this.f21535M != null) {
            this.f21536N = byteBuffer;
            this.f21537O = z7;
            int length = uriArr.length;
            if (length == 1) {
                dn = r(uriArr[0]);
            } else {
                AbstractC1257eN[] abstractC1257eNArr = new AbstractC1257eN[length];
                for (int i8 = 0; i8 < uriArr.length; i8++) {
                    abstractC1257eNArr[i8] = r(uriArr[i8]);
                }
                dn = new DN(new GH(), abstractC1257eNArr);
            }
            this.f21535M.c(dn);
            this.f21535M.f();
            f21528b0.incrementAndGet();
        }
    }

    public final void p(boolean z7) {
        C1620lO c1620lO;
        if (this.f21535M == null) {
            return;
        }
        int i8 = 0;
        while (true) {
            this.f21535M.l();
            if (i8 >= 2) {
                return;
            }
            C1983sO c1983sO = this.f21531I;
            synchronized (c1983sO.f20896c) {
                c1620lO = c1983sO.f20899f;
            }
            c1620lO.getClass();
            C1568kO c1568kO = new C1568kO(c1620lO);
            boolean z8 = !z7;
            SparseBooleanArray sparseBooleanArray = c1568kO.f19615t;
            if (sparseBooleanArray.get(i8) != z8) {
                if (z8) {
                    sparseBooleanArray.put(i8, true);
                } else {
                    sparseBooleanArray.delete(i8);
                }
            }
            c1983sO.h(c1568kO);
            i8++;
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1255eL
    public final void q(int i8) {
        InterfaceC0759He interfaceC0759He = this.f21538P;
        if (interfaceC0759He != null) {
            interfaceC0759He.a(i8);
        }
    }

    public final ON r(Uri uri) {
        C1969sA c1969sA = AbstractC2073uA.f21207H;
        PA pa = PA.f15340K;
        List listEmptyList = Collections.emptyList();
        PA pa2 = PA.f15340K;
        J5 j8 = J5.f14124a;
        C1239e5 c1239e5 = uri != null ? new C1239e5(uri, listEmptyList, pa2) : null;
        C2225x6 c2225x6 = new C2225x6(HttpUrl.FRAGMENT_ENCODE_SET, new F3(), c1239e5, new A4(), C1451i9.f19243y, j8);
        int i8 = this.f21532J.f14925f;
        NN nn = this.f21534L;
        nn.f14905b = i8;
        c1239e5.getClass();
        return new ON(c2225x6, nn.f14904a, nn.f14906c, nn.f14907d, nn.f14905b);
    }

    public final long s() {
        if (this.f21547Y != null && this.f21547Y.f20758o && this.f21547Y.f20759p) {
            return Math.min(this.f21539Q, this.f21547Y.f20761r);
        }
        return 0L;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1255eL
    public final void zzh(int i8) {
        this.f21540R += i8;
    }
}
