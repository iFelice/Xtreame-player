package p095m1;

import D0.U;
import W0.AbstractC0368a;
import W0.B;
import W0.C0372e;
import W0.C0379l;
import W0.F;
import W0.K;
import W0.L;
import W0.r;
import W0.s;
import W0.t;
import W0.u;
import W0.w;
import android.util.Pair;
import android.util.SparseArray;
import com.google.android.gms.internal.measurement.H1;
import com.google.api.Service;
import com.google.protobuf.DescriptorProtos$FileOptions;
import com.google.protobuf.U2;
import java.math.RoundingMode;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.StandardCharsets;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import org.eclipse.paho.client.mqttv3.MqttConnectOptions;
import org.eclipse.paho.client.mqttv3.internal.wire.MqttWireMessage;
import org.videolan.libvlc.MediaPlayer;
import p094m0.AbstractC3124g;
import p094m0.C3126i;
import p094m0.C3130m;
import p094m0.C3131n;
import p094m0.C3135s;
import p094m0.C3136t;
import p094m0.O;
import p094m0.P;
import p117p0.D;
import p117p0.E;
import p117p0.M;
import p117p0.x;
import p117p0.y;
import p125q0.p;
import p126q1.k;
import p126q1.n;
import z4.H;
import z4.d0;

/* JADX INFO: loaded from: classes.dex */
public final class d implements s {

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public static final byte[] f27138f0 = {49, 10, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 10};

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public static final byte[] f27139g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public static final byte[] f27140h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public static final byte[] f27141i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public static final UUID f27142j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public static final Map f27143k0;

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public long f27144A;

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public boolean f27145B;

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public long f27146C;

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public long f27147D;

    /* JADX INFO: renamed from: E, reason: collision with root package name */
    public long f27148E;

    /* JADX INFO: renamed from: F, reason: collision with root package name */
    public y f27149F;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public y f27150G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public boolean f27151H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public boolean f27152I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public int f27153J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public long f27154K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public long f27155L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public int f27156M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public int f27157N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public int[] f27158O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public int f27159P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public int f27160Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public int f27161R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public int f27162S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public boolean f27163T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public long f27164U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public int f27165V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public int f27166W;

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public int f27167X;

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public boolean f27168Y;

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public boolean f27169Z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final b f27170a;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public boolean f27171a0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final e f27172b;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public int f27173b0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SparseArray f27174c;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public byte f27175c0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f27176d;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public boolean f27177d0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f27178e;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public u f27179e0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final k f27180f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final E f27181g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final E f27182h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final E f27183i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final E f27184j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final E f27185k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final E f27186l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final E f27187m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final E f27188n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final E f27189o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final E f27190p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public ByteBuffer f27191q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public long f27192r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public long f27193s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public long f27194t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public long f27195u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public long f27196v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f27197w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public c f27198x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public boolean f27199y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f27200z;

    static {
        String str = M.f28050a;
        f27139g0 = "Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text".getBytes(StandardCharsets.UTF_8);
        f27140h0 = new byte[]{68, 105, 97, 108, 111, 103, 117, 101, 58, 32, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44};
        f27141i0 = new byte[]{87, 69, 66, 86, 84, 84, 10, 10, 48, 48, 58, 48, 48, 58, 48, 48, 46, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 46, 48, 48, 48, 10};
        f27142j0 = new UUID(72057594037932032L, -9223371306706625679L);
        HashMap map = new HashMap();
        U2.s(0, map, "htc_video_rotA-000", 90, "htc_video_rotA-090");
        U2.s(180, map, "htc_video_rotA-180", MediaPlayer.Event.PausableChanged, "htc_video_rotA-270");
        f27143k0 = Collections.unmodifiableMap(map);
    }

    public d(int i8, k kVar) {
        b bVar = new b();
        this.f27193s = -1L;
        this.f27194t = -9223372036854775807L;
        this.f27195u = -9223372036854775807L;
        this.f27196v = -9223372036854775807L;
        this.f27146C = -1L;
        this.f27147D = -1L;
        this.f27148E = -9223372036854775807L;
        this.f27170a = bVar;
        bVar.f27081d = new U(this);
        this.f27180f = kVar;
        this.f27176d = (i8 & 1) == 0;
        this.f27178e = (i8 & 2) == 0;
        this.f27172b = new e();
        this.f27174c = new SparseArray();
        this.f27183i = new E(4);
        this.f27184j = new E(ByteBuffer.allocate(4).putInt(-1).array());
        this.f27185k = new E(4);
        this.f27181g = new E(p.f29508a);
        this.f27182h = new E(4);
        this.f27186l = new E();
        this.f27187m = new E();
        this.f27188n = new E(8);
        this.f27189o = new E();
        this.f27190p = new E();
        this.f27158O = new int[1];
    }

    public static byte[] f(long j8, long j9, String str) {
        H1.d(j8 != -9223372036854775807L);
        int i8 = (int) (j8 / 3600000000L);
        long j10 = j8 - (((long) i8) * 3600000000L);
        int i9 = (int) (j10 / 60000000);
        long j11 = j10 - (((long) i9) * 60000000);
        int i10 = (int) (j11 / 1000000);
        String str2 = String.format(Locale.US, str, Integer.valueOf(i8), Integer.valueOf(i9), Integer.valueOf(i10), Integer.valueOf((int) ((j11 - (((long) i10) * 1000000)) / j9)));
        String str3 = M.f28050a;
        return str2.getBytes(StandardCharsets.UTF_8);
    }

    public final void a(int i8) {
        if (this.f27149F == null || this.f27150G == null) {
            throw P.a("Element " + i8 + " must be in a Cues", null);
        }
    }

    public final void c(int i8) {
        if (this.f27198x != null) {
            return;
        }
        throw P.a("Element " + i8 + " must be in a TrackEntry", null);
    }

