package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.io.IOException;
import java.nio.ByteBuffer;
import org.eclipse.paho.client.mqttv3.MqttTopic;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.nf, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1730nf extends AbstractC1522jf implements InterfaceC0759He {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public C2145vf f20175J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public String f20176K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public boolean f20177L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public boolean f20178M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public C1110bf f20179N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public long f20180O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public long f20181P;

    public static final String u(String str) {
        return "cache:".concat(String.valueOf(p120p3.d.a(str, "MD5")));
    }

    public static String v(String str, Exception exc) {
        return str + MqttTopic.TOPIC_LEVEL_SEPARATOR + exc.getClass().getCanonicalName() + ":" + exc.getMessage();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0759He
    public final void a(int i8) {
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0759He
    public final void b(long j8, boolean z7) {
        InterfaceC0863Oe interfaceC0863Oe = (InterfaceC0863Oe) this.f19473I.get();
        if (interfaceC0863Oe != null) {
            AbstractC1988se.f20910e.execute(new RunnableC0933Te(interfaceC0863Oe, z7, j8, 1));
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0759He
    public final void c(Exception exc) {
        p120p3.h.h("Precache exception", exc);
        p083k3.l.f25980A.f25987g.h("VideoStreamExoPlayerCache.onException", exc);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0759He
    public final void e(String str, Exception exc) {
        p120p3.h.h("Precache error", exc);
        p083k3.l.f25980A.f25987g.h("VideoStreamExoPlayerCache.onError", exc);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0759He
    public final void h() {
        p120p3.h.g("Precache onRenderedFirstFrame");
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0759He
    public final void i(int i8, int i9) {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1522jf
    public final void j() {
        C2145vf c2145vf = this.f20175J;
        if (c2145vf != null) {
            c2145vf.f21538P = null;
            C1049aL c1049aL = c2145vf.f21535M;
            if (c1049aL != null) {
                c1049aL.b(c2145vf);
                c2145vf.f21535M.n();
                c2145vf.f21535M = null;
                C2145vf.f21528b0.decrementAndGet();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1522jf
    public final void l() {
        synchronized (this) {
            this.f20177L = true;
            notify();
            j();
        }
        String str = this.f20176K;
        if (str != null) {
            m(this.f20176K, u(str), "externalAbort", "Programmatic precache abort.");
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1522jf
    public final void n(int i8) {
        C1886qf c1886qf = this.f20175J.f21530H;
        synchronized (c1886qf) {
            c1886qf.f20593d = ((long) i8) * 1000;
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1522jf
    public final void o(int i8) {
        C1886qf c1886qf = this.f20175J.f21530H;
        synchronized (c1886qf) {
            c1886qf.f20594e = ((long) i8) * 1000;
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1522jf
    public final void p(int i8) {
        C1886qf c1886qf = this.f20175J.f21530H;
        synchronized (c1886qf) {
            c1886qf.f20592c = ((long) i8) * 1000;
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1522jf
    public final void q(int i8) {
        C1886qf c1886qf = this.f20175J.f21530H;
        synchronized (c1886qf) {
            c1886qf.f20591b = ((long) i8) * 1000;
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1522jf
    public final boolean r(String str) {
        return s(str, new String[]{str});
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.google.android.gms.internal.ads.Oe] */
    /* JADX WARN: Type inference failed for: r15v0, types: [com.google.android.gms.internal.ads.jf, com.google.android.gms.internal.ads.nf] */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v2, types: [com.google.android.gms.internal.ads.nf] */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r15v5 */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1, types: [com.google.android.gms.internal.ads.jf] */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v14 */
    /* JADX WARN: Type inference failed for: r3v16 */
    /* JADX WARN: Type inference failed for: r3v17 */
    /* JADX WARN: Type inference failed for: r3v18, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v22 */
    /* JADX WARN: Type inference failed for: r3v23 */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v30 */
    /* JADX WARN: Type inference failed for: r3v31 */
    /* JADX WARN: Type inference failed for: r3v32 */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r3v9 */
    @Override // com.google.android.gms.internal.ads.AbstractC1522jf
    public final boolean s(String str, String[] strArr) throws Throwable {
        String str2;
        ?? r7;
        boolean z7;
        long j8;
        ?? r15 = this;
        r15.f20176K = str;
        String strU = u(str);
        try {
            Uri[] uriArr = new Uri[strArr.length];
            for (int i8 = 0; i8 < strArr.length; i8++) {
                uriArr[i8] = Uri.parse(strArr[i8]);
            }
            C2145vf c2145vf = r15.f20175J;
            c2145vf.getClass();
            c2145vf.o(uriArr, ByteBuffer.allocate(0), false);
            ?? r8 = (InterfaceC0863Oe) r15.f19473I.get();
            if (r8 != 0) {
                r8.h(strU, r15);
            }
            p083k3.l.f25980A.f25990j.getClass();
            long jCurrentTimeMillis = System.currentTimeMillis();
            J7 j9 = Q7.f15961w;
            C3099q c3099q = C3099q.f26624d;
            long jLongValue = ((Long) c3099q.f26627c.a(j9)).longValue();
            long jLongValue2 = ((Long) c3099q.f26627c.a(Q7.f15954v)).longValue() * 1000;
            long jIntValue = ((Integer) c3099q.f26627c.a(Q7.f15914q)).intValue();
            boolean zBooleanValue = ((Boolean) c3099q.f26627c.a(Q7.f15639I1)).booleanValue();
            long j10 = -1;
            r15 = r15;
            while (true) {
                synchronized (this) {
                    try {
                        if (System.currentTimeMillis() - jCurrentTimeMillis > jLongValue2) {
                            throw new IOException("Timeout reached. Limit: " + jLongValue2 + " ms");
                        }
                        if (r15.f20177L) {
                            throw new IOException("Abort requested before buffering finished. ");
                        }
                        if (!r15.f20178M) {
                            C1049aL c1049aL = r15.f20175J.f21535M;
                            if (c1049aL == null) {
                                throw new IOException("ExoPlayer was released during preloading.");
                            }
                            long jE = c1049aL.e();
                            if (jE > 0) {
                                long jD = r15.f20175J.f21535M.d();
                                int i9 = (jD > j10 ? 1 : (jD == j10 ? 0 : -1));
                                if (i9 != 0) {
                                    boolean z8 = jD > 0;
                                    if (zBooleanValue) {
                                        C2145vf c2145vf2 = r15.f20175J;
                                        j8 = (c2145vf2.f21547Y == null || !c2145vf2.f21547Y.f20758o) ? c2145vf2.f21539Q : 0L;
                                    } else {
                                        j8 = -1;
                                    }
                                    try {
                                        String str3 = str;
                                        long j11 = j8;
                                        z7 = false;
                                        str2 = strU;
                                        try {
                                            p120p3.d.f28202b.post(new RunnableC1264ef(this, str3, strU, jD, jE, j11, zBooleanValue ? r15.f20175J.s() : -1L, zBooleanValue ? r15.f20175J.n() : -1L, z8, C2145vf.f21527a0.get(), C2145vf.f21528b0.get()));
                                            j10 = jD;
                                            r7 = str3;
                                        } catch (Throwable th) {
                                            th = th;
                                            r7 = this;
                                            try {
                                                throw th;
                                            } catch (Exception e8) {
                                                e = e8;
                                                p120p3.h.g("Failed to preload url " + str + " Exception: " + e.getMessage());
                                                p083k3.l.f25980A.f25987g.h("VideoStreamExoPlayerCache.preload", e);
                                                j();
                                                r7.m(str, str2, "error", v("error", e));
                                                return z7;
                                            }
                                        }
                                    } catch (Throwable th2) {
                                        th = th2;
                                        str2 = strU;
                                        z7 = false;
                                        r7 = this;
                                        throw th;
                                    }
                                } else {
                                    str2 = strU;
                                    z7 = false;
                                    r7 = i9;
                                }
                                if (jD >= jE) {
                                    p120p3.d.f28202b.post(new RunnableC1420hf(this, str, str2, jE, 0));
                                } else {
                                    try {
                                        C1730nf c1730nf = this;
                                        if (c1730nf.f20175J.f21539Q < jIntValue || jD <= 0) {
                                            r7 = c1730nf;
                                        }
                                    } catch (Throwable th3) {
                                        th = th3;
                                        throw th;
                                    }
                                }
                            } else {
                                zBooleanValue = zBooleanValue;
                                jIntValue = jIntValue;
                                jLongValue2 = jLongValue2;
                                str2 = strU;
                                r7 = r15;
                                z7 = false;
                            }
                            try {
                                r7.wait(jLongValue);
                            } catch (InterruptedException unused) {
                                throw new IOException("Wait interrupted.");
                            }
                        }
                        return true;
                    } catch (Throwable th4) {
                        th = th4;
                        str2 = strU;
                        r7 = r15;
                        z7 = false;
                    }
                }
                return true;
                zBooleanValue = zBooleanValue;
                r15 = r7;
                jLongValue = jLongValue;
                strU = str2;
                jIntValue = jIntValue;
                jLongValue2 = jLongValue2;
            }
        } catch (Exception e9) {
            e = e9;
            str2 = strU;
            r7 = r15;
            z7 = false;
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1522jf
    public final boolean t(String str, String[] strArr, C1110bf c1110bf) {
        this.f20176K = str;
        this.f20179N = c1110bf;
        String strU = u(str);
        try {
            Uri[] uriArr = new Uri[strArr.length];
            for (int i8 = 0; i8 < strArr.length; i8++) {
                uriArr[i8] = Uri.parse(strArr[i8]);
            }
            C2145vf c2145vf = this.f20175J;
            c2145vf.getClass();
            c2145vf.o(uriArr, ByteBuffer.allocate(0), false);
            InterfaceC0863Oe interfaceC0863Oe = (InterfaceC0863Oe) this.f19473I.get();
            if (interfaceC0863Oe != null) {
                interfaceC0863Oe.h(strU, this);
            }
            p083k3.l.f25980A.f25990j.getClass();
            this.f20180O = System.currentTimeMillis();
            this.f20181P = -1L;
            p113o3.O.f27924l.postDelayed(new RunnableC0878Pf(this, 15), 0L);
            return true;
        } catch (Exception e8) {
            p120p3.h.g("Failed to preload url " + str + " Exception: " + e8.getMessage());
            p083k3.l.f25980A.f25987g.h("VideoStreamExoPlayerCache.preload", e8);
            j();
            m(str, strU, "error", v("error", e8));
            return false;
        }
    }
}
