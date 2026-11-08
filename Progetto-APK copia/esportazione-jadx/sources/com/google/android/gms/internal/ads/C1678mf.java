package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.mf, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1678mf extends AbstractC1522jf implements InterfaceC1615lJ {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public String f19968J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final C0849Ne f19969K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public boolean f19970L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final A0 f19971M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final W0.w f19972N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public ByteBuffer f19973O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public boolean f19974P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public final Object f19975Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public final String f19976R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public final int f19977S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public boolean f19978T;

    public C1678mf(InterfaceC0863Oe interfaceC0863Oe, C0849Ne c0849Ne) {
        super(interfaceC0863Oe);
        this.f19969K = c0849Ne;
        this.f19971M = new A0();
        this.f19972N = new W0.w();
        this.f19975Q = new Object();
        String strZzr = interfaceC0863Oe.zzr();
        this.f19976R = (String) (strZzr == null ? C1957rz.f20814G : new Az(strZzr)).b();
        this.f19977S = interfaceC0863Oe.zzf();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1615lJ
    public final void d(CD cd, boolean z7) {
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1615lJ
    public final void f(CD cd, boolean z7, int i8) {
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1615lJ
    public final void g(InterfaceC1556kC interfaceC1556kC, CD cd, boolean z7) {
        if (interfaceC1556kC instanceof C1922rF) {
            ((ArrayList) this.f19971M.f11917H).add((C1922rF) interfaceC1556kC);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1522jf
    public final void l() {
        this.f19970L = true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.AbstractC1522jf
    public final boolean r(String str) {
        String str2;
        String str3;
        this.f19968J = str;
        String str4 = "error";
        String strConcat = "cache:".concat(String.valueOf(p120p3.d.a(str, "MD5")));
        try {
            WD wd = new WD();
            String str5 = this.f19472H;
            C0849Ne c0849Ne = this.f19969K;
            C1922rF c1922rF = new C1922rF(str5, c0849Ne.f14923d, c0849Ne.f14924e, true, wd);
            c1922rF.f(this);
            InterfaceC1556kC c0989Xe = c1922rF;
            if (this.f19969K.f14928i) {
                c0989Xe = new C0989Xe(this.f19471G, c1922rF, this.f19976R, this.f19977S);
            }
            c0989Xe.a(new CD(Uri.parse(str), 0L, -1L));
            InterfaceC0863Oe interfaceC0863Oe = (InterfaceC0863Oe) this.f19473I.get();
            if (interfaceC0863Oe != null) {
                interfaceC0863Oe.h(strConcat, this);
            }
            p083k3.l.f25980A.f25990j.getClass();
            long jCurrentTimeMillis = System.currentTimeMillis();
            J7 j8 = Q7.f15961w;
            C3099q c3099q = C3099q.f26624d;
            long jLongValue = ((Long) c3099q.f26627c.a(j8)).longValue();
            long jLongValue2 = ((Long) c3099q.f26627c.a(Q7.f15954v)).longValue();
            this.f19973O = ByteBuffer.allocate(this.f19969K.f14922c);
            int i8 = 8192;
            byte[] bArr = new byte[8192];
            long j9 = jCurrentTimeMillis;
            InterfaceC1556kC interfaceC1556kC = c0989Xe;
            while (true) {
                int iE = interfaceC1556kC.e(bArr, 0, Math.min(this.f19973O.remaining(), i8));
                str2 = str4;
                if (iE == -1) {
                    this.f19978T = true;
                    p120p3.d.f28202b.post(new RunnableC1420hf(this, str, strConcat, (int) this.f19972N.a(this.f19973O), 0));
                } else {
                    try {
                        synchronized (this.f19975Q) {
                            try {
                                boolean z7 = this.f19970L;
                                if (z7) {
                                    str3 = z7;
                                } else {
                                    ByteBuffer byteBuffer = this.f19973O;
                                    byteBuffer.put(bArr, 0, iE);
                                    str3 = byteBuffer;
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        if (this.f19973O.remaining() <= 0) {
                            v();
                        } else {
                            try {
                                if (this.f19970L) {
                                    throw new IOException("Precache abort at " + this.f19973O.limit() + " bytes");
                                }
                                long jCurrentTimeMillis2 = System.currentTimeMillis();
                                if (jCurrentTimeMillis2 - j9 >= jLongValue) {
                                    v();
                                    j9 = jCurrentTimeMillis2;
                                }
                                if (jCurrentTimeMillis2 - jCurrentTimeMillis > 1000 * jLongValue2) {
                                    throw new IOException("Timeout exceeded. Limit: " + jLongValue2 + " sec");
                                }
                                str4 = str2;
                                interfaceC1556kC = interfaceC1556kC;
                                i8 = 8192;
                            } catch (Exception e8) {
                                e = e8;
                                String strL = com.google.protobuf.U2.l(e.getClass().getCanonicalName(), ":", e.getMessage());
                                p120p3.h.g("Failed to preload url " + str + " Exception: " + strL);
                                m(str, strConcat, str3, strL);
                                return false;
                            }
                        }
                    } catch (Exception e9) {
                        e = e9;
                        str3 = str2;
                        String strL2 = com.google.protobuf.U2.l(e.getClass().getCanonicalName(), ":", e.getMessage());
                        p120p3.h.g("Failed to preload url " + str + " Exception: " + strL2);
                        m(str, strConcat, str3, strL2);
                        return false;
                    }
                }
                return true;
            }
        } catch (Exception e10) {
            e = e10;
            str2 = str4;
        }
    }

    public final ByteBuffer u() {
        synchronized (this.f19975Q) {
            try {
                ByteBuffer byteBuffer = this.f19973O;
                if (byteBuffer != null && !this.f19974P) {
                    byteBuffer.flip();
                    this.f19974P = true;
                }
                this.f19970L = true;
            } catch (Throwable th) {
                throw th;
            }
        }
        return this.f19973O;
    }

    public final void v() {
        A0 a8 = this.f19971M;
        Iterator it = ((ArrayList) a8.f11917H).iterator();
        while (it.hasNext()) {
            for (Map.Entry entry : ((C1922rF) it.next()).zze().entrySet()) {
                try {
                    if ("content-length".equalsIgnoreCase((String) entry.getKey())) {
                        a8.f11916G = Math.max(a8.f11916G, Long.parseLong((String) ((List) entry.getValue()).get(0)));
                    }
                } catch (RuntimeException unused) {
                }
            }
            it.remove();
        }
        int i8 = (int) a8.f11916G;
        int iA = (int) this.f19972N.a(this.f19973O);
        int iPosition = this.f19973O.position();
        int iRound = Math.round((iPosition / i8) * iA);
        int i9 = C2145vf.f21527a0.get();
        int i10 = C2145vf.f21528b0.get();
        String str = this.f19968J;
        p120p3.d.f28202b.post(new RunnableC1316ff(this, str, "cache:".concat(String.valueOf(p120p3.d.a(str, "MD5"))), iPosition, i8, iRound, iA, iRound > 0, i9, i10));
    }
}