    @Override // W0.s
    public final void d(u uVar) {
        if (this.f27178e) {
            uVar = new n(uVar, this.f27180f);
        }
        this.f27179e0 = uVar;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:22:0x0079  */
    public final void e(c cVar, long j8, int i8, int i9, int i10) {
        byte b8;
        byte[] bArrF;
        int i11;
        int i12;
        W0.M m7 = cVar.f27106V;
        if (m7 != null) {
            m7.b(cVar.f27110Z, j8, i8, i9, i10, cVar.f27122k);
        } else {
            if ("S_TEXT/UTF8".equals(cVar.f27114c) || "S_TEXT/ASS".equals(cVar.f27114c) || "S_TEXT/SSA".equals(cVar.f27114c) || "S_TEXT/WEBVTT".equals(cVar.f27114c)) {
                if (this.f27157N > 1) {
                    x.f("MatroskaExtractor", "Skipping subtitle sample in laced block.");
                } else {
                    long j9 = this.f27155L;
                    if (j9 == -9223372036854775807L) {
                        x.f("MatroskaExtractor", "Skipping subtitle sample with no duration.");
                    } else {
                        String str = cVar.f27114c;
                        E e8 = this.f27187m;
                        byte[] bArr = e8.f28035a;
                        str.getClass();
                        switch (str) {
                            case "S_TEXT/ASS":
                                b8 = 0;
                                break;
                            case "S_TEXT/SSA":
                                b8 = 1;
                                break;
                            case "S_TEXT/WEBVTT":
                                b8 = 2;
                                break;
                            case "S_TEXT/UTF8":
                                b8 = 3;
                                break;
                            default:
                                b8 = -1;
                                break;
                        }
                        if (b8 == 0 || b8 == 1) {
                            bArrF = f(j9, 10000L, "%01d:%02d:%02d:%02d");
                            i11 = 21;
                        } else if (b8 == 2) {
                            bArrF = f(j9, 1000L, "%02d:%02d:%02d.%03d");
                            i11 = 25;
                        } else {
                            if (b8 != 3) {
                                throw new IllegalArgumentException();
                            }
                            bArrF = f(j9, 1000L, "%02d:%02d:%02d,%03d");
                            i11 = 19;
                        }
                        System.arraycopy(bArrF, 0, bArr, i11, bArrF.length);
                        for (int i13 = e8.f28036b; i13 < e8.f28037c; i13++) {
                            if (e8.f28035a[i13] == 0) {
                                e8.K(i13);
                                cVar.f27110Z.e(e8.f28037c, e8);
                                i12 = i9 + e8.f28037c;
                            }
                        }
                        cVar.f27110Z.e(e8.f28037c, e8);
                        i12 = i9 + e8.f28037c;
                    }
                }
                i12 = i9;
            } else {
                i12 = i9;
            }
            if ((i8 & 268435456) != 0) {
                int i14 = this.f27157N;
                E e9 = this.f27190p;
                if (i14 > 1) {
                    e9.I(0);
                } else {
                    int i15 = e9.f28037c;
                    cVar.f27110Z.a(i15, 2, e9);
                    i12 += i15;
                }
            }
            cVar.f27110Z.d(j8, i8, i12, i10, cVar.f27122k);
        }
        this.f27152I = true;
    }

    @Override // W0.s
    public final boolean g(t tVar) {
        K.k kVar = new K.k(1, 0);
        long j8 = tVar.j();
        long j9 = 1024;
        if (j8 != -1 && j8 <= 1024) {
            j9 = j8;
        }
        int i8 = (int) j9;
        tVar.c(0, ((E) kVar.f4295I).f28035a, 4);
        kVar.f4294H = 4;
        for (long jB = ((E) kVar.f4295I).B(); jB != 440786851; jB = ((long) (((E) kVar.f4295I).f28035a[0] & 255)) | ((jB << 8) & (-256))) {
            int i9 = kVar.f4294H + 1;
            kVar.f4294H = i9;
            if (i9 == i8) {
                return false;
            }
            tVar.c(0, ((E) kVar.f4295I).f28035a, 1);
        }
        long jF = kVar.f(tVar);
        long j10 = kVar.f4294H;
        if (jF == Long.MIN_VALUE) {
            return false;
        }
        if (j8 != -1 && j10 + jF >= j8) {
            return false;
        }
        while (true) {
            long j11 = kVar.f4294H;
            long j12 = j10 + jF;
            if (j11 >= j12) {
                return j11 == j12;
            }
            if (kVar.f(tVar) == Long.MIN_VALUE) {
                return false;
            }
            long jF2 = kVar.f(tVar);
            if (jF2 < 0 || jF2 > 2147483647L) {
                return false;
            }
            if (jF2 != 0) {
                int i10 = (int) jF2;
                tVar.g(i10);
                kVar.f4294H += i10;
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:103:0x0270 A[PHI: r3
      0x0270: PHI (r3v79 java.lang.String) = (r3v51 java.lang.String), (r3v52 java.lang.String), (r3v80 java.lang.String) binds: [B:116:0x02b1, B:112:0x029a, B:102:0x026e] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:104:0x0274 A[PHI: r3 r15 r37
      0x0274: PHI (r3v78 java.lang.String) = (r3v49 java.lang.String), (r3v50 java.lang.String), (r3v79 java.lang.String) binds: [B:124:0x02e3, B:120:0x02cc, B:103:0x0270] A[DONT_GENERATE, DONT_INLINE]
      0x0274: PHI (r15v48 java.lang.String) = (r15v40 java.lang.String), (r15v41 java.lang.String), (r15v49 java.lang.String) binds: [B:124:0x02e3, B:120:0x02cc, B:103:0x0270] A[DONT_GENERATE, DONT_INLINE]
      0x0274: PHI (r37v52 java.lang.String) = (r37v36 java.lang.String), (r37v37 java.lang.String), (r37v53 java.lang.String) binds: [B:124:0x02e3, B:120:0x02cc, B:103:0x0270] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:105:0x0278 A[PHI: r3 r11 r15 r20 r37
      0x0278: PHI (r3v77 java.lang.String) = (r3v47 java.lang.String), (r3v48 java.lang.String), (r3v78 java.lang.String) binds: [B:132:0x0316, B:128:0x02fe, B:104:0x0274] A[DONT_GENERATE, DONT_INLINE]
      0x0278: PHI (r11v47 java.lang.String) = (r11v38 java.lang.String), (r11v39 java.lang.String), (r11v48 java.lang.String) binds: [B:132:0x0316, B:128:0x02fe, B:104:0x0274] A[DONT_GENERATE, DONT_INLINE]
      0x0278: PHI (r15v47 java.lang.String) = (r15v38 java.lang.String), (r15v39 java.lang.String), (r15v48 java.lang.String) binds: [B:132:0x0316, B:128:0x02fe, B:104:0x0274] A[DONT_GENERATE, DONT_INLINE]
      0x0278: PHI (r20v42 java.lang.String) = (r20v28 java.lang.String), (r20v29 java.lang.String), (r20v43 java.lang.String) binds: [B:132:0x0316, B:128:0x02fe, B:104:0x0274] A[DONT_GENERATE, DONT_INLINE]
      0x0278: PHI (r37v51 java.lang.String) = (r37v34 java.lang.String), (r37v35 java.lang.String), (r37v52 java.lang.String) binds: [B:132:0x0316, B:128:0x02fe, B:104:0x0274] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:106:0x027a A[PHI: r3 r11 r15 r20 r34 r36 r37
      0x027a: PHI (r3v76 java.lang.String) = 
      (r3v20 java.lang.String)
      (r3v21 java.lang.String)
      (r3v22 java.lang.String)
      (r3v23 java.lang.String)
      (r3v24 java.lang.String)
      (r3v25 java.lang.String)
      (r3v26 java.lang.String)
      (r3v27 java.lang.String)
      (r3v28 java.lang.String)
      (r3v29 java.lang.String)
      (r3v30 java.lang.String)
      (r3v31 java.lang.String)
      (r3v32 java.lang.String)
      (r3v33 java.lang.String)
      (r3v34 java.lang.String)
      (r3v35 java.lang.String)
      (r3v36 java.lang.String)
      (r3v37 java.lang.String)
      (r3v38 java.lang.String)
      (r3v39 java.lang.String)
      (r3v40 java.lang.String)
      (r3v41 java.lang.String)
      (r3v42 java.lang.String)
      (r3v43 java.lang.String)
      (r3v44 java.lang.String)
      (r3v45 java.lang.String)
      (r3v46 java.lang.String)
      (r3v77 java.lang.String)
     binds: [B:240:0x05ba, B:236:0x05a4, B:232:0x058e, B:228:0x0578, B:224:0x0561, B:220:0x054a, B:216:0x0531, B:212:0x051a, B:208:0x0502, B:204:0x04ea, B:200:0x04d2, B:196:0x04b8, B:192:0x049e, B:188:0x0484, B:184:0x046a, B:180:0x0450, B:176:0x0436, B:172:0x041c, B:168:0x0402, B:164:0x03e9, B:160:0x03d0, B:156:0x03b7, B:152:0x039e, B:148:0x0385, B:144:0x036b, B:141:0x034d, B:136:0x0331, B:105:0x0278] A[DONT_GENERATE, DONT_INLINE]
      0x027a: PHI (r11v46 java.lang.String) = 
      (r11v11 java.lang.String)
      (r11v12 java.lang.String)
      (r11v13 java.lang.String)
      (r11v14 java.lang.String)
      (r11v15 java.lang.String)
      (r11v16 java.lang.String)
      (r11v17 java.lang.String)
      (r11v18 java.lang.String)
      (r11v19 java.lang.String)
      (r11v20 java.lang.String)
      (r11v21 java.lang.String)
      (r11v22 java.lang.String)
      (r11v23 java.lang.String)
      (r11v24 java.lang.String)
      (r11v25 java.lang.String)
      (r11v26 java.lang.String)
      (r11v27 java.lang.String)
      (r11v28 java.lang.String)
      (r11v29 java.lang.String)
      (r11v30 java.lang.String)
      (r11v31 java.lang.String)
      (r11v32 java.lang.String)
      (r11v33 java.lang.String)
      (r11v34 java.lang.String)
      (r11v35 java.lang.String)
      (r11v36 java.lang.String)
      (r11v37 java.lang.String)
      (r11v47 java.lang.String)
     binds: [B:240:0x05ba, B:236:0x05a4, B:232:0x058e, B:228:0x0578, B:224:0x0561, B:220:0x054a, B:216:0x0531, B:212:0x051a, B:208:0x0502, B:204:0x04ea, B:200:0x04d2, B:196:0x04b8, B:192:0x049e, B:188:0x0484, B:184:0x046a, B:180:0x0450, B:176:0x0436, B:172:0x041c, B:168:0x0402, B:164:0x03e9, B:160:0x03d0, B:156:0x03b7, B:152:0x039e, B:148:0x0385, B:144:0x036b, B:141:0x034d, B:136:0x0331, B:105:0x0278] A[DONT_GENERATE, DONT_INLINE]
      0x027a: PHI (r15v46 java.lang.String) = 
      (r15v11 java.lang.String)
      (r15v12 java.lang.String)
      (r15v13 java.lang.String)
      (r15v14 java.lang.String)
      (r15v15 java.lang.String)
      (r15v16 java.lang.String)
      (r15v17 java.lang.String)
      (r15v18 java.lang.String)
      (r15v19 java.lang.String)
      (r15v20 java.lang.String)
      (r15v21 java.lang.String)
      (r15v22 java.lang.String)
      (r15v23 java.lang.String)
      (r15v24 java.lang.String)
      (r15v25 java.lang.String)
      (r15v26 java.lang.String)
      (r15v27 java.lang.String)
      (r15v28 java.lang.String)
      (r15v29 java.lang.String)
      (r15v30 java.lang.String)
      (r15v31 java.lang.String)
      (r15v32 java.lang.String)
      (r15v33 java.lang.String)
      (r15v34 java.lang.String)
      (r15v35 java.lang.String)
      (r15v36 java.lang.String)
      (r15v37 java.lang.String)
      (r15v47 java.lang.String)
     binds: [B:240:0x05ba, B:236:0x05a4, B:232:0x058e, B:228:0x0578, B:224:0x0561, B:220:0x054a, B:216:0x0531, B:212:0x051a, B:208:0x0502, B:204:0x04ea, B:200:0x04d2, B:196:0x04b8, B:192:0x049e, B:188:0x0484, B:184:0x046a, B:180:0x0450, B:176:0x0436, B:172:0x041c, B:168:0x0402, B:164:0x03e9, B:160:0x03d0, B:156:0x03b7, B:152:0x039e, B:148:0x0385, B:144:0x036b, B:141:0x034d, B:136:0x0331, B:105:0x0278] A[DONT_GENERATE, DONT_INLINE]
      0x027a: PHI (r20v41 java.lang.String) = 
      (r20v1 java.lang.String)
      (r20v2 java.lang.String)
      (r20v3 java.lang.String)
      (r20v4 java.lang.String)
      (r20v5 java.lang.String)
      (r20v6 java.lang.String)
      (r20v7 java.lang.String)
      (r20v8 java.lang.String)
      (r20v9 java.lang.String)
      (r20v10 java.lang.String)
      (r20v11 java.lang.String)
      (r20v12 java.lang.String)
      (r20v13 java.lang.String)
      (r20v14 java.lang.String)
      (r20v15 java.lang.String)
      (r20v16 java.lang.String)
      (r20v17 java.lang.String)
      (r20v18 java.lang.String)
      (r20v19 java.lang.String)
      (r20v20 java.lang.String)
      (r20v21 java.lang.String)
      (r20v22 java.lang.String)
      (r20v23 java.lang.String)
      (r20v24 java.lang.String)
      (r20v25 java.lang.String)
      (r20v26 java.lang.String)
      (r20v27 java.lang.String)
      (r20v42 java.lang.String)
     binds: [B:240:0x05ba, B:236:0x05a4, B:232:0x058e, B:228:0x0578, B:224:0x0561, B:220:0x054a, B:216:0x0531, B:212:0x051a, B:208:0x0502, B:204:0x04ea, B:200:0x04d2, B:196:0x04b8, B:192:0x049e, B:188:0x0484, B:184:0x046a, B:180:0x0450, B:176:0x0436, B:172:0x041c, B:168:0x0402, B:164:0x03e9, B:160:0x03d0, B:156:0x03b7, B:152:0x039e, B:148:0x0385, B:144:0x036b, B:141:0x034d, B:136:0x0331, B:105:0x0278] A[DONT_GENERATE, DONT_INLINE]
      0x027a: PHI (r34v37 ??) = 
      (r34v70 ??)
      (r34v71 ??)
      (r34v72 ??)
      (r34v73 ??)
      (r34v74 ??)
      (r34v75 ??)
      (r34v76 ??)
      (r34v77 ??)
      (r34v78 ??)
      (r34v79 ??)
      (r34v80 ??)
      (r34v81 ??)
      (r34v82 ??)
      (r34v83 ??)
      (r34v84 ??)
      (r34v85 ??)
      (r34v86 ??)
      (r34v87 ??)
      (r34v88 ??)
      (r34v89 ??)
      (r34v90 ??)
      (r34v91 ??)
      (r34v92 ??)
      (r34v93 ??)
      (r34v94 ??)
      (r34v8 ??)
      (r34v95 ??)
      (r34v96 ??)
     binds: [B:240:0x05ba, B:236:0x05a4, B:232:0x058e, B:228:0x0578, B:224:0x0561, B:220:0x054a, B:216:0x0531, B:212:0x051a, B:208:0x0502, B:204:0x04ea, B:200:0x04d2, B:196:0x04b8, B:192:0x049e, B:188:0x0484, B:184:0x046a, B:180:0x0450, B:176:0x0436, B:172:0x041c, B:168:0x0402, B:164:0x03e9, B:160:0x03d0, B:156:0x03b7, B:152:0x039e, B:148:0x0385, B:144:0x036b, B:141:0x034d, B:136:0x0331, B:105:0x0278] A[DONT_GENERATE, DONT_INLINE]
      0x027a: PHI (r36v49 java.lang.String) = 
      (r36v7 java.lang.String)
      (r36v8 java.lang.String)
      (r36v9 java.lang.String)
      (r36v10 java.lang.String)
      (r36v11 java.lang.String)
      (r36v12 java.lang.String)
      (r36v13 java.lang.String)
      (r36v14 java.lang.String)
      (r36v15 java.lang.String)
      (r36v16 java.lang.String)
      (r36v17 java.lang.String)
      (r36v18 java.lang.String)
      (r36v19 java.lang.String)
      (r36v20 java.lang.String)
      (r36v21 java.lang.String)
      (r36v22 java.lang.String)
      (r36v23 java.lang.String)
      (r36v24 java.lang.String)
      (r36v25 java.lang.String)
      (r36v26 java.lang.String)
      (r36v27 java.lang.String)
      (r36v28 java.lang.String)
      (r36v29 java.lang.String)
      (r36v30 java.lang.String)
      (r36v31 java.lang.String)
      (r36v32 java.lang.String)
      (r36v33 java.lang.String)
      (r36v50 java.lang.String)
     binds: [B:240:0x05ba, B:236:0x05a4, B:232:0x058e, B:228:0x0578, B:224:0x0561, B:220:0x054a, B:216:0x0531, B:212:0x051a, B:208:0x0502, B:204:0x04ea, B:200:0x04d2, B:196:0x04b8, B:192:0x049e, B:188:0x0484, B:184:0x046a, B:180:0x0450, B:176:0x0436, B:172:0x041c, B:168:0x0402, B:164:0x03e9, B:160:0x03d0, B:156:0x03b7, B:152:0x039e, B:148:0x0385, B:144:0x036b, B:141:0x034d, B:136:0x0331, B:105:0x0278] A[DONT_GENERATE, DONT_INLINE]
      0x027a: PHI (r37v50 java.lang.String) = 
      (r37v7 java.lang.String)
      (r37v8 java.lang.String)
      (r37v9 java.lang.String)
      (r37v10 java.lang.String)
      (r37v11 java.lang.String)
      (r37v12 java.lang.String)
      (r37v13 java.lang.String)
      (r37v14 java.lang.String)
      (r37v15 java.lang.String)
      (r37v16 java.lang.String)
      (r37v17 java.lang.String)
      (r37v18 java.lang.String)
      (r37v19 java.lang.String)
      (r37v20 java.lang.String)
      (r37v21 java.lang.String)
      (r37v22 java.lang.String)
      (r37v23 java.lang.String)
      (r37v24 java.lang.String)
      (r37v25 java.lang.String)
      (r37v26 java.lang.String)
      (r37v27 java.lang.String)
      (r37v28 java.lang.String)
      (r37v29 java.lang.String)
      (r37v30 java.lang.String)
      (r37v31 java.lang.String)
      (r37v32 java.lang.String)
      (r37v33 java.lang.String)
      (r37v51 java.lang.String)
     binds: [B:240:0x05ba, B:236:0x05a4, B:232:0x058e, B:228:0x0578, B:224:0x0561, B:220:0x054a, B:216:0x0531, B:212:0x051a, B:208:0x0502, B:204:0x04ea, B:200:0x04d2, B:196:0x04b8, B:192:0x049e, B:188:0x0484, B:184:0x046a, B:180:0x0450, B:176:0x0436, B:172:0x041c, B:168:0x0402, B:164:0x03e9, B:160:0x03d0, B:156:0x03b7, B:152:0x039e, B:148:0x0385, B:144:0x036b, B:141:0x034d, B:136:0x0331, B:105:0x0278] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:247:0x05e0  */
    /* JADX WARN: Code duplicated, block: B:248:0x05ea A[PHI: r0 r2 r5 r6 r8
      0x05ea: PHI (r0v219 ??) = (r0v249 ??), (r0v250 ??), (r0v251 ??), (r0v252 ??), (r0v110 ??), (r0v115 ??), (r0v118 ??), (r0v125 ??), (r0v220 ??) binds: [B:383:0x0975, B:379:0x0960, B:375:0x094a, B:371:0x0933, B:284:0x06be, B:280:0x06a4, B:276:0x0685, B:260:0x0622, B:247:0x05e0] A[DONT_GENERATE, DONT_INLINE]
      0x05ea: PHI (r2v174 java.lang.String) = 
      (r2v41 java.lang.String)
      (r2v42 java.lang.String)
      (r2v43 java.lang.String)
      (r2v44 java.lang.String)
      (r2v88 java.lang.String)
      (r2v91 java.lang.String)
      (r2v93 java.lang.String)
      (r2v97 java.lang.String)
      (r2v175 java.lang.String)
     binds: [B:383:0x0975, B:379:0x0960, B:375:0x094a, B:371:0x0933, B:284:0x06be, B:280:0x06a4, B:276:0x0685, B:260:0x0622, B:247:0x05e0] A[DONT_GENERATE, DONT_INLINE]
      0x05ea: PHI (r5v91 java.lang.String) = 
      (r5v48 java.lang.String)
      (r5v49 java.lang.String)
      (r5v50 java.lang.String)
      (r5v51 java.lang.String)
      (r5v73 java.lang.String)
      (r5v75 java.lang.String)
      (r5v76 java.lang.String)
      (r5v80 java.lang.String)
      (r5v92 java.lang.String)
     binds: [B:383:0x0975, B:379:0x0960, B:375:0x094a, B:371:0x0933, B:284:0x06be, B:280:0x06a4, B:276:0x0685, B:260:0x0622, B:247:0x05e0] A[DONT_GENERATE, DONT_INLINE]
      0x05ea: PHI (r6v51 java.lang.String) = 
      (r6v12 java.lang.String)
      (r6v13 java.lang.String)
      (r6v14 java.lang.String)
      (r6v15 java.lang.String)
      (r6v37 java.lang.String)
      (r6v39 java.lang.String)
      (r6v40 java.lang.String)
      (r6v45 java.lang.String)
      (r6v52 java.lang.String)
     binds: [B:383:0x0975, B:379:0x0960, B:375:0x094a, B:371:0x0933, B:284:0x06be, B:280:0x06a4, B:276:0x0685, B:260:0x0622, B:247:0x05e0] A[DONT_GENERATE, DONT_INLINE]
      0x05ea: PHI (r8v50 java.lang.String) = 
      (r8v11 java.lang.String)
      (r8v12 java.lang.String)
      (r8v13 java.lang.String)
      (r8v14 java.lang.String)
      (r8v36 java.lang.String)
      (r8v38 java.lang.String)
      (r8v39 java.lang.String)
      (r8v44 java.lang.String)
      (r8v51 java.lang.String)
     binds: [B:383:0x0975, B:379:0x0960, B:375:0x094a, B:371:0x0933, B:284:0x06be, B:280:0x06a4, B:276:0x0685, B:260:0x0622, B:247:0x05e0] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:259:0x0620 A[PHI: r8
      0x0620: PHI (r8v45 java.lang.String) = (r8v43 java.lang.String), (r8v46 java.lang.String) binds: [B:263:0x063b, B:258:0x061e] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:268:0x0654 A[PHI: r8 r10
      0x0654: PHI (r8v41 java.lang.String) = (r8v40 java.lang.String), (r8v42 java.lang.String) binds: [B:271:0x0669, B:267:0x0652] A[DONT_GENERATE, DONT_INLINE]
      0x0654: PHI (r10v36 java.lang.String) = (r10v35 java.lang.String), (r10v37 java.lang.String) binds: [B:271:0x0669, B:267:0x0652] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:284:0x06be A[PHI: r2 r8 r10 r12 r13
      0x06be: PHI (r2v87 ??) = 
      (r2v183 ??)
      (r2v184 ??)
      (r2v185 ??)
      (r2v186 ??)
      (r2v187 ??)
      (r2v188 ??)
      (r2v189 ??)
      (r2v190 ??)
      (r2v191 ??)
      (r2v192 ??)
      (r2v193 ??)
      (r2v194 ??)
      (r2v195 ??)
      (r2v196 ??)
      (r2v197 ??)
      (r2v198 ??)
      (r2v199 ??)
      (r2v200 ??)
      (r2v201 ??)
      (r2v202 ??)
      (r2v203 ??)
      (r2v204 ??)
     binds: [B:367:0x0916, B:363:0x08fc, B:359:0x08e0, B:355:0x08c6, B:351:0x08ac, B:347:0x0890, B:343:0x0874, B:339:0x0856, B:335:0x0838, B:331:0x081a, B:327:0x07fc, B:323:0x07e0, B:319:0x07c4, B:315:0x07a6, B:311:0x0788, B:307:0x076a, B:303:0x074e, B:299:0x0731, B:295:0x0714, B:291:0x06f7, B:287:0x06dc, B:283:0x06bc] A[DONT_GENERATE, DONT_INLINE]
      0x06be: PHI (r8v36 java.lang.String) = 
      (r8v15 java.lang.String)
      (r8v16 java.lang.String)
      (r8v17 java.lang.String)
      (r8v18 java.lang.String)
      (r8v19 java.lang.String)
      (r8v20 java.lang.String)
      (r8v21 java.lang.String)
      (r8v22 java.lang.String)
      (r8v23 java.lang.String)
      (r8v24 java.lang.String)
      (r8v25 java.lang.String)
      (r8v26 java.lang.String)
      (r8v27 java.lang.String)
      (r8v28 java.lang.String)
      (r8v29 java.lang.String)
      (r8v30 java.lang.String)
      (r8v31 java.lang.String)
      (r8v32 java.lang.String)
      (r8v33 java.lang.String)
      (r8v34 java.lang.String)
      (r8v35 java.lang.String)
      (r8v37 java.lang.String)
     binds: [B:367:0x0916, B:363:0x08fc, B:359:0x08e0, B:355:0x08c6, B:351:0x08ac, B:347:0x0890, B:343:0x0874, B:339:0x0856, B:335:0x0838, B:331:0x081a, B:327:0x07fc, B:323:0x07e0, B:319:0x07c4, B:315:0x07a6, B:311:0x0788, B:307:0x076a, B:303:0x074e, B:299:0x0731, B:295:0x0714, B:291:0x06f7, B:287:0x06dc, B:283:0x06bc] A[DONT_GENERATE, DONT_INLINE]
      0x06be: PHI (r10v31 java.lang.String) = 
      (r10v10 java.lang.String)
      (r10v11 java.lang.String)
      (r10v12 java.lang.String)
      (r10v13 java.lang.String)
      (r10v14 java.lang.String)
      (r10v15 java.lang.String)
      (r10v16 java.lang.String)
      (r10v17 java.lang.String)
      (r10v18 java.lang.String)
      (r10v19 java.lang.String)
      (r10v20 java.lang.String)
      (r10v21 java.lang.String)
      (r10v22 java.lang.String)
      (r10v23 java.lang.String)
      (r10v24 java.lang.String)
      (r10v25 java.lang.String)
      (r10v26 java.lang.String)
      (r10v27 java.lang.String)
      (r10v28 java.lang.String)
      (r10v29 java.lang.String)
      (r10v30 java.lang.String)
      (r10v32 java.lang.String)
     binds: [B:367:0x0916, B:363:0x08fc, B:359:0x08e0, B:355:0x08c6, B:351:0x08ac, B:347:0x0890, B:343:0x0874, B:339:0x0856, B:335:0x0838, B:331:0x081a, B:327:0x07fc, B:323:0x07e0, B:319:0x07c4, B:315:0x07a6, B:311:0x0788, B:307:0x076a, B:303:0x074e, B:299:0x0731, B:295:0x0714, B:291:0x06f7, B:287:0x06dc, B:283:0x06bc] A[DONT_GENERATE, DONT_INLINE]
      0x06be: PHI (r12v32 java.lang.String) = 
      (r12v11 java.lang.String)
      (r12v12 java.lang.String)
      (r12v13 java.lang.String)
      (r12v14 java.lang.String)
      (r12v15 java.lang.String)
      (r12v16 java.lang.String)
      (r12v17 java.lang.String)
      (r12v18 java.lang.String)
      (r12v19 java.lang.String)
      (r12v20 java.lang.String)
      (r12v21 java.lang.String)
      (r12v22 java.lang.String)
      (r12v23 java.lang.String)
      (r12v24 java.lang.String)
      (r12v25 java.lang.String)
      (r12v26 java.lang.String)
      (r12v27 java.lang.String)
      (r12v28 java.lang.String)
      (r12v29 java.lang.String)
      (r12v30 java.lang.String)
      (r12v31 java.lang.String)
      (r12v33 java.lang.String)
     binds: [B:367:0x0916, B:363:0x08fc, B:359:0x08e0, B:355:0x08c6, B:351:0x08ac, B:347:0x0890, B:343:0x0874, B:339:0x0856, B:335:0x0838, B:331:0x081a, B:327:0x07fc, B:323:0x07e0, B:319:0x07c4, B:315:0x07a6, B:311:0x0788, B:307:0x076a, B:303:0x074e, B:299:0x0731, B:295:0x0714, B:291:0x06f7, B:287:0x06dc, B:283:0x06bc] A[DONT_GENERATE, DONT_INLINE]
      0x06be: PHI (r13v31 java.lang.String) = 
      (r13v10 java.lang.String)
      (r13v11 java.lang.String)
      (r13v12 java.lang.String)
      (r13v13 java.lang.String)
      (r13v14 java.lang.String)
      (r13v15 java.lang.String)
      (r13v16 java.lang.String)
      (r13v17 java.lang.String)
      (r13v18 java.lang.String)
      (r13v19 java.lang.String)
      (r13v20 java.lang.String)
      (r13v21 java.lang.String)
      (r13v22 java.lang.String)
      (r13v23 java.lang.String)
      (r13v24 java.lang.String)
      (r13v25 java.lang.String)
      (r13v26 java.lang.String)
      (r13v27 java.lang.String)
      (r13v28 java.lang.String)
      (r13v29 java.lang.String)
      (r13v30 java.lang.String)
      (r13v32 java.lang.String)
     binds: [B:367:0x0916, B:363:0x08fc, B:359:0x08e0, B:355:0x08c6, B:351:0x08ac, B:347:0x0890, B:343:0x0874, B:339:0x0856, B:335:0x0838, B:331:0x081a, B:327:0x07fc, B:323:0x07e0, B:319:0x07c4, B:315:0x07a6, B:311:0x0788, B:307:0x076a, B:303:0x074e, B:299:0x0731, B:295:0x0714, B:291:0x06f7, B:287:0x06dc, B:283:0x06bc] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:549:0x0d63  */
    /* JADX WARN: Code duplicated, block: B:554:0x0d7a  */
    /* JADX WARN: Code duplicated, block: B:555:0x0d7c  */
    /* JADX WARN: Code duplicated, block: B:558:0x0d89  */
    /* JADX WARN: Code duplicated, block: B:559:0x0d9c  */
    /* JADX WARN: Code duplicated, block: B:561:0x0da2  */
    /* JADX WARN: Code duplicated, block: B:563:0x0da6  */
    /* JADX WARN: Code duplicated, block: B:565:0x0dab  */
    /* JADX WARN: Code duplicated, block: B:568:0x0db3  */
    /* JADX WARN: Code duplicated, block: B:570:0x0db8  */
    /* JADX WARN: Code duplicated, block: B:573:0x0dbf  */
    /* JADX WARN: Code duplicated, block: B:576:0x0dcf  */
    /* JADX WARN: Code duplicated, block: B:579:0x0dd5  */
    /* JADX WARN: Code duplicated, block: B:581:0x0ddd  */
    /* JADX WARN: Code duplicated, block: B:601:0x0ea7  */
    /* JADX WARN: Code duplicated, block: B:603:0x0ec9  */
    /* JADX WARN: Code duplicated, block: B:606:0x0ed2  */
    /* JADX WARN: Code duplicated, block: B:608:0x0eda  */
    /* JADX WARN: Code duplicated, block: B:609:0x0ee7  */
    /* JADX WARN: Code duplicated, block: B:612:0x0eec  */
    /* JADX WARN: Code duplicated, block: B:618:0x0f05  */
    /* JADX WARN: Code duplicated, block: B:619:0x0f07  */
    /* JADX WARN: Code duplicated, block: B:621:0x0f11  */
    /* JADX WARN: Code duplicated, block: B:622:0x0f14  */
    /* JADX WARN: Code duplicated, block: B:624:0x0f1e  */
    /* JADX WARN: Code duplicated, block: B:630:0x0f36  */
    /* JADX WARN: Code duplicated, block: B:632:0x0f50  */
    /* JADX WARN: Code duplicated, block: B:634:0x0f5c  */
    /* JADX WARN: Code duplicated, block: B:650:0x0f92  */
    /* JADX WARN: Code duplicated, block: B:655:0x0fa8  */
    /* JADX WARN: Code duplicated, block: B:656:0x0fab  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v102 */
    /* JADX WARN: Type inference failed for: r0v106 */
    /* JADX WARN: Type inference failed for: r0v109 */
    /* JADX WARN: Type inference failed for: r0v110 */
    /* JADX WARN: Type inference failed for: r0v112 */
    /* JADX WARN: Type inference failed for: r0v114 */
    /* JADX WARN: Type inference failed for: r0v115 */
    /* JADX WARN: Type inference failed for: r0v117 */
    /* JADX WARN: Type inference failed for: r0v118 */
    /* JADX WARN: Type inference failed for: r0v120 */
    /* JADX WARN: Type inference failed for: r0v122 */
    /* JADX WARN: Type inference failed for: r0v124 */
    /* JADX WARN: Type inference failed for: r0v125 */
    /* JADX WARN: Type inference failed for: r0v127 */
    /* JADX WARN: Type inference failed for: r0v129 */
    /* JADX WARN: Type inference failed for: r0v131 */
    /* JADX WARN: Type inference failed for: r0v132 */
    /* JADX WARN: Type inference failed for: r0v149 */
    /* JADX WARN: Type inference failed for: r0v150, types: [java.lang.RuntimeException] */
    /* JADX WARN: Type inference failed for: r0v153 */
    /* JADX WARN: Type inference failed for: r0v162 */
    /* JADX WARN: Type inference failed for: r0v219 */
    /* JADX WARN: Type inference failed for: r0v220 */
    /* JADX WARN: Type inference failed for: r0v249 */
    /* JADX WARN: Type inference failed for: r0v250 */
    /* JADX WARN: Type inference failed for: r0v251 */
    /* JADX WARN: Type inference failed for: r0v252 */
    /* JADX WARN: Type inference failed for: r0v253 */
    /* JADX WARN: Type inference failed for: r0v254 */
    /* JADX WARN: Type inference failed for: r0v255 */
    /* JADX WARN: Type inference failed for: r0v256 */
    /* JADX WARN: Type inference failed for: r0v257 */
    /* JADX WARN: Type inference failed for: r0v258 */
    /* JADX WARN: Type inference failed for: r0v259 */
    /* JADX WARN: Type inference failed for: r0v36 */
    /* JADX WARN: Type inference failed for: r0v37 */
    /* JADX WARN: Type inference failed for: r0v38 */
    /* JADX WARN: Type inference failed for: r0v39 */
    /* JADX WARN: Type inference failed for: r0v41 */
    /* JADX WARN: Type inference failed for: r0v44 */
    /* JADX WARN: Type inference failed for: r0v46 */
    /* JADX WARN: Type inference failed for: r0v48 */
    /* JADX WARN: Type inference failed for: r0v50 */
    /* JADX WARN: Type inference failed for: r0v53 */
    /* JADX WARN: Type inference failed for: r0v57 */
    /* JADX WARN: Type inference failed for: r0v61 */
    /* JADX WARN: Type inference failed for: r0v65 */
    /* JADX WARN: Type inference failed for: r0v69 */
    /* JADX WARN: Type inference failed for: r0v73 */
    /* JADX WARN: Type inference failed for: r0v76 */
    /* JADX WARN: Type inference failed for: r0v79 */
    /* JADX WARN: Type inference failed for: r0v83 */
    /* JADX WARN: Type inference failed for: r0v87 */
    /* JADX WARN: Type inference failed for: r0v91 */
    /* JADX WARN: Type inference failed for: r0v94 */
    /* JADX WARN: Type inference failed for: r0v98 */
    /* JADX WARN: Type inference failed for: r1v21 */
    /* JADX WARN: Type inference failed for: r1v22, types: [m1.e] */
    /* JADX WARN: Type inference failed for: r1v29 */
    /* JADX WARN: Type inference failed for: r1v34, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v11, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v183 */
    /* JADX WARN: Type inference failed for: r2v184 */
    /* JADX WARN: Type inference failed for: r2v185 */
    /* JADX WARN: Type inference failed for: r2v186 */
    /* JADX WARN: Type inference failed for: r2v187 */
    /* JADX WARN: Type inference failed for: r2v188 */
    /* JADX WARN: Type inference failed for: r2v189 */
    /* JADX WARN: Type inference failed for: r2v190 */
    /* JADX WARN: Type inference failed for: r2v191 */
    /* JADX WARN: Type inference failed for: r2v192 */
    /* JADX WARN: Type inference failed for: r2v193 */
    /* JADX WARN: Type inference failed for: r2v194 */
    /* JADX WARN: Type inference failed for: r2v195 */
    /* JADX WARN: Type inference failed for: r2v196 */
    /* JADX WARN: Type inference failed for: r2v197 */
    /* JADX WARN: Type inference failed for: r2v198 */
    /* JADX WARN: Type inference failed for: r2v199 */
    /* JADX WARN: Type inference failed for: r2v200 */
    /* JADX WARN: Type inference failed for: r2v201 */
    /* JADX WARN: Type inference failed for: r2v202 */
    /* JADX WARN: Type inference failed for: r2v203 */
    /* JADX WARN: Type inference failed for: r2v204 */
    /* JADX WARN: Type inference failed for: r2v45 */
    /* JADX WARN: Type inference failed for: r2v47 */
    /* JADX WARN: Type inference failed for: r2v49 */
    /* JADX WARN: Type inference failed for: r2v51 */
    /* JADX WARN: Type inference failed for: r2v53 */
    /* JADX WARN: Type inference failed for: r2v55 */
    /* JADX WARN: Type inference failed for: r2v57 */
    /* JADX WARN: Type inference failed for: r2v59 */
    /* JADX WARN: Type inference failed for: r2v6, types: [m1.e] */
    /* JADX WARN: Type inference failed for: r2v61 */
    /* JADX WARN: Type inference failed for: r2v63 */
    /* JADX WARN: Type inference failed for: r2v65 */
    /* JADX WARN: Type inference failed for: r2v67 */
    /* JADX WARN: Type inference failed for: r2v69 */
    /* JADX WARN: Type inference failed for: r2v71 */
    /* JADX WARN: Type inference failed for: r2v73 */
    /* JADX WARN: Type inference failed for: r2v75 */
    /* JADX WARN: Type inference failed for: r2v77 */
    /* JADX WARN: Type inference failed for: r2v79 */
    /* JADX WARN: Type inference failed for: r2v81 */
    /* JADX WARN: Type inference failed for: r2v83 */
    /* JADX WARN: Type inference failed for: r2v85 */
    /* JADX WARN: Type inference failed for: r2v87 */
    /* JADX WARN: Type inference failed for: r2v89, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r34v0 */
    /* JADX WARN: Type inference failed for: r34v1 */
    /* JADX WARN: Type inference failed for: r34v100 */
    /* JADX WARN: Type inference failed for: r34v101 */
    /* JADX WARN: Type inference failed for: r34v102 */
    /* JADX WARN: Type inference failed for: r34v103 */
    /* JADX WARN: Type inference failed for: r34v104 */
    /* JADX WARN: Type inference failed for: r34v105 */
    /* JADX WARN: Type inference failed for: r34v106 */
    /* JADX WARN: Type inference failed for: r34v107 */
    /* JADX WARN: Type inference failed for: r34v108 */
    /* JADX WARN: Type inference failed for: r34v109 */
    /* JADX WARN: Type inference failed for: r34v11 */
    /* JADX WARN: Type inference failed for: r34v110 */
    /* JADX WARN: Type inference failed for: r34v111 */
    /* JADX WARN: Type inference failed for: r34v112 */
    /* JADX WARN: Type inference failed for: r34v113 */
    /* JADX WARN: Type inference failed for: r34v114 */
    /* JADX WARN: Type inference failed for: r34v115 */
    /* JADX WARN: Type inference failed for: r34v116 */
    /* JADX WARN: Type inference failed for: r34v117 */
    /* JADX WARN: Type inference failed for: r34v118 */
    /* JADX WARN: Type inference failed for: r34v119 */
    /* JADX WARN: Type inference failed for: r34v12 */
    /* JADX WARN: Type inference failed for: r34v120 */
    /* JADX WARN: Type inference failed for: r34v121 */
    /* JADX WARN: Type inference failed for: r34v122 */
    /* JADX WARN: Type inference failed for: r34v123 */
    /* JADX WARN: Type inference failed for: r34v124 */
    /* JADX WARN: Type inference failed for: r34v125 */
    /* JADX WARN: Type inference failed for: r34v126 */
    /* JADX WARN: Type inference failed for: r34v127 */
    /* JADX WARN: Type inference failed for: r34v128 */
    /* JADX WARN: Type inference failed for: r34v129 */
    /* JADX WARN: Type inference failed for: r34v13 */
    /* JADX WARN: Type inference failed for: r34v130 */
    /* JADX WARN: Type inference failed for: r34v131 */
    /* JADX WARN: Type inference failed for: r34v132 */
    /* JADX WARN: Type inference failed for: r34v133 */
    /* JADX WARN: Type inference failed for: r34v134 */
    /* JADX WARN: Type inference failed for: r34v135 */
    /* JADX WARN: Type inference failed for: r34v136 */
    /* JADX WARN: Type inference failed for: r34v137 */
    /* JADX WARN: Type inference failed for: r34v138 */
    /* JADX WARN: Type inference failed for: r34v139 */
    /* JADX WARN: Type inference failed for: r34v14 */
    /* JADX WARN: Type inference failed for: r34v140 */
    /* JADX WARN: Type inference failed for: r34v141 */
    /* JADX WARN: Type inference failed for: r34v142 */
    /* JADX WARN: Type inference failed for: r34v143 */
    /* JADX WARN: Type inference failed for: r34v15 */
    /* JADX WARN: Type inference failed for: r34v16 */
    /* JADX WARN: Type inference failed for: r34v17 */
    /* JADX WARN: Type inference failed for: r34v18 */
    /* JADX WARN: Type inference failed for: r34v19 */
    /* JADX WARN: Type inference failed for: r34v2 */
    /* JADX WARN: Type inference failed for: r34v20 */
    /* JADX WARN: Type inference failed for: r34v21 */
    /* JADX WARN: Type inference failed for: r34v22 */
    /* JADX WARN: Type inference failed for: r34v23 */
    /* JADX WARN: Type inference failed for: r34v24 */
    /* JADX WARN: Type inference failed for: r34v25 */
    /* JADX WARN: Type inference failed for: r34v26 */
    /* JADX WARN: Type inference failed for: r34v27 */
    /* JADX WARN: Type inference failed for: r34v28 */
    /* JADX WARN: Type inference failed for: r34v29 */
    /* JADX WARN: Type inference failed for: r34v3 */
    /* JADX WARN: Type inference failed for: r34v30 */
    /* JADX WARN: Type inference failed for: r34v31 */
    /* JADX WARN: Type inference failed for: r34v34 */
    /* JADX WARN: Type inference failed for: r34v35 */
    /* JADX WARN: Type inference failed for: r34v36 */
    /* JADX WARN: Type inference failed for: r34v37 */
    /* JADX WARN: Type inference failed for: r34v38 */
    /* JADX WARN: Type inference failed for: r34v39 */
    /* JADX WARN: Type inference failed for: r34v4 */
    /* JADX WARN: Type inference failed for: r34v40 */
    /* JADX WARN: Type inference failed for: r34v41 */
    /* JADX WARN: Type inference failed for: r34v42 */
    /* JADX WARN: Type inference failed for: r34v43 */
    /* JADX WARN: Type inference failed for: r34v44 */
    /* JADX WARN: Type inference failed for: r34v45 */
    /* JADX WARN: Type inference failed for: r34v49 */
    /* JADX WARN: Type inference failed for: r34v5 */
    /* JADX WARN: Type inference failed for: r34v50 */
    /* JADX WARN: Type inference failed for: r34v51 */
    /* JADX WARN: Type inference failed for: r34v52 */
    /* JADX WARN: Type inference failed for: r34v53 */
    /* JADX WARN: Type inference failed for: r34v54 */
    /* JADX WARN: Type inference failed for: r34v55 */
    /* JADX WARN: Type inference failed for: r34v56 */
    /* JADX WARN: Type inference failed for: r34v57 */
    /* JADX WARN: Type inference failed for: r34v58 */
    /* JADX WARN: Type inference failed for: r34v59 */
    /* JADX WARN: Type inference failed for: r34v6, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r34v60 */
    /* JADX WARN: Type inference failed for: r34v61 */
    /* JADX WARN: Type inference failed for: r34v62 */
    /* JADX WARN: Type inference failed for: r34v63 */
    /* JADX WARN: Type inference failed for: r34v64 */
    /* JADX WARN: Type inference failed for: r34v65 */
    /* JADX WARN: Type inference failed for: r34v66 */
    /* JADX WARN: Type inference failed for: r34v67 */
    /* JADX WARN: Type inference failed for: r34v68 */
    /* JADX WARN: Type inference failed for: r34v69 */
    /* JADX WARN: Type inference failed for: r34v7 */
    /* JADX WARN: Type inference failed for: r34v70 */
    /* JADX WARN: Type inference failed for: r34v71 */
    /* JADX WARN: Type inference failed for: r34v72 */
    /* JADX WARN: Type inference failed for: r34v73 */
    /* JADX WARN: Type inference failed for: r34v74 */
    /* JADX WARN: Type inference failed for: r34v75 */
    /* JADX WARN: Type inference failed for: r34v76 */
    /* JADX WARN: Type inference failed for: r34v77 */
    /* JADX WARN: Type inference failed for: r34v78 */
    /* JADX WARN: Type inference failed for: r34v79 */
    /* JADX WARN: Type inference failed for: r34v8 */
    /* JADX WARN: Type inference failed for: r34v80 */
    /* JADX WARN: Type inference failed for: r34v81 */
    /* JADX WARN: Type inference failed for: r34v82 */
    /* JADX WARN: Type inference failed for: r34v83 */
    /* JADX WARN: Type inference failed for: r34v84 */
    /* JADX WARN: Type inference failed for: r34v85 */
    /* JADX WARN: Type inference failed for: r34v86 */
    /* JADX WARN: Type inference failed for: r34v87 */
    /* JADX WARN: Type inference failed for: r34v88 */
    /* JADX WARN: Type inference failed for: r34v89 */
    /* JADX WARN: Type inference failed for: r34v9 */
    /* JADX WARN: Type inference failed for: r34v90 */
    /* JADX WARN: Type inference failed for: r34v91 */
    /* JADX WARN: Type inference failed for: r34v92 */
    /* JADX WARN: Type inference failed for: r34v93 */
    /* JADX WARN: Type inference failed for: r34v94 */
    /* JADX WARN: Type inference failed for: r34v95 */
    /* JADX WARN: Type inference failed for: r34v96 */
    /* JADX WARN: Type inference failed for: r34v97 */
    /* JADX WARN: Type inference failed for: r34v98 */
    /* JADX WARN: Type inference failed for: r34v99 */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v18 */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v4, types: [W0.t] */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v6, types: [W0.t] */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r3v87 */
    /* JADX WARN: Type inference failed for: r3v88 */
    /* JADX WARN: Type inference failed for: r3v89 */
    /* JADX WARN: Type inference failed for: r3v9 */
    /* JADX WARN: Type inference failed for: r3v90 */
    /* JADX WARN: Type inference failed for: r3v91 */
    /* JADX WARN: Type inference failed for: r3v92 */
    /* JADX WARN: Type inference failed for: r3v93 */
    /* JADX WARN: Type inference failed for: r3v94 */
    /* JADX WARN: Type inference failed for: r3v95 */
    /* JADX WARN: Type inference failed for: r3v96 */
    /* JADX WARN: Type inference failed for: r3v97 */
    /* JADX WARN: Type inference failed for: r4v1, types: [m1.b] */
    /* JADX WARN: Type inference failed for: r5v13, types: [D0.U] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // W0.s
    public final int h(t tVar, w wVar) throws P {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        ?? r7;
        boolean z7;
        int i8;
        boolean z8;
        int iB;
        int iA;
        ?? r34;
        ?? r8;
        d dVar;
        w wVar2;
        ?? r35;
        ?? r9;
        ?? r36;
        ?? r37;
        ?? r38;
        String str7;
        String str8;
        byte b8;
        ?? r39;
        ?? r310;
        String str9;
        byte b9;
        String str10;
        String str11;
        String str12;
        ?? r10;
        ?? r11;
        ?? r12;
        String str13;
        List listSingletonList;
        int iA2;
        ?? r311;
        String str14;
        int i9;
        ?? r312;
        List list;
        RuntimeException runtimeException;
        Pair pair;
        String str15;
        int i10;
        List list2;
        String str16;
        ?? r313;
        ?? r314;
        ?? r315;
        List list3;
        List list4;
        ?? r316;
        List listX;
        int i11;
        C3135s c3135s;
        int i12;
        int i13;
        int i14;
        float f8;
        C3126i c3126i;
        String str17;
        int iIntValue;
        Map map;
        byte[] bArr;
        int i15;
        int i16;
        int i17;
        String str18;
        String str19;
        c cVar;
        r rVarA;
        ?? r317;
        ?? r318;
        String str20;
        String str21;
        ?? r319;
        ?? r320;
        ?? r321;
        ?? r322;
        F xVar;
        int i18;
        d dVar2 = this;
        String str22 = "S_TEXT/SSA";
        String str23 = "V_MPEGH/ISO/HEVC";
        String str24 = "S_TEXT/WEBVTT";
        String str25 = "S_TEXT/UTF8";
        String str26 = "V_MPEG2";
        String str27 = "A_EAC3";
        String str28 = "A_FLAC";
        dVar2.f27152I = false;
        boolean z9 = true;
        ?? r13 = "S_TEXT/ASS";
        while (z9 && !dVar2.f27152I) {
            ?? r14 = dVar2.f27170a;
            H1.j(r14.f27081d);
            ?? r15 = r13;
            while (true) {
                ArrayDeque arrayDeque = r14.f27079b;
                a aVar = (a) arrayDeque.peek();
                String str29 = str26;
                if (aVar == null || tVar.r() < aVar.f27077b) {
                    ?? r323 = r15;
                    str22 = str22;
                    str = str28;
                    str2 = str23;
                    str3 = str25;
                    str4 = str27;
                    str5 = str29;
                    ?? r16 = 0;
                    str6 = str24;
                    if (r14.f27082e == 0) {
                        ?? r17 = tVar;
                        int i19 = 4;
                        long jC = r14.f27080c.c(r17, true, false, 4);
                        if (jC == -2) {
                            tVar.m();
                            while (true) {
                                byte[] bArr2 = r14.f27078a;
                                r17.c(r16, bArr2, i19);
                                iB = e.b(bArr2[r16]);
                                if (iB != -1 && iB <= i19) {
                                    iA = (int) e.a(bArr2, iB, r16);
                                    ((d) r14.f27081d.f1868H).getClass();
                                    if (iA == 357149030 || iA == 524531317 || iA == 475249515 || iA == 374648427) {
                                    }
                                }
                                r17.n(1);
                                r16 = 0;
                                i19 = 4;
                            }
                            r17.n(iB);
                            jC = iA;
                        }
                        z7 = true;
                        if (jC == -1) {
                            z8 = false;
                            z9 = false;
                            r8 = r17;
                            r34 = r323;
                        } else {
                            r14.f27083f = (int) jC;
                            r14.f27082e = 1;
                            r7 = r17;
                        }
                    } else {
                        r7 = tVar;
                        z7 = true;
                    }
                    if (r14.f27082e == z7) {
                        r14.f27084g = r14.f27080c.c(r7, false, z7, 8);
                        i8 = 2;
                        r14.f27082e = 2;
                    } else {
                        i8 = 2;
                    }
                    int iG = r14.f27081d.G(r14.f27083f);
                    if (iG == 0) {
                        r7.n((int) r14.f27084g);
                        r14.f27082e = 0;
                        str26 = str5;
                        r15 = r323;
                        str22 = str22;
                        str23 = str2;
                        str27 = str4;
                        str24 = str6;
                        str25 = str3;
                        str28 = str;
                    } else if (iG == z7) {
                        long jR = tVar.r();
                        arrayDeque.push(new a(r14.f27083f, jR + r14.f27084g));
                        r14.f27081d.L(r14.f27083f, jR, r14.f27084g);
                        z8 = false;
                        r14.f27082e = 0;
                        r9 = r7;
                        r35 = r323;
                    } else if (iG == i8) {
                        long j8 = r14.f27084g;
                        if (j8 > 8) {
                            throw P.a("Invalid integer size: " + r14.f27084g, null);
                        }
                        r14.f27081d.H(r14.f27083f, r14.b(r7, (int) j8));
                        z8 = false;
                        r14.f27082e = 0;
                        r9 = r7;
                        r35 = r323;
                    } else if (iG == 3) {
                        z8 = false;
                        long j9 = r14.f27084g;
                        if (j9 > 2147483647L) {
                            throw P.a("String element size: " + r14.f27084g, null);
                        }
                        r14.f27081d.M(r14.f27083f, b.c(r7, (int) j9));
                        r14.f27082e = 0;
                        r9 = r7;
                        r35 = r323;
                    } else if (iG == 4) {
                        r14.f27081d.D(r14.f27083f, (int) r14.f27084g, r7);
                        z8 = false;
                        r14.f27082e = 0;
                        r9 = r7;
                        r35 = r323;
                    } else {
                        if (iG != 5) {
                            throw P.a("Invalid element type " + iG, null);
                        }
                        long j10 = r14.f27084g;
                        if (j10 != 4 && j10 != 8) {
                            throw P.a("Invalid float size: " + r14.f27084g, null);
                        }
                        r14.f27081d.E(r14.f27083f, r14.a(r7, (int) j10));
                        z8 = false;
                        r14.f27082e = 0;
                        r9 = r7;
                        r35 = r323;
                    }
                } else {
                    U u7 = r14.f27081d;
                    int i20 = ((a) arrayDeque.pop()).f27076a;
                    d dVar3 = (d) u7.f1868H;
                    H1.j(dVar3.f27179e0);
                    SparseArray sparseArray = dVar3.f27174c;
                    if (i20 == 160) {
                        r36 = r15;
                        str22 = str22;
                        str = str28;
                        str2 = str23;
                        str3 = str25;
                        str4 = str27;
                        str5 = str29;
                        str6 = str24;
                        if (dVar3.f27153J != 2) {
                            r37 = r36;
                            r38 = r37;
                        } else {
                            c cVar2 = (c) sparseArray.get(dVar3.f27159P);
                            cVar2.f27110Z.getClass();
                            if (dVar3.f27164U > 0 && "A_OPUS".equals(cVar2.f27114c)) {
                                r37 = r36;
                                byte[] bArrArray = ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(dVar3.f27164U).array();
                                E e8 = dVar3.f27190p;
                                e8.getClass();
                                e8.J(bArrArray.length, bArrArray);
                            }
                            r37 = r36;
                            r37 = r36;
                            int i21 = 0;
                            for (int i22 = 0; i22 < dVar3.f27157N; i22++) {
                                i21 += dVar3.f27158O[i22];
                            }
                            for (int i23 = 0; i23 < dVar3.f27157N; i23++) {
                                long j11 = dVar3.f27154K + ((long) ((cVar2.f27117f * i23) / 1000));
                                int i24 = dVar3.f27161R;
                                if (i23 == 0 && !dVar3.f27163T) {
                                    i24 |= 1;
                                }
                                int i25 = dVar3.f27158O[i23];
                                i21 -= i25;
                                dVar3.e(cVar2, j11, i24, i25, i21);
                            }
                            dVar3.f27153J = 0;
                            r38 = r36;
                        }
                    } else if (i20 != 174) {
                        if (i20 == 19899) {
                            r318 = r15;
                            str22 = str22;
                            str = str28;
                            str20 = str24;
                            str21 = str23;
                            int i26 = dVar3.f27200z;
                            if (i26 != -1) {
                                long j12 = dVar3.f27144A;
                                if (j12 != -1) {
                                    if (i26 == 475249515) {
                                        r319 = r318;
                                        dVar3.f27146C = j12;
                                        r319 = r318;
                                    }
                                }
                            }
                            throw P.a("Mandatory element SeekID or SeekPosition not found", null);
                        }
                        if (i20 == 25152) {
                            r320 = r15;
                            str22 = str22;
                            str = str28;
                            str20 = str24;
                            str21 = str23;
                            dVar3.c(i20);
                            c cVar3 = dVar3.f27198x;
                            if (cVar3.f27120i) {
                                K k8 = cVar3.f27122k;
                                if (k8 == null) {
                                    r319 = r320;
                                    throw P.a("Encrypted Track found but ContentEncKeyID was not found", null);
                                }
                                r319 = r320;
                                cVar3.f27124m = new C3131n(null, true, new C3130m(AbstractC3124g.f26852a, null, "video/webm", k8.f7337b));
                                r319 = r320;
                            }
                        } else if (i20 == 28032) {
                            r321 = r15;
                            str22 = str22;
                            str = str28;
                            str20 = str24;
                            str21 = str23;
                            dVar3.c(i20);
                            c cVar4 = dVar3.f27198x;
                            if (cVar4.f27120i && cVar4.f27121j != null) {
                                r319 = r321;
                                r319 = r321;
                                throw P.a("Combining encryption and compression is not supported", null);
                            }
                        } else if (i20 == 357149030) {
                            ?? r324 = r15;
                            str22 = str22;
                            str = str28;
                            str20 = str24;
                            str21 = str23;
                            if (dVar3.f27194t == -9223372036854775807L) {
                                dVar3.f27194t = 1000000L;
                            }
                            long j13 = dVar3.f27195u;
                            r319 = r324;
                            if (j13 != -9223372036854775807L) {
                                dVar3.f27196v = dVar3.m(j13);
                                r319 = r324;
                            }
                        } else if (i20 == 374648427) {
                            r319 = r15;
                            str22 = str22;
                            str = str28;
                            str20 = str24;
                            str21 = str23;
                            if (sparseArray.size() == 0) {
                                throw P.a("No valid tracks were found", null);
                            }
                            dVar3.f27179e0.j();
                        } else if (i20 != 475249515) {
                            r38 = r15;
                            str22 = str22;
                            str = str28;
                            str2 = str23;
                            str3 = str25;
                            str4 = str27;
                            str5 = str29;
                            str6 = str24;
                        } else {
                            if (dVar3.f27199y) {
                                r322 = r15;
                                str22 = str22;
                                str = str28;
                                str20 = str24;
                                str21 = str23;
                            } else {
                                u uVar = dVar3.f27179e0;
                                y yVar = dVar3.f27149F;
                                y yVar2 = dVar3.f27150G;
                                if (dVar3.f27193s == -1 || dVar3.f27196v == -9223372036854775807L || yVar == null || (i18 = yVar.f28127a) == 0 || yVar2 == null || yVar2.f28127a != i18) {
                                    str = str28;
                                    str20 = str24;
                                    str21 = str23;
                                    xVar = new W0.x(dVar3.f27196v);
                                } else {
                                    int[] iArrCopyOf = new int[i18];
                                    long[] jArrCopyOf = new long[i18];
                                    long[] jArrCopyOf2 = new long[i18];
                                    long[] jArrCopyOf3 = new long[i18];
                                    int i27 = 0;
                                    while (i27 < i18) {
                                        jArrCopyOf3[i27] = yVar.c(i27);
                                        jArrCopyOf[i27] = yVar2.c(i27) + dVar3.f27193s;
                                        i27++;
                                        yVar = yVar;
                                        str24 = str24;
                                    }
                                    str20 = str24;
                                    int i28 = 0;
                                    while (true) {
                                        int i29 = i18 - 1;
                                        if (i28 < i29) {
                                            int i30 = i28 + 1;
                                            iArrCopyOf[i28] = (int) (jArrCopyOf[i30] - jArrCopyOf[i28]);
                                            jArrCopyOf2[i28] = jArrCopyOf3[i30] - jArrCopyOf3[i28];
                                            i18 = i18;
                                            i28 = i30;
                                        } else {
                                            int i31 = i29;
                                            while (true) {
                                                if (i31 > 0) {
                                                    str = str28;
                                                    str21 = str23;
                                                    if (jArrCopyOf3[i31] > dVar3.f27196v) {
                                                        i31--;
                                                        str23 = str21;
                                                        str28 = str;
                                                    }
                                                } else {
                                                    str = str28;
                                                    str21 = str23;
                                                }
                                            }
                                            iArrCopyOf[i31] = (int) ((dVar3.f27193s + dVar3.f27192r) - jArrCopyOf[i31]);
                                            jArrCopyOf2[i31] = dVar3.f27196v - jArrCopyOf3[i31];
                                            if (i31 < i29) {
                                                x.f("MatroskaExtractor", "Discarding trailing cue points with timestamps greater than total duration");
                                                int i32 = i31 + 1;
                                                iArrCopyOf = Arrays.copyOf(iArrCopyOf, i32);
                                                jArrCopyOf = Arrays.copyOf(jArrCopyOf, i32);
                                                jArrCopyOf2 = Arrays.copyOf(jArrCopyOf2, i32);
                                                jArrCopyOf3 = Arrays.copyOf(jArrCopyOf3, i32);
                                            }
                                            xVar = new C0379l(iArrCopyOf, jArrCopyOf, jArrCopyOf2, jArrCopyOf3);
                                        }
                                    }
                                }
                                uVar.r(xVar);
                                dVar3.f27199y = true;
                                r322 = r15;
                            }
                            dVar3.f27149F = null;
                            dVar3.f27150G = null;
                            r319 = r322;
                        }
                        r319 = r318;
                        r319 = r320;
                        r319 = r321;
                        r319 = r321;
                        r319 = r321;
                        str3 = str25;
                        str4 = str27;
                        str5 = str29;
                        str6 = str20;
                        str2 = str21;
                        r38 = r319;
                    } else {
                        ?? r325 = r15;
                        str22 = str22;
                        String str30 = str28;
                        String str31 = str24;
                        String str32 = str23;
                        c cVar5 = dVar3.f27198x;
                        H1.j(cVar5);
                        ?? r18 = cVar5.f27114c;
                        if (r18 == 0) {
                            throw P.a("CodecId is missing in TrackEntry element", null);
                        }
                        switch (r18.hashCode()) {
                            case -2095576542:
                                str = str30;
                                str7 = str27;
                                str5 = str29;
                                str8 = str25;
                                str6 = str31;
                                str2 = str32;
                                r310 = r325;
                                if (r18.equals("V_MPEG4/ISO/AP")) {
                                    b8 = 0;
                                    r39 = r325;
                                } else {
                                    b8 = -1;
                                    r39 = r310;
                                }
                                break;
                            case -2095575984:
                                str = str30;
                                str7 = str27;
                                str5 = str29;
                                str8 = str25;
                                str6 = str31;
                                str2 = str32;
                                r310 = r325;
                                if (r18.equals("V_MPEG4/ISO/SP")) {
                                    b8 = 1;
                                    r39 = r325;
                                } else {
                                    b8 = -1;
                                    r39 = r310;
                                }
                                break;
                            case -1985379776:
                                str = str30;
                                str7 = str27;
                                str5 = str29;
                                str8 = str25;
                                str6 = str31;
                                str2 = str32;
                                r310 = r325;
                                if (r18.equals("A_MS/ACM")) {
                                    b8 = 2;
                                    r39 = r325;
                                } else {
                                    b8 = -1;
                                    r39 = r310;
                                }
                                break;
                            case -1784763192:
                                str = str30;
                                str7 = str27;
                                str5 = str29;
                                str8 = str25;
                                str6 = str31;
                                str2 = str32;
                                r310 = r325;
                                if (r18.equals("A_TRUEHD")) {
                                    b8 = 3;
                                    r39 = r325;
                                } else {
                                    b8 = -1;
                                    r39 = r310;
                                }
                                break;
                            case -1730367663:
                                str = str30;
                                str7 = str27;
                                str5 = str29;
                                str8 = str25;
                                str6 = str31;
                                str2 = str32;
                                r310 = r325;
                                if (r18.equals("A_VORBIS")) {
                                    b8 = 4;
                                    r39 = r325;
                                } else {
                                    b8 = -1;
                                    r39 = r310;
                                }
                                break;
                            case -1482641358:
                                str = str30;
                                str7 = str27;
                                str5 = str29;
                                str8 = str25;
                                str6 = str31;
                                str2 = str32;
                                r310 = r325;
                                if (r18.equals("A_MPEG/L2")) {
                                    b8 = 5;
                                    r39 = r325;
                                } else {
                                    b8 = -1;
                                    r39 = r310;
                                }
                                break;
                            case -1482641357:
                                str = str30;
                                str7 = str27;
                                str5 = str29;
                                str8 = str25;
                                str6 = str31;
                                str2 = str32;
                                r310 = r325;
                                if (r18.equals("A_MPEG/L3")) {
                                    b8 = 6;
                                    r39 = r325;
                                } else {
                                    b8 = -1;
                                    r39 = r310;
                                }
                                break;
                            case -1373388978:
                                str = str30;
                                str7 = str27;
                                str5 = str29;
                                str8 = str25;
                                str6 = str31;
                                str2 = str32;
                                r310 = r325;
                                if (r18.equals("V_MS/VFW/FOURCC")) {
                                    b8 = 7;
                                    r39 = r325;
                                } else {
                                    b8 = -1;
                                    r39 = r310;
                                }
                                break;
                            case -933872740:
                                str = str30;
                                str7 = str27;
                                str5 = str29;
                                str8 = str25;
                                str6 = str31;
                                str2 = str32;
                                r310 = r325;
                                if (r18.equals("S_DVBSUB")) {
                                    b8 = 8;
                                    r39 = r325;
                                } else {
                                    b8 = -1;
                                    r39 = r310;
                                }
                                break;
                            case -538363189:
                                str = str30;
                                str7 = str27;
                                str5 = str29;
                                str8 = str25;
                                str6 = str31;
                                str2 = str32;
                                r310 = r325;
                                if (r18.equals("V_MPEG4/ISO/ASP")) {
                                    b8 = 9;
                                    r39 = r325;
                                } else {
                                    b8 = -1;
                                    r39 = r310;
                                }
                                break;
                            case -538363109:
                                str = str30;
                                str7 = str27;
                                str5 = str29;
                                str8 = str25;
                                str6 = str31;
                                str2 = str32;
                                r310 = r325;
                                if (r18.equals("V_MPEG4/ISO/AVC")) {
                                    b8 = 10;
                                    r39 = r325;
                                } else {
                                    b8 = -1;
                                    r39 = r310;
                                }
                                break;
                            case -425012669:
                                str = str30;
                                str7 = str27;
                                str5 = str29;
                                str8 = str25;
                                str6 = str31;
                                str2 = str32;
                                r310 = r325;
                                if (r18.equals("S_VOBSUB")) {
                                    b8 = MqttWireMessage.MESSAGE_TYPE_UNSUBACK;
                                    r39 = r325;
                                } else {
                                    b8 = -1;
                                    r39 = r310;
                                }
                                break;
                            case -356037306:
                                str = str30;
                                str7 = str27;
                                str5 = str29;
                                str8 = str25;
                                str6 = str31;
                                str2 = str32;
                                r310 = r325;
                                if (r18.equals("A_DTS/LOSSLESS")) {
                                    b8 = MqttWireMessage.MESSAGE_TYPE_PINGREQ;
                                    r39 = r325;
                                } else {
                                    b8 = -1;
                                    r39 = r310;
                                }
                                break;
                            case 62923557:
                                str = str30;
                                str7 = str27;
                                str5 = str29;
                                str8 = str25;
                                str6 = str31;
                                str2 = str32;
                                r310 = r325;
                                if (r18.equals("A_AAC")) {
                                    b8 = MqttWireMessage.MESSAGE_TYPE_PINGRESP;
                                    r39 = r325;
                                } else {
                                    b8 = -1;
                                    r39 = r310;
                                }
                                break;
                            case 62923603:
                                str = str30;
                                str7 = str27;
                                str5 = str29;
                                str8 = str25;
                                str6 = str31;
                                str2 = str32;
                                r310 = r325;
                                if (r18.equals("A_AC3")) {
                                    b8 = MqttWireMessage.MESSAGE_TYPE_DISCONNECT;
                                    r39 = r325;
                                } else {
                                    b8 = -1;
                                    r39 = r310;
                                }
                                break;
                            case 62927045:
                                str = str30;
                                str7 = str27;
                                str5 = str29;
                                str8 = str25;
                                str6 = str31;
                                str2 = str32;
                                r310 = r325;
                                if (r18.equals("A_DTS")) {
                                    b8 = 15;
                                    r39 = r325;
                                } else {
                                    b8 = -1;
                                    r39 = r310;
                                }
                                break;
                            case 82318131:
                                str = str30;
                                str7 = str27;
                                str5 = str29;
                                str8 = str25;
                                str6 = str31;
                                str2 = str32;
                                r310 = r325;
                                if (r18.equals("V_AV1")) {
                                    b8 = 16;
                                    r39 = r325;
                                } else {
                                    b8 = -1;
                                    r39 = r310;
                                }
                                break;
                            case 82338133:
                                str = str30;
                                str7 = str27;
                                str5 = str29;
                                str8 = str25;
                                str6 = str31;
                                str2 = str32;
                                r310 = r325;
                                if (r18.equals("V_VP8")) {
                                    b8 = 17;
                                    r39 = r325;
                                } else {
                                    b8 = -1;
                                    r39 = r310;
                                }
                                break;
                            case 82338134:
                                str = str30;
                                str7 = str27;
                                str5 = str29;
                                str8 = str25;
                                str6 = str31;
                                str2 = str32;
                                r310 = r325;
                                if (r18.equals("V_VP9")) {
                                    b8 = 18;
                                    r39 = r325;
                                } else {
                                    b8 = -1;
                                    r39 = r310;
                                }
                                break;
                            case 99146302:
                                str = str30;
                                str7 = str27;
                                str5 = str29;
                                str8 = str25;
                                str6 = str31;
                                str2 = str32;
                                r310 = r325;
                                if (r18.equals("S_HDMV/PGS")) {
                                    b8 = 19;
                                    r39 = r325;
                                } else {
                                    b8 = -1;
                                    r39 = r310;
                                }
                                break;
                            case 444813526:
                                str = str30;
                                str7 = str27;
                                str5 = str29;
                                str8 = str25;
                                str6 = str31;
                                str2 = str32;
                                r310 = r325;
                                if (r18.equals("V_THEORA")) {
                                    b8 = 20;
                                    r39 = r325;
                                } else {
                                    b8 = -1;
                                    r39 = r310;
                                }
                                break;
                            case 542569478:
                                str = str30;
                                str7 = str27;
                                str5 = str29;
                                str8 = str25;
                                str6 = str31;
                                str2 = str32;
                                r310 = r325;
                                if (r18.equals("A_DTS/EXPRESS")) {
                                    b8 = 21;
                                    r39 = r325;
                                } else {
                                    b8 = -1;
                                    r39 = r310;
                                }
                                break;
                            case 635596514:
                                str = str30;
                                str7 = str27;
                                str5 = str29;
                                str8 = str25;
                                str6 = str31;
                                str2 = str32;
                                r310 = r325;
                                if (r18.equals("A_PCM/FLOAT/IEEE")) {
                                    b8 = 22;
                                    r39 = r325;
                                } else {
                                    b8 = -1;
                                    r39 = r310;
                                }
                                break;
                            case 725948237:
                                str = str30;
                                str7 = str27;
                                str5 = str29;
                                str8 = str25;
                                str6 = str31;
                                str2 = str32;
                                r310 = r325;
                                if (r18.equals("A_PCM/INT/BIG")) {
                                    b8 = 23;
                                    r39 = r325;
                                } else {
                                    b8 = -1;
                                    r39 = r310;
                                }
                                break;
                            case 725957860:
                                str = str30;
                                str7 = str27;
                                str5 = str29;
                                str8 = str25;
                                str6 = str31;
                                str2 = str32;
                                r310 = r325;
                                if (r18.equals("A_PCM/INT/LIT")) {
                                    b8 = 24;
                                    r39 = r325;
                                } else {
                                    b8 = -1;
                                    r39 = r310;
                                }
                                break;
                            case 738597099:
                                str = str30;
                                str7 = str27;
                                str5 = str29;
                                str8 = str25;
                                str6 = str31;
                                str2 = str32;
                                if (r18.equals(r325)) {
                                    r39 = r325;
                                    b8 = 25;
                                } else {
                                    r310 = r325;
                                    b8 = -1;
                                    r39 = r310;
                                }
                                break;
                            case 738614379:
                                str = str30;
                                str7 = str27;
                                str5 = str29;
                                str8 = str25;
                                str6 = str31;
                                str2 = str32;
                                r310 = r325;
                                if (r18.equals(str22)) {
                                    b8 = 26;
                                    r39 = r325;
                                } else {
                                    b8 = -1;
                                    r39 = r310;
                                }
                                break;
                            case 855502857:
                                str = str30;
                                str7 = str27;
                                str5 = str29;
                                str8 = str25;
                                str6 = str31;
                                if (r18.equals(str32)) {
                                    str2 = str32;
                                    b8 = 27;
                                    r39 = r325;
                                } else {
                                    str2 = str32;
                                    r310 = r325;
                                    b8 = -1;
                                    r39 = r310;
                                }
                                break;
                            case 1045209816:
                                str = str30;
                                str7 = str27;
                                str5 = str29;
                                str8 = str25;
                                str6 = str31;
                                if (r18.equals(str6)) {
                                    str2 = str32;
                                    b8 = 28;
                                    r39 = r325;
                                } else {
                                    str2 = str32;
                                    r310 = r325;
                                    b8 = -1;
                                    r39 = r310;
                                }
                                break;
                            case 1422270023:
                                str = str30;
                                str7 = str27;
                                str5 = str29;
                                if (r18.equals(str25)) {
                                    str8 = str25;
                                    str6 = str31;
                                    str2 = str32;
                                    b8 = 29;
                                    r39 = r325;
                                } else {
                                    str8 = str25;
                                    str6 = str31;
                                    str2 = str32;
                                    r310 = r325;
                                    b8 = -1;
                                    r39 = r310;
                                }
                                break;
                            case 1809237540:
                                str = str30;
                                str7 = str27;
                                str5 = str29;
                                if (r18.equals(str5)) {
                                    str8 = str25;
                                    str6 = str31;
                                    str2 = str32;
                                    b8 = 30;
                                    r39 = r325;
                                } else {
                                    str8 = str25;
                                    str6 = str31;
                                    str2 = str32;
                                    r310 = r325;
                                    b8 = -1;
                                    r39 = r310;
                                }
                                break;
                            case 1950749482:
                                str = str30;
                                if (r18.equals(str27)) {
                                    str7 = str27;
                                    str5 = str29;
                                    str8 = str25;
                                    str6 = str31;
                                    str2 = str32;
                                    b8 = 31;
                                    r39 = r325;
                                } else {
                                    str7 = str27;
                                    str5 = str29;
                                    str8 = str25;
                                    str6 = str31;
                                    str2 = str32;
                                    r310 = r325;
                                    b8 = -1;
                                    r39 = r310;
                                }
                                break;
                            case 1950789798:
                                str = str30;
                                if (r18.equals(str)) {
                                    str7 = str27;
                                    str5 = str29;
                                    str8 = str25;
                                    str6 = str31;
                                    str2 = str32;
                                    b8 = 32;
                                    r39 = r325;
                                } else {
                                    str7 = str27;
                                    str5 = str29;
                                    str8 = str25;
                                    str6 = str31;
                                    str2 = str32;
                                    r310 = r325;
                                    b8 = -1;
                                    r39 = r310;
                                }
                                break;
                            case 1951062397:
                                if (r18.equals("A_OPUS")) {
                                    str = str30;
                                    str7 = str27;
                                    str5 = str29;
                                    str8 = str25;
                                    str6 = str31;
                                    str2 = str32;
                                    b8 = 33;
                                    r39 = r325;
                                    break;
                                }
                            default:
                                str = str30;
                                str7 = str27;
                                str5 = str29;
                                str8 = str25;
                                str6 = str31;
                                str2 = str32;
                                r310 = r325;
                                b8 = -1;
                                r39 = r310;
                                break;
                        }
                        switch (b8) {
                            case 0:
                            case 1:
                            case 2:
                            case 3:
                            case 4:
                            case 5:
                            case 6:
                            case 7:
                            case 8:
                            case 9:
                            case 10:
                            case 11:
                            case 12:
                            case 13:
                            case 14:
                            case 15:
                            case 16:
                            case 17:
                            case 18:
                            case 19:
                            case 20:
                            case 21:
                            case 22:
                            case 23:
                            case 24:
                            case 25:
                            case Service.BILLING_FIELD_NUMBER /* 26 */:
                            case 27:
                            case Service.MONITORING_FIELD_NUMBER /* 28 */:
                            case Service.SYSTEM_PARAMETERS_FIELD_NUMBER /* 29 */:
                            case MqttConnectOptions.CONNECTION_TIMEOUT_DEFAULT /* 30 */:
                            case DescriptorProtos$FileOptions.CC_ENABLE_ARENAS_FIELD_NUMBER /* 31 */:
                            case 32:
                            case 33:
                                u uVar2 = dVar3.f27179e0;
                                int i33 = cVar5.f27115d;
                                switch (r18.hashCode()) {
                                    case -2095576542:
                                        str3 = str8;
                                        ?? r19 = r39;
                                        str22 = str22;
                                        str2 = str2;
                                        str9 = str7;
                                        r12 = r19;
                                        if (r18.equals("V_MPEG4/ISO/AP")) {
                                            b9 = 0;
                                            r10 = r19;
                                        } else {
                                            b9 = -1;
                                            r10 = r12;
                                        }
                                        break;
                                    case -2095575984:
                                        ?? r20 = r39;
                                        str22 = str22;
                                        str2 = str2;
                                        str9 = str7;
                                        str3 = str8;
                                        r12 = r20;
                                        if (r18.equals("V_MPEG4/ISO/SP")) {
                                            b9 = 1;
                                            r10 = r20;
                                        } else {
                                            b9 = -1;
                                            r10 = r12;
                                        }
                                        break;
                                    case -1985379776:
                                        ?? r21 = r39;
                                        str22 = str22;
                                        str9 = str7;
                                        str3 = str8;
                                        str2 = str2;
                                        r12 = r21;
                                        if (r18.equals("A_MS/ACM")) {
                                            b9 = 2;
                                            r10 = r21;
                                        } else {
                                            b9 = -1;
                                            r10 = r12;
                                        }
                                        break;
                                    case -1784763192:
                                        ?? r22 = r39;
                                        str9 = str7;
                                        str3 = str8;
                                        str2 = str2;
                                        str22 = str22;
                                        r12 = r22;
                                        if (r18.equals("A_TRUEHD")) {
                                            b9 = 3;
                                            r10 = r22;
                                        } else {
                                            b9 = -1;
                                            r10 = r12;
                                        }
                                        break;
                                    case -1730367663:
                                        str10 = str8;
                                        ?? r23 = r39;
                                        str11 = str22;
                                        str12 = str2;
                                        str9 = str7;
                                        r11 = r23;
                                        if (r18.equals("A_VORBIS")) {
                                            r10 = r23;
                                            str3 = str10;
                                            str2 = str12;
                                            str22 = str11;
                                            b9 = 4;
                                        } else {
                                            r12 = r11;
                                            str3 = str10;
                                            str2 = str12;
                                            str22 = str11;
                                            b9 = -1;
                                            r10 = r12;
                                        }
                                        break;
                                    case -1482641358:
                                        str10 = str8;
                                        ?? r24 = r39;
                                        str11 = str22;
                                        str12 = str2;
                                        str9 = str7;
                                        r11 = r24;
                                        if (r18.equals("A_MPEG/L2")) {
                                            r10 = r24;
                                            str3 = str10;
                                            str2 = str12;
                                            str22 = str11;
                                            b9 = 5;
                                        } else {
                                            r12 = r11;
                                            str3 = str10;
                                            str2 = str12;
                                            str22 = str11;
                                            b9 = -1;
                                            r10 = r12;
                                        }
                                        break;
                                    case -1482641357:
                                        str10 = str8;
                                        ?? r25 = r39;
                                        str11 = str22;
                                        str12 = str2;
                                        str9 = str7;
                                        r11 = r25;
                                        if (r18.equals("A_MPEG/L3")) {
                                            r10 = r25;
                                            str3 = str10;
                                            str2 = str12;
                                            str22 = str11;
                                            b9 = 6;
                                        } else {
                                            r12 = r11;
                                            str3 = str10;
                                            str2 = str12;
                                            str22 = str11;
                                            b9 = -1;
                                            r10 = r12;
                                        }
                                        break;
                                    case -1373388978:
                                        str10 = str8;
                                        ?? r26 = r39;
                                        str11 = str22;
                                        str12 = str2;
                                        str9 = str7;
                                        r11 = r26;
                                        if (r18.equals("V_MS/VFW/FOURCC")) {
                                            r10 = r26;
                                            str3 = str10;
                                            str2 = str12;
                                            str22 = str11;
                                            b9 = 7;
                                        } else {
                                            r12 = r11;
                                            str3 = str10;
                                            str2 = str12;
                                            str22 = str11;
                                            b9 = -1;
                                            r10 = r12;
                                        }
                                        break;
                                    case -933872740:
                                        str10 = str8;
                                        ?? r27 = r39;
                                        str11 = str22;
                                        str12 = str2;
                                        str9 = str7;
                                        r11 = r27;
                                        if (r18.equals("S_DVBSUB")) {
                                            r10 = r27;
                                            str3 = str10;
                                            str2 = str12;
                                            str22 = str11;
                                            b9 = 8;
                                        } else {
                                            r12 = r11;
                                            str3 = str10;
                                            str2 = str12;
                                            str22 = str11;
                                            b9 = -1;
                                            r10 = r12;
                                        }
                                        break;
                                    case -538363189:
                                        str10 = str8;
                                        ?? r28 = r39;
                                        str11 = str22;
                                        str12 = str2;
                                        str9 = str7;
                                        r11 = r28;
                                        if (r18.equals("V_MPEG4/ISO/ASP")) {
                                            r10 = r28;
                                            str3 = str10;
                                            str2 = str12;
                                            str22 = str11;
                                            b9 = 9;
                                        } else {
                                            r12 = r11;
                                            str3 = str10;
                                            str2 = str12;
                                            str22 = str11;
                                            b9 = -1;
                                            r10 = r12;
                                        }
                                        break;
                                    case -538363109:
                                        str10 = str8;
                                        ?? r29 = r39;
                                        str11 = str22;
                                        str12 = str2;
                                        str9 = str7;
                                        r11 = r29;
                                        if (r18.equals("V_MPEG4/ISO/AVC")) {
                                            r10 = r29;
                                            str3 = str10;
                                            str2 = str12;
                                            str22 = str11;
                                            b9 = 10;
                                        } else {
                                            r12 = r11;
                                            str3 = str10;
                                            str2 = str12;
                                            str22 = str11;
                                            b9 = -1;
                                            r10 = r12;
                                        }
                                        break;
                                    case -425012669:
                                        str10 = str8;
                                        ?? r30 = r39;
                                        str11 = str22;
                                        str12 = str2;
                                        str9 = str7;
                                        r11 = r30;
                                        if (r18.equals("S_VOBSUB")) {
                                            r10 = r30;
                                            str3 = str10;
                                            str2 = str12;
                                            str22 = str11;
                                            b9 = MqttWireMessage.MESSAGE_TYPE_UNSUBACK;
                                        } else {
                                            r12 = r11;
                                            str3 = str10;
                                            str2 = str12;
                                            str22 = str11;
                                            b9 = -1;
                                            r10 = r12;
                                        }
                                        break;
                                    case -356037306:
                                        str10 = str8;
                                        ?? r31 = r39;
                                        str11 = str22;
                                        str12 = str2;
                                        str9 = str7;
                                        r11 = r31;
                                        if (r18.equals("A_DTS/LOSSLESS")) {
                                            r10 = r31;
                                            str3 = str10;
                                            str2 = str12;
                                            str22 = str11;
                                            b9 = MqttWireMessage.MESSAGE_TYPE_PINGREQ;
                                        } else {
                                            r12 = r11;
                                            str3 = str10;
                                            str2 = str12;
                                            str22 = str11;
                                            b9 = -1;
                                            r10 = r12;
                                        }
                                        break;
                                    case 62923557:
                                        str10 = str8;
                                        ?? r32 = r39;
                                        str11 = str22;
                                        str12 = str2;
                                        str9 = str7;
                                        r11 = r32;
                                        if (r18.equals("A_AAC")) {
                                            r10 = r32;
                                            str3 = str10;
                                            str2 = str12;
                                            str22 = str11;
                                            b9 = MqttWireMessage.MESSAGE_TYPE_PINGRESP;
                                        } else {
                                            r12 = r11;
                                            str3 = str10;
                                            str2 = str12;
                                            str22 = str11;
                                            b9 = -1;
                                            r10 = r12;
                                        }
                                        break;
                                    case 62923603:
                                        str10 = str8;
                                        ?? r33 = r39;
                                        str11 = str22;
                                        str12 = str2;
                                        str9 = str7;
                                        r11 = r33;
                                        if (r18.equals("A_AC3")) {
                                            r10 = r33;
                                            str3 = str10;
                                            str2 = str12;
                                            str22 = str11;
                                            b9 = MqttWireMessage.MESSAGE_TYPE_DISCONNECT;
                                        } else {
                                            r12 = r11;
                                            str3 = str10;
                                            str2 = str12;
                                            str22 = str11;
                                            b9 = -1;
                                            r10 = r12;
                                        }
                                        break;
                                    case 62927045:
                                        str10 = str8;
                                        ?? r40 = r39;
                                        str11 = str22;
                                        str12 = str2;
                                        str9 = str7;
                                        r11 = r40;
                                        if (r18.equals("A_DTS")) {
                                            r10 = r40;
                                            str3 = str10;
                                            str2 = str12;
                                            str22 = str11;
                                            b9 = 15;
                                        } else {
                                            r12 = r11;
                                            str3 = str10;
                                            str2 = str12;
                                            str22 = str11;
                                            b9 = -1;
                                            r10 = r12;
                                        }
                                        break;
                                    case 82318131:
                                        str10 = str8;
                                        ?? r41 = r39;
                                        str11 = str22;
                                        str12 = str2;
                                        str9 = str7;
                                        r11 = r41;
                                        if (r18.equals("V_AV1")) {
                                            r10 = r41;
                                            str3 = str10;
                                            str2 = str12;
                                            str22 = str11;
                                            b9 = 16;
                                        } else {
                                            r12 = r11;
                                            str3 = str10;
                                            str2 = str12;
                                            str22 = str11;
                                            b9 = -1;
                                            r10 = r12;
                                        }
                                        break;
                                    case 82338133:
                                        str10 = str8;
                                        ?? r42 = r39;
                                        str11 = str22;
                                        str12 = str2;
                                        str9 = str7;
                                        r11 = r42;
                                        if (r18.equals("V_VP8")) {
                                            r10 = r42;
                                            str3 = str10;
                                            str2 = str12;
                                            str22 = str11;
                                            b9 = 17;
                                        } else {
                                            r12 = r11;
                                            str3 = str10;
                                            str2 = str12;
                                            str22 = str11;
                                            b9 = -1;
                                            r10 = r12;
                                        }
                                        break;
                                    case 82338134:
                                        str10 = str8;
                                        ?? r43 = r39;
                                        str11 = str22;
                                        str12 = str2;
                                        str9 = str7;
                                        r11 = r43;
                                        if (r18.equals("V_VP9")) {
                                            r10 = r43;
                                            str3 = str10;
                                            str2 = str12;
                                            str22 = str11;
                                            b9 = 18;
                                        } else {
                                            r12 = r11;
                                            str3 = str10;
                                            str2 = str12;
                                            str22 = str11;
                                            b9 = -1;
                                            r10 = r12;
                                        }
                                        break;
                                    case 99146302:
                                        str10 = str8;
                                        ?? r44 = r39;
                                        str11 = str22;
                                        str12 = str2;
                                        str9 = str7;
                                        r11 = r44;
                                        if (r18.equals("S_HDMV/PGS")) {
                                            r10 = r44;
                                            str3 = str10;
                                            str2 = str12;
                                            str22 = str11;
                                            b9 = 19;
                                        } else {
                                            r12 = r11;
                                            str3 = str10;
                                            str2 = str12;
                                            str22 = str11;
                                            b9 = -1;
                                            r10 = r12;
                                        }
                                        break;
                                    case 444813526:
                                        str10 = str8;
                                        ?? r45 = r39;
                                        str11 = str22;
                                        str12 = str2;
                                        str9 = str7;
                                        r11 = r45;
                                        if (r18.equals("V_THEORA")) {
                                            r10 = r45;
                                            str3 = str10;
                                            str2 = str12;
                                            str22 = str11;
                                            b9 = 20;
                                        } else {
                                            r12 = r11;
                                            str3 = str10;
                                            str2 = str12;
                                            str22 = str11;
                                            b9 = -1;
                                            r10 = r12;
                                        }
                                        break;
                                    case 542569478:
                                        str10 = str8;
                                        ?? r46 = r39;
                                        str11 = str22;
                                        str12 = str2;
                                        str9 = str7;
                                        r11 = r46;
                                        if (r18.equals("A_DTS/EXPRESS")) {
                                            r10 = r46;
                                            str3 = str10;
                                            str2 = str12;
                                            str22 = str11;
                                            b9 = 21;
                                        } else {
                                            r12 = r11;
                                            str3 = str10;
                                            str2 = str12;
                                            str22 = str11;
                                            b9 = -1;
                                            r10 = r12;
                                        }
                                        break;
                                    case 635596514:
                                        str10 = str8;
                                        ?? r47 = r39;
                                        str11 = str22;
                                        str12 = str2;
                                        str9 = str7;
                                        r11 = r47;
                                        if (r18.equals("A_PCM/FLOAT/IEEE")) {
                                            r10 = r47;
                                            str3 = str10;
                                            str2 = str12;
                                            str22 = str11;
                                            b9 = 22;
                                        } else {
                                            r12 = r11;
                                            str3 = str10;
                                            str2 = str12;
                                            str22 = str11;
                                            b9 = -1;
                                            r10 = r12;
                                        }
                                        break;
                                    case 725948237:
                                        str10 = str8;
                                        ?? r48 = r39;
                                        str11 = str22;
                                        str12 = str2;
                                        str9 = str7;
                                        r11 = r48;
                                        if (r18.equals("A_PCM/INT/BIG")) {
                                            r10 = r48;
                                            str3 = str10;
                                            str2 = str12;
                                            str22 = str11;
                                            b9 = 23;
                                        } else {
                                            r12 = r11;
                                            str3 = str10;
                                            str2 = str12;
                                            str22 = str11;
                                            b9 = -1;
                                            r10 = r12;
                                        }
                                        break;
                                    case 725957860:
                                        str10 = str8;
                                        ?? r49 = r39;
                                        str11 = str22;
                                        str12 = str2;
                                        str9 = str7;
                                        r11 = r49;
                                        if (r18.equals("A_PCM/INT/LIT")) {
                                            r10 = r49;
                                            str3 = str10;
                                            str2 = str12;
                                            str22 = str11;
                                            b9 = 24;
                                        } else {
                                            r12 = r11;
                                            str3 = str10;
                                            str2 = str12;
                                            str22 = str11;
                                            b9 = -1;
                                            r10 = r12;
                                        }
                                        break;
                                    case 738597099:
                                        str10 = str8;
                                        ?? r50 = r39;
                                        str11 = str22;
                                        str12 = str2;
                                        str9 = str7;
                                        boolean zEquals = r18.equals(r50);
                                        r11 = r50;
                                        if (zEquals) {
                                            r10 = r50;
                                            str3 = str10;
                                            str2 = str12;
                                            str22 = str11;
                                            b9 = 25;
                                        } else {
                                            r12 = r11;
                                            str3 = str10;
                                            str2 = str12;
                                            str22 = str11;
                                            b9 = -1;
                                            r10 = r12;
                                        }
                                        break;
                                    case 738614379:
                                        str9 = str7;
                                        str3 = str8;
                                        str2 = str2;
                                        str22 = str22;
                                        if (r18.equals(str22)) {
                                            r10 = r39;
                                            b9 = 26;
                                        } else {
                                            r12 = r39;
                                            b9 = -1;
                                            r10 = r12;
                                        }
                                        break;
                                    case 855502857:
                                        String str33 = str2;
                                        str9 = str7;
                                        str3 = str8;
                                        str2 = str33;
                                        if (r18.equals(str33)) {
                                            r10 = r39;
                                            str22 = str22;
                                            b9 = 27;
                                        } else {
                                            r12 = r39;
                                            str22 = str22;
                                            b9 = -1;
                                            r10 = r12;
                                        }
                                        break;
                                    case 1045209816:
                                        str13 = str8;
                                        str9 = str7;
                                        if (r18.equals(str6)) {
                                            str3 = str13;
                                            r10 = r39;
                                            str22 = str22;
                                            str2 = str2;
                                            b9 = 28;
                                        } else {
                                            str3 = str13;
                                            r12 = r39;
                                            str22 = str22;
                                            str2 = str2;
                                            b9 = -1;
                                            r10 = r12;
                                        }
                                        break;
                                    case 1422270023:
                                        str13 = str8;
                                        str9 = str7;
                                        if (r18.equals(str13)) {
                                            str3 = str13;
                                            r10 = r39;
                                            str22 = str22;
                                            str2 = str2;
                                            b9 = 29;
                                        } else {
                                            str3 = str13;
                                            r12 = r39;
                                            str22 = str22;
                                            str2 = str2;
                                            b9 = -1;
                                            r10 = r12;
                                        }
                                        break;
                                    case 1809237540:
                                        str9 = str7;
                                        if (r18.equals(str5)) {
                                            str3 = str8;
                                            r10 = r39;
                                            str22 = str22;
                                            str2 = str2;
                                            b9 = 30;
                                        } else {
                                            str3 = str8;
                                            r12 = r39;
                                            str22 = str22;
                                            str2 = str2;
                                            b9 = -1;
                                            r10 = r12;
                                        }
                                        break;
                                    case 1950749482:
                                        str9 = str7;
                                        if (r18.equals(str9)) {
                                            str3 = str8;
                                            r10 = r39;
                                            str22 = str22;
                                            str2 = str2;
                                            b9 = 31;
                                        } else {
                                            str3 = str8;
                                            r12 = r39;
                                            str22 = str22;
                                            str2 = str2;
                                            b9 = -1;
                                            r10 = r12;
                                        }
                                        break;
                                    case 1950789798:
                                        if (r18.equals(str)) {
                                            str3 = str8;
                                            r10 = r39;
                                            str22 = str22;
                                            str2 = str2;
                                            str9 = str7;
                                            b9 = 32;
                                        } else {
                                            str3 = str8;
                                            r12 = r39;
                                            str22 = str22;
                                            str2 = str2;
                                            str9 = str7;
                                            b9 = -1;
                                            r10 = r12;
                                        }
                                        break;
                                    case 1951062397:
                                        if (r18.equals("A_OPUS")) {
                                            str3 = str8;
                                            r10 = r39;
                                            str22 = str22;
                                            str2 = str2;
                                            str9 = str7;
                                            b9 = 33;
                                        } else {
                                            str3 = str8;
                                            r12 = r39;
                                            str22 = str22;
                                            str2 = str2;
                                            str9 = str7;
                                            b9 = -1;
                                            r10 = r12;
                                        }
                                        break;
                                    default:
                                        str3 = str8;
                                        r12 = r39;
                                        str22 = str22;
                                        str2 = str2;
                                        str9 = str7;
                                        b9 = -1;
                                        r10 = r12;
                                        break;
                                }
                                String str34 = "audio/raw";
                                switch (b9) {
                                    case 0:
                                    case 1:
                                    case 9:
                                        byte[] bArr3 = cVar5.f27123l;
                                        str34 = "video/mp4v-es";
                                        listSingletonList = bArr3 == null ? null : Collections.singletonList(bArr3);
                                        iA2 = -1;
                                        list3 = listSingletonList;
                                        r316 = r10;
                                        str14 = null;
                                        list4 = list3;
                                        r313 = r316;
                                        i9 = -1;
                                        list = list4;
                                        r312 = r313;
                                        if (cVar5.f27100P != null && (rVarA = r.a(new E(cVar5.f27100P))) != null) {
                                            str14 = rVarA.f7454a;
                                            str34 = "video/dolby-vision";
                                        }
                                        boolean z10 = cVar5.f27108X;
                                        if (cVar5.f27107W) {
                                            i11 = 2;
                                        } else {
                                            i11 = 0;
                                        }
                                        int i34 = (z10 ? 1 : 0) | i11;
                                        c3135s = new C3135s();
                                        if (O.k(str34)) {
                                            c3135s.f26973F = cVar5.f27101Q;
                                            c3135s.f26974G = cVar5.f27103S;
                                            c3135s.f26975H = iA2;
                                            str = str;
                                            str2 = str2;
                                            i12 = 1;
                                        } else if (O.o(str34)) {
                                            if (cVar5.f27130s == 0) {
                                                i16 = cVar5.f27128q;
                                                i13 = -1;
                                                if (i16 == -1) {
                                                    i16 = cVar5.f27125n;
                                                }
                                                cVar5.f27128q = i16;
                                                i17 = cVar5.f27129r;
                                                if (i17 == -1) {
                                                    i17 = cVar5.f27126o;
                                                }
                                                cVar5.f27129r = i17;
                                            } else {
                                                i13 = -1;
                                            }
                                            i14 = cVar5.f27128q;
                                            if (i14 != i13 || (i15 = cVar5.f27129r) == i13) {
                                                f8 = -1.0f;
                                            } else {
                                                f8 = (cVar5.f27126o * i14) / (cVar5.f27125n * i15);
                                            }
                                            if (cVar5.f27137z) {
                                                if (cVar5.f27090F != -1.0f || cVar5.f27091G == -1.0f || cVar5.f27092H == -1.0f || cVar5.f27093I == -1.0f || cVar5.f27094J == -1.0f || cVar5.f27095K == -1.0f || cVar5.f27096L == -1.0f || cVar5.f27097M == -1.0f || cVar5.f27098N == -1.0f || cVar5.f27099O == -1.0f) {
                                                    bArr = null;
                                                } else {
                                                    byte[] bArr4 = new byte[25];
                                                    ByteBuffer byteBufferOrder = ByteBuffer.wrap(bArr4).order(ByteOrder.LITTLE_ENDIAN);
                                                    byteBufferOrder.put((byte) 0);
                                                    byteBufferOrder.putShort((short) ((cVar5.f27090F * 50000.0f) + 0.5f));
                                                    byteBufferOrder.putShort((short) ((cVar5.f27091G * 50000.0f) + 0.5f));
                                                    byteBufferOrder.putShort((short) ((cVar5.f27092H * 50000.0f) + 0.5f));
                                                    byteBufferOrder.putShort((short) ((cVar5.f27093I * 50000.0f) + 0.5f));
                                                    byteBufferOrder.putShort((short) ((cVar5.f27094J * 50000.0f) + 0.5f));
                                                    byteBufferOrder.putShort((short) ((cVar5.f27095K * 50000.0f) + 0.5f));
                                                    byteBufferOrder.putShort((short) ((cVar5.f27096L * 50000.0f) + 0.5f));
                                                    byteBufferOrder.putShort((short) ((cVar5.f27097M * 50000.0f) + 0.5f));
                                                    byteBufferOrder.putShort((short) (cVar5.f27098N + 0.5f));
                                                    byteBufferOrder.putShort((short) (cVar5.f27099O + 0.5f));
                                                    byteBufferOrder.putShort((short) cVar5.f27088D);
                                                    byteBufferOrder.putShort((short) cVar5.f27089E);
                                                    bArr = bArr4;
                                                }
                                                int i35 = cVar5.f27085A;
                                                int i36 = cVar5.f27087C;
                                                int i37 = cVar5.f27086B;
                                                int i38 = cVar5.f27127p;
                                                c3126i = new C3126i(i35, i36, i37, bArr, i38, i38);
                                            } else {
                                                c3126i = null;
                                            }
                                            str17 = cVar5.f27113b;
                                            if (str17 != null) {
                                                map = f27143k0;
                                                if (map.containsKey(str17)) {
                                                    iIntValue = ((Integer) map.get(cVar5.f27113b)).intValue();
                                                } else {
                                                    iIntValue = -1;
                                                }
                                            } else {
                                                iIntValue = -1;
                                            }
                                            if (cVar5.f27131t == 0 && Float.compare(cVar5.f27132u, 0.0f) == 0 && Float.compare(cVar5.f27133v, 0.0f) == 0) {
                                                if (Float.compare(cVar5.f27134w, 0.0f) == 0) {
                                                    iIntValue = 0;
                                                } else if (Float.compare(cVar5.f27134w, 90.0f) == 0) {
                                                    iIntValue = 90;
                                                } else if (Float.compare(cVar5.f27134w, -180.0f) != 0 || Float.compare(cVar5.f27134w, 180.0f) == 0) {
                                                    iIntValue = 180;
                                                } else if (Float.compare(cVar5.f27134w, -90.0f) == 0) {
                                                    iIntValue = MediaPlayer.Event.PausableChanged;
                                                }
                                            }
                                            c3135s.f27003u = cVar5.f27125n;
                                            c3135s.f27004v = cVar5.f27126o;
                                            c3135s.f26968A = f8;
                                            c3135s.f27008z = iIntValue;
                                            c3135s.f26969B = cVar5.f27135x;
                                            c3135s.f26970C = cVar5.f27136y;
                                            c3135s.f26971D = c3126i;
                                            i12 = 2;
                                        } else {
                                            str = str;
                                            str2 = str2;
                                            if (org.videolan.libvlc.media.MediaPlayer.MEDIA_MIMETYPE_TEXT_SUBRIP.equals(str34) && !"text/x-ssa".equals(str34) && !"text/vtt".equals(str34) && !"application/vobsub".equals(str34) && !"application/pgs".equals(str34) && !"application/dvbsubs".equals(str34)) {
                                                throw P.a("Unexpected MIME type.", null);
                                            }
                                            i12 = 3;
                                        }
                                        str18 = cVar5.f27113b;
                                        if (str18 != null && !f27143k0.containsKey(str18)) {
                                            c3135s.f26984b = cVar5.f27113b;
                                        }
                                        c3135s.f26983a = Integer.toString(i33);
                                        if (cVar5.f27111a) {
                                            str19 = "video/webm";
                                        } else {
                                            str19 = "video/x-matroska";
                                        }
                                        c3135s.f26995m = O.p(str19);
                                        c3135s.f26996n = O.p(str34);
                                        c3135s.f26997o = i9;
                                        c3135s.f26986d = cVar5.f27109Y;
                                        c3135s.f26987e = i34;
                                        c3135s.f26999q = list;
                                        c3135s.f26992j = str14;
                                        c3135s.f27000r = cVar5.f27124m;
                                        C3136t c3136tA = c3135s.a();
                                        L lT = uVar2.t(cVar5.f27115d, i12);
                                        cVar5.f27110Z = lT;
                                        lT.b(c3136tA);
                                        sparseArray.put(cVar5.f27115d, cVar5);
                                        dVar3 = dVar3;
                                        cVar = null;
                                        r317 = r312;
                                        break;
                                    case 2:
                                        ?? r326 = r10;
                                        E e9 = new E(cVar5.a(cVar5.f27114c));
                                        try {
                                            int iS = e9.s();
                                            if (iS != 1) {
                                                if (iS == 65534) {
                                                    e9.L(24);
                                                    long jT = e9.t();
                                                    UUID uuid = f27142j0;
                                                    if (jT != uuid.getMostSignificantBits() || e9.t() != uuid.getLeastSignificantBits()) {
                                                    }
                                                    str34 = "audio/x-unknown";
                                                    r311 = r315;
                                                    iA2 = -1;
                                                    r314 = r311;
                                                    list3 = null;
                                                    r316 = r314;
                                                    str14 = null;
                                                    list4 = list3;
                                                    r313 = r316;
                                                    i9 = -1;
                                                    list = list4;
                                                    r312 = r313;
                                                    if (cVar5.f27100P != null) {
                                                        str14 = rVarA.f7454a;
                                                        str34 = "video/dolby-vision";
                                                    }
                                                    boolean z11 = cVar5.f27108X;
                                                    if (cVar5.f27107W) {
                                                        i11 = 2;
                                                    } else {
                                                        i11 = 0;
                                                    }
                                                    int i39 = (z11 ? 1 : 0) | i11;
                                                    c3135s = new C3135s();
                                                    if (O.k(str34)) {
                                                        c3135s.f26973F = cVar5.f27101Q;
                                                        c3135s.f26974G = cVar5.f27103S;
                                                        c3135s.f26975H = iA2;
                                                        str = str;
                                                        str2 = str2;
                                                        i12 = 1;
                                                    } else if (O.o(str34)) {
                                                        if (cVar5.f27130s == 0) {
                                                            i16 = cVar5.f27128q;
                                                            i13 = -1;
                                                            if (i16 == -1) {
                                                                i16 = cVar5.f27125n;
                                                            }
                                                            cVar5.f27128q = i16;
                                                            i17 = cVar5.f27129r;
                                                            if (i17 == -1) {
                                                                i17 = cVar5.f27126o;
                                                            }
                                                            cVar5.f27129r = i17;
                                                        } else {
                                                            i13 = -1;
                                                        }
                                                        i14 = cVar5.f27128q;
                                                        if (i14 != i13) {
                                                            f8 = -1.0f;
                                                        } else {
                                                            f8 = -1.0f;
                                                        }
                                                        if (cVar5.f27137z) {
                                                            if (cVar5.f27090F != -1.0f) {
                                                                bArr = null;
                                                            } else {
                                                                bArr = null;
                                                            }
                                                            int i310 = cVar5.f27085A;
                                                            int i311 = cVar5.f27087C;
                                                            int i312 = cVar5.f27086B;
                                                            int i313 = cVar5.f27127p;
                                                            c3126i = new C3126i(i310, i311, i312, bArr, i313, i313);
                                                        } else {
                                                            c3126i = null;
                                                        }
                                                        str17 = cVar5.f27113b;
                                                        if (str17 != null) {
                                                            map = f27143k0;
                                                            if (map.containsKey(str17)) {
                                                                iIntValue = ((Integer) map.get(cVar5.f27113b)).intValue();
                                                            } else {
                                                                iIntValue = -1;
                                                            }
                                                        } else {
                                                            iIntValue = -1;
                                                        }
                                                        if (cVar5.f27131t == 0) {
                                                            if (Float.compare(cVar5.f27134w, 0.0f) == 0) {
                                                                iIntValue = 0;
                                                            } else if (Float.compare(cVar5.f27134w, 90.0f) == 0) {
                                                                iIntValue = 90;
                                                            } else if (Float.compare(cVar5.f27134w, -180.0f) != 0) {
                                                                iIntValue = 180;
                                                            } else {
                                                                iIntValue = 180;
                                                            }
                                                        }
                                                        c3135s.f27003u = cVar5.f27125n;
                                                        c3135s.f27004v = cVar5.f27126o;
                                                        c3135s.f26968A = f8;
                                                        c3135s.f27008z = iIntValue;
                                                        c3135s.f26969B = cVar5.f27135x;
                                                        c3135s.f26970C = cVar5.f27136y;
                                                        c3135s.f26971D = c3126i;
                                                        i12 = 2;
                                                    } else {
                                                        str = str;
                                                        str2 = str2;
                                                        if (org.videolan.libvlc.media.MediaPlayer.MEDIA_MIMETYPE_TEXT_SUBRIP.equals(str34)) {
                                                        }
                                                        i12 = 3;
                                                    }
                                                    str18 = cVar5.f27113b;
                                                    if (str18 != null) {
                                                        c3135s.f26984b = cVar5.f27113b;
                                                    }
                                                    c3135s.f26983a = Integer.toString(i33);
                                                    if (cVar5.f27111a) {
                                                        str19 = "video/webm";
                                                    } else {
                                                        str19 = "video/x-matroska";
                                                    }
                                                    c3135s.f26995m = O.p(str19);
                                                    c3135s.f26996n = O.p(str34);
                                                    c3135s.f26997o = i9;
                                                    c3135s.f26986d = cVar5.f27109Y;
                                                    c3135s.f26987e = i39;
                                                    c3135s.f26999q = list;
                                                    c3135s.f26992j = str14;
                                                    c3135s.f27000r = cVar5.f27124m;
                                                    C3136t c3136tA2 = c3135s.a();
                                                    L lT2 = uVar2.t(cVar5.f27115d, i12);
                                                    cVar5.f27110Z = lT2;
                                                    lT2.b(c3136tA2);
                                                    sparseArray.put(cVar5.f27115d, cVar5);
                                                    dVar3 = dVar3;
                                                    cVar = null;
                                                    r317 = r312;
                                                }
                                                x.f("MatroskaExtractor", "Non-PCM MS/ACM is unsupported. Setting mimeType to audio/x-unknown");
                                                r315 = r326;
                                                str34 = "audio/x-unknown";
                                                r311 = r315;
                                                iA2 = -1;
                                                r314 = r311;
                                                list3 = null;
                                                r316 = r314;
                                                str14 = null;
                                                list4 = list3;
                                                r313 = r316;
                                                i9 = -1;
                                                list = list4;
                                                r312 = r313;
                                                if (cVar5.f27100P != null) {
                                                    str14 = rVarA.f7454a;
                                                    str34 = "video/dolby-vision";
                                                }
                                                boolean z12 = cVar5.f27108X;
                                                if (cVar5.f27107W) {
                                                    i11 = 2;
                                                } else {
                                                    i11 = 0;
                                                }
                                                int i314 = (z12 ? 1 : 0) | i11;
                                                c3135s = new C3135s();
                                                if (O.k(str34)) {
                                                    c3135s.f26973F = cVar5.f27101Q;
                                                    c3135s.f26974G = cVar5.f27103S;
                                                    c3135s.f26975H = iA2;
                                                    str = str;
                                                    str2 = str2;
                                                    i12 = 1;
                                                } else if (O.o(str34)) {
                                                    if (cVar5.f27130s == 0) {
                                                        i16 = cVar5.f27128q;
                                                        i13 = -1;
                                                        if (i16 == -1) {
                                                            i16 = cVar5.f27125n;
                                                        }
                                                        cVar5.f27128q = i16;
                                                        i17 = cVar5.f27129r;
                                                        if (i17 == -1) {
                                                            i17 = cVar5.f27126o;
                                                        }
                                                        cVar5.f27129r = i17;
                                                    } else {
                                                        i13 = -1;
                                                    }
                                                    i14 = cVar5.f27128q;
                                                    if (i14 != i13) {
                                                        f8 = -1.0f;
                                                    } else {
                                                        f8 = -1.0f;
                                                    }
                                                    if (cVar5.f27137z) {
                                                        if (cVar5.f27090F != -1.0f) {
                                                            bArr = null;
                                                        } else {
                                                            bArr = null;
                                                        }
                                                        int i315 = cVar5.f27085A;
                                                        int i316 = cVar5.f27087C;
                                                        int i317 = cVar5.f27086B;
                                                        int i318 = cVar5.f27127p;
                                                        c3126i = new C3126i(i315, i316, i317, bArr, i318, i318);
                                                    } else {
                                                        c3126i = null;
                                                    }
                                                    str17 = cVar5.f27113b;
                                                    if (str17 != null) {
                                                        map = f27143k0;
                                                        if (map.containsKey(str17)) {
                                                            iIntValue = ((Integer) map.get(cVar5.f27113b)).intValue();
                                                        } else {
                                                            iIntValue = -1;
                                                        }
                                                    } else {
                                                        iIntValue = -1;
                                                    }
                                                    if (cVar5.f27131t == 0) {
                                                        if (Float.compare(cVar5.f27134w, 0.0f) == 0) {
                                                            iIntValue = 0;
                                                        } else if (Float.compare(cVar5.f27134w, 90.0f) == 0) {
                                                            iIntValue = 90;
                                                        } else if (Float.compare(cVar5.f27134w, -180.0f) != 0) {
                                                            iIntValue = 180;
                                                        } else {
                                                            iIntValue = 180;
                                                        }
                                                    }
                                                    c3135s.f27003u = cVar5.f27125n;
                                                    c3135s.f27004v = cVar5.f27126o;
                                                    c3135s.f26968A = f8;
                                                    c3135s.f27008z = iIntValue;
                                                    c3135s.f26969B = cVar5.f27135x;
                                                    c3135s.f26970C = cVar5.f27136y;
                                                    c3135s.f26971D = c3126i;
                                                    i12 = 2;
                                                } else {
                                                    str = str;
                                                    str2 = str2;
                                                    if (org.videolan.libvlc.media.MediaPlayer.MEDIA_MIMETYPE_TEXT_SUBRIP.equals(str34)) {
                                                    }
                                                    i12 = 3;
                                                }
                                                str18 = cVar5.f27113b;
                                                if (str18 != null) {
                                                    c3135s.f26984b = cVar5.f27113b;
                                                }
                                                c3135s.f26983a = Integer.toString(i33);
                                                if (cVar5.f27111a) {
                                                    str19 = "video/webm";
                                                } else {
                                                    str19 = "video/x-matroska";
                                                }
                                                c3135s.f26995m = O.p(str19);
                                                c3135s.f26996n = O.p(str34);
                                                c3135s.f26997o = i9;
                                                c3135s.f26986d = cVar5.f27109Y;
                                                c3135s.f26987e = i314;
                                                c3135s.f26999q = list;
                                                c3135s.f26992j = str14;
                                                c3135s.f27000r = cVar5.f27124m;
                                                C3136t c3136tA3 = c3135s.a();
                                                L lT3 = uVar2.t(cVar5.f27115d, i12);
                                                cVar5.f27110Z = lT3;
                                                lT3.b(c3136tA3);
                                                sparseArray.put(cVar5.f27115d, cVar5);
                                                dVar3 = dVar3;
                                                cVar = null;
                                                r317 = r312;
                                                break;
                                            }
                                            int i40 = cVar5.f27102R;
                                            String str35 = M.f28050a;
                                            iA2 = M.A(i40, ByteOrder.LITTLE_ENDIAN);
                                            r314 = r326;
                                            if (iA2 == 0) {
                                                x.f("MatroskaExtractor", "Unsupported PCM bit depth: " + cVar5.f27102R + ". Setting mimeType to audio/x-unknown");
                                                r315 = r326;
                                                str34 = "audio/x-unknown";
                                                r311 = r315;
                                                iA2 = -1;
                                                r314 = r311;
                                            }
                                            list3 = null;
                                            r316 = r314;
                                            str14 = null;
                                            list4 = list3;
                                            r313 = r316;
                                            i9 = -1;
                                            list = list4;
                                            r312 = r313;
                                            if (cVar5.f27100P != null) {
                                                str14 = rVarA.f7454a;
                                                str34 = "video/dolby-vision";
                                            }
                                            boolean z13 = cVar5.f27108X;
                                            if (cVar5.f27107W) {
                                                i11 = 2;
                                            } else {
                                                i11 = 0;
                                            }
                                            int i319 = (z13 ? 1 : 0) | i11;
                                            c3135s = new C3135s();
                                            if (O.k(str34)) {
                                                c3135s.f26973F = cVar5.f27101Q;
                                                c3135s.f26974G = cVar5.f27103S;
                                                c3135s.f26975H = iA2;
                                                str = str;
                                                str2 = str2;
                                                i12 = 1;
                                            } else if (O.o(str34)) {
                                                if (cVar5.f27130s == 0) {
                                                    i16 = cVar5.f27128q;
                                                    i13 = -1;
                                                    if (i16 == -1) {
                                                        i16 = cVar5.f27125n;
                                                    }
                                                    cVar5.f27128q = i16;
                                                    i17 = cVar5.f27129r;
                                                    if (i17 == -1) {
                                                        i17 = cVar5.f27126o;
                                                    }
                                                    cVar5.f27129r = i17;
                                                } else {
                                                    i13 = -1;
                                                }
                                                i14 = cVar5.f27128q;
                                                if (i14 != i13) {
                                                    f8 = -1.0f;
                                                } else {
                                                    f8 = -1.0f;
                                                }
                                                if (cVar5.f27137z) {
                                                    if (cVar5.f27090F != -1.0f) {
                                                        bArr = null;
                                                    } else {
                                                        bArr = null;
                                                    }
                                                    int i3110 = cVar5.f27085A;
                                                    int i3111 = cVar5.f27087C;
                                                    int i3112 = cVar5.f27086B;
                                                    int i3113 = cVar5.f27127p;
                                                    c3126i = new C3126i(i3110, i3111, i3112, bArr, i3113, i3113);
                                                } else {
                                                    c3126i = null;
                                                }
                                                str17 = cVar5.f27113b;
                                                if (str17 != null) {
                                                    map = f27143k0;
                                                    if (map.containsKey(str17)) {
                                                        iIntValue = ((Integer) map.get(cVar5.f27113b)).intValue();
                                                    } else {
                                                        iIntValue = -1;
                                                    }
                                                } else {
                                                    iIntValue = -1;
                                                }
                                                if (cVar5.f27131t == 0) {
                                                    if (Float.compare(cVar5.f27134w, 0.0f) == 0) {
                                                        iIntValue = 0;
                                                    } else if (Float.compare(cVar5.f27134w, 90.0f) == 0) {
                                                        iIntValue = 90;
                                                    } else if (Float.compare(cVar5.f27134w, -180.0f) != 0) {
                                                        iIntValue = 180;
                                                    } else {
                                                        iIntValue = 180;
                                                    }
                                                }
                                                c3135s.f27003u = cVar5.f27125n;
                                                c3135s.f27004v = cVar5.f27126o;
                                                c3135s.f26968A = f8;
                                                c3135s.f27008z = iIntValue;
                                                c3135s.f26969B = cVar5.f27135x;
                                                c3135s.f26970C = cVar5.f27136y;
                                                c3135s.f26971D = c3126i;
                                                i12 = 2;
                                            } else {
                                                str = str;
                                                str2 = str2;
                                                if (org.videolan.libvlc.media.MediaPlayer.MEDIA_MIMETYPE_TEXT_SUBRIP.equals(str34)) {
                                                }
                                                i12 = 3;
                                            }
                                            str18 = cVar5.f27113b;
                                            if (str18 != null) {
                                                c3135s.f26984b = cVar5.f27113b;
                                            }
                                            c3135s.f26983a = Integer.toString(i33);
                                            if (cVar5.f27111a) {
                                                str19 = "video/webm";
                                            } else {
                                                str19 = "video/x-matroska";
                                            }
                                            c3135s.f26995m = O.p(str19);
                                            c3135s.f26996n = O.p(str34);
                                            c3135s.f26997o = i9;
                                            c3135s.f26986d = cVar5.f27109Y;
                                            c3135s.f26987e = i319;
                                            c3135s.f26999q = list;
                                            c3135s.f26992j = str14;
                                            c3135s.f27000r = cVar5.f27124m;
                                            C3136t c3136tA4 = c3135s.a();
                                            L lT4 = uVar2.t(cVar5.f27115d, i12);
                                            cVar5.f27110Z = lT4;
                                            lT4.b(c3136tA4);
                                            sparseArray.put(cVar5.f27115d, cVar5);
                                            dVar3 = dVar3;
                                            cVar = null;
                                            r317 = r312;
                                        } catch (ArrayIndexOutOfBoundsException unused) {
                                            throw P.a("Error parsing MS/ACM codec private", null);
                                        }
                                        break;
                                    case 3:
                                        r311 = r10;
                                        cVar5.f27106V = new W0.M(0);
                                        str34 = "audio/true-hd";
                                        iA2 = -1;
                                        r314 = r311;
                                        list3 = null;
                                        r316 = r314;
                                        str14 = null;
                                        list4 = list3;
                                        r313 = r316;
                                        i9 = -1;
                                        list = list4;
                                        r312 = r313;
                                        if (cVar5.f27100P != null) {
                                            str14 = rVarA.f7454a;
                                            str34 = "video/dolby-vision";
                                        }
                                        boolean z14 = cVar5.f27108X;
                                        if (cVar5.f27107W) {
                                            i11 = 2;
                                        } else {
                                            i11 = 0;
                                        }
                                        int i3114 = (z14 ? 1 : 0) | i11;
                                        c3135s = new C3135s();
                                        if (O.k(str34)) {
                                            c3135s.f26973F = cVar5.f27101Q;
                                            c3135s.f26974G = cVar5.f27103S;
                                            c3135s.f26975H = iA2;
                                            str = str;
                                            str2 = str2;
                                            i12 = 1;
                                        } else if (O.o(str34)) {
                                            if (cVar5.f27130s == 0) {
                                                i16 = cVar5.f27128q;
                                                i13 = -1;
                                                if (i16 == -1) {
                                                    i16 = cVar5.f27125n;
                                                }
                                                cVar5.f27128q = i16;
                                                i17 = cVar5.f27129r;
                                                if (i17 == -1) {
                                                    i17 = cVar5.f27126o;
                                                }
                                                cVar5.f27129r = i17;
                                            } else {
                                                i13 = -1;
                                            }
                                            i14 = cVar5.f27128q;
                                            if (i14 != i13) {
                                                f8 = -1.0f;
                                            } else {
                                                f8 = -1.0f;
                                            }
                                            if (cVar5.f27137z) {
                                                if (cVar5.f27090F != -1.0f) {
                                                    bArr = null;
                                                } else {
                                                    bArr = null;
                                                }
                                                int i3115 = cVar5.f27085A;
                                                int i3116 = cVar5.f27087C;
                                                int i3117 = cVar5.f27086B;
                                                int i3118 = cVar5.f27127p;
                                                c3126i = new C3126i(i3115, i3116, i3117, bArr, i3118, i3118);
                                            } else {
                                                c3126i = null;
                                            }
                                            str17 = cVar5.f27113b;
                                            if (str17 != null) {
                                                map = f27143k0;
                                                if (map.containsKey(str17)) {
                                                    iIntValue = ((Integer) map.get(cVar5.f27113b)).intValue();
                                                } else {
                                                    iIntValue = -1;
                                                }
                                            } else {
                                                iIntValue = -1;
                                            }
                                            if (cVar5.f27131t == 0) {
                                                if (Float.compare(cVar5.f27134w, 0.0f) == 0) {
                                                    iIntValue = 0;
                                                } else if (Float.compare(cVar5.f27134w, 90.0f) == 0) {
                                                    iIntValue = 90;
                                                } else if (Float.compare(cVar5.f27134w, -180.0f) != 0) {
                                                    iIntValue = 180;
                                                } else {
                                                    iIntValue = 180;
                                                }
                                            }
                                            c3135s.f27003u = cVar5.f27125n;
                                            c3135s.f27004v = cVar5.f27126o;
                                            c3135s.f26968A = f8;
                                            c3135s.f27008z = iIntValue;
                                            c3135s.f26969B = cVar5.f27135x;
                                            c3135s.f26970C = cVar5.f27136y;
                                            c3135s.f26971D = c3126i;
                                            i12 = 2;
                                        } else {
                                            str = str;
                                            str2 = str2;
                                            if (org.videolan.libvlc.media.MediaPlayer.MEDIA_MIMETYPE_TEXT_SUBRIP.equals(str34)) {
                                            }
                                            i12 = 3;
                                        }
                                        str18 = cVar5.f27113b;
                                        if (str18 != null) {
                                            c3135s.f26984b = cVar5.f27113b;
                                        }
                                        c3135s.f26983a = Integer.toString(i33);
                                        if (cVar5.f27111a) {
                                            str19 = "video/webm";
                                        } else {
                                            str19 = "video/x-matroska";
                                        }
                                        c3135s.f26995m = O.p(str19);
                                        c3135s.f26996n = O.p(str34);
                                        c3135s.f26997o = i9;
                                        c3135s.f26986d = cVar5.f27109Y;
                                        c3135s.f26987e = i3114;
                                        c3135s.f26999q = list;
                                        c3135s.f26992j = str14;
                                        c3135s.f27000r = cVar5.f27124m;
                                        C3136t c3136tA5 = c3135s.a();
                                        L lT5 = uVar2.t(cVar5.f27115d, i12);
                                        cVar5.f27110Z = lT5;
                                        lT5.b(c3136tA5);
                                        sparseArray.put(cVar5.f27115d, cVar5);
                                        dVar3 = dVar3;
                                        cVar = null;
                                        r317 = r312;
                                        break;
                                    case 4:
                                        byte[] bArrA = cVar5.a(cVar5.f27114c);
                                        try {
                                            try {
                                                if (bArrA[0] != 2) {
                                                    throw P.a("Error parsing vorbis codec private", null);
                                                }
                                                int i41 = 0;
                                                int i42 = 1;
                                                while (true) {
                                                    int i43 = bArrA[i42] & 255;
                                                    if (i43 != 255) {
                                                        int i44 = i42 + 1;
                                                        int i45 = i41 + i43;
                                                        int i46 = 0;
                                                        ?? r51 = r10;
                                                        while (true) {
                                                            ?? r327 = r51;
                                                            int i47 = bArrA[i44] & 255;
                                                            if (i47 != 255) {
                                                                int i48 = i44 + 1;
                                                                int i49 = i46 + i47;
                                                                if (bArrA[i48] != 1) {
                                                                    throw P.a("Error parsing vorbis codec private", null);
                                                                }
                                                                byte[] bArr5 = new byte[i45];
                                                                System.arraycopy(bArrA, i48, bArr5, 0, i45);
                                                                int i50 = i48 + i45;
                                                                if (bArrA[i50] != 3) {
                                                                    throw P.a("Error parsing vorbis codec private", null);
                                                                }
                                                                int i51 = i50 + i49;
                                                                if (bArrA[i51] != 5) {
                                                                    throw P.a("Error parsing vorbis codec private", null);
                                                                }
                                                                byte[] bArr6 = new byte[bArrA.length - i51];
                                                                System.arraycopy(bArrA, i51, bArr6, 0, bArrA.length - i51);
                                                                ArrayList arrayList = new ArrayList(2);
                                                                arrayList.add(bArr5);
                                                                arrayList.add(bArr6);
                                                                str34 = "audio/vorbis";
                                                                iA2 = -1;
                                                                str14 = null;
                                                                i9 = 8192;
                                                                list = arrayList;
                                                                r312 = r327;
                                                                if (cVar5.f27100P != null) {
                                                                    str14 = rVarA.f7454a;
                                                                    str34 = "video/dolby-vision";
                                                                }
                                                                boolean z15 = cVar5.f27108X;
                                                                if (cVar5.f27107W) {
                                                                    i11 = 2;
                                                                } else {
                                                                    i11 = 0;
                                                                }
                                                                int i3119 = (z15 ? 1 : 0) | i11;
                                                                c3135s = new C3135s();
                                                                if (O.k(str34)) {
                                                                    c3135s.f26973F = cVar5.f27101Q;
                                                                    c3135s.f26974G = cVar5.f27103S;
                                                                    c3135s.f26975H = iA2;
                                                                    str = str;
                                                                    str2 = str2;
                                                                    i12 = 1;
                                                                } else if (O.o(str34)) {
                                                                    if (cVar5.f27130s == 0) {
                                                                        i16 = cVar5.f27128q;
                                                                        i13 = -1;
                                                                        if (i16 == -1) {
                                                                            i16 = cVar5.f27125n;
                                                                        }
                                                                        cVar5.f27128q = i16;
                                                                        i17 = cVar5.f27129r;
                                                                        if (i17 == -1) {
                                                                            i17 = cVar5.f27126o;
                                                                        }
                                                                        cVar5.f27129r = i17;
                                                                    } else {
                                                                        i13 = -1;
                                                                    }
                                                                    i14 = cVar5.f27128q;
                                                                    if (i14 != i13) {
                                                                        f8 = -1.0f;
                                                                    } else {
                                                                        f8 = -1.0f;
                                                                    }
                                                                    if (cVar5.f27137z) {
                                                                        if (cVar5.f27090F != -1.0f) {
                                                                            bArr = null;
                                                                        } else {
                                                                            bArr = null;
                                                                        }
                                                                        int i31110 = cVar5.f27085A;
                                                                        int i31111 = cVar5.f27087C;
                                                                        int i31112 = cVar5.f27086B;
                                                                        int i31113 = cVar5.f27127p;
                                                                        c3126i = new C3126i(i31110, i31111, i31112, bArr, i31113, i31113);
                                                                    } else {
                                                                        c3126i = null;
                                                                    }
                                                                    str17 = cVar5.f27113b;
                                                                    if (str17 != null) {
                                                                        map = f27143k0;
                                                                        if (map.containsKey(str17)) {
                                                                            iIntValue = ((Integer) map.get(cVar5.f27113b)).intValue();
                                                                        } else {
                                                                            iIntValue = -1;
                                                                        }
                                                                    } else {
                                                                        iIntValue = -1;
                                                                    }
                                                                    if (cVar5.f27131t == 0) {
                                                                        if (Float.compare(cVar5.f27134w, 0.0f) == 0) {
                                                                            iIntValue = 0;
                                                                        } else if (Float.compare(cVar5.f27134w, 90.0f) == 0) {
                                                                            iIntValue = 90;
                                                                        } else if (Float.compare(cVar5.f27134w, -180.0f) != 0) {
                                                                            iIntValue = 180;
                                                                        } else {
                                                                            iIntValue = 180;
                                                                        }
                                                                    }
                                                                    c3135s.f27003u = cVar5.f27125n;
                                                                    c3135s.f27004v = cVar5.f27126o;
                                                                    c3135s.f26968A = f8;
                                                                    c3135s.f27008z = iIntValue;
                                                                    c3135s.f26969B = cVar5.f27135x;
                                                                    c3135s.f26970C = cVar5.f27136y;
                                                                    c3135s.f26971D = c3126i;
                                                                    i12 = 2;
                                                                } else {
                                                                    str = str;
                                                                    str2 = str2;
                                                                    if (org.videolan.libvlc.media.MediaPlayer.MEDIA_MIMETYPE_TEXT_SUBRIP.equals(str34)) {
                                                                    }
                                                                    i12 = 3;
                                                                }
                                                                str18 = cVar5.f27113b;
                                                                if (str18 != null) {
                                                                    c3135s.f26984b = cVar5.f27113b;
                                                                }
                                                                c3135s.f26983a = Integer.toString(i33);
                                                                if (cVar5.f27111a) {
                                                                    str19 = "video/webm";
                                                                } else {
                                                                    str19 = "video/x-matroska";
                                                                }
                                                                c3135s.f26995m = O.p(str19);
                                                                c3135s.f26996n = O.p(str34);
                                                                c3135s.f26997o = i9;
                                                                c3135s.f26986d = cVar5.f27109Y;
                                                                c3135s.f26987e = i3119;
                                                                c3135s.f26999q = list;
                                                                c3135s.f26992j = str14;
                                                                c3135s.f27000r = cVar5.f27124m;
                                                                C3136t c3136tA6 = c3135s.a();
                                                                L lT6 = uVar2.t(cVar5.f27115d, i12);
                                                                cVar5.f27110Z = lT6;
                                                                lT6.b(c3136tA6);
                                                                sparseArray.put(cVar5.f27115d, cVar5);
                                                                dVar3 = dVar3;
                                                                cVar = null;
                                                                r317 = r312;
                                                            } else {
                                                                i46 += 255;
                                                                i44++;
                                                                r51 = r327;
                                                            }
                                                        }
                                                    } else {
                                                        i41 += 255;
                                                        i42++;
                                                    }
                                                }
                                            } catch (ArrayIndexOutOfBoundsException unused2) {
                                                throw P.a("Error parsing vorbis codec private", r10);
                                            }
                                        } catch (ArrayIndexOutOfBoundsException unused3) {
                                            r10 = 0;
                                        }
                                        break;
                                    case 5:
                                        str34 = "audio/mpeg-L2";
                                        r312 = r10;
                                        iA2 = -1;
                                        list = null;
                                        str14 = null;
                                        i9 = 4096;
                                        if (cVar5.f27100P != null) {
                                            str14 = rVarA.f7454a;
                                            str34 = "video/dolby-vision";
                                        }
                                        boolean z16 = cVar5.f27108X;
                                        if (cVar5.f27107W) {
                                            i11 = 2;
                                        } else {
                                            i11 = 0;
                                        }
                                        int i31114 = (z16 ? 1 : 0) | i11;
                                        c3135s = new C3135s();
                                        if (O.k(str34)) {
                                            c3135s.f26973F = cVar5.f27101Q;
                                            c3135s.f26974G = cVar5.f27103S;
                                            c3135s.f26975H = iA2;
                                            str = str;
                                            str2 = str2;
                                            i12 = 1;
                                        } else if (O.o(str34)) {
                                            if (cVar5.f27130s == 0) {
                                                i16 = cVar5.f27128q;
                                                i13 = -1;
                                                if (i16 == -1) {
                                                    i16 = cVar5.f27125n;
                                                }
                                                cVar5.f27128q = i16;
                                                i17 = cVar5.f27129r;
                                                if (i17 == -1) {
                                                    i17 = cVar5.f27126o;
                                                }
                                                cVar5.f27129r = i17;
                                            } else {
                                                i13 = -1;
                                            }
                                            i14 = cVar5.f27128q;
                                            if (i14 != i13) {
                                                f8 = -1.0f;
                                            } else {
                                                f8 = -1.0f;
                                            }
                                            if (cVar5.f27137z) {
                                                if (cVar5.f27090F != -1.0f) {
                                                    bArr = null;
                                                } else {
                                                    bArr = null;
                                                }
                                                int i31115 = cVar5.f27085A;
                                                int i31116 = cVar5.f27087C;
                                                int i31117 = cVar5.f27086B;
                                                int i31118 = cVar5.f27127p;
                                                c3126i = new C3126i(i31115, i31116, i31117, bArr, i31118, i31118);
                                            } else {
                                                c3126i = null;
                                            }
                                            str17 = cVar5.f27113b;
                                            if (str17 != null) {
                                                map = f27143k0;
                                                if (map.containsKey(str17)) {
                                                    iIntValue = ((Integer) map.get(cVar5.f27113b)).intValue();
                                                } else {
                                                    iIntValue = -1;
                                                }
                                            } else {
                                                iIntValue = -1;
                                            }
                                            if (cVar5.f27131t == 0) {
                                                if (Float.compare(cVar5.f27134w, 0.0f) == 0) {
                                                    iIntValue = 0;
                                                } else if (Float.compare(cVar5.f27134w, 90.0f) == 0) {
                                                    iIntValue = 90;
                                                } else if (Float.compare(cVar5.f27134w, -180.0f) != 0) {
                                                    iIntValue = 180;
                                                } else {
                                                    iIntValue = 180;
                                                }
                                            }
                                            c3135s.f27003u = cVar5.f27125n;
                                            c3135s.f27004v = cVar5.f27126o;
                                            c3135s.f26968A = f8;
                                            c3135s.f27008z = iIntValue;
                                            c3135s.f26969B = cVar5.f27135x;
                                            c3135s.f26970C = cVar5.f27136y;
                                            c3135s.f26971D = c3126i;
                                            i12 = 2;
                                        } else {
                                            str = str;
                                            str2 = str2;
                                            if (org.videolan.libvlc.media.MediaPlayer.MEDIA_MIMETYPE_TEXT_SUBRIP.equals(str34)) {
                                            }
                                            i12 = 3;
                                        }
                                        str18 = cVar5.f27113b;
                                        if (str18 != null) {
                                            c3135s.f26984b = cVar5.f27113b;
                                        }
                                        c3135s.f26983a = Integer.toString(i33);
                                        if (cVar5.f27111a) {
                                            str19 = "video/webm";
                                        } else {
                                            str19 = "video/x-matroska";
                                        }
                                        c3135s.f26995m = O.p(str19);
                                        c3135s.f26996n = O.p(str34);
                                        c3135s.f26997o = i9;
                                        c3135s.f26986d = cVar5.f27109Y;
                                        c3135s.f26987e = i31114;
                                        c3135s.f26999q = list;
                                        c3135s.f26992j = str14;
                                        c3135s.f27000r = cVar5.f27124m;
                                        C3136t c3136tA7 = c3135s.a();
                                        L lT7 = uVar2.t(cVar5.f27115d, i12);
                                        cVar5.f27110Z = lT7;
                                        lT7.b(c3136tA7);
                                        sparseArray.put(cVar5.f27115d, cVar5);
                                        dVar3 = dVar3;
                                        cVar = null;
                                        r317 = r312;
                                        break;
                                    case 6:
                                        str34 = "audio/mpeg";
                                        r312 = r10;
                                        iA2 = -1;
                                        list = null;
                                        str14 = null;
                                        i9 = 4096;
                                        if (cVar5.f27100P != null) {
                                            str14 = rVarA.f7454a;
                                            str34 = "video/dolby-vision";
                                        }
                                        boolean z17 = cVar5.f27108X;
                                        if (cVar5.f27107W) {
                                            i11 = 2;
                                        } else {
                                            i11 = 0;
                                        }
                                        int i31119 = (z17 ? 1 : 0) | i11;
                                        c3135s = new C3135s();
                                        if (O.k(str34)) {
                                            c3135s.f26973F = cVar5.f27101Q;
                                            c3135s.f26974G = cVar5.f27103S;
                                            c3135s.f26975H = iA2;
                                            str = str;
                                            str2 = str2;
                                            i12 = 1;
                                        } else if (O.o(str34)) {
                                            if (cVar5.f27130s == 0) {
                                                i16 = cVar5.f27128q;
                                                i13 = -1;
                                                if (i16 == -1) {
                                                    i16 = cVar5.f27125n;
                                                }
                                                cVar5.f27128q = i16;
                                                i17 = cVar5.f27129r;
                                                if (i17 == -1) {
                                                    i17 = cVar5.f27126o;
                                                }
                                                cVar5.f27129r = i17;
                                            } else {
                                                i13 = -1;
                                            }
                                            i14 = cVar5.f27128q;
                                            if (i14 != i13) {
                                                f8 = -1.0f;
                                            } else {
                                                f8 = -1.0f;
                                            }
                                            if (cVar5.f27137z) {
                                                if (cVar5.f27090F != -1.0f) {
                                                    bArr = null;
                                                } else {
                                                    bArr = null;
                                                }
                                                int i311110 = cVar5.f27085A;
                                                int i311111 = cVar5.f27087C;
                                                int i311112 = cVar5.f27086B;
                                                int i311113 = cVar5.f27127p;
                                                c3126i = new C3126i(i311110, i311111, i311112, bArr, i311113, i311113);
                                            } else {
                                                c3126i = null;
                                            }
                                            str17 = cVar5.f27113b;
                                            if (str17 != null) {
                                                map = f27143k0;
                                                if (map.containsKey(str17)) {
                                                    iIntValue = ((Integer) map.get(cVar5.f27113b)).intValue();
                                                } else {
                                                    iIntValue = -1;
                                                }
                                            } else {
                                                iIntValue = -1;
                                            }
                                            if (cVar5.f27131t == 0) {
                                                if (Float.compare(cVar5.f27134w, 0.0f) == 0) {
                                                    iIntValue = 0;
                                                } else if (Float.compare(cVar5.f27134w, 90.0f) == 0) {
                                                    iIntValue = 90;
                                                } else if (Float.compare(cVar5.f27134w, -180.0f) != 0) {
                                                    iIntValue = 180;
                                                } else {
                                                    iIntValue = 180;
                                                }
                                            }
                                            c3135s.f27003u = cVar5.f27125n;
                                            c3135s.f27004v = cVar5.f27126o;
                                            c3135s.f26968A = f8;
                                            c3135s.f27008z = iIntValue;
                                            c3135s.f26969B = cVar5.f27135x;
                                            c3135s.f26970C = cVar5.f27136y;
                                            c3135s.f26971D = c3126i;
                                            i12 = 2;
                                        } else {
                                            str = str;
                                            str2 = str2;
                                            if (org.videolan.libvlc.media.MediaPlayer.MEDIA_MIMETYPE_TEXT_SUBRIP.equals(str34)) {
                                            }
                                            i12 = 3;
                                        }
                                        str18 = cVar5.f27113b;
                                        if (str18 != null) {
                                            c3135s.f26984b = cVar5.f27113b;
                                        }
                                        c3135s.f26983a = Integer.toString(i33);
                                        if (cVar5.f27111a) {
                                            str19 = "video/webm";
                                        } else {
                                            str19 = "video/x-matroska";
                                        }
                                        c3135s.f26995m = O.p(str19);
                                        c3135s.f26996n = O.p(str34);
                                        c3135s.f26997o = i9;
                                        c3135s.f26986d = cVar5.f27109Y;
                                        c3135s.f26987e = i31119;
                                        c3135s.f26999q = list;
                                        c3135s.f26992j = str14;
                                        c3135s.f27000r = cVar5.f27124m;
                                        C3136t c3136tA8 = c3135s.a();
                                        L lT8 = uVar2.t(cVar5.f27115d, i12);
                                        cVar5.f27110Z = lT8;
                                        lT8.b(c3136tA8);
                                        sparseArray.put(cVar5.f27115d, cVar5);
                                        dVar3 = dVar3;
                                        cVar = null;
                                        r317 = r312;
                                        break;
                                    case 7:
                                        E e10 = new E(cVar5.a(cVar5.f27114c));
                                        try {
                                            e10.M(16);
                                            long jQ = e10.q();
                                            if (jQ == 1482049860) {
                                                runtimeException = null;
                                                try {
                                                    pair = new Pair("video/divx", null);
                                                    str15 = null;
                                                } catch (ArrayIndexOutOfBoundsException unused4) {
                                                }
                                            } else {
                                                if (jQ == 859189832) {
                                                    pair = new Pair("video/3gpp", null);
                                                } else {
                                                    if (jQ == 826496599) {
                                                        int i52 = e10.f28036b + 20;
                                                        byte[] bArr7 = e10.f28035a;
                                                        while (true) {
                                                            if (i52 < bArr7.length - 4) {
                                                                if (bArr7[i52] == 0) {
                                                                    i10 = 1;
                                                                    if (bArr7[i52 + 1] == 0 && bArr7[i52 + 2] == 1) {
                                                                        if (bArr7[i52 + 3] == 15) {
                                                                            pair = new Pair("video/wvc1", Collections.singletonList(Arrays.copyOfRange(bArr7, i52, bArr7.length)));
                                                                        }
                                                                    }
                                                                    i52 += i10;
                                                                }
                                                                i10 = 1;
                                                                i52 += i10;
                                                            } else {
                                                                try {
                                                                    throw P.a("Failed to find FourCC VC1 initialization data", null);
                                                                } catch (ArrayIndexOutOfBoundsException unused5) {
                                                                    runtimeException = null;
                                                                }
                                                            }
                                                            throw P.a("Error parsing FourCC private data", runtimeException);
                                                        }
                                                    }
                                                    x.f("MatroskaExtractor", "Unknown FourCC. Setting mimeType to video/x-unknown");
                                                    str15 = null;
                                                    pair = new Pair("video/x-unknown", null);
                                                }
                                                str15 = null;
                                            }
                                            String str36 = (String) pair.first;
                                            r312 = r10;
                                            list = (List) pair.second;
                                            iA2 = -1;
                                            i9 = -1;
                                            String str37 = str15;
                                            str34 = str36;
                                            str14 = str37;
                                            if (cVar5.f27100P != null) {
                                                str14 = rVarA.f7454a;
                                                str34 = "video/dolby-vision";
                                            }
                                            boolean z18 = cVar5.f27108X;
                                            if (cVar5.f27107W) {
                                                i11 = 2;
                                            } else {
                                                i11 = 0;
                                            }
                                            int i311114 = (z18 ? 1 : 0) | i11;
                                            c3135s = new C3135s();
                                            if (O.k(str34)) {
                                                c3135s.f26973F = cVar5.f27101Q;
                                                c3135s.f26974G = cVar5.f27103S;
                                                c3135s.f26975H = iA2;
                                                str = str;
                                                str2 = str2;
                                                i12 = 1;
                                            } else if (O.o(str34)) {
                                                if (cVar5.f27130s == 0) {
                                                    i16 = cVar5.f27128q;
                                                    i13 = -1;
                                                    if (i16 == -1) {
                                                        i16 = cVar5.f27125n;
                                                    }
                                                    cVar5.f27128q = i16;
                                                    i17 = cVar5.f27129r;
                                                    if (i17 == -1) {
                                                        i17 = cVar5.f27126o;
                                                    }
                                                    cVar5.f27129r = i17;
                                                } else {
                                                    i13 = -1;
                                                }
                                                i14 = cVar5.f27128q;
                                                if (i14 != i13) {
                                                    f8 = -1.0f;
                                                } else {
                                                    f8 = -1.0f;
                                                }
                                                if (cVar5.f27137z) {
                                                    if (cVar5.f27090F != -1.0f) {
                                                        bArr = null;
                                                    } else {
                                                        bArr = null;
                                                    }
                                                    int i311115 = cVar5.f27085A;
                                                    int i311116 = cVar5.f27087C;
                                                    int i311117 = cVar5.f27086B;
                                                    int i311118 = cVar5.f27127p;
                                                    c3126i = new C3126i(i311115, i311116, i311117, bArr, i311118, i311118);
                                                } else {
                                                    c3126i = null;
                                                }
                                                str17 = cVar5.f27113b;
                                                if (str17 != null) {
                                                    map = f27143k0;
                                                    if (map.containsKey(str17)) {
                                                        iIntValue = ((Integer) map.get(cVar5.f27113b)).intValue();
                                                    } else {
                                                        iIntValue = -1;
                                                    }
                                                } else {
                                                    iIntValue = -1;
                                                }
                                                if (cVar5.f27131t == 0) {
                                                    if (Float.compare(cVar5.f27134w, 0.0f) == 0) {
                                                        iIntValue = 0;
                                                    } else if (Float.compare(cVar5.f27134w, 90.0f) == 0) {
                                                        iIntValue = 90;
                                                    } else if (Float.compare(cVar5.f27134w, -180.0f) != 0) {
                                                        iIntValue = 180;
                                                    } else {
                                                        iIntValue = 180;
                                                    }
                                                }
                                                c3135s.f27003u = cVar5.f27125n;
                                                c3135s.f27004v = cVar5.f27126o;
                                                c3135s.f26968A = f8;
                                                c3135s.f27008z = iIntValue;
                                                c3135s.f26969B = cVar5.f27135x;
                                                c3135s.f26970C = cVar5.f27136y;
                                                c3135s.f26971D = c3126i;
                                                i12 = 2;
                                            } else {
                                                str = str;
                                                str2 = str2;
                                                if (org.videolan.libvlc.media.MediaPlayer.MEDIA_MIMETYPE_TEXT_SUBRIP.equals(str34)) {
                                                }
                                                i12 = 3;
                                            }
                                            str18 = cVar5.f27113b;
                                            if (str18 != null) {
                                                c3135s.f26984b = cVar5.f27113b;
                                            }
                                            c3135s.f26983a = Integer.toString(i33);
                                            if (cVar5.f27111a) {
                                                str19 = "video/webm";
                                            } else {
                                                str19 = "video/x-matroska";
                                            }
                                            c3135s.f26995m = O.p(str19);
                                            c3135s.f26996n = O.p(str34);
                                            c3135s.f26997o = i9;
                                            c3135s.f26986d = cVar5.f27109Y;
                                            c3135s.f26987e = i311114;
                                            c3135s.f26999q = list;
                                            c3135s.f26992j = str14;
                                            c3135s.f27000r = cVar5.f27124m;
                                            C3136t c3136tA9 = c3135s.a();
                                            L lT9 = uVar2.t(cVar5.f27115d, i12);
                                            cVar5.f27110Z = lT9;
                                            lT9.b(c3136tA9);
                                            sparseArray.put(cVar5.f27115d, cVar5);
                                            dVar3 = dVar3;
                                            cVar = null;
                                            r317 = r312;
                                        } catch (ArrayIndexOutOfBoundsException unused6) {
                                            runtimeException = null;
                                        }
                                        break;
                                    case 8:
                                        byte[] bArr8 = new byte[4];
                                        System.arraycopy(cVar5.a(cVar5.f27114c), 0, bArr8, 0, 4);
                                        str34 = "application/dvbsubs";
                                        listX = H.x(bArr8);
                                        listSingletonList = listX;
                                        iA2 = -1;
                                        list3 = listSingletonList;
                                        r316 = r10;
                                        str14 = null;
                                        list4 = list3;
                                        r313 = r316;
                                        i9 = -1;
                                        list = list4;
                                        r312 = r313;
                                        if (cVar5.f27100P != null) {
                                            str14 = rVarA.f7454a;
                                            str34 = "video/dolby-vision";
                                        }
                                        boolean z19 = cVar5.f27108X;
                                        if (cVar5.f27107W) {
                                            i11 = 2;
                                        } else {
                                            i11 = 0;
                                        }
                                        int i311119 = (z19 ? 1 : 0) | i11;
                                        c3135s = new C3135s();
                                        if (O.k(str34)) {
                                            c3135s.f26973F = cVar5.f27101Q;
                                            c3135s.f26974G = cVar5.f27103S;
                                            c3135s.f26975H = iA2;
                                            str = str;
                                            str2 = str2;
                                            i12 = 1;
                                        } else if (O.o(str34)) {
                                            if (cVar5.f27130s == 0) {
                                                i16 = cVar5.f27128q;
                                                i13 = -1;
                                                if (i16 == -1) {
                                                    i16 = cVar5.f27125n;
                                                }
                                                cVar5.f27128q = i16;
                                                i17 = cVar5.f27129r;
                                                if (i17 == -1) {
                                                    i17 = cVar5.f27126o;
                                                }
                                                cVar5.f27129r = i17;
                                            } else {
                                                i13 = -1;
                                            }
                                            i14 = cVar5.f27128q;
                                            if (i14 != i13) {
                                                f8 = -1.0f;
                                            } else {
                                                f8 = -1.0f;
                                            }
                                            if (cVar5.f27137z) {
                                                if (cVar5.f27090F != -1.0f) {
                                                    bArr = null;
                                                } else {
                                                    bArr = null;
                                                }
                                                int i3111110 = cVar5.f27085A;
                                                int i3111111 = cVar5.f27087C;
                                                int i3111112 = cVar5.f27086B;
                                                int i3111113 = cVar5.f27127p;
                                                c3126i = new C3126i(i3111110, i3111111, i3111112, bArr, i3111113, i3111113);
                                            } else {
                                                c3126i = null;
                                            }
                                            str17 = cVar5.f27113b;
                                            if (str17 != null) {
                                                map = f27143k0;
                                                if (map.containsKey(str17)) {
                                                    iIntValue = ((Integer) map.get(cVar5.f27113b)).intValue();
                                                } else {
                                                    iIntValue = -1;
                                                }
                                            } else {
                                                iIntValue = -1;
                                            }
                                            if (cVar5.f27131t == 0) {
                                                if (Float.compare(cVar5.f27134w, 0.0f) == 0) {
                                                    iIntValue = 0;
                                                } else if (Float.compare(cVar5.f27134w, 90.0f) == 0) {
                                                    iIntValue = 90;
                                                } else if (Float.compare(cVar5.f27134w, -180.0f) != 0) {
                                                    iIntValue = 180;
                                                } else {
                                                    iIntValue = 180;
                                                }
                                            }
                                            c3135s.f27003u = cVar5.f27125n;
                                            c3135s.f27004v = cVar5.f27126o;
                                            c3135s.f26968A = f8;
                                            c3135s.f27008z = iIntValue;
                                            c3135s.f26969B = cVar5.f27135x;
                                            c3135s.f26970C = cVar5.f27136y;
                                            c3135s.f26971D = c3126i;
                                            i12 = 2;
                                        } else {
                                            str = str;
                                            str2 = str2;
                                            if (org.videolan.libvlc.media.MediaPlayer.MEDIA_MIMETYPE_TEXT_SUBRIP.equals(str34)) {
                                            }
                                            i12 = 3;
                                        }
                                        str18 = cVar5.f27113b;
                                        if (str18 != null) {
                                            c3135s.f26984b = cVar5.f27113b;
                                        }
                                        c3135s.f26983a = Integer.toString(i33);
                                        if (cVar5.f27111a) {
                                            str19 = "video/webm";
                                        } else {
                                            str19 = "video/x-matroska";
                                        }
                                        c3135s.f26995m = O.p(str19);
                                        c3135s.f26996n = O.p(str34);
                                        c3135s.f26997o = i9;
                                        c3135s.f26986d = cVar5.f27109Y;
                                        c3135s.f26987e = i311119;
                                        c3135s.f26999q = list;
                                        c3135s.f26992j = str14;
                                        c3135s.f27000r = cVar5.f27124m;
                                        C3136t c3136tA10 = c3135s.a();
                                        L lT10 = uVar2.t(cVar5.f27115d, i12);
                                        cVar5.f27110Z = lT10;
                                        lT10.b(c3136tA10);
                                        sparseArray.put(cVar5.f27115d, cVar5);
                                        dVar3 = dVar3;
                                        cVar = null;
                                        r317 = r312;
                                        break;
                                    case 10:
                                        C0372e c0372eA = C0372e.a(new E(cVar5.a(cVar5.f27114c)));
                                        cVar5.f27112a0 = c0372eA.f7394b;
                                        str34 = "video/avc";
                                        list2 = c0372eA.f7393a;
                                        str16 = c0372eA.f7404l;
                                        r312 = r10;
                                        iA2 = -1;
                                        i9 = -1;
                                        List list5 = list2;
                                        str14 = str16;
                                        list = list5;
                                        if (cVar5.f27100P != null) {
                                            str14 = rVarA.f7454a;
                                            str34 = "video/dolby-vision";
                                        }
                                        boolean z110 = cVar5.f27108X;
                                        if (cVar5.f27107W) {
                                            i11 = 2;
                                        } else {
                                            i11 = 0;
                                        }
                                        int i3111114 = (z110 ? 1 : 0) | i11;
                                        c3135s = new C3135s();
                                        if (O.k(str34)) {
                                            c3135s.f26973F = cVar5.f27101Q;
                                            c3135s.f26974G = cVar5.f27103S;
                                            c3135s.f26975H = iA2;
                                            str = str;
                                            str2 = str2;
                                            i12 = 1;
                                        } else if (O.o(str34)) {
                                            if (cVar5.f27130s == 0) {
                                                i16 = cVar5.f27128q;
                                                i13 = -1;
                                                if (i16 == -1) {
                                                    i16 = cVar5.f27125n;
                                                }
                                                cVar5.f27128q = i16;
                                                i17 = cVar5.f27129r;
                                                if (i17 == -1) {
                                                    i17 = cVar5.f27126o;
                                                }
                                                cVar5.f27129r = i17;
                                            } else {
                                                i13 = -1;
                                            }
                                            i14 = cVar5.f27128q;
                                            if (i14 != i13) {
                                                f8 = -1.0f;
                                            } else {
                                                f8 = -1.0f;
                                            }
                                            if (cVar5.f27137z) {
                                                if (cVar5.f27090F != -1.0f) {
                                                    bArr = null;
                                                } else {
                                                    bArr = null;
                                                }
                                                int i3111115 = cVar5.f27085A;
                                                int i3111116 = cVar5.f27087C;
                                                int i3111117 = cVar5.f27086B;
                                                int i3111118 = cVar5.f27127p;
                                                c3126i = new C3126i(i3111115, i3111116, i3111117, bArr, i3111118, i3111118);
                                            } else {
                                                c3126i = null;
                                            }
                                            str17 = cVar5.f27113b;
                                            if (str17 != null) {
                                                map = f27143k0;
                                                if (map.containsKey(str17)) {
                                                    iIntValue = ((Integer) map.get(cVar5.f27113b)).intValue();
                                                } else {
                                                    iIntValue = -1;
                                                }
                                            } else {
                                                iIntValue = -1;
                                            }
                                            if (cVar5.f27131t == 0) {
                                                if (Float.compare(cVar5.f27134w, 0.0f) == 0) {
                                                    iIntValue = 0;
                                                } else if (Float.compare(cVar5.f27134w, 90.0f) == 0) {
                                                    iIntValue = 90;
                                                } else if (Float.compare(cVar5.f27134w, -180.0f) != 0) {
                                                    iIntValue = 180;
                                                } else {
                                                    iIntValue = 180;
                                                }
                                            }
                                            c3135s.f27003u = cVar5.f27125n;
                                            c3135s.f27004v = cVar5.f27126o;
                                            c3135s.f26968A = f8;
                                            c3135s.f27008z = iIntValue;
                                            c3135s.f26969B = cVar5.f27135x;
                                            c3135s.f26970C = cVar5.f27136y;
                                            c3135s.f26971D = c3126i;
                                            i12 = 2;
                                        } else {
                                            str = str;
                                            str2 = str2;
                                            if (org.videolan.libvlc.media.MediaPlayer.MEDIA_MIMETYPE_TEXT_SUBRIP.equals(str34)) {
                                            }
                                            i12 = 3;
                                        }
                                        str18 = cVar5.f27113b;
                                        if (str18 != null) {
                                            c3135s.f26984b = cVar5.f27113b;
                                        }
                                        c3135s.f26983a = Integer.toString(i33);
                                        if (cVar5.f27111a) {
                                            str19 = "video/webm";
                                        } else {
                                            str19 = "video/x-matroska";
                                        }
                                        c3135s.f26995m = O.p(str19);
                                        c3135s.f26996n = O.p(str34);
                                        c3135s.f26997o = i9;
                                        c3135s.f26986d = cVar5.f27109Y;
                                        c3135s.f26987e = i3111114;
                                        c3135s.f26999q = list;
                                        c3135s.f26992j = str14;
                                        c3135s.f27000r = cVar5.f27124m;
                                        C3136t c3136tA11 = c3135s.a();
                                        L lT11 = uVar2.t(cVar5.f27115d, i12);
                                        cVar5.f27110Z = lT11;
                                        lT11.b(c3136tA11);
                                        sparseArray.put(cVar5.f27115d, cVar5);
                                        dVar3 = dVar3;
                                        cVar = null;
                                        r317 = r312;
                                        break;
                                    case 11:
                                        str34 = "application/vobsub";
                                        listX = H.x(cVar5.a(cVar5.f27114c));
                                        listSingletonList = listX;
                                        iA2 = -1;
                                        list3 = listSingletonList;
                                        r316 = r10;
                                        str14 = null;
                                        list4 = list3;
                                        r313 = r316;
                                        i9 = -1;
                                        list = list4;
                                        r312 = r313;
                                        if (cVar5.f27100P != null) {
                                            str14 = rVarA.f7454a;
                                            str34 = "video/dolby-vision";
                                        }
                                        boolean z111 = cVar5.f27108X;
                                        if (cVar5.f27107W) {
                                            i11 = 2;
                                        } else {
                                            i11 = 0;
                                        }
                                        int i3111119 = (z111 ? 1 : 0) | i11;
                                        c3135s = new C3135s();
                                        if (O.k(str34)) {
                                            c3135s.f26973F = cVar5.f27101Q;
                                            c3135s.f26974G = cVar5.f27103S;
                                            c3135s.f26975H = iA2;
                                            str = str;
                                            str2 = str2;
                                            i12 = 1;
                                        } else if (O.o(str34)) {
                                            if (cVar5.f27130s == 0) {
                                                i16 = cVar5.f27128q;
                                                i13 = -1;
                                                if (i16 == -1) {
                                                    i16 = cVar5.f27125n;
                                                }
                                                cVar5.f27128q = i16;
                                                i17 = cVar5.f27129r;
                                                if (i17 == -1) {
                                                    i17 = cVar5.f27126o;
                                                }
                                                cVar5.f27129r = i17;
                                            } else {
                                                i13 = -1;
                                            }
                                            i14 = cVar5.f27128q;
                                            if (i14 != i13) {
                                                f8 = -1.0f;
                                            } else {
                                                f8 = -1.0f;
                                            }
                                            if (cVar5.f27137z) {
                                                if (cVar5.f27090F != -1.0f) {
                                                    bArr = null;
                                                } else {
                                                    bArr = null;
                                                }
                                                int i31111110 = cVar5.f27085A;
                                                int i31111111 = cVar5.f27087C;
                                                int i31111112 = cVar5.f27086B;
                                                int i31111113 = cVar5.f27127p;
                                                c3126i = new C3126i(i31111110, i31111111, i31111112, bArr, i31111113, i31111113);
                                            } else {
                                                c3126i = null;
                                            }
                                            str17 = cVar5.f27113b;
                                            if (str17 != null) {
                                                map = f27143k0;
                                                if (map.containsKey(str17)) {
                                                    iIntValue = ((Integer) map.get(cVar5.f27113b)).intValue();
                                                } else {
                                                    iIntValue = -1;
                                                }
                                            } else {
                                                iIntValue = -1;
                                            }
                                            if (cVar5.f27131t == 0) {
                                                if (Float.compare(cVar5.f27134w, 0.0f) == 0) {
                                                    iIntValue = 0;
                                                } else if (Float.compare(cVar5.f27134w, 90.0f) == 0) {
                                                    iIntValue = 90;
                                                } else if (Float.compare(cVar5.f27134w, -180.0f) != 0) {
                                                    iIntValue = 180;
                                                } else {
                                                    iIntValue = 180;
                                                }
                                            }
                                            c3135s.f27003u = cVar5.f27125n;
                                            c3135s.f27004v = cVar5.f27126o;
                                            c3135s.f26968A = f8;
                                            c3135s.f27008z = iIntValue;
                                            c3135s.f26969B = cVar5.f27135x;
                                            c3135s.f26970C = cVar5.f27136y;
                                            c3135s.f26971D = c3126i;
                                            i12 = 2;
                                        } else {
                                            str = str;
                                            str2 = str2;
                                            if (org.videolan.libvlc.media.MediaPlayer.MEDIA_MIMETYPE_TEXT_SUBRIP.equals(str34)) {
                                            }
                                            i12 = 3;
                                        }
                                        str18 = cVar5.f27113b;
                                        if (str18 != null) {
                                            c3135s.f26984b = cVar5.f27113b;
                                        }
                                        c3135s.f26983a = Integer.toString(i33);
                                        if (cVar5.f27111a) {
                                            str19 = "video/webm";
                                        } else {
                                            str19 = "video/x-matroska";
                                        }
                                        c3135s.f26995m = O.p(str19);
                                        c3135s.f26996n = O.p(str34);
                                        c3135s.f26997o = i9;
                                        c3135s.f26986d = cVar5.f27109Y;
                                        c3135s.f26987e = i3111119;
                                        c3135s.f26999q = list;
                                        c3135s.f26992j = str14;
                                        c3135s.f27000r = cVar5.f27124m;
                                        C3136t c3136tA12 = c3135s.a();
                                        L lT12 = uVar2.t(cVar5.f27115d, i12);
                                        cVar5.f27110Z = lT12;
                                        lT12.b(c3136tA12);
                                        sparseArray.put(cVar5.f27115d, cVar5);
                                        dVar3 = dVar3;
                                        cVar = null;
                                        r317 = r312;
                                        break;
                                    case 12:
                                        str34 = "audio/vnd.dts.hd";
                                        r311 = r10;
                                        iA2 = -1;
                                        r314 = r311;
                                        list3 = null;
                                        r316 = r314;
                                        str14 = null;
                                        list4 = list3;
                                        r313 = r316;
                                        i9 = -1;
                                        list = list4;
                                        r312 = r313;
                                        if (cVar5.f27100P != null) {
                                            str14 = rVarA.f7454a;
                                            str34 = "video/dolby-vision";
                                        }
                                        boolean z112 = cVar5.f27108X;
                                        if (cVar5.f27107W) {
                                            i11 = 2;
                                        } else {
                                            i11 = 0;
                                        }
                                        int i31111114 = (z112 ? 1 : 0) | i11;
                                        c3135s = new C3135s();
                                        if (O.k(str34)) {
                                            c3135s.f26973F = cVar5.f27101Q;
                                            c3135s.f26974G = cVar5.f27103S;
                                            c3135s.f26975H = iA2;
                                            str = str;
                                            str2 = str2;
                                            i12 = 1;
                                        } else if (O.o(str34)) {
                                            if (cVar5.f27130s == 0) {
                                                i16 = cVar5.f27128q;
                                                i13 = -1;
                                                if (i16 == -1) {
                                                    i16 = cVar5.f27125n;
                                                }
                                                cVar5.f27128q = i16;
                                                i17 = cVar5.f27129r;
                                                if (i17 == -1) {
                                                    i17 = cVar5.f27126o;
                                                }
                                                cVar5.f27129r = i17;
                                            } else {
                                                i13 = -1;
                                            }
                                            i14 = cVar5.f27128q;
                                            if (i14 != i13) {
                                                f8 = -1.0f;
                                            } else {
                                                f8 = -1.0f;
                                            }
                                            if (cVar5.f27137z) {
                                                if (cVar5.f27090F != -1.0f) {
                                                    bArr = null;
                                                } else {
                                                    bArr = null;
                                                }
                                                int i31111115 = cVar5.f27085A;
                                                int i31111116 = cVar5.f27087C;
                                                int i31111117 = cVar5.f27086B;
                                                int i31111118 = cVar5.f27127p;
                                                c3126i = new C3126i(i31111115, i31111116, i31111117, bArr, i31111118, i31111118);
                                            } else {
                                                c3126i = null;
                                            }
                                            str17 = cVar5.f27113b;
                                            if (str17 != null) {
                                                map = f27143k0;
                                                if (map.containsKey(str17)) {
                                                    iIntValue = ((Integer) map.get(cVar5.f27113b)).intValue();
                                                } else {
                                                    iIntValue = -1;
                                                }
                                            } else {
                                                iIntValue = -1;
                                            }
                                            if (cVar5.f27131t == 0) {
                                                if (Float.compare(cVar5.f27134w, 0.0f) == 0) {
                                                    iIntValue = 0;
                                                } else if (Float.compare(cVar5.f27134w, 90.0f) == 0) {
                                                    iIntValue = 90;
                                                } else if (Float.compare(cVar5.f27134w, -180.0f) != 0) {
                                                    iIntValue = 180;
                                                } else {
                                                    iIntValue = 180;
                                                }
                                            }
                                            c3135s.f27003u = cVar5.f27125n;
                                            c3135s.f27004v = cVar5.f27126o;
                                            c3135s.f26968A = f8;
                                            c3135s.f27008z = iIntValue;
                                            c3135s.f26969B = cVar5.f27135x;
                                            c3135s.f26970C = cVar5.f27136y;
                                            c3135s.f26971D = c3126i;
                                            i12 = 2;
                                        } else {
                                            str = str;
                                            str2 = str2;
                                            if (org.videolan.libvlc.media.MediaPlayer.MEDIA_MIMETYPE_TEXT_SUBRIP.equals(str34)) {
                                            }
                                            i12 = 3;
                                        }
                                        str18 = cVar5.f27113b;
                                        if (str18 != null) {
                                            c3135s.f26984b = cVar5.f27113b;
                                        }
                                        c3135s.f26983a = Integer.toString(i33);
                                        if (cVar5.f27111a) {
                                            str19 = "video/webm";
                                        } else {
                                            str19 = "video/x-matroska";
                                        }
                                        c3135s.f26995m = O.p(str19);
                                        c3135s.f26996n = O.p(str34);
                                        c3135s.f26997o = i9;
                                        c3135s.f26986d = cVar5.f27109Y;
                                        c3135s.f26987e = i31111114;
                                        c3135s.f26999q = list;
                                        c3135s.f26992j = str14;
                                        c3135s.f27000r = cVar5.f27124m;
                                        C3136t c3136tA13 = c3135s.a();
                                        L lT13 = uVar2.t(cVar5.f27115d, i12);
                                        cVar5.f27110Z = lT13;
                                        lT13.b(c3136tA13);
                                        sparseArray.put(cVar5.f27115d, cVar5);
                                        dVar3 = dVar3;
                                        cVar = null;
                                        r317 = r312;
                                        break;
                                    case 13:
                                        List listSingletonList2 = Collections.singletonList(cVar5.a(cVar5.f27114c));
                                        r rVarG = AbstractC0368a.g(new D(cVar5.f27123l, 0, (Object) null), false);
                                        cVar5.f27103S = rVarG.f7455b;
                                        cVar5.f27101Q = rVarG.f7456c;
                                        str34 = "audio/mp4a-latm";
                                        str14 = rVarG.f7454a;
                                        r313 = r10;
                                        iA2 = -1;
                                        list4 = listSingletonList2;
                                        i9 = -1;
                                        list = list4;
                                        r312 = r313;
                                        if (cVar5.f27100P != null) {
                                            str14 = rVarA.f7454a;
                                            str34 = "video/dolby-vision";
                                        }
                                        boolean z113 = cVar5.f27108X;
                                        if (cVar5.f27107W) {
                                            i11 = 2;
                                        } else {
                                            i11 = 0;
                                        }
                                        int i31111119 = (z113 ? 1 : 0) | i11;
                                        c3135s = new C3135s();
                                        if (O.k(str34)) {
                                            c3135s.f26973F = cVar5.f27101Q;
                                            c3135s.f26974G = cVar5.f27103S;
                                            c3135s.f26975H = iA2;
                                            str = str;
                                            str2 = str2;
                                            i12 = 1;
                                        } else if (O.o(str34)) {
                                            if (cVar5.f27130s == 0) {
                                                i16 = cVar5.f27128q;
                                                i13 = -1;
                                                if (i16 == -1) {
                                                    i16 = cVar5.f27125n;
                                                }
                                                cVar5.f27128q = i16;
                                                i17 = cVar5.f27129r;
                                                if (i17 == -1) {
                                                    i17 = cVar5.f27126o;
                                                }
                                                cVar5.f27129r = i17;
                                            } else {
                                                i13 = -1;
                                            }
                                            i14 = cVar5.f27128q;
                                            if (i14 != i13) {
                                                f8 = -1.0f;
                                            } else {
                                                f8 = -1.0f;
                                            }
                                            if (cVar5.f27137z) {
                                                if (cVar5.f27090F != -1.0f) {
                                                    bArr = null;
                                                } else {
                                                    bArr = null;
                                                }
                                                int i311111110 = cVar5.f27085A;
                                                int i311111111 = cVar5.f27087C;
                                                int i311111112 = cVar5.f27086B;
                                                int i311111113 = cVar5.f27127p;
                                                c3126i = new C3126i(i311111110, i311111111, i311111112, bArr, i311111113, i311111113);
                                            } else {
                                                c3126i = null;
                                            }
                                            str17 = cVar5.f27113b;
                                            if (str17 != null) {
                                                map = f27143k0;
                                                if (map.containsKey(str17)) {
                                                    iIntValue = ((Integer) map.get(cVar5.f27113b)).intValue();
                                                } else {
                                                    iIntValue = -1;
                                                }
                                            } else {
                                                iIntValue = -1;
                                            }
                                            if (cVar5.f27131t == 0) {
                                                if (Float.compare(cVar5.f27134w, 0.0f) == 0) {
                                                    iIntValue = 0;
                                                } else if (Float.compare(cVar5.f27134w, 90.0f) == 0) {
                                                    iIntValue = 90;
                                                } else if (Float.compare(cVar5.f27134w, -180.0f) != 0) {
                                                    iIntValue = 180;
                                                } else {
                                                    iIntValue = 180;
                                                }
                                            }
                                            c3135s.f27003u = cVar5.f27125n;
                                            c3135s.f27004v = cVar5.f27126o;
                                            c3135s.f26968A = f8;
                                            c3135s.f27008z = iIntValue;
                                            c3135s.f26969B = cVar5.f27135x;
                                            c3135s.f26970C = cVar5.f27136y;
                                            c3135s.f26971D = c3126i;
                                            i12 = 2;
                                        } else {
                                            str = str;
                                            str2 = str2;
                                            if (org.videolan.libvlc.media.MediaPlayer.MEDIA_MIMETYPE_TEXT_SUBRIP.equals(str34)) {
                                            }
                                            i12 = 3;
                                        }
                                        str18 = cVar5.f27113b;
                                        if (str18 != null) {
                                            c3135s.f26984b = cVar5.f27113b;
                                        }
                                        c3135s.f26983a = Integer.toString(i33);
                                        if (cVar5.f27111a) {
                                            str19 = "video/webm";
                                        } else {
                                            str19 = "video/x-matroska";
                                        }
                                        c3135s.f26995m = O.p(str19);
                                        c3135s.f26996n = O.p(str34);
                                        c3135s.f26997o = i9;
                                        c3135s.f26986d = cVar5.f27109Y;
                                        c3135s.f26987e = i31111119;
                                        c3135s.f26999q = list;
                                        c3135s.f26992j = str14;
                                        c3135s.f27000r = cVar5.f27124m;
                                        C3136t c3136tA14 = c3135s.a();
                                        L lT14 = uVar2.t(cVar5.f27115d, i12);
                                        cVar5.f27110Z = lT14;
                                        lT14.b(c3136tA14);
                                        sparseArray.put(cVar5.f27115d, cVar5);
                                        dVar3 = dVar3;
                                        cVar = null;
                                        r317 = r312;
                                        break;
                                    case 14:
                                        str34 = "audio/ac3";
                                        r311 = r10;
                                        iA2 = -1;
                                        r314 = r311;
                                        list3 = null;
                                        r316 = r314;
                                        str14 = null;
                                        list4 = list3;
                                        r313 = r316;
                                        i9 = -1;
                                        list = list4;
                                        r312 = r313;
                                        if (cVar5.f27100P != null) {
                                            str14 = rVarA.f7454a;
                                            str34 = "video/dolby-vision";
                                        }
                                        boolean z114 = cVar5.f27108X;
                                        if (cVar5.f27107W) {
                                            i11 = 2;
                                        } else {
                                            i11 = 0;
                                        }
                                        int i311111114 = (z114 ? 1 : 0) | i11;
                                        c3135s = new C3135s();
                                        if (O.k(str34)) {
                                            c3135s.f26973F = cVar5.f27101Q;
                                            c3135s.f26974G = cVar5.f27103S;
                                            c3135s.f26975H = iA2;
                                            str = str;
                                            str2 = str2;
                                            i12 = 1;
                                        } else if (O.o(str34)) {
                                            if (cVar5.f27130s == 0) {
                                                i16 = cVar5.f27128q;
                                                i13 = -1;
                                                if (i16 == -1) {
                                                    i16 = cVar5.f27125n;
                                                }
                                                cVar5.f27128q = i16;
                                                i17 = cVar5.f27129r;
                                                if (i17 == -1) {
                                                    i17 = cVar5.f27126o;
                                                }
                                                cVar5.f27129r = i17;
                                            } else {
                                                i13 = -1;
                                            }
                                            i14 = cVar5.f27128q;
                                            if (i14 != i13) {
                                                f8 = -1.0f;
                                            } else {
                                                f8 = -1.0f;
                                            }
                                            if (cVar5.f27137z) {
                                                if (cVar5.f27090F != -1.0f) {
                                                    bArr = null;
                                                } else {
                                                    bArr = null;
                                                }
                                                int i311111115 = cVar5.f27085A;
                                                int i311111116 = cVar5.f27087C;
                                                int i311111117 = cVar5.f27086B;
                                                int i311111118 = cVar5.f27127p;
                                                c3126i = new C3126i(i311111115, i311111116, i311111117, bArr, i311111118, i311111118);
                                            } else {
                                                c3126i = null;
                                            }
                                            str17 = cVar5.f27113b;
                                            if (str17 != null) {
                                                map = f27143k0;
                                                if (map.containsKey(str17)) {
                                                    iIntValue = ((Integer) map.get(cVar5.f27113b)).intValue();
                                                } else {
                                                    iIntValue = -1;
                                                }
                                            } else {
                                                iIntValue = -1;
                                            }
                                            if (cVar5.f27131t == 0) {
                                                if (Float.compare(cVar5.f27134w, 0.0f) == 0) {
                                                    iIntValue = 0;
                                                } else if (Float.compare(cVar5.f27134w, 90.0f) == 0) {
                                                    iIntValue = 90;
                                                } else if (Float.compare(cVar5.f27134w, -180.0f) != 0) {
                                                    iIntValue = 180;
                                                } else {
                                                    iIntValue = 180;
                                                }
                                            }
                                            c3135s.f27003u = cVar5.f27125n;
                                            c3135s.f27004v = cVar5.f27126o;
                                            c3135s.f26968A = f8;
                                            c3135s.f27008z = iIntValue;
                                            c3135s.f26969B = cVar5.f27135x;
                                            c3135s.f26970C = cVar5.f27136y;
                                            c3135s.f26971D = c3126i;
                                            i12 = 2;
                                        } else {
                                            str = str;
                                            str2 = str2;
                                            if (org.videolan.libvlc.media.MediaPlayer.MEDIA_MIMETYPE_TEXT_SUBRIP.equals(str34)) {
                                            }
                                            i12 = 3;
                                        }
                                        str18 = cVar5.f27113b;
                                        if (str18 != null) {
                                            c3135s.f26984b = cVar5.f27113b;
                                        }
                                        c3135s.f26983a = Integer.toString(i33);
                                        if (cVar5.f27111a) {
                                            str19 = "video/webm";
                                        } else {
                                            str19 = "video/x-matroska";
                                        }
                                        c3135s.f26995m = O.p(str19);
                                        c3135s.f26996n = O.p(str34);
                                        c3135s.f26997o = i9;
                                        c3135s.f26986d = cVar5.f27109Y;
                                        c3135s.f26987e = i311111114;
                                        c3135s.f26999q = list;
                                        c3135s.f26992j = str14;
                                        c3135s.f27000r = cVar5.f27124m;
                                        C3136t c3136tA15 = c3135s.a();
                                        L lT15 = uVar2.t(cVar5.f27115d, i12);
                                        cVar5.f27110Z = lT15;
                                        lT15.b(c3136tA15);
                                        sparseArray.put(cVar5.f27115d, cVar5);
                                        dVar3 = dVar3;
                                        cVar = null;
                                        r317 = r312;
                                        break;
                                    case 15:
                                    case 21:
                                        str34 = "audio/vnd.dts";
                                        r311 = r10;
                                        iA2 = -1;
                                        r314 = r311;
                                        list3 = null;
                                        r316 = r314;
                                        str14 = null;
                                        list4 = list3;
                                        r313 = r316;
                                        i9 = -1;
                                        list = list4;
                                        r312 = r313;
                                        if (cVar5.f27100P != null) {
                                            str14 = rVarA.f7454a;
                                            str34 = "video/dolby-vision";
                                        }
                                        boolean z115 = cVar5.f27108X;
                                        if (cVar5.f27107W) {
                                            i11 = 2;
                                        } else {
                                            i11 = 0;
                                        }
                                        int i311111119 = (z115 ? 1 : 0) | i11;
                                        c3135s = new C3135s();
                                        if (O.k(str34)) {
                                            c3135s.f26973F = cVar5.f27101Q;
                                            c3135s.f26974G = cVar5.f27103S;
                                            c3135s.f26975H = iA2;
                                            str = str;
                                            str2 = str2;
                                            i12 = 1;
                                        } else if (O.o(str34)) {
                                            if (cVar5.f27130s == 0) {
                                                i16 = cVar5.f27128q;
                                                i13 = -1;
                                                if (i16 == -1) {
                                                    i16 = cVar5.f27125n;
                                                }
                                                cVar5.f27128q = i16;
                                                i17 = cVar5.f27129r;
                                                if (i17 == -1) {
                                                    i17 = cVar5.f27126o;
                                                }
                                                cVar5.f27129r = i17;
                                            } else {
                                                i13 = -1;
                                            }
                                            i14 = cVar5.f27128q;
                                            if (i14 != i13) {
                                                f8 = -1.0f;
                                            } else {
                                                f8 = -1.0f;
                                            }
                                            if (cVar5.f27137z) {
                                                if (cVar5.f27090F != -1.0f) {
                                                    bArr = null;
                                                } else {
                                                    bArr = null;
                                                }
                                                int i3111111110 = cVar5.f27085A;
                                                int i3111111111 = cVar5.f27087C;
                                                int i3111111112 = cVar5.f27086B;
                                                int i3111111113 = cVar5.f27127p;
                                                c3126i = new C3126i(i3111111110, i3111111111, i3111111112, bArr, i3111111113, i3111111113);
                                            } else {
                                                c3126i = null;
                                            }
                                            str17 = cVar5.f27113b;
                                            if (str17 != null) {
                                                map = f27143k0;
                                                if (map.containsKey(str17)) {
                                                    iIntValue = ((Integer) map.get(cVar5.f27113b)).intValue();
                                                } else {
                                                    iIntValue = -1;
                                                }
                                            } else {
                                                iIntValue = -1;
                                            }
                                            if (cVar5.f27131t == 0) {
                                                if (Float.compare(cVar5.f27134w, 0.0f) == 0) {
                                                    iIntValue = 0;
                                                } else if (Float.compare(cVar5.f27134w, 90.0f) == 0) {
                                                    iIntValue = 90;
                                                } else if (Float.compare(cVar5.f27134w, -180.0f) != 0) {
                                                    iIntValue = 180;
                                                } else {
                                                    iIntValue = 180;
                                                }
                                            }
                                            c3135s.f27003u = cVar5.f27125n;
                                            c3135s.f27004v = cVar5.f27126o;
                                            c3135s.f26968A = f8;
                                            c3135s.f27008z = iIntValue;
                                            c3135s.f26969B = cVar5.f27135x;
                                            c3135s.f26970C = cVar5.f27136y;
                                            c3135s.f26971D = c3126i;
                                            i12 = 2;
                                        } else {
                                            str = str;
                                            str2 = str2;
                                            if (org.videolan.libvlc.media.MediaPlayer.MEDIA_MIMETYPE_TEXT_SUBRIP.equals(str34)) {
                                            }
                                            i12 = 3;
                                        }
                                        str18 = cVar5.f27113b;
                                        if (str18 != null) {
                                            c3135s.f26984b = cVar5.f27113b;
                                        }
                                        c3135s.f26983a = Integer.toString(i33);
                                        if (cVar5.f27111a) {
                                            str19 = "video/webm";
                                        } else {
                                            str19 = "video/x-matroska";
                                        }
                                        c3135s.f26995m = O.p(str19);
                                        c3135s.f26996n = O.p(str34);
                                        c3135s.f26997o = i9;
                                        c3135s.f26986d = cVar5.f27109Y;
                                        c3135s.f26987e = i311111119;
                                        c3135s.f26999q = list;
                                        c3135s.f26992j = str14;
                                        c3135s.f27000r = cVar5.f27124m;
                                        C3136t c3136tA16 = c3135s.a();
                                        L lT16 = uVar2.t(cVar5.f27115d, i12);
                                        cVar5.f27110Z = lT16;
                                        lT16.b(c3136tA16);
                                        sparseArray.put(cVar5.f27115d, cVar5);
                                        dVar3 = dVar3;
                                        cVar = null;
                                        r317 = r312;
                                        break;
                                    case 16:
                                        byte[] bArr9 = cVar5.f27123l;
                                        str34 = "video/av01";
                                        listX = bArr9 == null ? null : H.x(bArr9);
                                        listSingletonList = listX;
                                        iA2 = -1;
                                        list3 = listSingletonList;
                                        r316 = r10;
                                        str14 = null;
                                        list4 = list3;
                                        r313 = r316;
                                        i9 = -1;
                                        list = list4;
                                        r312 = r313;
                                        if (cVar5.f27100P != null) {
                                            str14 = rVarA.f7454a;
                                            str34 = "video/dolby-vision";
                                        }
                                        boolean z116 = cVar5.f27108X;
                                        if (cVar5.f27107W) {
                                            i11 = 2;
                                        } else {
                                            i11 = 0;
                                        }
                                        int i3111111114 = (z116 ? 1 : 0) | i11;
                                        c3135s = new C3135s();
                                        if (O.k(str34)) {
                                            c3135s.f26973F = cVar5.f27101Q;
                                            c3135s.f26974G = cVar5.f27103S;
                                            c3135s.f26975H = iA2;
                                            str = str;
                                            str2 = str2;
                                            i12 = 1;
                                        } else if (O.o(str34)) {
                                            if (cVar5.f27130s == 0) {
                                                i16 = cVar5.f27128q;
                                                i13 = -1;
                                                if (i16 == -1) {
                                                    i16 = cVar5.f27125n;
                                                }
                                                cVar5.f27128q = i16;
                                                i17 = cVar5.f27129r;
                                                if (i17 == -1) {
                                                    i17 = cVar5.f27126o;
                                                }
                                                cVar5.f27129r = i17;
                                            } else {
                                                i13 = -1;
                                            }
                                            i14 = cVar5.f27128q;
                                            if (i14 != i13) {
                                                f8 = -1.0f;
                                            } else {
                                                f8 = -1.0f;
                                            }
                                            if (cVar5.f27137z) {
                                                if (cVar5.f27090F != -1.0f) {
                                                    bArr = null;
                                                } else {
                                                    bArr = null;
                                                }
                                                int i3111111115 = cVar5.f27085A;
                                                int i3111111116 = cVar5.f27087C;
                                                int i3111111117 = cVar5.f27086B;
                                                int i3111111118 = cVar5.f27127p;
                                                c3126i = new C3126i(i3111111115, i3111111116, i3111111117, bArr, i3111111118, i3111111118);
                                            } else {
                                                c3126i = null;
                                            }
                                            str17 = cVar5.f27113b;
                                            if (str17 != null) {
                                                map = f27143k0;
                                                if (map.containsKey(str17)) {
                                                    iIntValue = ((Integer) map.get(cVar5.f27113b)).intValue();
                                                } else {
                                                    iIntValue = -1;
                                                }
                                            } else {
                                                iIntValue = -1;
                                            }
                                            if (cVar5.f27131t == 0) {
                                                if (Float.compare(cVar5.f27134w, 0.0f) == 0) {
                                                    iIntValue = 0;
                                                } else if (Float.compare(cVar5.f27134w, 90.0f) == 0) {
                                                    iIntValue = 90;
                                                } else if (Float.compare(cVar5.f27134w, -180.0f) != 0) {
                                                    iIntValue = 180;
                                                } else {
                                                    iIntValue = 180;
                                                }
                                            }
                                            c3135s.f27003u = cVar5.f27125n;
                                            c3135s.f27004v = cVar5.f27126o;
                                            c3135s.f26968A = f8;
                                            c3135s.f27008z = iIntValue;
                                            c3135s.f26969B = cVar5.f27135x;
                                            c3135s.f26970C = cVar5.f27136y;
                                            c3135s.f26971D = c3126i;
                                            i12 = 2;
                                        } else {
                                            str = str;
                                            str2 = str2;
                                            if (org.videolan.libvlc.media.MediaPlayer.MEDIA_MIMETYPE_TEXT_SUBRIP.equals(str34)) {
                                            }
                                            i12 = 3;
                                        }
                                        str18 = cVar5.f27113b;
                                        if (str18 != null) {
                                            c3135s.f26984b = cVar5.f27113b;
                                        }
                                        c3135s.f26983a = Integer.toString(i33);
                                        if (cVar5.f27111a) {
                                            str19 = "video/webm";
                                        } else {
                                            str19 = "video/x-matroska";
                                        }
                                        c3135s.f26995m = O.p(str19);
                                        c3135s.f26996n = O.p(str34);
                                        c3135s.f26997o = i9;
                                        c3135s.f26986d = cVar5.f27109Y;
                                        c3135s.f26987e = i3111111114;
                                        c3135s.f26999q = list;
                                        c3135s.f26992j = str14;
                                        c3135s.f27000r = cVar5.f27124m;
                                        C3136t c3136tA17 = c3135s.a();
                                        L lT17 = uVar2.t(cVar5.f27115d, i12);
                                        cVar5.f27110Z = lT17;
                                        lT17.b(c3136tA17);
                                        sparseArray.put(cVar5.f27115d, cVar5);
                                        dVar3 = dVar3;
                                        cVar = null;
                                        r317 = r312;
                                        break;
                                    case 17:
                                        str34 = "video/x-vnd.on2.vp8";
                                        r311 = r10;
                                        iA2 = -1;
                                        r314 = r311;
                                        list3 = null;
                                        r316 = r314;
                                        str14 = null;
                                        list4 = list3;
                                        r313 = r316;
                                        i9 = -1;
                                        list = list4;
                                        r312 = r313;
                                        if (cVar5.f27100P != null) {
                                            str14 = rVarA.f7454a;
                                            str34 = "video/dolby-vision";
                                        }
                                        boolean z117 = cVar5.f27108X;
                                        if (cVar5.f27107W) {
                                            i11 = 2;
                                        } else {
                                            i11 = 0;
                                        }
                                        int i3111111119 = (z117 ? 1 : 0) | i11;
                                        c3135s = new C3135s();
                                        if (O.k(str34)) {
                                            c3135s.f26973F = cVar5.f27101Q;
                                            c3135s.f26974G = cVar5.f27103S;
                                            c3135s.f26975H = iA2;
                                            str = str;
                                            str2 = str2;
                                            i12 = 1;
                                        } else if (O.o(str34)) {
                                            if (cVar5.f27130s == 0) {
                                                i16 = cVar5.f27128q;
                                                i13 = -1;
                                                if (i16 == -1) {
                                                    i16 = cVar5.f27125n;
                                                }
                                                cVar5.f27128q = i16;
                                                i17 = cVar5.f27129r;
                                                if (i17 == -1) {
                                                    i17 = cVar5.f27126o;
                                                }
                                                cVar5.f27129r = i17;
                                            } else {
                                                i13 = -1;
                                            }
                                            i14 = cVar5.f27128q;
                                            if (i14 != i13) {
                                                f8 = -1.0f;
                                            } else {
                                                f8 = -1.0f;
                                            }
                                            if (cVar5.f27137z) {
                                                if (cVar5.f27090F != -1.0f) {
                                                    bArr = null;
                                                } else {
                                                    bArr = null;
                                                }
                                                int i31111111110 = cVar5.f27085A;
                                                int i31111111111 = cVar5.f27087C;
                                                int i31111111112 = cVar5.f27086B;
                                                int i31111111113 = cVar5.f27127p;
                                                c3126i = new C3126i(i31111111110, i31111111111, i31111111112, bArr, i31111111113, i31111111113);
                                            } else {
                                                c3126i = null;
                                            }
                                            str17 = cVar5.f27113b;
                                            if (str17 != null) {
                                                map = f27143k0;
                                                if (map.containsKey(str17)) {
                                                    iIntValue = ((Integer) map.get(cVar5.f27113b)).intValue();
                                                } else {
                                                    iIntValue = -1;
                                                }
                                            } else {
                                                iIntValue = -1;
                                            }
                                            if (cVar5.f27131t == 0) {
                                                if (Float.compare(cVar5.f27134w, 0.0f) == 0) {
                                                    iIntValue = 0;
                                                } else if (Float.compare(cVar5.f27134w, 90.0f) == 0) {
                                                    iIntValue = 90;
                                                } else if (Float.compare(cVar5.f27134w, -180.0f) != 0) {
                                                    iIntValue = 180;
                                                } else {
                                                    iIntValue = 180;
                                                }
                                            }
                                            c3135s.f27003u = cVar5.f27125n;
                                            c3135s.f27004v = cVar5.f27126o;
                                            c3135s.f26968A = f8;
                                            c3135s.f27008z = iIntValue;
                                            c3135s.f26969B = cVar5.f27135x;
                                            c3135s.f26970C = cVar5.f27136y;
                                            c3135s.f26971D = c3126i;
                                            i12 = 2;
                                        } else {
                                            str = str;
                                            str2 = str2;
                                            if (org.videolan.libvlc.media.MediaPlayer.MEDIA_MIMETYPE_TEXT_SUBRIP.equals(str34)) {
                                            }
                                            i12 = 3;
                                        }
                                        str18 = cVar5.f27113b;
                                        if (str18 != null) {
                                            c3135s.f26984b = cVar5.f27113b;
                                        }
                                        c3135s.f26983a = Integer.toString(i33);
                                        if (cVar5.f27111a) {
                                            str19 = "video/webm";
                                        } else {
                                            str19 = "video/x-matroska";
                                        }
                                        c3135s.f26995m = O.p(str19);
                                        c3135s.f26996n = O.p(str34);
                                        c3135s.f26997o = i9;
                                        c3135s.f26986d = cVar5.f27109Y;
                                        c3135s.f26987e = i3111111119;
                                        c3135s.f26999q = list;
                                        c3135s.f26992j = str14;
                                        c3135s.f27000r = cVar5.f27124m;
                                        C3136t c3136tA18 = c3135s.a();
                                        L lT18 = uVar2.t(cVar5.f27115d, i12);
                                        cVar5.f27110Z = lT18;
                                        lT18.b(c3136tA18);
                                        sparseArray.put(cVar5.f27115d, cVar5);
                                        dVar3 = dVar3;
                                        cVar = null;
                                        r317 = r312;
                                        break;
                                    case 18:
                                        byte[] bArr10 = cVar5.f27123l;
                                        str34 = "video/x-vnd.on2.vp9";
                                        listX = bArr10 == null ? null : H.x(bArr10);
                                        listSingletonList = listX;
                                        iA2 = -1;
                                        list3 = listSingletonList;
                                        r316 = r10;
                                        str14 = null;
                                        list4 = list3;
                                        r313 = r316;
                                        i9 = -1;
                                        list = list4;
                                        r312 = r313;
                                        if (cVar5.f27100P != null) {
                                            str14 = rVarA.f7454a;
                                            str34 = "video/dolby-vision";
                                        }
                                        boolean z118 = cVar5.f27108X;
                                        if (cVar5.f27107W) {
                                            i11 = 2;
                                        } else {
                                            i11 = 0;
                                        }
                                        int i31111111114 = (z118 ? 1 : 0) | i11;
                                        c3135s = new C3135s();
                                        if (O.k(str34)) {
                                            c3135s.f26973F = cVar5.f27101Q;
                                            c3135s.f26974G = cVar5.f27103S;
                                            c3135s.f26975H = iA2;
                                            str = str;
                                            str2 = str2;
                                            i12 = 1;
                                        } else if (O.o(str34)) {
                                            if (cVar5.f27130s == 0) {
                                                i16 = cVar5.f27128q;
                                                i13 = -1;
                                                if (i16 == -1) {
                                                    i16 = cVar5.f27125n;
                                                }
                                                cVar5.f27128q = i16;
                                                i17 = cVar5.f27129r;
                                                if (i17 == -1) {
                                                    i17 = cVar5.f27126o;
                                                }
                                                cVar5.f27129r = i17;
                                            } else {
                                                i13 = -1;
                                            }
                                            i14 = cVar5.f27128q;
                                            if (i14 != i13) {
                                                f8 = -1.0f;
                                            } else {
                                                f8 = -1.0f;
                                            }
                                            if (cVar5.f27137z) {
                                                if (cVar5.f27090F != -1.0f) {
                                                    bArr = null;
                                                } else {
                                                    bArr = null;
                                                }
                                                int i31111111115 = cVar5.f27085A;
                                                int i31111111116 = cVar5.f27087C;
                                                int i31111111117 = cVar5.f27086B;
                                                int i31111111118 = cVar5.f27127p;
                                                c3126i = new C3126i(i31111111115, i31111111116, i31111111117, bArr, i31111111118, i31111111118);
                                            } else {
                                                c3126i = null;
                                            }
                                            str17 = cVar5.f27113b;
                                            if (str17 != null) {
                                                map = f27143k0;
                                                if (map.containsKey(str17)) {
                                                    iIntValue = ((Integer) map.get(cVar5.f27113b)).intValue();
                                                } else {
                                                    iIntValue = -1;
                                                }
                                            } else {
                                                iIntValue = -1;
                                            }
                                            if (cVar5.f27131t == 0) {
                                                if (Float.compare(cVar5.f27134w, 0.0f) == 0) {
                                                    iIntValue = 0;
                                                } else if (Float.compare(cVar5.f27134w, 90.0f) == 0) {
                                                    iIntValue = 90;
                                                } else if (Float.compare(cVar5.f27134w, -180.0f) != 0) {
                                                    iIntValue = 180;
                                                } else {
                                                    iIntValue = 180;
                                                }
                                            }
                                            c3135s.f27003u = cVar5.f27125n;
                                            c3135s.f27004v = cVar5.f27126o;
                                            c3135s.f26968A = f8;
                                            c3135s.f27008z = iIntValue;
                                            c3135s.f26969B = cVar5.f27135x;
                                            c3135s.f26970C = cVar5.f27136y;
                                            c3135s.f26971D = c3126i;
                                            i12 = 2;
                                        } else {
                                            str = str;
                                            str2 = str2;
                                            if (org.videolan.libvlc.media.MediaPlayer.MEDIA_MIMETYPE_TEXT_SUBRIP.equals(str34)) {
                                            }
                                            i12 = 3;
                                        }
                                        str18 = cVar5.f27113b;
                                        if (str18 != null) {
                                            c3135s.f26984b = cVar5.f27113b;
                                        }
                                        c3135s.f26983a = Integer.toString(i33);
                                        if (cVar5.f27111a) {
                                            str19 = "video/webm";
                                        } else {
                                            str19 = "video/x-matroska";
                                        }
                                        c3135s.f26995m = O.p(str19);
                                        c3135s.f26996n = O.p(str34);
                                        c3135s.f26997o = i9;
                                        c3135s.f26986d = cVar5.f27109Y;
                                        c3135s.f26987e = i31111111114;
                                        c3135s.f26999q = list;
                                        c3135s.f26992j = str14;
                                        c3135s.f27000r = cVar5.f27124m;
                                        C3136t c3136tA19 = c3135s.a();
                                        L lT19 = uVar2.t(cVar5.f27115d, i12);
                                        cVar5.f27110Z = lT19;
                                        lT19.b(c3136tA19);
                                        sparseArray.put(cVar5.f27115d, cVar5);
                                        dVar3 = dVar3;
                                        cVar = null;
                                        r317 = r312;
                                        break;
                                    case 19:
                                        str34 = "application/pgs";
                                        r311 = r10;
                                        iA2 = -1;
                                        r314 = r311;
                                        list3 = null;
                                        r316 = r314;
                                        str14 = null;
                                        list4 = list3;
                                        r313 = r316;
                                        i9 = -1;
                                        list = list4;
                                        r312 = r313;
                                        if (cVar5.f27100P != null) {
                                            str14 = rVarA.f7454a;
                                            str34 = "video/dolby-vision";
                                        }
                                        boolean z119 = cVar5.f27108X;
                                        if (cVar5.f27107W) {
                                            i11 = 2;
                                        } else {
                                            i11 = 0;
                                        }
                                        int i31111111119 = (z119 ? 1 : 0) | i11;
                                        c3135s = new C3135s();
                                        if (O.k(str34)) {
                                            c3135s.f26973F = cVar5.f27101Q;
                                            c3135s.f26974G = cVar5.f27103S;
                                            c3135s.f26975H = iA2;
                                            str = str;
                                            str2 = str2;
                                            i12 = 1;
                                        } else if (O.o(str34)) {
                                            if (cVar5.f27130s == 0) {
                                                i16 = cVar5.f27128q;
                                                i13 = -1;
                                                if (i16 == -1) {
                                                    i16 = cVar5.f27125n;
                                                }
                                                cVar5.f27128q = i16;
                                                i17 = cVar5.f27129r;
                                                if (i17 == -1) {
                                                    i17 = cVar5.f27126o;
                                                }
                                                cVar5.f27129r = i17;
                                            } else {
                                                i13 = -1;
                                            }
                                            i14 = cVar5.f27128q;
                                            if (i14 != i13) {
                                                f8 = -1.0f;
                                            } else {
                                                f8 = -1.0f;
                                            }
                                            if (cVar5.f27137z) {
                                                if (cVar5.f27090F != -1.0f) {
                                                    bArr = null;
                                                } else {
                                                    bArr = null;
                                                }
                                                int i311111111110 = cVar5.f27085A;
                                                int i311111111111 = cVar5.f27087C;
                                                int i311111111112 = cVar5.f27086B;
                                                int i311111111113 = cVar5.f27127p;
                                                c3126i = new C3126i(i311111111110, i311111111111, i311111111112, bArr, i311111111113, i311111111113);
                                            } else {
                                                c3126i = null;
                                            }
                                            str17 = cVar5.f27113b;
                                            if (str17 != null) {
                                                map = f27143k0;
                                                if (map.containsKey(str17)) {
                                                    iIntValue = ((Integer) map.get(cVar5.f27113b)).intValue();
                                                } else {
                                                    iIntValue = -1;
                                                }
                                            } else {
                                                iIntValue = -1;
                                            }
                                            if (cVar5.f27131t == 0) {
                                                if (Float.compare(cVar5.f27134w, 0.0f) == 0) {
                                                    iIntValue = 0;
                                                } else if (Float.compare(cVar5.f27134w, 90.0f) == 0) {
                                                    iIntValue = 90;
                                                } else if (Float.compare(cVar5.f27134w, -180.0f) != 0) {
                                                    iIntValue = 180;
                                                } else {
                                                    iIntValue = 180;
                                                }
                                            }
                                            c3135s.f27003u = cVar5.f27125n;
                                            c3135s.f27004v = cVar5.f27126o;
                                            c3135s.f26968A = f8;
                                            c3135s.f27008z = iIntValue;
                                            c3135s.f26969B = cVar5.f27135x;
                                            c3135s.f26970C = cVar5.f27136y;
                                            c3135s.f26971D = c3126i;
                                            i12 = 2;
                                        } else {
                                            str = str;
                                            str2 = str2;
                                            if (org.videolan.libvlc.media.MediaPlayer.MEDIA_MIMETYPE_TEXT_SUBRIP.equals(str34)) {
                                            }
                                            i12 = 3;
                                        }
                                        str18 = cVar5.f27113b;
                                        if (str18 != null) {
                                            c3135s.f26984b = cVar5.f27113b;
                                        }
                                        c3135s.f26983a = Integer.toString(i33);
                                        if (cVar5.f27111a) {
                                            str19 = "video/webm";
                                        } else {
                                            str19 = "video/x-matroska";
                                        }
                                        c3135s.f26995m = O.p(str19);
                                        c3135s.f26996n = O.p(str34);
                                        c3135s.f26997o = i9;
                                        c3135s.f26986d = cVar5.f27109Y;
                                        c3135s.f26987e = i31111111119;
                                        c3135s.f26999q = list;
                                        c3135s.f26992j = str14;
                                        c3135s.f27000r = cVar5.f27124m;
                                        C3136t c3136tA110 = c3135s.a();
                                        L lT110 = uVar2.t(cVar5.f27115d, i12);
                                        cVar5.f27110Z = lT110;
                                        lT110.b(c3136tA110);
                                        sparseArray.put(cVar5.f27115d, cVar5);
                                        dVar3 = dVar3;
                                        cVar = null;
                                        r317 = r312;
                                        break;
                                    case 20:
                                        str34 = "video/x-unknown";
                                        r311 = r10;
                                        iA2 = -1;
                                        r314 = r311;
                                        list3 = null;
                                        r316 = r314;
                                        str14 = null;
                                        list4 = list3;
                                        r313 = r316;
                                        i9 = -1;
                                        list = list4;
                                        r312 = r313;
                                        if (cVar5.f27100P != null) {
                                            str14 = rVarA.f7454a;
                                            str34 = "video/dolby-vision";
                                        }
                                        boolean z1110 = cVar5.f27108X;
                                        if (cVar5.f27107W) {
                                            i11 = 2;
                                        } else {
                                            i11 = 0;
                                        }
                                        int i311111111114 = (z1110 ? 1 : 0) | i11;
                                        c3135s = new C3135s();
                                        if (O.k(str34)) {
                                            c3135s.f26973F = cVar5.f27101Q;
                                            c3135s.f26974G = cVar5.f27103S;
                                            c3135s.f26975H = iA2;
                                            str = str;
                                            str2 = str2;
                                            i12 = 1;
                                        } else if (O.o(str34)) {
                                            if (cVar5.f27130s == 0) {
                                                i16 = cVar5.f27128q;
                                                i13 = -1;
                                                if (i16 == -1) {
                                                    i16 = cVar5.f27125n;
                                                }
                                                cVar5.f27128q = i16;
                                                i17 = cVar5.f27129r;
                                                if (i17 == -1) {
                                                    i17 = cVar5.f27126o;
                                                }
                                                cVar5.f27129r = i17;
                                            } else {
                                                i13 = -1;
                                            }
                                            i14 = cVar5.f27128q;
                                            if (i14 != i13) {
                                                f8 = -1.0f;
                                            } else {
                                                f8 = -1.0f;
                                            }
                                            if (cVar5.f27137z) {
                                                if (cVar5.f27090F != -1.0f) {
                                                    bArr = null;
                                                } else {
                                                    bArr = null;
                                                }
                                                int i311111111115 = cVar5.f27085A;
                                                int i311111111116 = cVar5.f27087C;
                                                int i311111111117 = cVar5.f27086B;
                                                int i311111111118 = cVar5.f27127p;
                                                c3126i = new C3126i(i311111111115, i311111111116, i311111111117, bArr, i311111111118, i311111111118);
                                            } else {
                                                c3126i = null;
                                            }
                                            str17 = cVar5.f27113b;
                                            if (str17 != null) {
                                                map = f27143k0;
                                                if (map.containsKey(str17)) {
                                                    iIntValue = ((Integer) map.get(cVar5.f27113b)).intValue();
                                                } else {
                                                    iIntValue = -1;
                                                }
                                            } else {
                                                iIntValue = -1;
                                            }
                                            if (cVar5.f27131t == 0) {
                                                if (Float.compare(cVar5.f27134w, 0.0f) == 0) {
                                                    iIntValue = 0;
                                                } else if (Float.compare(cVar5.f27134w, 90.0f) == 0) {
                                                    iIntValue = 90;
                                                } else if (Float.compare(cVar5.f27134w, -180.0f) != 0) {
                                                    iIntValue = 180;
                                                } else {
                                                    iIntValue = 180;
                                                }
                                            }
                                            c3135s.f27003u = cVar5.f27125n;
                                            c3135s.f27004v = cVar5.f27126o;
                                            c3135s.f26968A = f8;
                                            c3135s.f27008z = iIntValue;
                                            c3135s.f26969B = cVar5.f27135x;
                                            c3135s.f26970C = cVar5.f27136y;
                                            c3135s.f26971D = c3126i;
                                            i12 = 2;
                                        } else {
                                            str = str;
                                            str2 = str2;
                                            if (org.videolan.libvlc.media.MediaPlayer.MEDIA_MIMETYPE_TEXT_SUBRIP.equals(str34)) {
                                            }
                                            i12 = 3;
                                        }
                                        str18 = cVar5.f27113b;
                                        if (str18 != null) {
                                            c3135s.f26984b = cVar5.f27113b;
                                        }
                                        c3135s.f26983a = Integer.toString(i33);
                                        if (cVar5.f27111a) {
                                            str19 = "video/webm";
                                        } else {
                                            str19 = "video/x-matroska";
                                        }
                                        c3135s.f26995m = O.p(str19);
                                        c3135s.f26996n = O.p(str34);
                                        c3135s.f26997o = i9;
                                        c3135s.f26986d = cVar5.f27109Y;
                                        c3135s.f26987e = i311111111114;
                                        c3135s.f26999q = list;
                                        c3135s.f26992j = str14;
                                        c3135s.f27000r = cVar5.f27124m;
                                        C3136t c3136tA111 = c3135s.a();
                                        L lT111 = uVar2.t(cVar5.f27115d, i12);
                                        cVar5.f27110Z = lT111;
                                        lT111.b(c3136tA111);
                                        sparseArray.put(cVar5.f27115d, cVar5);
                                        dVar3 = dVar3;
                                        cVar = null;
                                        r317 = r312;
                                        break;
                                    case 22:
                                        if (cVar5.f27102R == 32) {
                                            r314 = r10;
                                            iA2 = 4;
                                        } else {
                                            x.f("MatroskaExtractor", "Unsupported floating point PCM bit depth: " + cVar5.f27102R + ". Setting mimeType to audio/x-unknown");
                                            r315 = r10;
                                            str34 = "audio/x-unknown";
                                            r311 = r315;
                                            iA2 = -1;
                                            r314 = r311;
                                        }
                                        list3 = null;
                                        r316 = r314;
                                        str14 = null;
                                        list4 = list3;
                                        r313 = r316;
                                        i9 = -1;
                                        list = list4;
                                        r312 = r313;
                                        if (cVar5.f27100P != null) {
                                            str14 = rVarA.f7454a;
                                            str34 = "video/dolby-vision";
                                        }
                                        boolean z1111 = cVar5.f27108X;
                                        if (cVar5.f27107W) {
                                            i11 = 2;
                                        } else {
                                            i11 = 0;
                                        }
                                        int i311111111119 = (z1111 ? 1 : 0) | i11;
                                        c3135s = new C3135s();
                                        if (O.k(str34)) {
                                            c3135s.f26973F = cVar5.f27101Q;
                                            c3135s.f26974G = cVar5.f27103S;
                                            c3135s.f26975H = iA2;
                                            str = str;
                                            str2 = str2;
                                            i12 = 1;
                                        } else if (O.o(str34)) {
                                            if (cVar5.f27130s == 0) {
                                                i16 = cVar5.f27128q;
                                                i13 = -1;
                                                if (i16 == -1) {
                                                    i16 = cVar5.f27125n;
                                                }
                                                cVar5.f27128q = i16;
                                                i17 = cVar5.f27129r;
                                                if (i17 == -1) {
                                                    i17 = cVar5.f27126o;
                                                }
                                                cVar5.f27129r = i17;
                                            } else {
                                                i13 = -1;
                                            }
                                            i14 = cVar5.f27128q;
                                            if (i14 != i13) {
                                                f8 = -1.0f;
                                            } else {
                                                f8 = -1.0f;
                                            }
                                            if (cVar5.f27137z) {
                                                if (cVar5.f27090F != -1.0f) {
                                                    bArr = null;
                                                } else {
                                                    bArr = null;
                                                }
                                                int i3111111111110 = cVar5.f27085A;
                                                int i3111111111111 = cVar5.f27087C;
                                                int i3111111111112 = cVar5.f27086B;
                                                int i3111111111113 = cVar5.f27127p;
                                                c3126i = new C3126i(i3111111111110, i3111111111111, i3111111111112, bArr, i3111111111113, i3111111111113);
                                            } else {
                                                c3126i = null;
                                            }
                                            str17 = cVar5.f27113b;
                                            if (str17 != null) {
                                                map = f27143k0;
                                                if (map.containsKey(str17)) {
                                                    iIntValue = ((Integer) map.get(cVar5.f27113b)).intValue();
                                                } else {
                                                    iIntValue = -1;
                                                }
                                            } else {
                                                iIntValue = -1;
                                            }
                                            if (cVar5.f27131t == 0) {
                                                if (Float.compare(cVar5.f27134w, 0.0f) == 0) {
                                                    iIntValue = 0;
                                                } else if (Float.compare(cVar5.f27134w, 90.0f) == 0) {
                                                    iIntValue = 90;
                                                } else if (Float.compare(cVar5.f27134w, -180.0f) != 0) {
                                                    iIntValue = 180;
                                                } else {
                                                    iIntValue = 180;
                                                }
                                            }
                                            c3135s.f27003u = cVar5.f27125n;
                                            c3135s.f27004v = cVar5.f27126o;
                                            c3135s.f26968A = f8;
                                            c3135s.f27008z = iIntValue;
                                            c3135s.f26969B = cVar5.f27135x;
                                            c3135s.f26970C = cVar5.f27136y;
                                            c3135s.f26971D = c3126i;
                                            i12 = 2;
                                        } else {
                                            str = str;
                                            str2 = str2;
                                            if (org.videolan.libvlc.media.MediaPlayer.MEDIA_MIMETYPE_TEXT_SUBRIP.equals(str34)) {
                                            }
                                            i12 = 3;
                                        }
                                        str18 = cVar5.f27113b;
                                        if (str18 != null) {
                                            c3135s.f26984b = cVar5.f27113b;
                                        }
                                        c3135s.f26983a = Integer.toString(i33);
                                        if (cVar5.f27111a) {
                                            str19 = "video/webm";
                                        } else {
                                            str19 = "video/x-matroska";
                                        }
                                        c3135s.f26995m = O.p(str19);
                                        c3135s.f26996n = O.p(str34);
                                        c3135s.f26997o = i9;
                                        c3135s.f26986d = cVar5.f27109Y;
                                        c3135s.f26987e = i311111111119;
                                        c3135s.f26999q = list;
                                        c3135s.f26992j = str14;
                                        c3135s.f27000r = cVar5.f27124m;
                                        C3136t c3136tA112 = c3135s.a();
                                        L lT112 = uVar2.t(cVar5.f27115d, i12);
                                        cVar5.f27110Z = lT112;
                                        lT112.b(c3136tA112);
                                        sparseArray.put(cVar5.f27115d, cVar5);
                                        dVar3 = dVar3;
                                        cVar = null;
                                        r317 = r312;
                                        break;
                                    case 23:
                                        int i53 = cVar5.f27102R;
                                        if (i53 == 8) {
                                            r314 = r10;
                                            iA2 = 3;
                                        } else if (i53 == 16) {
                                            r314 = r10;
                                            iA2 = 268435456;
                                        } else if (i53 == 24) {
                                            r314 = r10;
                                            iA2 = 1342177280;
                                        } else if (i53 == 32) {
                                            r314 = r10;
                                            iA2 = 1610612736;
                                        } else {
                                            x.f("MatroskaExtractor", "Unsupported big endian PCM bit depth: " + cVar5.f27102R + ". Setting mimeType to audio/x-unknown");
                                            r315 = r10;
                                            str34 = "audio/x-unknown";
                                            r311 = r315;
                                            iA2 = -1;
                                            r314 = r311;
                                        }
                                        list3 = null;
                                        r316 = r314;
                                        str14 = null;
                                        list4 = list3;
                                        r313 = r316;
                                        i9 = -1;
                                        list = list4;
                                        r312 = r313;
                                        if (cVar5.f27100P != null) {
                                            str14 = rVarA.f7454a;
                                            str34 = "video/dolby-vision";
                                        }
                                        boolean z1112 = cVar5.f27108X;
                                        if (cVar5.f27107W) {
                                            i11 = 2;
                                        } else {
                                            i11 = 0;
                                        }
                                        int i3111111111114 = (z1112 ? 1 : 0) | i11;
                                        c3135s = new C3135s();
                                        if (O.k(str34)) {
                                            c3135s.f26973F = cVar5.f27101Q;
                                            c3135s.f26974G = cVar5.f27103S;
                                            c3135s.f26975H = iA2;
                                            str = str;
                                            str2 = str2;
                                            i12 = 1;
                                        } else if (O.o(str34)) {
                                            if (cVar5.f27130s == 0) {
                                                i16 = cVar5.f27128q;
                                                i13 = -1;
                                                if (i16 == -1) {
                                                    i16 = cVar5.f27125n;
                                                }
                                                cVar5.f27128q = i16;
                                                i17 = cVar5.f27129r;
                                                if (i17 == -1) {
                                                    i17 = cVar5.f27126o;
                                                }
                                                cVar5.f27129r = i17;
                                            } else {
                                                i13 = -1;
                                            }
                                            i14 = cVar5.f27128q;
                                            if (i14 != i13) {
                                                f8 = -1.0f;
                                            } else {
                                                f8 = -1.0f;
                                            }
                                            if (cVar5.f27137z) {
                                                if (cVar5.f27090F != -1.0f) {
                                                    bArr = null;
                                                } else {
                                                    bArr = null;
                                                }
                                                int i3111111111115 = cVar5.f27085A;
                                                int i3111111111116 = cVar5.f27087C;
                                                int i3111111111117 = cVar5.f27086B;
                                                int i3111111111118 = cVar5.f27127p;
                                                c3126i = new C3126i(i3111111111115, i3111111111116, i3111111111117, bArr, i3111111111118, i3111111111118);
                                            } else {
                                                c3126i = null;
                                            }
                                            str17 = cVar5.f27113b;
                                            if (str17 != null) {
                                                map = f27143k0;
                                                if (map.containsKey(str17)) {
                                                    iIntValue = ((Integer) map.get(cVar5.f27113b)).intValue();
                                                } else {
                                                    iIntValue = -1;
                                                }
                                            } else {
                                                iIntValue = -1;
                                            }
                                            if (cVar5.f27131t == 0) {
                                                if (Float.compare(cVar5.f27134w, 0.0f) == 0) {
                                                    iIntValue = 0;
                                                } else if (Float.compare(cVar5.f27134w, 90.0f) == 0) {
                                                    iIntValue = 90;
                                                } else if (Float.compare(cVar5.f27134w, -180.0f) != 0) {
                                                    iIntValue = 180;
                                                } else {
                                                    iIntValue = 180;
                                                }
                                            }
                                            c3135s.f27003u = cVar5.f27125n;
                                            c3135s.f27004v = cVar5.f27126o;
                                            c3135s.f26968A = f8;
                                            c3135s.f27008z = iIntValue;
                                            c3135s.f26969B = cVar5.f27135x;
                                            c3135s.f26970C = cVar5.f27136y;
                                            c3135s.f26971D = c3126i;
                                            i12 = 2;
                                        } else {
                                            str = str;
                                            str2 = str2;
                                            if (org.videolan.libvlc.media.MediaPlayer.MEDIA_MIMETYPE_TEXT_SUBRIP.equals(str34)) {
                                            }
                                            i12 = 3;
                                        }
                                        str18 = cVar5.f27113b;
                                        if (str18 != null) {
                                            c3135s.f26984b = cVar5.f27113b;
                                        }
                                        c3135s.f26983a = Integer.toString(i33);
                                        if (cVar5.f27111a) {
                                            str19 = "video/webm";
                                        } else {
                                            str19 = "video/x-matroska";
                                        }
                                        c3135s.f26995m = O.p(str19);
                                        c3135s.f26996n = O.p(str34);
                                        c3135s.f26997o = i9;
                                        c3135s.f26986d = cVar5.f27109Y;
                                        c3135s.f26987e = i3111111111114;
                                        c3135s.f26999q = list;
                                        c3135s.f26992j = str14;
                                        c3135s.f27000r = cVar5.f27124m;
                                        C3136t c3136tA113 = c3135s.a();
                                        L lT113 = uVar2.t(cVar5.f27115d, i12);
                                        cVar5.f27110Z = lT113;
                                        lT113.b(c3136tA113);
                                        sparseArray.put(cVar5.f27115d, cVar5);
                                        dVar3 = dVar3;
                                        cVar = null;
                                        r317 = r312;
                                        break;
                                    case 24:
                                        int i54 = cVar5.f27102R;
                                        String str38 = M.f28050a;
                                        int iA3 = M.A(i54, ByteOrder.LITTLE_ENDIAN);
                                        if (iA3 == 0) {
                                            x.f("MatroskaExtractor", "Unsupported little endian PCM bit depth: " + cVar5.f27102R + ". Setting mimeType to audio/x-unknown");
                                            r315 = r10;
                                            str34 = "audio/x-unknown";
                                            r311 = r315;
                                            iA2 = -1;
                                            r314 = r311;
                                        } else {
                                            r314 = r10;
                                            iA2 = iA3;
                                        }
                                        list3 = null;
                                        r316 = r314;
                                        str14 = null;
                                        list4 = list3;
                                        r313 = r316;
                                        i9 = -1;
                                        list = list4;
                                        r312 = r313;
                                        if (cVar5.f27100P != null) {
                                            str14 = rVarA.f7454a;
                                            str34 = "video/dolby-vision";
                                        }
                                        boolean z1113 = cVar5.f27108X;
                                        if (cVar5.f27107W) {
                                            i11 = 2;
                                        } else {
                                            i11 = 0;
                                        }
                                        int i3111111111119 = (z1113 ? 1 : 0) | i11;
                                        c3135s = new C3135s();
                                        if (O.k(str34)) {
                                            c3135s.f26973F = cVar5.f27101Q;
                                            c3135s.f26974G = cVar5.f27103S;
                                            c3135s.f26975H = iA2;
                                            str = str;
                                            str2 = str2;
                                            i12 = 1;
                                        } else if (O.o(str34)) {
                                            if (cVar5.f27130s == 0) {
                                                i16 = cVar5.f27128q;
                                                i13 = -1;
                                                if (i16 == -1) {
                                                    i16 = cVar5.f27125n;
                                                }
                                                cVar5.f27128q = i16;
                                                i17 = cVar5.f27129r;
                                                if (i17 == -1) {
                                                    i17 = cVar5.f27126o;
                                                }
                                                cVar5.f27129r = i17;
                                            } else {
                                                i13 = -1;
                                            }
                                            i14 = cVar5.f27128q;
                                            if (i14 != i13) {
                                                f8 = -1.0f;
                                            } else {
                                                f8 = -1.0f;
                                            }
                                            if (cVar5.f27137z) {
                                                if (cVar5.f27090F != -1.0f) {
                                                    bArr = null;
                                                } else {
                                                    bArr = null;
                                                }
                                                int i31111111111110 = cVar5.f27085A;
                                                int i31111111111111 = cVar5.f27087C;
                                                int i31111111111112 = cVar5.f27086B;
                                                int i31111111111113 = cVar5.f27127p;
                                                c3126i = new C3126i(i31111111111110, i31111111111111, i31111111111112, bArr, i31111111111113, i31111111111113);
                                            } else {
                                                c3126i = null;
                                            }
                                            str17 = cVar5.f27113b;
                                            if (str17 != null) {
                                                map = f27143k0;
                                                if (map.containsKey(str17)) {
                                                    iIntValue = ((Integer) map.get(cVar5.f27113b)).intValue();
                                                } else {
                                                    iIntValue = -1;
                                                }
                                            } else {
                                                iIntValue = -1;
                                            }
                                            if (cVar5.f27131t == 0) {
                                                if (Float.compare(cVar5.f27134w, 0.0f) == 0) {
                                                    iIntValue = 0;
                                                } else if (Float.compare(cVar5.f27134w, 90.0f) == 0) {
                                                    iIntValue = 90;
                                                } else if (Float.compare(cVar5.f27134w, -180.0f) != 0) {
                                                    iIntValue = 180;
                                                } else {
                                                    iIntValue = 180;
                                                }
                                            }
                                            c3135s.f27003u = cVar5.f27125n;
                                            c3135s.f27004v = cVar5.f27126o;
                                            c3135s.f26968A = f8;
                                            c3135s.f27008z = iIntValue;
                                            c3135s.f26969B = cVar5.f27135x;
                                            c3135s.f26970C = cVar5.f27136y;
                                            c3135s.f26971D = c3126i;
                                            i12 = 2;
                                        } else {
                                            str = str;
                                            str2 = str2;
                                            if (org.videolan.libvlc.media.MediaPlayer.MEDIA_MIMETYPE_TEXT_SUBRIP.equals(str34)) {
                                            }
                                            i12 = 3;
                                        }
                                        str18 = cVar5.f27113b;
                                        if (str18 != null) {
                                            c3135s.f26984b = cVar5.f27113b;
                                        }
                                        c3135s.f26983a = Integer.toString(i33);
                                        if (cVar5.f27111a) {
                                            str19 = "video/webm";
                                        } else {
                                            str19 = "video/x-matroska";
                                        }
                                        c3135s.f26995m = O.p(str19);
                                        c3135s.f26996n = O.p(str34);
                                        c3135s.f26997o = i9;
                                        c3135s.f26986d = cVar5.f27109Y;
                                        c3135s.f26987e = i3111111111119;
                                        c3135s.f26999q = list;
                                        c3135s.f26992j = str14;
                                        c3135s.f27000r = cVar5.f27124m;
                                        C3136t c3136tA114 = c3135s.a();
                                        L lT114 = uVar2.t(cVar5.f27115d, i12);
                                        cVar5.f27110Z = lT114;
                                        lT114.b(c3136tA114);
                                        sparseArray.put(cVar5.f27115d, cVar5);
                                        dVar3 = dVar3;
                                        cVar = null;
                                        r317 = r312;
                                        break;
                                    case 25:
                                    case Service.BILLING_FIELD_NUMBER /* 26 */:
                                        str34 = "text/x-ssa";
                                        listX = H.y(f27139g0, cVar5.a(cVar5.f27114c));
                                        listSingletonList = listX;
                                        iA2 = -1;
                                        list3 = listSingletonList;
                                        r316 = r10;
                                        str14 = null;
                                        list4 = list3;
                                        r313 = r316;
                                        i9 = -1;
                                        list = list4;
                                        r312 = r313;
                                        if (cVar5.f27100P != null) {
                                            str14 = rVarA.f7454a;
                                            str34 = "video/dolby-vision";
                                        }
                                        boolean z1114 = cVar5.f27108X;
                                        if (cVar5.f27107W) {
                                            i11 = 2;
                                        } else {
                                            i11 = 0;
                                        }
                                        int i31111111111114 = (z1114 ? 1 : 0) | i11;
                                        c3135s = new C3135s();
                                        if (O.k(str34)) {
                                            c3135s.f26973F = cVar5.f27101Q;
                                            c3135s.f26974G = cVar5.f27103S;
                                            c3135s.f26975H = iA2;
                                            str = str;
                                            str2 = str2;
                                            i12 = 1;
                                        } else if (O.o(str34)) {
                                            if (cVar5.f27130s == 0) {
                                                i16 = cVar5.f27128q;
                                                i13 = -1;
                                                if (i16 == -1) {
                                                    i16 = cVar5.f27125n;
                                                }
                                                cVar5.f27128q = i16;
                                                i17 = cVar5.f27129r;
                                                if (i17 == -1) {
                                                    i17 = cVar5.f27126o;
                                                }
                                                cVar5.f27129r = i17;
                                            } else {
                                                i13 = -1;
                                            }
                                            i14 = cVar5.f27128q;
                                            if (i14 != i13) {
                                                f8 = -1.0f;
                                            } else {
                                                f8 = -1.0f;
                                            }
                                            if (cVar5.f27137z) {
                                                if (cVar5.f27090F != -1.0f) {
                                                    bArr = null;
                                                } else {
                                                    bArr = null;
                                                }
                                                int i31111111111115 = cVar5.f27085A;
                                                int i31111111111116 = cVar5.f27087C;
                                                int i31111111111117 = cVar5.f27086B;
                                                int i31111111111118 = cVar5.f27127p;
                                                c3126i = new C3126i(i31111111111115, i31111111111116, i31111111111117, bArr, i31111111111118, i31111111111118);
                                            } else {
                                                c3126i = null;
                                            }
                                            str17 = cVar5.f27113b;
                                            if (str17 != null) {
                                                map = f27143k0;
                                                if (map.containsKey(str17)) {
                                                    iIntValue = ((Integer) map.get(cVar5.f27113b)).intValue();
                                                } else {
                                                    iIntValue = -1;
                                                }
                                            } else {
                                                iIntValue = -1;
                                            }
                                            if (cVar5.f27131t == 0) {
                                                if (Float.compare(cVar5.f27134w, 0.0f) == 0) {
                                                    iIntValue = 0;
                                                } else if (Float.compare(cVar5.f27134w, 90.0f) == 0) {
                                                    iIntValue = 90;
                                                } else if (Float.compare(cVar5.f27134w, -180.0f) != 0) {
                                                    iIntValue = 180;
                                                } else {
                                                    iIntValue = 180;
                                                }
                                            }
                                            c3135s.f27003u = cVar5.f27125n;
                                            c3135s.f27004v = cVar5.f27126o;
                                            c3135s.f26968A = f8;
                                            c3135s.f27008z = iIntValue;
                                            c3135s.f26969B = cVar5.f27135x;
                                            c3135s.f26970C = cVar5.f27136y;
                                            c3135s.f26971D = c3126i;
                                            i12 = 2;
                                        } else {
                                            str = str;
                                            str2 = str2;
                                            if (org.videolan.libvlc.media.MediaPlayer.MEDIA_MIMETYPE_TEXT_SUBRIP.equals(str34)) {
                                            }
                                            i12 = 3;
                                        }
                                        str18 = cVar5.f27113b;
                                        if (str18 != null) {
                                            c3135s.f26984b = cVar5.f27113b;
                                        }
                                        c3135s.f26983a = Integer.toString(i33);
                                        if (cVar5.f27111a) {
                                            str19 = "video/webm";
                                        } else {
                                            str19 = "video/x-matroska";
                                        }
                                        c3135s.f26995m = O.p(str19);
                                        c3135s.f26996n = O.p(str34);
                                        c3135s.f26997o = i9;
                                        c3135s.f26986d = cVar5.f27109Y;
                                        c3135s.f26987e = i31111111111114;
                                        c3135s.f26999q = list;
                                        c3135s.f26992j = str14;
                                        c3135s.f27000r = cVar5.f27124m;
                                        C3136t c3136tA115 = c3135s.a();
                                        L lT115 = uVar2.t(cVar5.f27115d, i12);
                                        cVar5.f27110Z = lT115;
                                        lT115.b(c3136tA115);
                                        sparseArray.put(cVar5.f27115d, cVar5);
                                        dVar3 = dVar3;
                                        cVar = null;
                                        r317 = r312;
                                        break;
                                    case 27:
                                        B bA = B.a(new E(cVar5.a(cVar5.f27114c)), false, null);
                                        cVar5.f27112a0 = bA.f7306b;
                                        str34 = "video/hevc";
                                        list2 = bA.f7305a;
                                        str16 = bA.f7318n;
                                        r312 = r10;
                                        iA2 = -1;
                                        i9 = -1;
                                        List list6 = list2;
                                        str14 = str16;
                                        list = list6;
                                        if (cVar5.f27100P != null) {
                                            str14 = rVarA.f7454a;
                                            str34 = "video/dolby-vision";
                                        }
                                        boolean z1115 = cVar5.f27108X;
                                        if (cVar5.f27107W) {
                                            i11 = 2;
                                        } else {
                                            i11 = 0;
                                        }
                                        int i31111111111119 = (z1115 ? 1 : 0) | i11;
                                        c3135s = new C3135s();
                                        if (O.k(str34)) {
                                            c3135s.f26973F = cVar5.f27101Q;
                                            c3135s.f26974G = cVar5.f27103S;
                                            c3135s.f26975H = iA2;
                                            str = str;
                                            str2 = str2;
                                            i12 = 1;
                                        } else if (O.o(str34)) {
                                            if (cVar5.f27130s == 0) {
                                                i16 = cVar5.f27128q;
                                                i13 = -1;
                                                if (i16 == -1) {
                                                    i16 = cVar5.f27125n;
                                                }
                                                cVar5.f27128q = i16;
                                                i17 = cVar5.f27129r;
                                                if (i17 == -1) {
                                                    i17 = cVar5.f27126o;
                                                }
                                                cVar5.f27129r = i17;
                                            } else {
                                                i13 = -1;
                                            }
                                            i14 = cVar5.f27128q;
                                            if (i14 != i13) {
                                                f8 = -1.0f;
                                            } else {
                                                f8 = -1.0f;
                                            }
                                            if (cVar5.f27137z) {
                                                if (cVar5.f27090F != -1.0f) {
                                                    bArr = null;
                                                } else {
                                                    bArr = null;
                                                }
                                                int i311111111111110 = cVar5.f27085A;
                                                int i311111111111111 = cVar5.f27087C;
                                                int i311111111111112 = cVar5.f27086B;
                                                int i311111111111113 = cVar5.f27127p;
                                                c3126i = new C3126i(i311111111111110, i311111111111111, i311111111111112, bArr, i311111111111113, i311111111111113);
                                            } else {
                                                c3126i = null;
                                            }
                                            str17 = cVar5.f27113b;
                                            if (str17 != null) {
                                                map = f27143k0;
                                                if (map.containsKey(str17)) {
                                                    iIntValue = ((Integer) map.get(cVar5.f27113b)).intValue();
                                                } else {
                                                    iIntValue = -1;
                                                }
                                            } else {
                                                iIntValue = -1;
                                            }
                                            if (cVar5.f27131t == 0) {
                                                if (Float.compare(cVar5.f27134w, 0.0f) == 0) {
                                                    iIntValue = 0;
                                                } else if (Float.compare(cVar5.f27134w, 90.0f) == 0) {
                                                    iIntValue = 90;
                                                } else if (Float.compare(cVar5.f27134w, -180.0f) != 0) {
                                                    iIntValue = 180;
                                                } else {
                                                    iIntValue = 180;
                                                }
                                            }
                                            c3135s.f27003u = cVar5.f27125n;
                                            c3135s.f27004v = cVar5.f27126o;
                                            c3135s.f26968A = f8;
                                            c3135s.f27008z = iIntValue;
                                            c3135s.f26969B = cVar5.f27135x;
                                            c3135s.f26970C = cVar5.f27136y;
                                            c3135s.f26971D = c3126i;
                                            i12 = 2;
                                        } else {
                                            str = str;
                                            str2 = str2;
                                            if (org.videolan.libvlc.media.MediaPlayer.MEDIA_MIMETYPE_TEXT_SUBRIP.equals(str34)) {
                                            }
                                            i12 = 3;
                                        }
                                        str18 = cVar5.f27113b;
                                        if (str18 != null) {
                                            c3135s.f26984b = cVar5.f27113b;
                                        }
                                        c3135s.f26983a = Integer.toString(i33);
                                        if (cVar5.f27111a) {
                                            str19 = "video/webm";
                                        } else {
                                            str19 = "video/x-matroska";
                                        }
                                        c3135s.f26995m = O.p(str19);
                                        c3135s.f26996n = O.p(str34);
                                        c3135s.f26997o = i9;
                                        c3135s.f26986d = cVar5.f27109Y;
                                        c3135s.f26987e = i31111111111119;
                                        c3135s.f26999q = list;
                                        c3135s.f26992j = str14;
                                        c3135s.f27000r = cVar5.f27124m;
                                        C3136t c3136tA116 = c3135s.a();
                                        L lT116 = uVar2.t(cVar5.f27115d, i12);
                                        cVar5.f27110Z = lT116;
                                        lT116.b(c3136tA116);
                                        sparseArray.put(cVar5.f27115d, cVar5);
                                        dVar3 = dVar3;
                                        cVar = null;
                                        r317 = r312;
                                        break;
                                    case Service.MONITORING_FIELD_NUMBER /* 28 */:
                                        str34 = "text/vtt";
                                        r311 = r10;
                                        iA2 = -1;
                                        r314 = r311;
                                        list3 = null;
                                        r316 = r314;
                                        str14 = null;
                                        list4 = list3;
                                        r313 = r316;
                                        i9 = -1;
                                        list = list4;
                                        r312 = r313;
                                        if (cVar5.f27100P != null) {
                                            str14 = rVarA.f7454a;
                                            str34 = "video/dolby-vision";
                                        }
                                        boolean z1116 = cVar5.f27108X;
                                        if (cVar5.f27107W) {
                                            i11 = 2;
                                        } else {
                                            i11 = 0;
                                        }
                                        int i311111111111114 = (z1116 ? 1 : 0) | i11;
                                        c3135s = new C3135s();
                                        if (O.k(str34)) {
                                            c3135s.f26973F = cVar5.f27101Q;
                                            c3135s.f26974G = cVar5.f27103S;
                                            c3135s.f26975H = iA2;
                                            str = str;
                                            str2 = str2;
                                            i12 = 1;
                                        } else if (O.o(str34)) {
                                            if (cVar5.f27130s == 0) {
                                                i16 = cVar5.f27128q;
                                                i13 = -1;
                                                if (i16 == -1) {
                                                    i16 = cVar5.f27125n;
                                                }
                                                cVar5.f27128q = i16;
                                                i17 = cVar5.f27129r;
                                                if (i17 == -1) {
                                                    i17 = cVar5.f27126o;
                                                }
                                                cVar5.f27129r = i17;
                                            } else {
                                                i13 = -1;
                                            }
                                            i14 = cVar5.f27128q;
                                            if (i14 != i13) {
                                                f8 = -1.0f;
                                            } else {
                                                f8 = -1.0f;
                                            }
                                            if (cVar5.f27137z) {
                                                if (cVar5.f27090F != -1.0f) {
                                                    bArr = null;
                                                } else {
                                                    bArr = null;
                                                }
                                                int i311111111111115 = cVar5.f27085A;
                                                int i311111111111116 = cVar5.f27087C;
                                                int i311111111111117 = cVar5.f27086B;
                                                int i311111111111118 = cVar5.f27127p;
                                                c3126i = new C3126i(i311111111111115, i311111111111116, i311111111111117, bArr, i311111111111118, i311111111111118);
                                            } else {
                                                c3126i = null;
                                            }
                                            str17 = cVar5.f27113b;
                                            if (str17 != null) {
                                                map = f27143k0;
                                                if (map.containsKey(str17)) {
                                                    iIntValue = ((Integer) map.get(cVar5.f27113b)).intValue();
                                                } else {
                                                    iIntValue = -1;
                                                }
                                            } else {
                                                iIntValue = -1;
                                            }
                                            if (cVar5.f27131t == 0) {
                                                if (Float.compare(cVar5.f27134w, 0.0f) == 0) {
                                                    iIntValue = 0;
                                                } else if (Float.compare(cVar5.f27134w, 90.0f) == 0) {
                                                    iIntValue = 90;
                                                } else if (Float.compare(cVar5.f27134w, -180.0f) != 0) {
                                                    iIntValue = 180;
                                                } else {
                                                    iIntValue = 180;
                                                }
                                            }
                                            c3135s.f27003u = cVar5.f27125n;
                                            c3135s.f27004v = cVar5.f27126o;
                                            c3135s.f26968A = f8;
                                            c3135s.f27008z = iIntValue;
                                            c3135s.f26969B = cVar5.f27135x;
                                            c3135s.f26970C = cVar5.f27136y;
                                            c3135s.f26971D = c3126i;
                                            i12 = 2;
                                        } else {
                                            str = str;
                                            str2 = str2;
                                            if (org.videolan.libvlc.media.MediaPlayer.MEDIA_MIMETYPE_TEXT_SUBRIP.equals(str34)) {
                                            }
                                            i12 = 3;
                                        }
                                        str18 = cVar5.f27113b;
                                        if (str18 != null) {
                                            c3135s.f26984b = cVar5.f27113b;
                                        }
                                        c3135s.f26983a = Integer.toString(i33);
                                        if (cVar5.f27111a) {
                                            str19 = "video/webm";
                                        } else {
                                            str19 = "video/x-matroska";
                                        }
                                        c3135s.f26995m = O.p(str19);
                                        c3135s.f26996n = O.p(str34);
                                        c3135s.f26997o = i9;
                                        c3135s.f26986d = cVar5.f27109Y;
                                        c3135s.f26987e = i311111111111114;
                                        c3135s.f26999q = list;
                                        c3135s.f26992j = str14;
                                        c3135s.f27000r = cVar5.f27124m;
                                        C3136t c3136tA117 = c3135s.a();
                                        L lT117 = uVar2.t(cVar5.f27115d, i12);
                                        cVar5.f27110Z = lT117;
                                        lT117.b(c3136tA117);
                                        sparseArray.put(cVar5.f27115d, cVar5);
                                        dVar3 = dVar3;
                                        cVar = null;
                                        r317 = r312;
                                        break;
                                    case Service.SYSTEM_PARAMETERS_FIELD_NUMBER /* 29 */:
                                        r311 = r10;
                                        str34 = org.videolan.libvlc.media.MediaPlayer.MEDIA_MIMETYPE_TEXT_SUBRIP;
                                        iA2 = -1;
                                        r314 = r311;
                                        list3 = null;
                                        r316 = r314;
                                        str14 = null;
                                        list4 = list3;
                                        r313 = r316;
                                        i9 = -1;
                                        list = list4;
                                        r312 = r313;
                                        if (cVar5.f27100P != null) {
                                            str14 = rVarA.f7454a;
                                            str34 = "video/dolby-vision";
                                        }
                                        boolean z1117 = cVar5.f27108X;
                                        if (cVar5.f27107W) {
                                            i11 = 2;
                                        } else {
                                            i11 = 0;
                                        }
                                        int i311111111111119 = (z1117 ? 1 : 0) | i11;
                                        c3135s = new C3135s();
                                        if (O.k(str34)) {
                                            c3135s.f26973F = cVar5.f27101Q;
                                            c3135s.f26974G = cVar5.f27103S;
                                            c3135s.f26975H = iA2;
                                            str = str;
                                            str2 = str2;
                                            i12 = 1;
                                        } else if (O.o(str34)) {
                                            if (cVar5.f27130s == 0) {
                                                i16 = cVar5.f27128q;
                                                i13 = -1;
                                                if (i16 == -1) {
                                                    i16 = cVar5.f27125n;
                                                }
                                                cVar5.f27128q = i16;
                                                i17 = cVar5.f27129r;
                                                if (i17 == -1) {
                                                    i17 = cVar5.f27126o;
                                                }
                                                cVar5.f27129r = i17;
                                            } else {
                                                i13 = -1;
                                            }
                                            i14 = cVar5.f27128q;
                                            if (i14 != i13) {
                                                f8 = -1.0f;
                                            } else {
                                                f8 = -1.0f;
                                            }
                                            if (cVar5.f27137z) {
                                                if (cVar5.f27090F != -1.0f) {
                                                    bArr = null;
                                                } else {
                                                    bArr = null;
                                                }
                                                int i3111111111111110 = cVar5.f27085A;
                                                int i3111111111111111 = cVar5.f27087C;
                                                int i3111111111111112 = cVar5.f27086B;
                                                int i3111111111111113 = cVar5.f27127p;
                                                c3126i = new C3126i(i3111111111111110, i3111111111111111, i3111111111111112, bArr, i3111111111111113, i3111111111111113);
                                            } else {
                                                c3126i = null;
                                            }
                                            str17 = cVar5.f27113b;
                                            if (str17 != null) {
                                                map = f27143k0;
                                                if (map.containsKey(str17)) {
                                                    iIntValue = ((Integer) map.get(cVar5.f27113b)).intValue();
                                                } else {
                                                    iIntValue = -1;
                                                }
                                            } else {
                                                iIntValue = -1;
                                            }
                                            if (cVar5.f27131t == 0) {
                                                if (Float.compare(cVar5.f27134w, 0.0f) == 0) {
                                                    iIntValue = 0;
                                                } else if (Float.compare(cVar5.f27134w, 90.0f) == 0) {
                                                    iIntValue = 90;
                                                } else if (Float.compare(cVar5.f27134w, -180.0f) != 0) {
                                                    iIntValue = 180;
                                                } else {
                                                    iIntValue = 180;
                                                }
                                            }
                                            c3135s.f27003u = cVar5.f27125n;
                                            c3135s.f27004v = cVar5.f27126o;
                                            c3135s.f26968A = f8;
                                            c3135s.f27008z = iIntValue;
                                            c3135s.f26969B = cVar5.f27135x;
                                            c3135s.f26970C = cVar5.f27136y;
                                            c3135s.f26971D = c3126i;
                                            i12 = 2;
                                        } else {
                                            str = str;
                                            str2 = str2;
                                            if (org.videolan.libvlc.media.MediaPlayer.MEDIA_MIMETYPE_TEXT_SUBRIP.equals(str34)) {
                                            }
                                            i12 = 3;
                                        }
                                        str18 = cVar5.f27113b;
                                        if (str18 != null) {
                                            c3135s.f26984b = cVar5.f27113b;
                                        }
                                        c3135s.f26983a = Integer.toString(i33);
                                        if (cVar5.f27111a) {
                                            str19 = "video/webm";
                                        } else {
                                            str19 = "video/x-matroska";
                                        }
                                        c3135s.f26995m = O.p(str19);
                                        c3135s.f26996n = O.p(str34);
                                        c3135s.f26997o = i9;
                                        c3135s.f26986d = cVar5.f27109Y;
                                        c3135s.f26987e = i311111111111119;
                                        c3135s.f26999q = list;
                                        c3135s.f26992j = str14;
                                        c3135s.f27000r = cVar5.f27124m;
                                        C3136t c3136tA118 = c3135s.a();
                                        L lT118 = uVar2.t(cVar5.f27115d, i12);
                                        cVar5.f27110Z = lT118;
                                        lT118.b(c3136tA118);
                                        sparseArray.put(cVar5.f27115d, cVar5);
                                        dVar3 = dVar3;
                                        cVar = null;
                                        r317 = r312;
                                        break;
                                    case MqttConnectOptions.CONNECTION_TIMEOUT_DEFAULT /* 30 */:
                                        str34 = "video/mpeg2";
                                        r311 = r10;
                                        iA2 = -1;
                                        r314 = r311;
                                        list3 = null;
                                        r316 = r314;
                                        str14 = null;
                                        list4 = list3;
                                        r313 = r316;
                                        i9 = -1;
                                        list = list4;
                                        r312 = r313;
                                        if (cVar5.f27100P != null) {
                                            str14 = rVarA.f7454a;
                                            str34 = "video/dolby-vision";
                                        }
                                        boolean z1118 = cVar5.f27108X;
                                        if (cVar5.f27107W) {
                                            i11 = 2;
                                        } else {
                                            i11 = 0;
                                        }
                                        int i3111111111111114 = (z1118 ? 1 : 0) | i11;
                                        c3135s = new C3135s();
                                        if (O.k(str34)) {
                                            c3135s.f26973F = cVar5.f27101Q;
                                            c3135s.f26974G = cVar5.f27103S;
                                            c3135s.f26975H = iA2;
                                            str = str;
                                            str2 = str2;
                                            i12 = 1;
                                        } else if (O.o(str34)) {
                                            if (cVar5.f27130s == 0) {
                                                i16 = cVar5.f27128q;
                                                i13 = -1;
                                                if (i16 == -1) {
                                                    i16 = cVar5.f27125n;
                                                }
                                                cVar5.f27128q = i16;
                                                i17 = cVar5.f27129r;
                                                if (i17 == -1) {
                                                    i17 = cVar5.f27126o;
                                                }
                                                cVar5.f27129r = i17;
                                            } else {
                                                i13 = -1;
                                            }
                                            i14 = cVar5.f27128q;
                                            if (i14 != i13) {
                                                f8 = -1.0f;
                                            } else {
                                                f8 = -1.0f;
                                            }
                                            if (cVar5.f27137z) {
                                                if (cVar5.f27090F != -1.0f) {
                                                    bArr = null;
                                                } else {
                                                    bArr = null;
                                                }
                                                int i3111111111111115 = cVar5.f27085A;
                                                int i3111111111111116 = cVar5.f27087C;
                                                int i3111111111111117 = cVar5.f27086B;
                                                int i3111111111111118 = cVar5.f27127p;
                                                c3126i = new C3126i(i3111111111111115, i3111111111111116, i3111111111111117, bArr, i3111111111111118, i3111111111111118);
                                            } else {
                                                c3126i = null;
                                            }
                                            str17 = cVar5.f27113b;
                                            if (str17 != null) {
                                                map = f27143k0;
                                                if (map.containsKey(str17)) {
                                                    iIntValue = ((Integer) map.get(cVar5.f27113b)).intValue();
                                                } else {
                                                    iIntValue = -1;
                                                }
                                            } else {
                                                iIntValue = -1;
                                            }
                                            if (cVar5.f27131t == 0) {
                                                if (Float.compare(cVar5.f27134w, 0.0f) == 0) {
                                                    iIntValue = 0;
                                                } else if (Float.compare(cVar5.f27134w, 90.0f) == 0) {
                                                    iIntValue = 90;
                                                } else if (Float.compare(cVar5.f27134w, -180.0f) != 0) {
                                                    iIntValue = 180;
                                                } else {
                                                    iIntValue = 180;
                                                }
                                            }
                                            c3135s.f27003u = cVar5.f27125n;
                                            c3135s.f27004v = cVar5.f27126o;
                                            c3135s.f26968A = f8;
                                            c3135s.f27008z = iIntValue;
                                            c3135s.f26969B = cVar5.f27135x;
                                            c3135s.f26970C = cVar5.f27136y;
                                            c3135s.f26971D = c3126i;
                                            i12 = 2;
                                        } else {
                                            str = str;
                                            str2 = str2;
                                            if (org.videolan.libvlc.media.MediaPlayer.MEDIA_MIMETYPE_TEXT_SUBRIP.equals(str34)) {
                                            }
                                            i12 = 3;
                                        }
                                        str18 = cVar5.f27113b;
                                        if (str18 != null) {
                                            c3135s.f26984b = cVar5.f27113b;
                                        }
                                        c3135s.f26983a = Integer.toString(i33);
                                        if (cVar5.f27111a) {
                                            str19 = "video/webm";
                                        } else {
                                            str19 = "video/x-matroska";
                                        }
                                        c3135s.f26995m = O.p(str19);
                                        c3135s.f26996n = O.p(str34);
                                        c3135s.f26997o = i9;
                                        c3135s.f26986d = cVar5.f27109Y;
                                        c3135s.f26987e = i3111111111111114;
                                        c3135s.f26999q = list;
                                        c3135s.f26992j = str14;
                                        c3135s.f27000r = cVar5.f27124m;
                                        C3136t c3136tA119 = c3135s.a();
                                        L lT119 = uVar2.t(cVar5.f27115d, i12);
                                        cVar5.f27110Z = lT119;
                                        lT119.b(c3136tA119);
                                        sparseArray.put(cVar5.f27115d, cVar5);
                                        dVar3 = dVar3;
                                        cVar = null;
                                        r317 = r312;
                                        break;
                                    case DescriptorProtos$FileOptions.CC_ENABLE_ARENAS_FIELD_NUMBER /* 31 */:
                                        str34 = "audio/eac3";
                                        r311 = r10;
                                        iA2 = -1;
                                        r314 = r311;
                                        list3 = null;
                                        r316 = r314;
                                        str14 = null;
                                        list4 = list3;
                                        r313 = r316;
                                        i9 = -1;
                                        list = list4;
                                        r312 = r313;
                                        if (cVar5.f27100P != null) {
                                            str14 = rVarA.f7454a;
                                            str34 = "video/dolby-vision";
                                        }
                                        boolean z1119 = cVar5.f27108X;
                                        if (cVar5.f27107W) {
                                            i11 = 2;
                                        } else {
                                            i11 = 0;
                                        }
                                        int i3111111111111119 = (z1119 ? 1 : 0) | i11;
                                        c3135s = new C3135s();
                                        if (O.k(str34)) {
                                            c3135s.f26973F = cVar5.f27101Q;
                                            c3135s.f26974G = cVar5.f27103S;
                                            c3135s.f26975H = iA2;
                                            str = str;
                                            str2 = str2;
                                            i12 = 1;
                                        } else if (O.o(str34)) {
                                            if (cVar5.f27130s == 0) {
                                                i16 = cVar5.f27128q;
                                                i13 = -1;
                                                if (i16 == -1) {
                                                    i16 = cVar5.f27125n;
                                                }
                                                cVar5.f27128q = i16;
                                                i17 = cVar5.f27129r;
                                                if (i17 == -1) {
                                                    i17 = cVar5.f27126o;
                                                }
                                                cVar5.f27129r = i17;
                                            } else {
                                                i13 = -1;
                                            }
                                            i14 = cVar5.f27128q;
                                            if (i14 != i13) {
                                                f8 = -1.0f;
                                            } else {
                                                f8 = -1.0f;
                                            }
                                            if (cVar5.f27137z) {
                                                if (cVar5.f27090F != -1.0f) {
                                                    bArr = null;
                                                } else {
                                                    bArr = null;
                                                }
                                                int i31111111111111110 = cVar5.f27085A;
                                                int i31111111111111111 = cVar5.f27087C;
                                                int i31111111111111112 = cVar5.f27086B;
                                                int i31111111111111113 = cVar5.f27127p;
                                                c3126i = new C3126i(i31111111111111110, i31111111111111111, i31111111111111112, bArr, i31111111111111113, i31111111111111113);
                                            } else {
                                                c3126i = null;
                                            }
                                            str17 = cVar5.f27113b;
                                            if (str17 != null) {
                                                map = f27143k0;
                                                if (map.containsKey(str17)) {
                                                    iIntValue = ((Integer) map.get(cVar5.f27113b)).intValue();
                                                } else {
                                                    iIntValue = -1;
                                                }
                                            } else {
                                                iIntValue = -1;
                                            }
                                            if (cVar5.f27131t == 0) {
                                                if (Float.compare(cVar5.f27134w, 0.0f) == 0) {
                                                    iIntValue = 0;
                                                } else if (Float.compare(cVar5.f27134w, 90.0f) == 0) {
                                                    iIntValue = 90;
                                                } else if (Float.compare(cVar5.f27134w, -180.0f) != 0) {
                                                    iIntValue = 180;
                                                } else {
                                                    iIntValue = 180;
                                                }
                                            }
                                            c3135s.f27003u = cVar5.f27125n;
                                            c3135s.f27004v = cVar5.f27126o;
                                            c3135s.f26968A = f8;
                                            c3135s.f27008z = iIntValue;
                                            c3135s.f26969B = cVar5.f27135x;
                                            c3135s.f26970C = cVar5.f27136y;
                                            c3135s.f26971D = c3126i;
                                            i12 = 2;
                                        } else {
                                            str = str;
                                            str2 = str2;
                                            if (org.videolan.libvlc.media.MediaPlayer.MEDIA_MIMETYPE_TEXT_SUBRIP.equals(str34)) {
                                            }
                                            i12 = 3;
                                        }
                                        str18 = cVar5.f27113b;
                                        if (str18 != null) {
                                            c3135s.f26984b = cVar5.f27113b;
                                        }
                                        c3135s.f26983a = Integer.toString(i33);
                                        if (cVar5.f27111a) {
                                            str19 = "video/webm";
                                        } else {
                                            str19 = "video/x-matroska";
                                        }
                                        c3135s.f26995m = O.p(str19);
                                        c3135s.f26996n = O.p(str34);
                                        c3135s.f26997o = i9;
                                        c3135s.f26986d = cVar5.f27109Y;
                                        c3135s.f26987e = i3111111111111119;
                                        c3135s.f26999q = list;
                                        c3135s.f26992j = str14;
                                        c3135s.f27000r = cVar5.f27124m;
                                        C3136t c3136tA1110 = c3135s.a();
                                        L lT1110 = uVar2.t(cVar5.f27115d, i12);
                                        cVar5.f27110Z = lT1110;
                                        lT1110.b(c3136tA1110);
                                        sparseArray.put(cVar5.f27115d, cVar5);
                                        dVar3 = dVar3;
                                        cVar = null;
                                        r317 = r312;
                                        break;
                                    case 32:
                                        str34 = "audio/flac";
                                        listX = Collections.singletonList(cVar5.a(cVar5.f27114c));
                                        listSingletonList = listX;
                                        iA2 = -1;
                                        list3 = listSingletonList;
                                        r316 = r10;
                                        str14 = null;
                                        list4 = list3;
                                        r313 = r316;
                                        i9 = -1;
                                        list = list4;
                                        r312 = r313;
                                        if (cVar5.f27100P != null) {
                                            str14 = rVarA.f7454a;
                                            str34 = "video/dolby-vision";
                                        }
                                        boolean z11110 = cVar5.f27108X;
                                        if (cVar5.f27107W) {
                                            i11 = 2;
                                        } else {
                                            i11 = 0;
                                        }
                                        int i31111111111111114 = (z11110 ? 1 : 0) | i11;
                                        c3135s = new C3135s();
                                        if (O.k(str34)) {
                                            c3135s.f26973F = cVar5.f27101Q;
                                            c3135s.f26974G = cVar5.f27103S;
                                            c3135s.f26975H = iA2;
                                            str = str;
                                            str2 = str2;
                                            i12 = 1;
                                        } else if (O.o(str34)) {
                                            if (cVar5.f27130s == 0) {
                                                i16 = cVar5.f27128q;
                                                i13 = -1;
                                                if (i16 == -1) {
                                                    i16 = cVar5.f27125n;
                                                }
                                                cVar5.f27128q = i16;
                                                i17 = cVar5.f27129r;
                                                if (i17 == -1) {
                                                    i17 = cVar5.f27126o;
                                                }
                                                cVar5.f27129r = i17;
                                            } else {
                                                i13 = -1;
                                            }
                                            i14 = cVar5.f27128q;
                                            if (i14 != i13) {
                                                f8 = -1.0f;
                                            } else {
                                                f8 = -1.0f;
                                            }
                                            if (cVar5.f27137z) {
                                                if (cVar5.f27090F != -1.0f) {
                                                    bArr = null;
                                                } else {
                                                    bArr = null;
                                                }
                                                int i31111111111111115 = cVar5.f27085A;
                                                int i31111111111111116 = cVar5.f27087C;
                                                int i31111111111111117 = cVar5.f27086B;
                                                int i31111111111111118 = cVar5.f27127p;
                                                c3126i = new C3126i(i31111111111111115, i31111111111111116, i31111111111111117, bArr, i31111111111111118, i31111111111111118);
                                            } else {
                                                c3126i = null;
                                            }
                                            str17 = cVar5.f27113b;
                                            if (str17 != null) {
                                                map = f27143k0;
                                                if (map.containsKey(str17)) {
                                                    iIntValue = ((Integer) map.get(cVar5.f27113b)).intValue();
                                                } else {
                                                    iIntValue = -1;
                                                }
                                            } else {
                                                iIntValue = -1;
                                            }
                                            if (cVar5.f27131t == 0) {
                                                if (Float.compare(cVar5.f27134w, 0.0f) == 0) {
                                                    iIntValue = 0;
                                                } else if (Float.compare(cVar5.f27134w, 90.0f) == 0) {
                                                    iIntValue = 90;
                                                } else if (Float.compare(cVar5.f27134w, -180.0f) != 0) {
                                                    iIntValue = 180;
                                                } else {
                                                    iIntValue = 180;
                                                }
                                            }
                                            c3135s.f27003u = cVar5.f27125n;
                                            c3135s.f27004v = cVar5.f27126o;
                                            c3135s.f26968A = f8;
                                            c3135s.f27008z = iIntValue;
                                            c3135s.f26969B = cVar5.f27135x;
                                            c3135s.f26970C = cVar5.f27136y;
                                            c3135s.f26971D = c3126i;
                                            i12 = 2;
                                        } else {
                                            str = str;
                                            str2 = str2;
                                            if (org.videolan.libvlc.media.MediaPlayer.MEDIA_MIMETYPE_TEXT_SUBRIP.equals(str34)) {
                                            }
                                            i12 = 3;
                                        }
                                        str18 = cVar5.f27113b;
                                        if (str18 != null) {
                                            c3135s.f26984b = cVar5.f27113b;
                                        }
                                        c3135s.f26983a = Integer.toString(i33);
                                        if (cVar5.f27111a) {
                                            str19 = "video/webm";
                                        } else {
                                            str19 = "video/x-matroska";
                                        }
                                        c3135s.f26995m = O.p(str19);
                                        c3135s.f26996n = O.p(str34);
                                        c3135s.f26997o = i9;
                                        c3135s.f26986d = cVar5.f27109Y;
                                        c3135s.f26987e = i31111111111111114;
                                        c3135s.f26999q = list;
                                        c3135s.f26992j = str14;
                                        c3135s.f27000r = cVar5.f27124m;
                                        C3136t c3136tA1111 = c3135s.a();
                                        L lT1111 = uVar2.t(cVar5.f27115d, i12);
                                        cVar5.f27110Z = lT1111;
                                        lT1111.b(c3136tA1111);
                                        sparseArray.put(cVar5.f27115d, cVar5);
                                        dVar3 = dVar3;
                                        cVar = null;
                                        r317 = r312;
                                        break;
                                    case 33:
                                        ArrayList arrayList2 = new ArrayList(3);
                                        arrayList2.add(cVar5.a(cVar5.f27114c));
                                        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
                                        ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
                                        arrayList2.add(byteBufferAllocate.order(byteOrder).putLong(cVar5.f27104T).array());
                                        arrayList2.add(ByteBuffer.allocate(8).order(byteOrder).putLong(cVar5.f27105U).array());
                                        str34 = "audio/opus";
                                        r312 = r10;
                                        iA2 = -1;
                                        str14 = null;
                                        i9 = 5760;
                                        list = arrayList2;
                                        if (cVar5.f27100P != null) {
                                            str14 = rVarA.f7454a;
                                            str34 = "video/dolby-vision";
                                        }
                                        boolean z11111 = cVar5.f27108X;
                                        if (cVar5.f27107W) {
                                            i11 = 2;
                                        } else {
                                            i11 = 0;
                                        }
                                        int i31111111111111119 = (z11111 ? 1 : 0) | i11;
                                        c3135s = new C3135s();
                                        if (O.k(str34)) {
                                            c3135s.f26973F = cVar5.f27101Q;
                                            c3135s.f26974G = cVar5.f27103S;
                                            c3135s.f26975H = iA2;
                                            str = str;
                                            str2 = str2;
                                            i12 = 1;
                                        } else if (O.o(str34)) {
                                            if (cVar5.f27130s == 0) {
                                                i16 = cVar5.f27128q;
                                                i13 = -1;
                                                if (i16 == -1) {
                                                    i16 = cVar5.f27125n;
                                                }
                                                cVar5.f27128q = i16;
                                                i17 = cVar5.f27129r;
                                                if (i17 == -1) {
                                                    i17 = cVar5.f27126o;
                                                }
                                                cVar5.f27129r = i17;
                                            } else {
                                                i13 = -1;
                                            }
                                            i14 = cVar5.f27128q;
                                            if (i14 != i13) {
                                                f8 = -1.0f;
                                            } else {
                                                f8 = -1.0f;
                                            }
                                            if (cVar5.f27137z) {
                                                if (cVar5.f27090F != -1.0f) {
                                                    bArr = null;
                                                } else {
                                                    bArr = null;
                                                }
                                                int i311111111111111110 = cVar5.f27085A;
                                                int i311111111111111111 = cVar5.f27087C;
                                                int i311111111111111112 = cVar5.f27086B;
                                                int i311111111111111113 = cVar5.f27127p;
                                                c3126i = new C3126i(i311111111111111110, i311111111111111111, i311111111111111112, bArr, i311111111111111113, i311111111111111113);
                                            } else {
                                                c3126i = null;
                                            }
                                            str17 = cVar5.f27113b;
                                            if (str17 != null) {
                                                map = f27143k0;
                                                if (map.containsKey(str17)) {
                                                    iIntValue = ((Integer) map.get(cVar5.f27113b)).intValue();
                                                } else {
                                                    iIntValue = -1;
                                                }
                                            } else {
                                                iIntValue = -1;
                                            }
                                            if (cVar5.f27131t == 0) {
                                                if (Float.compare(cVar5.f27134w, 0.0f) == 0) {
                                                    iIntValue = 0;
                                                } else if (Float.compare(cVar5.f27134w, 90.0f) == 0) {
                                                    iIntValue = 90;
                                                } else if (Float.compare(cVar5.f27134w, -180.0f) != 0) {
                                                    iIntValue = 180;
                                                } else {
                                                    iIntValue = 180;
                                                }
                                            }
                                            c3135s.f27003u = cVar5.f27125n;
                                            c3135s.f27004v = cVar5.f27126o;
                                            c3135s.f26968A = f8;
                                            c3135s.f27008z = iIntValue;
                                            c3135s.f26969B = cVar5.f27135x;
                                            c3135s.f26970C = cVar5.f27136y;
                                            c3135s.f26971D = c3126i;
                                            i12 = 2;
                                        } else {
                                            str = str;
                                            str2 = str2;
                                            if (org.videolan.libvlc.media.MediaPlayer.MEDIA_MIMETYPE_TEXT_SUBRIP.equals(str34)) {
                                            }
                                            i12 = 3;
                                        }
                                        str18 = cVar5.f27113b;
                                        if (str18 != null) {
                                            c3135s.f26984b = cVar5.f27113b;
                                        }
                                        c3135s.f26983a = Integer.toString(i33);
                                        if (cVar5.f27111a) {
                                            str19 = "video/webm";
                                        } else {
                                            str19 = "video/x-matroska";
                                        }
                                        c3135s.f26995m = O.p(str19);
                                        c3135s.f26996n = O.p(str34);
                                        c3135s.f26997o = i9;
                                        c3135s.f26986d = cVar5.f27109Y;
                                        c3135s.f26987e = i31111111111111119;
                                        c3135s.f26999q = list;
                                        c3135s.f26992j = str14;
                                        c3135s.f27000r = cVar5.f27124m;
                                        C3136t c3136tA1112 = c3135s.a();
                                        L lT1112 = uVar2.t(cVar5.f27115d, i12);
                                        cVar5.f27110Z = lT1112;
                                        lT1112.b(c3136tA1112);
                                        sparseArray.put(cVar5.f27115d, cVar5);
                                        dVar3 = dVar3;
                                        cVar = null;
                                        r317 = r312;
                                        break;
                                    default:
                                        throw P.a("Unrecognized codec identifier.", null);
                                }
                                break;
                            default:
                                str3 = str8;
                                str9 = str7;
                                cVar = null;
                                str = str;
                                r317 = r39;
                                break;
                        }
                        dVar3.f27198x = cVar;
                        str4 = str9;
                        r37 = r317;
                        r37 = r36;
                        r38 = r37;
                    }
                    r9 = tVar;
                    z8 = false;
                    r35 = r38;
                }
                z9 = true;
                r8 = r9;
                r34 = r35;
            }
            if (z9) {
                long jR2 = tVar.r();
                dVar = this;
                if (dVar.f27145B) {
                    dVar.f27147D = jR2;
                    wVar.f7458a = dVar.f27146C;
                    dVar.f27145B = z8;
                    return 1;
                }
                wVar2 = wVar;
                if (dVar.f27199y) {
                    long j14 = dVar.f27147D;
                    if (j14 != -1) {
                        wVar2.f7458a = j14;
                        dVar.f27147D = -1L;
                        return 1;
                    }
                } else {
                    continue;
                }
            } else {
                dVar = this;
                wVar2 = wVar;
            }
            str26 = str5;
            r13 = r34;
            str22 = str22;
            str23 = str2;
            str27 = str4;
            dVar2 = dVar;
            str24 = str6;
            str25 = str3;
            str28 = str;
        }
        d dVar4 = dVar2;
        if (z9) {
            return 0;
        }
        for (int i55 = 0; i55 < dVar4.f27174c.size(); i55++) {
            c cVar6 = (c) dVar4.f27174c.valueAt(i55);
            cVar6.f27110Z.getClass();
            cVar6.b();
        }
        return -1;
    }

    @Override // W0.s
    public final void i(long j8, long j9) {
        this.f27148E = -9223372036854775807L;
        this.f27153J = 0;
        b bVar = this.f27170a;
        bVar.f27082e = 0;
        bVar.f27079b.clear();
        e eVar = bVar.f27080c;
        eVar.f27203b = 0;
        eVar.f27204c = 0;
        e eVar2 = this.f27172b;
        eVar2.f27203b = 0;
        eVar2.f27204c = 0;
        l();
        int i8 = 0;
        while (true) {
            SparseArray sparseArray = this.f27174c;
            if (i8 >= sparseArray.size()) {
                return;
            }
            W0.M m7 = ((c) sparseArray.valueAt(i8)).f27106V;
            if (m7 != null) {
                m7.f7341b = false;
                m7.f7342c = 0;
            }
            i8++;
        }
    }

    @Override // W0.s
    public final List j() {
        z4.F f8 = H.f31804H;
        return d0.f31844K;
    }

    public final void k(t tVar, int i8) {
        E e8 = this.f27183i;
        if (e8.f28037c >= i8) {
            return;
        }
        byte[] bArr = e8.f28035a;
        if (bArr.length < i8) {
            e8.c(Math.max(bArr.length * 2, i8));
        }
        byte[] bArr2 = e8.f28035a;
        int i9 = e8.f28037c;
        tVar.readFully(bArr2, i9, i8 - i9);
        e8.K(i8);
    }

    public final void l() {
        this.f27165V = 0;
        this.f27166W = 0;
        this.f27167X = 0;
        this.f27168Y = false;
        this.f27169Z = false;
        this.f27171a0 = false;
        this.f27173b0 = 0;
        this.f27175c0 = (byte) 0;
        this.f27177d0 = false;
        this.f27186l.I(0);
    }

    public final long m(long j8) throws P {
        long j9 = this.f27194t;
        if (j9 == -9223372036854775807L) {
            throw P.a("Can't scale timecode prior to timecodeScale being set.", null);
        }
        String str = M.f28050a;
        return M.Z(j8, j9, 1000L, RoundingMode.DOWN);
    }

    public final int n(t tVar, c cVar, int i8, boolean z7) {
        int iF;
        int iF2;
        int i9;
        if ("S_TEXT/UTF8".equals(cVar.f27114c)) {
            o(tVar, f27138f0, i8);
            int i10 = this.f27166W;
            l();
            return i10;
        }
        if ("S_TEXT/ASS".equals(cVar.f27114c) || "S_TEXT/SSA".equals(cVar.f27114c)) {
            o(tVar, f27140h0, i8);
            int i11 = this.f27166W;
            l();
            return i11;
        }
        if ("S_TEXT/WEBVTT".equals(cVar.f27114c)) {
            o(tVar, f27141i0, i8);
            int i12 = this.f27166W;
            l();
            return i12;
        }
        L l4 = cVar.f27110Z;
        boolean z8 = this.f27168Y;
        E e8 = this.f27186l;
        if (!z8) {
            boolean z9 = cVar.f27120i;
            E e9 = this.f27183i;
            if (z9) {
                this.f27161R &= -1073741825;
                if (!this.f27169Z) {
                    tVar.readFully(e9.f28035a, 0, 1);
                    this.f27165V++;
                    byte b8 = e9.f28035a[0];
                    if ((b8 & 128) == 128) {
                        throw P.a("Extension bit is set in signal byte", null);
                    }
                    this.f27175c0 = b8;
                    this.f27169Z = true;
                }
                byte b9 = this.f27175c0;
                if ((b9 & 1) == 1) {
                    boolean z10 = (b9 & 2) == 2;
                    this.f27161R |= 1073741824;
                    if (!this.f27177d0) {
                        E e10 = this.f27188n;
                        tVar.readFully(e10.f28035a, 0, 8);
                        this.f27165V += 8;
                        this.f27177d0 = true;
                        e9.f28035a[0] = (byte) ((z10 ? 128 : 0) | 8);
                        e9.L(0);
                        l4.a(1, 1, e9);
                        this.f27166W++;
                        e10.L(0);
                        l4.a(8, 1, e10);
                        this.f27166W += 8;
                    }
                    if (z10) {
                        if (!this.f27171a0) {
                            tVar.readFully(e9.f28035a, 0, 1);
                            this.f27165V++;
                            e9.L(0);
                            this.f27173b0 = e9.z();
                            this.f27171a0 = true;
                        }
                        int i13 = this.f27173b0 * 4;
                        e9.I(i13);
                        tVar.readFully(e9.f28035a, 0, i13);
                        this.f27165V += i13;
                        short s7 = (short) ((this.f27173b0 / 2) + 1);
                        int i14 = (s7 * 6) + 2;
                        ByteBuffer byteBuffer = this.f27191q;
                        if (byteBuffer == null || byteBuffer.capacity() < i14) {
                            this.f27191q = ByteBuffer.allocate(i14);
                        }
                        this.f27191q.position(0);
                        this.f27191q.putShort(s7);
                        int i15 = 0;
                        int i16 = 0;
                        while (true) {
                            i9 = this.f27173b0;
                            if (i15 >= i9) {
                                break;
                            }
                            int iD = e9.D();
                            if (i15 % 2 == 0) {
                                this.f27191q.putShort((short) (iD - i16));
                            } else {
                                this.f27191q.putInt(iD - i16);
                            }
                            i15++;
                            i16 = iD;
                        }
                        int i17 = (i8 - this.f27165V) - i16;
                        if (i9 % 2 == 1) {
                            this.f27191q.putInt(i17);
                        } else {
                            this.f27191q.putShort((short) i17);
                            this.f27191q.putInt(0);
                        }
                        byte[] bArrArray = this.f27191q.array();
                        E e11 = this.f27189o;
                        e11.J(i14, bArrArray);
                        l4.a(i14, 1, e11);
                        this.f27166W += i14;
                    }
                }
            } else {
                byte[] bArr = cVar.f27121j;
                if (bArr != null) {
                    e8.J(bArr.length, bArr);
                }
            }
            if (!"A_OPUS".equals(cVar.f27114c) ? cVar.f27118g > 0 : z7) {
                this.f27161R |= 268435456;
                this.f27190p.I(0);
                int i18 = (e8.f28037c + i8) - this.f27165V;
                e9.I(4);
                byte[] bArr2 = e9.f28035a;
                bArr2[0] = (byte) ((i18 >> 24) & 255);
                bArr2[1] = (byte) ((i18 >> 16) & 255);
                bArr2[2] = (byte) ((i18 >> 8) & 255);
                bArr2[3] = (byte) (i18 & 255);
                l4.a(4, 2, e9);
                this.f27166W += 4;
            }
            this.f27168Y = true;
        }
        int i19 = i8 + e8.f28037c;
        if (!"V_MPEG4/ISO/AVC".equals(cVar.f27114c) && !"V_MPEGH/ISO/HEVC".equals(cVar.f27114c)) {
            if (cVar.f27106V != null) {
                H1.i(e8.f28037c == 0);
                cVar.f27106V.c(tVar);
            }
            while (true) {
                int i20 = this.f27165V;
                if (i20 >= i19) {
                    break;
                }
                int i21 = i19 - i20;
                int iA = e8.a();
                if (iA > 0) {
                    iF2 = Math.min(i21, iA);
                    l4.e(iF2, e8);
                } else {
                    iF2 = l4.f(tVar, i21, false);
                }
                this.f27165V += iF2;
                this.f27166W += iF2;
            }
        } else {
            E e12 = this.f27182h;
            byte[] bArr3 = e12.f28035a;
            bArr3[0] = 0;
            bArr3[1] = 0;
            bArr3[2] = 0;
            int i22 = cVar.f27112a0;
            int i23 = 4 - i22;
            while (this.f27165V < i19) {
                int i24 = this.f27167X;
                if (i24 == 0) {
                    int iMin = Math.min(i22, e8.a());
                    tVar.readFully(bArr3, i23 + iMin, i22 - iMin);
                    if (iMin > 0) {
                        e8.j(i23, bArr3, iMin);
                    }
                    this.f27165V += i22;
                    e12.L(0);
                    this.f27167X = e12.D();
                    E e13 = this.f27181g;
                    e13.L(0);
                    l4.e(4, e13);
                    this.f27166W += 4;
                } else {
                    int iA2 = e8.a();
                    if (iA2 > 0) {
                        iF = Math.min(i24, iA2);
                        l4.e(iF, e8);
                    } else {
                        iF = l4.f(tVar, i24, false);
                    }
                    this.f27165V += iF;
                    this.f27166W += iF;
                    this.f27167X -= iF;
                }
            }
        }
        if ("A_VORBIS".equals(cVar.f27114c)) {
            E e14 = this.f27184j;
            e14.L(0);
            l4.e(4, e14);
            this.f27166W += 4;
        }
        int i25 = this.f27166W;
        l();
        return i25;
    }

    public final void o(t tVar, byte[] bArr, int i8) {
        int length = bArr.length + i8;
        E e8 = this.f27187m;
        byte[] bArr2 = e8.f28035a;
        if (bArr2.length < length) {
            byte[] bArrCopyOf = Arrays.copyOf(bArr, length + i8);
            e8.getClass();
            e8.J(bArrCopyOf.length, bArrCopyOf);
        } else {
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        }
        tVar.readFully(e8.f28035a, bArr.length, i8);
        e8.L(0);
        e8.K(length);
    }

    @Override // W0.s
    public final s b() {
        return this;
    }

    @Override // W0.s
    public final void release() {
    }
}
