package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.SystemClock;
import android.os.Trace;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.UUID;
import okhttp3.internal.http2.Http2;
import org.eclipse.paho.client.mqttv3.internal.wire.MqttWireMessage;
import org.videolan.libvlc.interfaces.IMediaList;

/* JADX INFO: loaded from: classes.dex */
public abstract class VM extends AbstractC1048aK {

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public static final byte[] f17006w0 = {0, 0, 1, 103, 66, -64, MqttWireMessage.MESSAGE_TYPE_UNSUBACK, -38, 37, -112, 0, 0, 1, 104, -50, 15, 19, 32, 0, 0, 1, 101, -120, -124, MqttWireMessage.MESSAGE_TYPE_PINGRESP, -50, 113, 24, -96, 0, 47, -65, 28, 49, -61, 39, 93, 120};

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public final C1826pM f17007A;

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public C1804p0 f17008B;

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public C1804p0 f17009C;

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public C2291yK f17010D;

    /* JADX INFO: renamed from: E, reason: collision with root package name */
    public float f17011E;

    /* JADX INFO: renamed from: F, reason: collision with root package name */
    public float f17012F;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public MM f17013G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public C1804p0 f17014H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public MediaFormat f17015I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public boolean f17016J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public float f17017K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public ArrayDeque f17018L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public SM f17019M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public PM f17020N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public int f17021O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public boolean f17022P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public boolean f17023Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public boolean f17024R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public boolean f17025S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public boolean f17026T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public boolean f17027U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public long f17028V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public int f17029W;

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public int f17030X;

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public ByteBuffer f17031Y;

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public boolean f17032Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public boolean f17033a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public boolean f17034b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public boolean f17035c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public boolean f17036d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public boolean f17037e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public int f17038f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public int f17039g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public int f17040h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public boolean f17041i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public boolean f17042j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public boolean f17043k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public long f17044l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public long f17045m0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public boolean f17046n0;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public boolean f17047o0;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public boolean f17048p0;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public C1151cK f17049q0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final LM f17050r;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public UM f17051r0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final WM f17052s;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public long f17053s0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final float f17054t;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public boolean f17055t0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final VJ f17056u;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public C2293yM f17057u0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final VJ f17058v;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public C2293yM f17059v0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final VJ f17060w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final HM f17061x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final MediaCodec.BufferInfo f17062y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final ArrayDeque f17063z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VM(int i8, I7 i9, float f8) {
        super(i8);
        C2272y1 c2272y1 = WM.f17242r;
        this.f17050r = i9;
        this.f17052s = c2272y1;
        this.f17054t = f8;
        this.f17056u = new VJ(0);
        this.f17058v = new VJ(0);
        this.f17060w = new VJ(2);
        HM hm = new HM(2);
        hm.f13752l = 32;
        this.f17061x = hm;
        this.f17062y = new MediaCodec.BufferInfo();
        this.f17011E = 1.0f;
        this.f17012F = 1.0f;
        this.f17063z = new ArrayDeque();
        this.f17051r0 = UM.f16838e;
        hm.f(0);
        hm.f16993e.order(ByteOrder.nativeOrder());
        C1826pM c1826pM = new C1826pM();
        c1826pM.f20446a = InterfaceC2044ti.f21093a;
        c1826pM.f20448c = 0;
        c1826pM.f20447b = 2;
        this.f17007A = c1826pM;
        this.f17017K = -1.0f;
        this.f17021O = 0;
        this.f17038f0 = 0;
        this.f17029W = -1;
        this.f17030X = -1;
        this.f17028V = -9223372036854775807L;
        this.f17044l0 = -9223372036854775807L;
        this.f17045m0 = -9223372036854775807L;
        this.f17053s0 = -9223372036854775807L;
        this.f17039g0 = 0;
        this.f17040h0 = 0;
        this.f17049q0 = new C1151cK();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1048aK
    public void A(long j8, boolean z7) {
        int i8;
        this.f17046n0 = false;
        this.f17047o0 = false;
        if (this.f17034b0) {
            this.f17061x.e();
            this.f17060w.e();
            this.f17035c0 = false;
            C1826pM c1826pM = this.f17007A;
            c1826pM.getClass();
            c1826pM.f20446a = InterfaceC2044ti.f21093a;
            c1826pM.f20448c = 0;
            c1826pM.f20447b = 2;
        } else if (K()) {
            D();
        }
        Ks ks = this.f17051r0.f16842d;
        synchronized (ks) {
            i8 = ks.f14428d;
        }
        if (i8 > 0) {
            this.f17048p0 = true;
        }
        ks.e();
        this.f17063z.clear();
    }

    public abstract float B(float f8, C1804p0[] c1804p0Arr);

    public OM C(IllegalStateException illegalStateException, PM pm) {
        return new OM(illegalStateException, pm);
    }

    /* JADX WARN: Code duplicated, block: B:241:0x03f8  */
    /* JADX WARN: Code duplicated, block: B:248:0x040d  */
    /* JADX WARN: Code duplicated, block: B:281:0x0472  */
    /* JADX WARN: Code duplicated, block: B:323:0x051f A[Catch: SM -> 0x0522, TryCatch #2 {SM -> 0x0522, blocks: (B:321:0x0505, B:323:0x051f, B:327:0x052a, B:330:0x0534, B:331:0x0536, B:326:0x0524, B:332:0x0537, B:334:0x053d, B:335:0x0549), top: B:343:0x009f }] */
    /* JADX WARN: Code duplicated, block: B:326:0x0524 A[Catch: SM -> 0x0522, TryCatch #2 {SM -> 0x0522, blocks: (B:321:0x0505, B:323:0x051f, B:327:0x052a, B:330:0x0534, B:331:0x0536, B:326:0x0524, B:332:0x0537, B:334:0x053d, B:335:0x0549), top: B:343:0x009f }] */
    /* JADX WARN: Code duplicated, block: B:329:0x0530  */
    /* JADX WARN: Code duplicated, block: B:364:0x0534 A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v10 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v3, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r12v43 */
    /* JADX WARN: Type inference failed for: r12v44 */
    /* JADX WARN: Type inference failed for: r12v46 */
    /* JADX WARN: Type inference failed for: r12v47 */
    /* JADX WARN: Type inference failed for: r12v48 */
    /* JADX WARN: Type inference failed for: r12v49 */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Type inference failed for: r12v50 */
    /* JADX WARN: Type inference failed for: r12v6 */
    /* JADX WARN: Type inference failed for: r12v7 */
    /* JADX WARN: Type inference failed for: r12v8 */
    /* JADX WARN: Type inference failed for: r12v9 */
    /* JADX WARN: Type inference failed for: r22v1 */
    /* JADX WARN: Type inference failed for: r22v10 */
    /* JADX WARN: Type inference failed for: r22v11 */
    /* JADX WARN: Type inference failed for: r22v15 */
    /* JADX WARN: Type inference failed for: r22v16 */
    /* JADX WARN: Type inference failed for: r22v17 */
    /* JADX WARN: Type inference failed for: r22v18 */
    /* JADX WARN: Type inference failed for: r22v19 */
    /* JADX WARN: Type inference failed for: r22v2 */
    /* JADX WARN: Type inference failed for: r22v20 */
    /* JADX WARN: Type inference failed for: r22v21 */
    /* JADX WARN: Type inference failed for: r22v3 */
    /* JADX WARN: Type inference failed for: r22v4 */
    /* JADX WARN: Type inference failed for: r22v5 */
    /* JADX WARN: Type inference failed for: r22v6 */
    /* JADX WARN: Type inference failed for: r22v7 */
    /* JADX WARN: Type inference failed for: r22v8 */
    /* JADX WARN: Type inference failed for: r22v9 */
    /* JADX WARN: Type inference failed for: r23v0, types: [com.google.android.gms.internal.ads.VM, com.google.android.gms.internal.ads.aK] */
    /* JADX WARN: Type inference failed for: r2v3, types: [com.google.android.gms.internal.ads.p0] */
    public final void D() {
        C1804p0 c1804p0;
        C1804p0 c1804p1;
        ?? r22;
        ?? r23;
        ?? r12;
        SM sm;
        ?? r7;
        SM sm2;
        ?? r13;
        float fB;
        ?? r24;
        int i8;
        int i9;
        boolean z7;
        if (this.f17013G != null || this.f17034b0 || (c1804p0 = this.f17008B) == null) {
            return;
        }
        boolean z8 = this.f17059v0 == null && k0(c1804p0);
        String str = c1804p0.f20383m;
        if (z8) {
            W();
            boolean zEquals = "audio/mp4a-latm".equals(str);
            HM hm = this.f17061x;
            if (zEquals || "audio/mpeg".equals(str) || "audio/opus".equals(str)) {
                hm.f13752l = 32;
            } else {
                hm.f13752l = 1;
            }
            this.f17034b0 = true;
            return;
        }
        C2293yM c2293yM = this.f17059v0;
        this.f17057u0 = c2293yM;
        if (c2293yM != null) {
            int i10 = AbstractC2345zM.f22157a;
        }
        if (c2293yM != null) {
            try {
                p113o3.r.x(str);
            } catch (SM e8) {
                e = e8;
                throw s(4001, c1804p0, e, false);
            }
        }
        C1804p0 c1804p2 = this.f17008B;
        c1804p2.getClass();
        ArrayDeque arrayDeque = null;
        if (this.f17018L == null) {
            try {
                ArrayList arrayListZ = Z(this.f17052s, c1804p2);
                arrayListZ.isEmpty();
                this.f17018L = new ArrayDeque();
                if (!arrayListZ.isEmpty()) {
                    this.f17018L.add((PM) arrayListZ.get(0));
                }
                this.f17019M = null;
            } catch (ZM e9) {
                throw new SM(-49998, c1804p2, e9);
            }
        }
        try {
            if (this.f17018L.isEmpty()) {
                throw new SM(-49999, c1804p2, (ZM) null);
            }
            ArrayDeque arrayDeque2 = this.f17018L;
            arrayDeque2.getClass();
            ?? r14 = c1804p2;
            while (this.f17013G == null) {
                PM pm = (PM) arrayDeque2.peekFirst();
                pm.getClass();
                String str2 = pm.f15375a;
                if (!L(pm)) {
                    return;
                }
                try {
                    C1804p0 c1804p3 = this.f17008B;
                    c1804p3.getClass();
                    List list = c1804p3.f20373c;
                    String str3 = pm.f15375a;
                    int i11 = Et.f13234a;
                    if (i11 < 23) {
                        fB = -1.0f;
                    } else {
                        float f8 = this.f17012F;
                        C1804p0[] c1804p0Arr = this.f17875j;
                        c1804p0Arr.getClass();
                        fB = B(f8, c1804p0Arr);
                    }
                    if (fB <= this.f17054t) {
                        fB = -1.0f;
                    }
                    G(c1804p3);
                    this.f17872g.getClass();
                    long jElapsedRealtime = SystemClock.elapsedRealtime();
                    KM kmY = Y(pm, c1804p3, fB);
                    if (i11 >= 31) {
                        C2344zL c2344zL = this.f17871f;
                        c2344zL.getClass();
                        RM.a(kmY, c2344zL);
                    }
                    try {
                        Trace.beginSection("createCodec:" + str3);
                        MM mmA = this.f17050r.a(kmY);
                        this.f17013G = mmA;
                        mmA.c(new TM(this));
                        Trace.endSection();
                        this.f17872g.getClass();
                        long jElapsedRealtime2 = SystemClock.elapsedRealtime();
                        if (pm.c(c1804p3)) {
                            c1804p1 = c1804p0;
                            r23 = r14;
                        } else {
                            try {
                                StringBuilder sb = new StringBuilder();
                                sb.append("id=");
                                sb.append(c1804p3.f20371a);
                                sb.append(", mimeType=");
                                sb.append(c1804p3.f20383m);
                                String str4 = c1804p3.f20382l;
                                if (str4 != null) {
                                    sb.append(", container=");
                                    sb.append(str4);
                                }
                                int i12 = c1804p3.f20379i;
                                if (i12 != -1) {
                                    sb.append(", bitrate=");
                                    sb.append(i12);
                                }
                                String str5 = c1804p3.f20380j;
                                if (str5 != null) {
                                    sb.append(", codecs=");
                                    sb.append(str5);
                                }
                                C1672mO c1672mO = c1804p3.f20387q;
                                if (c1672mO != null) {
                                    LinkedHashSet linkedHashSet = new LinkedHashSet();
                                    c1804p1 = c1804p0;
                                    int i13 = 0;
                                    while (i13 < c1672mO.f19956J) {
                                        try {
                                            try {
                                                UUID uuid = c1672mO.f19953G[i13].f18223H;
                                                C1672mO c1672mO2 = c1672mO;
                                                try {
                                                    if (uuid.equals(AbstractC2187wK.f21660b)) {
                                                        try {
                                                            linkedHashSet.add("cenc");
                                                        } catch (Exception e10) {
                                                            e = e10;
                                                            r22 = r14;
                                                            r12 = str2;
                                                            r23 = r22;
                                                            Zo.g("MediaCodecRenderer", "Failed to initialize decoder: ".concat(r12), e);
                                                            arrayDeque2.removeFirst();
                                                            r7 = r23;
                                                            sm = new SM((C1804p0) r7, e, pm);
                                                            d0(sm);
                                                            sm2 = this.f17019M;
                                                            if (sm2 == null) {
                                                                this.f17019M = sm;
                                                            } else {
                                                                this.f17019M = SM.a(sm2);
                                                            }
                                                            if (!arrayDeque2.isEmpty()) {
                                                                throw this.f17019M;
                                                            }
                                                            r13 = r7;
                                                            c1804p0 = c1804p1;
                                                            arrayDeque = null;
                                                            r14 = r13;
                                                        }
                                                    } else if (uuid.equals(AbstractC2187wK.f21661c)) {
                                                        linkedHashSet.add("clearkey");
                                                    } else if (uuid.equals(AbstractC2187wK.f21663e)) {
                                                        linkedHashSet.add("playready");
                                                    } else if (uuid.equals(AbstractC2187wK.f21662d)) {
                                                        linkedHashSet.add("widevine");
                                                    } else {
                                                        if (uuid.equals(AbstractC2187wK.f21659a)) {
                                                            linkedHashSet.add("universal");
                                                        } else {
                                                            String string = uuid.toString();
                                                            StringBuilder sb2 = new StringBuilder();
                                                            sb2.append("unknown (");
                                                            sb2.append(string);
                                                            sb2.append(")");
                                                            linkedHashSet.add(sb2.toString());
                                                        }
                                                        i13++;
                                                        c1672mO = c1672mO2;
                                                        r14 = r14;
                                                    }
                                                    i13++;
                                                    c1672mO = c1672mO2;
                                                    r14 = r14;
                                                } catch (Exception e11) {
                                                    e = e11;
                                                    r12 = str2;
                                                    r23 = r14;
                                                    Zo.g("MediaCodecRenderer", "Failed to initialize decoder: ".concat(r12), e);
                                                    arrayDeque2.removeFirst();
                                                    r7 = r23;
                                                    sm = new SM((C1804p0) r7, e, pm);
                                                    d0(sm);
                                                    sm2 = this.f17019M;
                                                    if (sm2 == null) {
                                                        this.f17019M = sm;
                                                    } else {
                                                        this.f17019M = SM.a(sm2);
                                                    }
                                                    if (!arrayDeque2.isEmpty()) {
                                                        throw this.f17019M;
                                                    }
                                                    r13 = r7;
                                                    c1804p0 = c1804p1;
                                                    arrayDeque = null;
                                                    r14 = r13;
                                                }
                                            } catch (Exception e12) {
                                                e = e12;
                                                r14 = r14;
                                                r12 = str2;
                                                r23 = r14;
                                                Zo.g("MediaCodecRenderer", "Failed to initialize decoder: ".concat(r12), e);
                                                arrayDeque2.removeFirst();
                                                r7 = r23;
                                                sm = new SM((C1804p0) r7, e, pm);
                                                d0(sm);
                                                sm2 = this.f17019M;
                                                if (sm2 == null) {
                                                    this.f17019M = sm;
                                                } else {
                                                    this.f17019M = SM.a(sm2);
                                                }
                                                if (!arrayDeque2.isEmpty()) {
                                                    throw this.f17019M;
                                                }
                                                r13 = r7;
                                                c1804p0 = c1804p1;
                                                arrayDeque = null;
                                                r14 = r13;
                                            }
                                        } catch (Exception e13) {
                                            e = e13;
                                        }
                                    }
                                    r24 = r14;
                                    sb.append(", drm=[");
                                    a7.b.t(sb, linkedHashSet.iterator(), ",");
                                    sb.append(']');
                                } else {
                                    c1804p1 = c1804p0;
                                    r24 = r14;
                                }
                                int i14 = c1804p3.f20389s;
                                if (i14 != -1 && (i8 = c1804p3.f20390t) != -1) {
                                    sb.append(", res=");
                                    sb.append(i14);
                                    sb.append("x");
                                    sb.append(i8);
                                }
                                C1928rL c1928rL = c1804p3.f20396z;
                                if (c1928rL != null && ((c1928rL.f20717e != -1 && c1928rL.f20718f != -1) || c1928rL.d())) {
                                    sb.append(", color=");
                                    sb.append(c1928rL.c());
                                }
                                float f9 = c1804p3.f20391u;
                                if (f9 != -1.0f) {
                                    sb.append(", fps=");
                                    sb.append(f9);
                                }
                                int i15 = c1804p3.f20362A;
                                if (i15 != -1) {
                                    sb.append(", channels=");
                                    sb.append(i15);
                                }
                                int i16 = c1804p3.f20363B;
                                if (i16 != -1) {
                                    sb.append(", sample_rate=");
                                    sb.append(i16);
                                }
                                String str6 = c1804p3.f20374d;
                                if (str6 != null) {
                                    sb.append(", language=");
                                    sb.append(str6);
                                }
                                if (!list.isEmpty()) {
                                    sb.append(", labels=[");
                                    a7.b.t(sb, list.iterator(), ",");
                                    sb.append("]");
                                }
                                int i17 = c1804p3.f20375e;
                                if (i17 != 0) {
                                    sb.append(", selectionFlags=[");
                                    ArrayList arrayList = new ArrayList();
                                    if ((i17 & 1) != 0) {
                                        arrayList.add("default");
                                    }
                                    if ((i17 & 2) != 0) {
                                        arrayList.add("forced");
                                    }
                                    a7.b.t(sb, arrayList.iterator(), ",");
                                    sb.append("]");
                                }
                                int i18 = c1804p3.f20376f;
                                if (i18 != 0) {
                                    sb.append(", roleFlags=[");
                                    ArrayList arrayList2 = new ArrayList();
                                    if ((i18 & 1) != 0) {
                                        arrayList2.add("main");
                                    }
                                    if ((i18 & 2) != 0) {
                                        arrayList2.add("alt");
                                    }
                                    if ((i18 & 4) != 0) {
                                        arrayList2.add("supplementary");
                                    }
                                    if ((i18 & 8) != 0) {
                                        arrayList2.add("commentary");
                                    }
                                    if ((i18 & 16) != 0) {
                                        arrayList2.add("dub");
                                    }
                                    if ((i18 & 32) != 0) {
                                        arrayList2.add("emergency");
                                    }
                                    if ((i18 & 64) != 0) {
                                        arrayList2.add("caption");
                                    }
                                    if ((i18 & 128) != 0) {
                                        arrayList2.add("subtitle");
                                    }
                                    if ((i18 & 256) != 0) {
                                        arrayList2.add("sign");
                                    }
                                    if ((i18 & IMediaList.Event.ItemAdded) != 0) {
                                        arrayList2.add("describes-video");
                                    }
                                    if ((i18 & 1024) != 0) {
                                        arrayList2.add("describes-music");
                                    }
                                    if ((i18 & 2048) != 0) {
                                        arrayList2.add("enhanced-intelligibility");
                                    }
                                    if ((i18 & 4096) != 0) {
                                        arrayList2.add("transcribes-dialog");
                                    }
                                    if ((i18 & 8192) != 0) {
                                        arrayList2.add("easy-read");
                                    }
                                    if ((i18 & Http2.INITIAL_MAX_FRAME_SIZE) != 0) {
                                        arrayList2.add("trick-play");
                                    }
                                    if ((i18 & 32768) != 0) {
                                        arrayList2.add("auxiliary");
                                    }
                                    a7.b.t(sb, arrayList2.iterator(), ",");
                                    sb.append("]");
                                }
                                if ((32768 & i18) != 0) {
                                    sb.append(", auxiliaryTrackType=");
                                    sb.append("undefined");
                                }
                                String string2 = sb.toString();
                                Locale locale = Locale.US;
                                Zo.f("MediaCodecRenderer", "Format exceeds selected codec's capabilities [" + string2 + ", " + str3 + "]");
                                r23 = r24;
                            } catch (Exception e14) {
                                e = e14;
                                c1804p1 = c1804p0;
                            }
                        }
                        this.f17020N = pm;
                        this.f17017K = fB;
                        this.f17014H = c1804p3;
                        int i19 = Et.f13234a;
                        if (i19 <= 25 && "OMX.Exynos.avc.dec.secure".equals(str3)) {
                            String str7 = Et.f13237d;
                            if (str7.startsWith("SM-T585") || str7.startsWith("SM-A510") || str7.startsWith("SM-A520") || str7.startsWith("SM-J700")) {
                                i9 = 2;
                            } else if (i19 < 24) {
                                i9 = 0;
                            } else {
                                i9 = 0;
                            }
                        } else if (i19 < 24 || !("OMX.Nvidia.h264.decode".equals(str3) || "OMX.Nvidia.h264.decode.secure".equals(str3))) {
                            i9 = 0;
                        } else {
                            String str8 = Et.f13235b;
                            if ("flounder".equals(str8) || "flounder_lte".equals(str8) || "grouper".equals(str8) || "tilapia".equals(str8)) {
                                i9 = 1;
                            } else {
                                i9 = 0;
                            }
                        }
                        this.f17021O = i9;
                        this.f17022P = i19 == 29 && "c2.android.aac.decoder".equals(str3);
                        this.f17023Q = i19 <= 23 && "OMX.google.vorbis.decoder".equals(str3);
                        this.f17024R = i19 == 21 && "OMX.google.aac.decoder".equals(str3);
                        if (i19 <= 25 && "OMX.rk.video_decoder.avc".equals(str2)) {
                            z7 = true;
                        } else if ((i19 > 29 || !("OMX.broadcom.video_decoder.tunnel".equals(str2) || "OMX.broadcom.video_decoder.tunnel.secure".equals(str2) || "OMX.bcm.vdec.avc.tunnel".equals(str2) || "OMX.bcm.vdec.avc.tunnel.secure".equals(str2) || "OMX.bcm.vdec.hevc.tunnel".equals(str2) || "OMX.bcm.vdec.hevc.tunnel.secure".equals(str2))) && !("Amazon".equals(Et.f13236c) && "AFTS".equals(Et.f13237d) && pm.f15380f)) {
                            z7 = false;
                        } else {
                            z7 = true;
                        }
                        this.f17027U = z7;
                        this.f17013G.getClass();
                        if (this.f17873h == 2) {
                            this.f17872g.getClass();
                            this.f17028V = SystemClock.elapsedRealtime() + 1000;
                        }
                        try {
                            this.f17049q0.f18208a++;
                            r14 = str2;
                            try {
                                e0(str3, jElapsedRealtime2, jElapsedRealtime2 - jElapsedRealtime);
                                c1804p0 = c1804p1;
                                r13 = r23;
                            } catch (Exception e15) {
                                e = e15;
                                r12 = r14;
                                r23 = r23;
                            }
                        } catch (Exception e16) {
                            e = e16;
                            r22 = r23;
                            r12 = str2;
                            r23 = r22;
                            Zo.g("MediaCodecRenderer", "Failed to initialize decoder: ".concat(r12), e);
                            arrayDeque2.removeFirst();
                            r7 = r23;
                            sm = new SM((C1804p0) r7, e, pm);
                            d0(sm);
                            sm2 = this.f17019M;
                            if (sm2 == null) {
                                this.f17019M = sm;
                            } else {
                                this.f17019M = SM.a(sm2);
                            }
                            if (!arrayDeque2.isEmpty()) {
                                throw this.f17019M;
                            }
                            r13 = r7;
                            c1804p0 = c1804p1;
                        }
                    } catch (Throwable th) {
                        c1804p1 = c1804p0;
                        r23 = r14;
                        r14 = str2;
                        Trace.endSection();
                        throw th;
                    }
                } catch (Exception e17) {
                    e = e17;
                    c1804p1 = c1804p0;
                }
                arrayDeque = null;
                r14 = r13;
            }
            this.f17018L = arrayDeque;
        } catch (SM e18) {
            e = e18;
            throw s(4001, c1804p0, e, false);
        }
    }

    public void E(long j8) {
        this.f17053s0 = j8;
        while (true) {
            ArrayDeque arrayDeque = this.f17063z;
            if (arrayDeque.isEmpty() || j8 < ((UM) arrayDeque.peek()).f16839a) {
                return;
            }
            UM um = (UM) arrayDeque.poll();
            um.getClass();
            N(um);
            h0();
        }
    }

    public void F() {
    }

    public void G(C1804p0 c1804p0) {
    }

    public final void H() {
        try {
            MM mm = this.f17013G;
            if (mm != null) {
                mm.zzm();
                this.f17049q0.f18209b++;
                PM pm = this.f17020N;
                pm.getClass();
                f0(pm.f15375a);
            }
        } finally {
            this.f17013G = null;
            this.f17057u0 = null;
            J();
        }
    }

    public void I() {
        this.f17029W = -1;
        this.f17058v.f16993e = null;
        this.f17030X = -1;
        this.f17031Y = null;
        this.f17028V = -9223372036854775807L;
        this.f17042j0 = false;
        this.f17041i0 = false;
        this.f17025S = false;
        this.f17026T = false;
        this.f17032Z = false;
        this.f17033a0 = false;
        this.f17044l0 = -9223372036854775807L;
        this.f17045m0 = -9223372036854775807L;
        this.f17053s0 = -9223372036854775807L;
        this.f17039g0 = 0;
        this.f17040h0 = 0;
        this.f17038f0 = this.f17037e0 ? 1 : 0;
    }

    public final void J() {
        I();
        this.f17018L = null;
        this.f17020N = null;
        this.f17014H = null;
        this.f17015I = null;
        this.f17016J = false;
        this.f17043k0 = false;
        this.f17017K = -1.0f;
        this.f17021O = 0;
        this.f17022P = false;
        this.f17023Q = false;
        this.f17024R = false;
        this.f17027U = false;
        this.f17037e0 = false;
        this.f17038f0 = 0;
    }

    public final boolean K() {
        if (this.f17013G == null) {
            return false;
        }
        int i8 = this.f17040h0;
        if (i8 == 3 || ((this.f17022P && !this.f17043k0) || (this.f17023Q && this.f17042j0))) {
            H();
            return true;
        }
        if (i8 == 2) {
            int i9 = Et.f13234a;
            p113o3.r.M(i9 >= 23);
            if (i9 >= 23) {
                try {
                    C2293yM c2293yM = this.f17059v0;
                    c2293yM.getClass();
                    this.f17057u0 = c2293yM;
                    this.f17039g0 = 0;
                    this.f17040h0 = 0;
                } catch (C1512jK e8) {
                    Zo.g("MediaCodecRenderer", "Failed to update the DRM session, releasing the codec instead.", e8);
                    H();
                    return true;
                }
            }
        }
        a0();
        return false;
    }

    public boolean L(PM pm) {
        return true;
    }

    public boolean M(VJ vj) {
        return false;
    }

    public final void N(UM um) {
        this.f17051r0 = um;
        if (um.f16841c != -9223372036854775807L) {
            this.f17055t0 = true;
        }
    }

    public final boolean O() {
        if (this.f17041i0) {
            this.f17039g0 = 1;
            if (this.f17023Q) {
                this.f17040h0 = 3;
                return false;
            }
            this.f17040h0 = 2;
        } else {
            C2293yM c2293yM = this.f17059v0;
            c2293yM.getClass();
            this.f17057u0 = c2293yM;
            this.f17039g0 = 0;
            this.f17040h0 = 0;
        }
        return true;
    }

    public final boolean P() throws C1512jK {
        MM mm = this.f17013G;
        if (mm == null || this.f17039g0 == 2 || this.f17046n0) {
            return false;
        }
        int i8 = this.f17029W;
        VJ vj = this.f17058v;
        if (i8 < 0) {
            int iZza = mm.zza();
            this.f17029W = iZza;
            if (iZza < 0) {
                return false;
            }
            vj.f16993e = mm.a(iZza);
            vj.e();
        }
        if (this.f17039g0 == 1) {
            if (!this.f17027U) {
                this.f17042j0 = true;
                mm.h(0L, this.f17029W, 0, 4);
                this.f17029W = -1;
                vj.f16993e = null;
            }
            this.f17039g0 = 2;
            return false;
        }
        if (this.f17025S) {
            this.f17025S = false;
            ByteBuffer byteBuffer = vj.f16993e;
            byteBuffer.getClass();
            byteBuffer.put(f17006w0);
            mm.h(0L, this.f17029W, 38, 0);
            this.f17029W = -1;
            vj.f16993e = null;
            this.f17041i0 = true;
            return true;
        }
        if (this.f17038f0 == 1) {
            int i9 = 0;
            while (true) {
                C1804p0 c1804p0 = this.f17014H;
                c1804p0.getClass();
                if (i9 >= c1804p0.f20386p.size()) {
                    break;
                }
                byte[] bArr = (byte[]) this.f17014H.f20386p.get(i9);
                ByteBuffer byteBuffer2 = vj.f16993e;
                byteBuffer2.getClass();
                byteBuffer2.put(bArr);
                i9++;
            }
            this.f17038f0 = 2;
        }
        ByteBuffer byteBuffer3 = vj.f16993e;
        byteBuffer3.getClass();
        int iPosition = byteBuffer3.position();
        C0871Om c0871Om = this.f17868c;
        c0871Om.f15197I = null;
        c0871Om.f15196H = null;
        try {
            int iR = r(c0871Om, vj, 0);
            if (iR == -3) {
                if (l()) {
                    this.f17045m0 = this.f17044l0;
                }
                return false;
            }
            if (iR == -5) {
                if (this.f17038f0 == 2) {
                    vj.e();
                    this.f17038f0 = 1;
                }
                V(c0871Om);
                return true;
            }
            if (vj.b(4)) {
                this.f17045m0 = this.f17044l0;
                if (this.f17038f0 == 2) {
                    vj.e();
                    this.f17038f0 = 1;
                }
                this.f17046n0 = true;
                if (!this.f17041i0) {
                    b0();
                    return false;
                }
                try {
                    if (!this.f17027U) {
                        this.f17042j0 = true;
                        mm.h(0L, this.f17029W, 0, 4);
                        this.f17029W = -1;
                        vj.f16993e = null;
                    }
                    return false;
                } catch (MediaCodec.CryptoException e8) {
                    throw s(Et.p(e8.getErrorCode()), this.f17008B, e8, false);
                }
            }
            if (!this.f17041i0 && !vj.b(1)) {
                vj.e();
                if (this.f17038f0 == 2) {
                    this.f17038f0 = 1;
                }
                return true;
            }
            if (M(vj)) {
                vj.e();
                this.f17049q0.f18211d++;
                return true;
            }
            boolean zB = vj.b(1073741824);
            p171w0.c cVar = vj.f16992d;
            if (zB) {
                if (iPosition == 0) {
                    cVar.getClass();
                } else {
                    if (cVar.f30895d == null) {
                        int[] iArr = new int[1];
                        cVar.f30895d = iArr;
                        cVar.f30900i.numBytesOfClearData = iArr;
                    }
                    int[] iArr2 = cVar.f30895d;
                    iArr2[0] = iArr2[0] + iPosition;
                }
            }
            long j8 = vj.f16995g;
            if (this.f17048p0) {
                ArrayDeque arrayDeque = this.f17063z;
                if (arrayDeque.isEmpty()) {
                    Ks ks = this.f17051r0.f16842d;
                    C1804p0 c1804p1 = this.f17008B;
                    c1804p1.getClass();
                    ks.d(c1804p1, j8);
                } else {
                    Ks ks2 = ((UM) arrayDeque.peekLast()).f16842d;
                    C1804p0 c1804p2 = this.f17008B;
                    c1804p2.getClass();
                    ks2.d(c1804p2, j8);
                }
                this.f17048p0 = false;
            }
            long jMax = Math.max(this.f17044l0, j8);
            this.f17044l0 = jMax;
            if (l() || vj.b(536870912)) {
                this.f17045m0 = jMax;
            }
            vj.g();
            if (vj.b(268435456)) {
                c0(vj);
            }
            F();
            l0();
            try {
                if (zB) {
                    mm.f(this.f17029W, cVar, j8);
                } else {
                    int i10 = this.f17029W;
                    ByteBuffer byteBuffer4 = vj.f16993e;
                    byteBuffer4.getClass();
                    mm.h(j8, i10, byteBuffer4.limit(), 0);
                }
                this.f17029W = -1;
                vj.f16993e = null;
                this.f17041i0 = true;
                this.f17038f0 = 0;
                this.f17049q0.f18210c++;
                return true;
            } catch (MediaCodec.CryptoException e9) {
                throw s(Et.p(e9.getErrorCode()), this.f17008B, e9, false);
            }
        } catch (UJ e10) {
            d0(e10);
            R(0);
            a0();
            return true;
        }
    }

    public final boolean Q(long j8, long j9) {
        if (j9 >= j8) {
            return false;
        }
        C1804p0 c1804p0 = this.f17009C;
        return c1804p0 == null || !Objects.equals(c1804p0.f20383m, "audio/opus") || j8 - j9 > 80000;
    }

    public final boolean R(int i8) {
        VJ vj = this.f17056u;
        C0871Om c0871Om = this.f17868c;
        c0871Om.f15197I = null;
        c0871Om.f15196H = null;
        vj.e();
        int iR = r(c0871Om, vj, i8 | 4);
        if (iR == -5) {
            V(c0871Om);
            return true;
        }
        if (iR != -4 || !vj.b(4)) {
            return false;
        }
        this.f17046n0 = true;
        b0();
        return false;
    }

    public final boolean S(C1804p0 c1804p0) {
        if (Et.f13234a >= 23 && this.f17013G != null && this.f17040h0 != 3 && this.f17873h != 0) {
            float f8 = this.f17012F;
            c1804p0.getClass();
            C1804p0[] c1804p0Arr = this.f17875j;
            c1804p0Arr.getClass();
            float fB = B(f8, c1804p0Arr);
            float f9 = this.f17017K;
            if (f9 != fB) {
                if (fB == -1.0f) {
                    X();
                    return false;
                }
                if (f9 != -1.0f || fB > this.f17054t) {
                    Bundle bundle = new Bundle();
                    bundle.putFloat("operating-rate", fB);
                    MM mm = this.f17013G;
                    mm.getClass();
                    mm.i(bundle);
                    this.f17017K = fB;
                }
            }
        }
        return true;
    }

    public abstract int T(WM wm, C1804p0 c1804p0);

    public abstract C1203dK U(PM pm, C1804p0 c1804p0, C1804p0 c1804p1);

    /* JADX WARN: Code duplicated, block: B:34:0x007f  */
    public C1203dK V(C0871Om c0871Om) {
        int i8;
        boolean z7 = true;
        this.f17048p0 = true;
        C1804p0 c1804p0 = (C1804p0) c0871Om.f15196H;
        c1804p0.getClass();
        String str = c1804p0.f20383m;
        if (str == null) {
            throw s(4005, c1804p0, new IllegalArgumentException("Sample MIME type is null."), false);
        }
        if (str.equals("video/av01") && !c1804p0.f20386p.isEmpty()) {
            K k8 = new K(c1804p0);
            k8.f14274o = null;
            c1804p0 = new C1804p0(k8);
        }
        C1804p0 c1804p1 = c1804p0;
        this.f17059v0 = (C2293yM) c0871Om.f15197I;
        this.f17008B = c1804p1;
        if (this.f17034b0) {
            this.f17036d0 = true;
            return null;
        }
        MM mm = this.f17013G;
        if (mm == null) {
            this.f17018L = null;
            D();
            return null;
        }
        PM pm = this.f17020N;
        pm.getClass();
        C1804p0 c1804p2 = this.f17014H;
        c1804p2.getClass();
        C2293yM c2293yM = this.f17057u0;
        C2293yM c2293yM2 = this.f17059v0;
        if (c2293yM != c2293yM2) {
            X();
            return new C1203dK(pm.f15375a, c1804p2, c1804p1, 0, 128);
        }
        boolean z8 = c2293yM2 != c2293yM;
        p113o3.r.M(!z8 || Et.f13234a >= 23);
        C1203dK c1203dKU = U(pm, c1804p2, c1804p1);
        int i9 = c1203dKU.f18320d;
        if (i9 != 0) {
            i8 = 2;
            if (i9 != 1) {
                if (i9 != 2) {
                    if (S(c1804p1)) {
                        this.f17014H = c1804p1;
                        if (!z8 || O()) {
                        }
                    } else {
                        i8 = 16;
                    }
                } else if (S(c1804p1)) {
                    this.f17037e0 = true;
                    this.f17038f0 = 1;
                    int i10 = this.f17021O;
                    if (i10 != 2 && (i10 != 1 || c1804p1.f20389s != c1804p2.f20389s || c1804p1.f20390t != c1804p2.f20390t)) {
                        z7 = false;
                    }
                    this.f17025S = z7;
                    this.f17014H = c1804p1;
                    if (!z8 || O()) {
                    }
                } else {
                    i8 = 16;
                }
            } else if (S(c1804p1)) {
                this.f17014H = c1804p1;
                if (z8) {
                    if (O()) {
                    }
                } else if (this.f17041i0) {
                    this.f17039g0 = 1;
                    if (this.f17023Q) {
                        this.f17040h0 = 3;
                    } else {
                        this.f17040h0 = 1;
                    }
                }
            } else {
                i8 = 16;
            }
            return (i9 != 0 || (this.f17013G == mm && this.f17040h0 != 3)) ? c1203dKU : new C1203dK(pm.f15375a, c1804p2, c1804p1, 0, i8);
        }
        X();
        i8 = 0;
        if (i9 != 0) {
        }
    }

    public final void W() {
        this.f17036d0 = false;
        this.f17061x.e();
        this.f17060w.e();
        this.f17035c0 = false;
        this.f17034b0 = false;
        C1826pM c1826pM = this.f17007A;
        c1826pM.getClass();
        c1826pM.f20446a = InterfaceC2044ti.f21093a;
        c1826pM.f20448c = 0;
        c1826pM.f20447b = 2;
    }

    public final void X() {
        if (this.f17041i0) {
            this.f17039g0 = 1;
            this.f17040h0 = 3;
        } else {
            H();
            D();
        }
    }

    public abstract KM Y(PM pm, C1804p0 c1804p0, float f8);

    public abstract ArrayList Z(WM wm, C1804p0 c1804p0);

    public final void a0() {
        try {
            MM mm = this.f17013G;
            p113o3.r.x(mm);
            mm.zzj();
        } finally {
            I();
        }
    }

    public final void b0() {
        int i8 = this.f17040h0;
        if (i8 == 1) {
            a0();
            return;
        }
        if (i8 != 2) {
            if (i8 != 3) {
                this.f17047o0 = true;
                i0();
                return;
            } else {
                H();
                D();
                return;
            }
        }
        a0();
        C2293yM c2293yM = this.f17059v0;
        c2293yM.getClass();
        this.f17057u0 = c2293yM;
        this.f17039g0 = 0;
        this.f17040h0 = 0;
    }

    public abstract void c0(VJ vj);

    public abstract void d0(Exception exc);

    public abstract void e0(String str, long j8, long j9);

    public abstract void f0(String str);

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0036, code lost:
    
        if (r7 >= r5) goto L14;
     */
    @Override // com.google.android.gms.internal.ads.AbstractC1048aK
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void g(com.google.android.gms.internal.ads.C1804p0[] r14, long r15, long r17, com.google.android.gms.internal.ads.C2190wN r19) {
        /*
            r13 = this;
            r0 = r13
            com.google.android.gms.internal.ads.UM r1 = r0.f17051r0
            long r1 = r1.f16841c
            r3 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r5 != 0) goto L20
            com.google.android.gms.internal.ads.UM r1 = new com.google.android.gms.internal.ads.UM
            r7 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r6 = r1
            r9 = r15
            r11 = r17
            r6.<init>(r7, r9, r11)
            r13.N(r1)
            return
        L20:
            java.util.ArrayDeque r1 = r0.f17063z
            boolean r2 = r1.isEmpty()
            if (r2 == 0) goto L55
            long r5 = r0.f17044l0
            int r2 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
            if (r2 == 0) goto L38
            long r7 = r0.f17053s0
            int r2 = (r7 > r3 ? 1 : (r7 == r3 ? 0 : -1))
            if (r2 == 0) goto L55
            int r2 = (r7 > r5 ? 1 : (r7 == r5 ? 0 : -1))
            if (r2 < 0) goto L55
        L38:
            com.google.android.gms.internal.ads.UM r1 = new com.google.android.gms.internal.ads.UM
            r6 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r5 = r1
            r8 = r15
            r10 = r17
            r5.<init>(r6, r8, r10)
            r13.N(r1)
            com.google.android.gms.internal.ads.UM r1 = r0.f17051r0
            long r1 = r1.f16841c
            int r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r5 == 0) goto L54
            r13.h0()
        L54:
            return
        L55:
            com.google.android.gms.internal.ads.UM r2 = new com.google.android.gms.internal.ads.UM
            long r7 = r0.f17044l0
            r6 = r2
            r9 = r15
            r11 = r17
            r6.<init>(r7, r9, r11)
            r1.add(r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.VM.g(com.google.android.gms.internal.ads.p0[], long, long, com.google.android.gms.internal.ads.wN):void");
    }

    public abstract void g0(C1804p0 c1804p0, MediaFormat mediaFormat);

    public abstract void h0();

    public void i0() {
    }

    public abstract boolean j0(long j8, long j9, MM mm, ByteBuffer byteBuffer, int i8, int i9, int i10, long j10, boolean z7, boolean z8, C1804p0 c1804p0);

    @Override // com.google.android.gms.internal.ads.AbstractC1048aK
    public void k(float f8, float f9) {
        this.f17011E = f8;
        this.f17012F = f9;
        S(this.f17014H);
    }

    public boolean k0(C1804p0 c1804p0) {
        return false;
    }

    public void l0() {
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 10911. Try increasing type updates limit count.
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:79)
        */
    @Override // com.google.android.gms.internal.ads.AbstractC1048aK
    public void n(long r23, long r25) {
        /*
            Method dump skipped, instruction units count: 1091
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.VM.n(long, long):void");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1048aK
    public boolean p() {
        boolean zZze;
        if (this.f17008B == null) {
            return false;
        }
        if (l()) {
            zZze = this.f17879n;
        } else {
            UN un = this.f17874i;
            un.getClass();
            zZze = un.zze();
        }
        if (zZze || this.f17030X >= 0) {
            return true;
        }
        if (this.f17028V == -9223372036854775807L) {
            return false;
        }
        this.f17872g.getClass();
        return SystemClock.elapsedRealtime() < this.f17028V;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1048aK
    public final int q(C1804p0 c1804p0) throws C1512jK {
        try {
            return T(this.f17052s, c1804p0);
        } catch (ZM e8) {
            throw s(4002, c1804p0, e8, false);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1048aK
    public void y() {
        this.f17008B = null;
        N(UM.f16838e);
        this.f17063z.clear();
        K();
    }
}
