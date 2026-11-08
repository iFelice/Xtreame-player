package com.google.android.gms.internal.ads;

import W0.C0372e;
import android.util.Pair;
import android.util.SparseArray;
import com.google.api.Service;
import com.google.protobuf.DescriptorProtos$FileOptions;
import java.io.EOFException;
import java.io.InterruptedIOException;
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
import okhttp3.HttpUrl;
import org.eclipse.paho.client.mqttv3.MqttConnectOptions;
import org.eclipse.paho.client.mqttv3.internal.wire.MqttWireMessage;
import org.videolan.libvlc.MediaPlayer;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.f1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1287f1 implements L {

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public static final byte[] f18649e0 = {49, 10, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 10};

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public static final byte[] f18650f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public static final byte[] f18651g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public static final byte[] f18652h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public static final UUID f18653i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public static final Map f18654j0;

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public long f18655A;

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public long f18656B;

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public long f18657C;

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public p117p0.y f18658D;

    /* JADX INFO: renamed from: E, reason: collision with root package name */
    public p117p0.y f18659E;

    /* JADX INFO: renamed from: F, reason: collision with root package name */
    public boolean f18660F;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public boolean f18661G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public int f18662H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public long f18663I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public long f18664J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public int f18665K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public int f18666L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public int[] f18667M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public int f18668N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public int f18669O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public int f18670P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public int f18671Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public boolean f18672R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public long f18673S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public int f18674T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public int f18675U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public int f18676V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public boolean f18677W;

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public boolean f18678X;

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public boolean f18679Y;

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public int f18680Z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C1339g1 f18681a;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public byte f18682a0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SparseArray f18683b;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public boolean f18684b0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f18685c;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public N f18686c0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f18687d;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public final C1132c1 f18688d0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final V1 f18689e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final C1534jr f18690f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final C1534jr f18691g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final C1534jr f18692h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final C1534jr f18693i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final C1534jr f18694j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final C1534jr f18695k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final C1534jr f18696l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final C1534jr f18697m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final C1534jr f18698n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final C1534jr f18699o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public ByteBuffer f18700p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public long f18701q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public long f18702r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public long f18703s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public long f18704t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public long f18705u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public C1235e1 f18706v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f18707w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f18708x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public long f18709y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f18710z;

    static {
        int i8 = Et.f13234a;
        f18650f0 = "Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text".getBytes(StandardCharsets.UTF_8);
        f18651g0 = new byte[]{68, 105, 97, 108, 111, 103, 117, 101, 58, 32, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44};
        f18652h0 = new byte[]{87, 69, 66, 86, 84, 84, 10, 10, 48, 48, 58, 48, 48, 58, 48, 48, 46, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 46, 48, 48, 48, 10};
        f18653i0 = new UUID(72057594037932032L, -9223371306706625679L);
        HashMap map = new HashMap();
        com.google.protobuf.U2.s(0, map, "htc_video_rotA-000", 90, "htc_video_rotA-090");
        com.google.protobuf.U2.s(180, map, "htc_video_rotA-180", MediaPlayer.Event.PausableChanged, "htc_video_rotA-270");
        f18654j0 = Collections.unmodifiableMap(map);
    }

    public C1287f1() {
        this(new C1132c1(), 2, V1.f16932o);
    }

    public static byte[] q(long j8, long j9, String str) {
        p113o3.r.J(j8 != -9223372036854775807L);
        Locale locale = Locale.US;
        int i8 = (int) (j8 / 3600000000L);
        Integer numValueOf = Integer.valueOf(i8);
        long j10 = j8 - (((long) i8) * 3600000000L);
        int i9 = (int) (j10 / 60000000);
        Integer numValueOf2 = Integer.valueOf(i9);
        long j11 = j10 - (((long) i9) * 60000000);
        int i10 = (int) (j11 / 1000000);
        String str2 = String.format(locale, str, numValueOf, numValueOf2, Integer.valueOf(i10), Integer.valueOf((int) ((j11 - (((long) i10) * 1000000)) / j9)));
        int i11 = Et.f13234a;
        return str2.getBytes(StandardCharsets.UTF_8);
    }

    public final void a(int i8, int i9, M m7) throws C0800Ka {
        long j8;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14 = i8;
        M m8 = m7;
        SparseArray sparseArray = this.f18683b;
        int i15 = 1;
        int i16 = 0;
        if (i14 != 161 && i14 != 163) {
            if (i14 == 165) {
                if (this.f18662H != 2) {
                    return;
                }
                C1235e1 c1235e1 = (C1235e1) sparseArray.get(this.f18668N);
                if (this.f18671Q != 4 || !"V_VP9".equals(c1235e1.f18438b)) {
                    m8.q(i9);
                    return;
                }
                C1534jr c1534jr = this.f18699o;
                c1534jr.g(i9);
                m8.h(0, c1534jr.f19515a, i9);
                return;
            }
            if (i14 == 16877) {
                l(i8);
                C1235e1 c1235e2 = this.f18706v;
                int i17 = c1235e2.f18443g;
                if (i17 != 1685485123 && i17 != 1685480259) {
                    m8.q(i9);
                    return;
                }
                byte[] bArr = new byte[i9];
                c1235e2.f18425O = bArr;
                m8.h(0, bArr, i9);
                return;
            }
            if (i14 == 16981) {
                l(i8);
                byte[] bArr2 = new byte[i9];
                this.f18706v.f18445i = bArr2;
                m8.h(0, bArr2, i9);
                return;
            }
            if (i14 == 18402) {
                byte[] bArr3 = new byte[i9];
                m8.h(0, bArr3, i9);
                l(i8);
                this.f18706v.f18446j = new C1183d0(1, bArr3, 0, 0);
                return;
            }
            if (i14 == 21419) {
                C1534jr c1534jr2 = this.f18694j;
                Arrays.fill(c1534jr2.f19515a, (byte) 0);
                m8.h(4 - i9, c1534jr2.f19515a, i9);
                c1534jr2.j(0);
                this.f18708x = (int) c1534jr2.E();
                return;
            }
            if (i14 == 25506) {
                l(i8);
                byte[] bArr4 = new byte[i9];
                this.f18706v.f18447k = bArr4;
                m8.h(0, bArr4, i9);
                return;
            }
            if (i14 != 30322) {
                throw C0800Ka.a("Unexpected id: " + i14, null);
            }
            l(i8);
            byte[] bArr5 = new byte[i9];
            this.f18706v.f18459w = bArr5;
            m8.h(0, bArr5, i9);
            return;
        }
        int i18 = this.f18662H;
        int i19 = 8;
        C1534jr c1534jr3 = this.f18692h;
        if (i18 == 0) {
            C1339g1 c1339g1 = this.f18681a;
            this.f18668N = (int) c1339g1.b(m8, false, true, 8);
            this.f18669O = c1339g1.f18887c;
            this.f18664J = -9223372036854775807L;
            this.f18662H = 1;
            c1534jr3.g(0);
        }
        C1235e1 c1235e3 = (C1235e1) sparseArray.get(this.f18668N);
        if (c1235e3 == null) {
            m8.q(i9 - this.f18669O);
            this.f18662H = 0;
            return;
        }
        c1235e3.f18435Y.getClass();
        if (this.f18662H == 1) {
            n(m8, 3);
            int i20 = (c1534jr3.f19515a[2] & 6) >> 1;
            if (i20 == 0) {
                this.f18666L = 1;
                int[] iArr = this.f18667M;
                if (iArr == null) {
                    iArr = new int[1];
                } else {
                    int length = iArr.length;
                    if (length < 1) {
                        iArr = new int[Math.max(length + length, 1)];
                    }
                }
                this.f18667M = iArr;
                iArr[0] = (i9 - this.f18669O) - 3;
            } else {
                n(m8, 4);
                int i21 = (c1534jr3.f19515a[3] & 255) + 1;
                this.f18666L = i21;
                int[] iArr2 = this.f18667M;
                if (iArr2 == null) {
                    iArr2 = new int[i21];
                } else {
                    int length2 = iArr2.length;
                    if (length2 < i21) {
                        iArr2 = new int[Math.max(length2 + length2, i21)];
                    }
                }
                this.f18667M = iArr2;
                if (i20 == 2) {
                    int i22 = (i9 - this.f18669O) - 4;
                    int i23 = this.f18666L;
                    Arrays.fill(iArr2, 0, i23, i22 / i23);
                } else if (i20 == 1) {
                    int i24 = 0;
                    int i25 = 4;
                    int i26 = 0;
                    while (true) {
                        i10 = this.f18666L - 1;
                        if (i24 >= i10) {
                            break;
                        }
                        this.f18667M[i24] = 0;
                        while (true) {
                            i11 = i25 + 1;
                            n(m8, i11);
                            int i27 = c1534jr3.f19515a[i25] & 255;
                            int[] iArr3 = this.f18667M;
                            i12 = iArr3[i24] + i27;
                            iArr3[i24] = i12;
                            if (i27 != 255) {
                                break;
                            } else {
                                i25 = i11;
                            }
                        }
                        i26 += i12;
                        i24++;
                        i25 = i11;
                    }
                    this.f18667M[i10] = ((i9 - this.f18669O) - i25) - i26;
                } else {
                    if (i20 != 3) {
                        throw C0800Ka.a("Unexpected lacing value: 2", null);
                    }
                    int i28 = 0;
                    int i29 = 4;
                    int i30 = 0;
                    while (true) {
                        int i31 = this.f18666L - 1;
                        if (i28 >= i31) {
                            this.f18667M[i31] = ((i9 - this.f18669O) - i29) - i30;
                            break;
                        }
                        this.f18667M[i28] = i16;
                        int i32 = i29 + 1;
                        n(m8, i32);
                        if (c1534jr3.f19515a[i29] == 0) {
                            throw C0800Ka.a("No valid varint length mask found", null);
                        }
                        int i33 = 0;
                        while (true) {
                            if (i33 >= i19) {
                                j8 = 0;
                                i29 = i32;
                                break;
                            }
                            int i34 = i15 << (7 - i33);
                            if ((c1534jr3.f19515a[i29] & i34) != 0) {
                                int i35 = i32 + i33;
                                n(m8, i35);
                                j8 = c1534jr3.f19515a[i29] & 255 & (~i34);
                                while (i32 < i35) {
                                    j8 = (j8 << i19) | ((long) (c1534jr3.f19515a[i32] & 255));
                                    i32++;
                                    i35 = i35;
                                    i19 = 8;
                                }
                                int i36 = i35;
                                if (i28 > 0) {
                                    j8 -= (1 << ((i33 * 7) + 6)) - 1;
                                }
                                i29 = i36;
                                break;
                            }
                            i33++;
                            m8 = m7;
                            i15 = 1;
                            i19 = 8;
                        }
                        if (j8 < -2147483648L || j8 > 2147483647L) {
                            throw C0800Ka.a("EBML lacing sample size out of range.", null);
                        }
                        int[] iArr4 = this.f18667M;
                        int i37 = (int) j8;
                        if (i28 != 0) {
                            i37 += iArr4[i28 - 1];
                        }
                        iArr4[i28] = i37;
                        i30 += i37;
                        i28++;
                        m8 = m7;
                        i15 = 1;
                        i16 = 0;
                        i19 = 8;
                    }
                }
            }
            byte[] bArr6 = c1534jr3.f19515a;
            int i38 = bArr6[0] << 8;
            this.f18663I = j((bArr6[1] & 255) | i38) + this.f18657C;
            if (c1235e3.f18440d == 2) {
                i13 = 1;
            } else {
                if (i14 == 163) {
                    if ((c1534jr3.f19515a[2] & 128) == 128) {
                        i14 = 163;
                        i13 = 1;
                    } else {
                        i14 = 163;
                    }
                }
                i13 = 0;
            }
            this.f18670P = i13;
            this.f18662H = 2;
            this.f18665K = 0;
        }
        if (i14 == 163) {
            while (true) {
                int i39 = this.f18665K;
                if (i39 >= this.f18666L) {
                    this.f18662H = 0;
                    return;
                }
                m(c1235e3, ((long) ((this.f18665K * c1235e3.f18441e) / 1000)) + this.f18663I, this.f18670P, i(m7, c1235e3, this.f18667M[i39], false), 0);
                this.f18665K++;
            }
        } else {
            while (true) {
                int i40 = this.f18665K;
                if (i40 >= this.f18666L) {
                    return;
                }
                int[] iArr5 = this.f18667M;
                iArr5[i40] = i(m7, c1235e3, iArr5[i40], true);
                this.f18665K++;
            }
        }
    }

    public final void b(int i8, double d6) throws C0800Ka {
        if (i8 == 181) {
            l(i8);
            this.f18706v.f18428R = (int) d6;
            return;
        }
        if (i8 == 17545) {
            this.f18704t = (long) d6;
            return;
        }
        switch (i8) {
            case 21969:
                l(i8);
                this.f18706v.f18415E = (float) d6;
                break;
            case 21970:
                l(i8);
                this.f18706v.f18416F = (float) d6;
                break;
            case 21971:
                l(i8);
                this.f18706v.f18417G = (float) d6;
                break;
            case 21972:
                l(i8);
                this.f18706v.f18418H = (float) d6;
                break;
            case 21973:
                l(i8);
                this.f18706v.f18419I = (float) d6;
                break;
            case 21974:
                l(i8);
                this.f18706v.f18420J = (float) d6;
                break;
            case 21975:
                l(i8);
                this.f18706v.f18421K = (float) d6;
                break;
            case 21976:
                l(i8);
                this.f18706v.f18422L = (float) d6;
                break;
            case 21977:
                l(i8);
                this.f18706v.f18423M = (float) d6;
                break;
            case 21978:
                l(i8);
                this.f18706v.f18424N = (float) d6;
                break;
            default:
                switch (i8) {
                    case 30323:
                        l(i8);
                        this.f18706v.f18456t = (float) d6;
                        break;
                    case 30324:
                        l(i8);
                        this.f18706v.f18457u = (float) d6;
                        break;
                    case 30325:
                        l(i8);
                        this.f18706v.f18458v = (float) d6;
                        break;
                }
                break;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:233:0x04d9  */
    /* JADX WARN: Code duplicated, block: B:256:0x0550 A[PHI: r7
      0x0550: PHI (r7v42 java.lang.String) = (r7v41 java.lang.String), (r7v43 java.lang.String) binds: [B:258:0x0559, B:254:0x0546] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:335:0x0708 A[PHI: r4 r7 r14
      0x0708: PHI (r4v81 java.lang.String) = 
      (r4v26 java.lang.String)
      (r4v27 java.lang.String)
      (r4v28 java.lang.String)
      (r4v29 java.lang.String)
      (r4v30 java.lang.String)
      (r4v31 java.lang.String)
      (r4v32 java.lang.String)
      (r4v33 java.lang.String)
      (r4v34 java.lang.String)
      (r4v35 java.lang.String)
      (r4v36 java.lang.String)
      (r4v37 java.lang.String)
      (r4v38 java.lang.String)
      (r4v39 java.lang.String)
      (r4v40 java.lang.String)
      (r4v41 java.lang.String)
      (r4v42 java.lang.String)
      (r4v43 java.lang.String)
      (r4v44 java.lang.String)
      (r4v45 java.lang.String)
      (r4v46 java.lang.String)
      (r4v47 java.lang.String)
      (r4v48 java.lang.String)
      (r4v49 java.lang.String)
      (r4v50 java.lang.String)
      (r18v13 java.lang.String)
     binds: [B:333:0x0704, B:330:0x06f6, B:327:0x06e7, B:324:0x06d8, B:321:0x06c9, B:318:0x06ba, B:315:0x06aa, B:312:0x0698, B:309:0x0686, B:306:0x0675, B:303:0x0664, B:300:0x0652, B:297:0x0640, B:294:0x062e, B:291:0x061c, B:288:0x060a, B:285:0x05f9, B:282:0x05e8, B:279:0x05d7, B:276:0x05c5, B:273:0x05b3, B:270:0x05a1, B:267:0x058f, B:264:0x057d, B:261:0x056d, B:234:0x04dd] A[DONT_GENERATE, DONT_INLINE]
      0x0708: PHI (r7v51 java.lang.String) = 
      (r7v16 java.lang.String)
      (r7v17 java.lang.String)
      (r7v18 java.lang.String)
      (r7v19 java.lang.String)
      (r7v20 java.lang.String)
      (r7v21 java.lang.String)
      (r7v22 java.lang.String)
      (r7v23 java.lang.String)
      (r7v24 java.lang.String)
      (r7v25 java.lang.String)
      (r7v26 java.lang.String)
      (r7v27 java.lang.String)
      (r7v28 java.lang.String)
      (r7v29 java.lang.String)
      (r7v30 java.lang.String)
      (r7v31 java.lang.String)
      (r7v32 java.lang.String)
      (r7v33 java.lang.String)
      (r7v34 java.lang.String)
      (r7v35 java.lang.String)
      (r7v36 java.lang.String)
      (r7v37 java.lang.String)
      (r7v38 java.lang.String)
      (r7v39 java.lang.String)
      (r7v40 java.lang.String)
      (r7v52 java.lang.String)
     binds: [B:333:0x0704, B:330:0x06f6, B:327:0x06e7, B:324:0x06d8, B:321:0x06c9, B:318:0x06ba, B:315:0x06aa, B:312:0x0698, B:309:0x0686, B:306:0x0675, B:303:0x0664, B:300:0x0652, B:297:0x0640, B:294:0x062e, B:291:0x061c, B:288:0x060a, B:285:0x05f9, B:282:0x05e8, B:279:0x05d7, B:276:0x05c5, B:273:0x05b3, B:270:0x05a1, B:267:0x058f, B:264:0x057d, B:261:0x056d, B:234:0x04dd] A[DONT_GENERATE, DONT_INLINE]
      0x0708: PHI (r14v47 java.lang.String) = 
      (r14v13 java.lang.String)
      (r14v14 java.lang.String)
      (r14v15 java.lang.String)
      (r14v16 java.lang.String)
      (r14v17 java.lang.String)
      (r14v18 java.lang.String)
      (r14v19 java.lang.String)
      (r14v20 java.lang.String)
      (r14v21 java.lang.String)
      (r14v22 java.lang.String)
      (r14v23 java.lang.String)
      (r14v24 java.lang.String)
      (r14v25 java.lang.String)
      (r14v26 java.lang.String)
      (r14v27 java.lang.String)
      (r14v28 java.lang.String)
      (r14v29 java.lang.String)
      (r14v30 java.lang.String)
      (r14v31 java.lang.String)
      (r14v32 java.lang.String)
      (r14v33 java.lang.String)
      (r14v34 java.lang.String)
      (r14v35 java.lang.String)
      (r14v36 java.lang.String)
      (r14v37 java.lang.String)
      (r14v48 java.lang.String)
     binds: [B:333:0x0704, B:330:0x06f6, B:327:0x06e7, B:324:0x06d8, B:321:0x06c9, B:318:0x06ba, B:315:0x06aa, B:312:0x0698, B:309:0x0686, B:306:0x0675, B:303:0x0664, B:300:0x0652, B:297:0x0640, B:294:0x062e, B:291:0x061c, B:288:0x060a, B:285:0x05f9, B:282:0x05e8, B:279:0x05d7, B:276:0x05c5, B:273:0x05b3, B:270:0x05a1, B:267:0x058f, B:264:0x057d, B:261:0x056d, B:234:0x04dd] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:493:0x0af9  */
    /* JADX WARN: Code duplicated, block: B:498:0x0b11  */
    /* JADX WARN: Code duplicated, block: B:499:0x0b13  */
    /* JADX WARN: Code duplicated, block: B:502:0x0b26  */
    /* JADX WARN: Code duplicated, block: B:503:0x0b37  */
    /* JADX WARN: Code duplicated, block: B:505:0x0b3d  */
    /* JADX WARN: Code duplicated, block: B:507:0x0b41  */
    /* JADX WARN: Code duplicated, block: B:509:0x0b46  */
    /* JADX WARN: Code duplicated, block: B:512:0x0b4e  */
    /* JADX WARN: Code duplicated, block: B:514:0x0b53  */
    /* JADX WARN: Code duplicated, block: B:517:0x0b58  */
    /* JADX WARN: Code duplicated, block: B:520:0x0b68  */
    /* JADX WARN: Code duplicated, block: B:523:0x0b6e  */
    /* JADX WARN: Code duplicated, block: B:525:0x0b76  */
    /* JADX WARN: Code duplicated, block: B:543:0x0bac  */
    /* JADX WARN: Code duplicated, block: B:546:0x0c61  */
    /* JADX WARN: Code duplicated, block: B:549:0x0c6a  */
    /* JADX WARN: Code duplicated, block: B:551:0x0c72  */
    /* JADX WARN: Code duplicated, block: B:552:0x0c7f  */
    /* JADX WARN: Code duplicated, block: B:555:0x0c84  */
    /* JADX WARN: Code duplicated, block: B:561:0x0c9d  */
    /* JADX WARN: Code duplicated, block: B:562:0x0c9f  */
    /* JADX WARN: Code duplicated, block: B:564:0x0ca9  */
    /* JADX WARN: Code duplicated, block: B:565:0x0cac  */
    /* JADX WARN: Code duplicated, block: B:567:0x0cb6  */
    /* JADX WARN: Code duplicated, block: B:569:0x0cc0  */
    /* JADX WARN: Code duplicated, block: B:574:0x0ce7  */
    /* JADX WARN: Code duplicated, block: B:576:0x0cf3  */
    /* JADX WARN: Code duplicated, block: B:591:0x0d29  */
    /* JADX WARN: Code duplicated, block: B:673:0x0eec A[LOOP:1: B:6:0x0024->B:673:0x0eec, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:683:0x0f2e  */
    /* JADX WARN: Code duplicated, block: B:684:0x0f35  */
    /* JADX WARN: Code duplicated, block: B:690:0x0f7d  */
    /* JADX WARN: Code duplicated, block: B:692:0x0f80  */
    /* JADX WARN: Code duplicated, block: B:693:0x0f84  */
    /* JADX WARN: Code duplicated, block: B:696:0x0f8d  */
    /* JADX WARN: Code duplicated, block: B:698:0x0f93 A[LOOP:4: B:694:0x0f8a->B:698:0x0f93, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:702:0x0fa2  */
    /* JADX WARN: Code duplicated, block: B:704:0x0fa6  */
    /* JADX WARN: Code duplicated, block: B:706:0x0faa  */
    /* JADX WARN: Code duplicated, block: B:709:0x0fb0  */
    /* JADX WARN: Code duplicated, block: B:711:0x0fb9  */
    /* JADX WARN: Code duplicated, block: B:712:0x0fc1  */
    /* JADX WARN: Code duplicated, block: B:719:0x0feb  */
    /* JADX WARN: Code duplicated, block: B:725:0x1014  */
    /* JADX WARN: Code duplicated, block: B:770:0x0ff6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:772:0x1053 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:778:0x0f02 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:779:0x0f41 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:780:0x0f4d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:781:0x0f73 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:782:0x100a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:790:0x0f95 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:94:0x020c A[PHI: r2
      0x020c: PHI (r2v115 java.lang.String) = 
      (r2v68 java.lang.String)
      (r2v69 java.lang.String)
      (r2v70 java.lang.String)
      (r2v72 java.lang.String)
      (r2v75 java.lang.String)
      (r2v78 java.lang.String)
      (r2v81 java.lang.String)
      (r2v116 java.lang.String)
     binds: [B:122:0x028d, B:118:0x027a, B:114:0x0267, B:808:?, B:807:?, B:806:?, B:805:?, B:93:0x020a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:95:0x0210 A[PHI: r2 r10 r22
      0x0210: PHI (r2v114 java.lang.String) = (r2v66 java.lang.String), (r2v67 java.lang.String), (r2v115 java.lang.String) binds: [B:130:0x02b8, B:126:0x02a4, B:94:0x020c] A[DONT_GENERATE, DONT_INLINE]
      0x0210: PHI (r10v47 java.lang.String) = (r10v36 java.lang.String), (r10v37 java.lang.String), (r10v48 java.lang.String) binds: [B:130:0x02b8, B:126:0x02a4, B:94:0x020c] A[DONT_GENERATE, DONT_INLINE]
      0x0210: PHI (r22v53 java.lang.String) = (r22v29 java.lang.String), (r22v30 java.lang.String), (r22v54 java.lang.String) binds: [B:130:0x02b8, B:126:0x02a4, B:94:0x020c] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:96:0x0212 A[PHI: r2 r10 r18 r22 r27
      0x0212: PHI (r2v113 java.lang.String) = 
      (r2v42 java.lang.String)
      (r2v43 java.lang.String)
      (r2v44 java.lang.String)
      (r2v45 java.lang.String)
      (r2v46 java.lang.String)
      (r2v47 java.lang.String)
      (r2v48 java.lang.String)
      (r2v49 java.lang.String)
      (r2v50 java.lang.String)
      (r2v51 java.lang.String)
      (r2v52 java.lang.String)
      (r2v53 java.lang.String)
      (r2v54 java.lang.String)
      (r2v55 java.lang.String)
      (r2v56 java.lang.String)
      (r2v57 java.lang.String)
      (r2v58 java.lang.String)
      (r2v59 java.lang.String)
      (r2v60 java.lang.String)
      (r2v61 java.lang.String)
      (r2v62 java.lang.String)
      (r2v63 java.lang.String)
      (r2v64 java.lang.String)
      (r2v65 java.lang.String)
      (r2v114 java.lang.String)
     binds: [B:226:0x04b0, B:222:0x049e, B:218:0x048c, B:214:0x047a, B:210:0x0468, B:206:0x0455, B:202:0x0442, B:198:0x042d, B:194:0x0417, B:190:0x0401, B:186:0x03eb, B:182:0x03d5, B:178:0x03bf, B:174:0x03a9, B:170:0x0393, B:166:0x037d, B:162:0x0368, B:158:0x0353, B:154:0x033e, B:150:0x0329, B:146:0x0314, B:142:0x02ff, B:138:0x02e9, B:135:0x02d1, B:95:0x0210] A[DONT_GENERATE, DONT_INLINE]
      0x0212: PHI (r10v46 java.lang.String) = 
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
      (r10v31 java.lang.String)
      (r10v32 java.lang.String)
      (r10v33 java.lang.String)
      (r10v34 java.lang.String)
      (r10v35 java.lang.String)
      (r10v47 java.lang.String)
     binds: [B:226:0x04b0, B:222:0x049e, B:218:0x048c, B:214:0x047a, B:210:0x0468, B:206:0x0455, B:202:0x0442, B:198:0x042d, B:194:0x0417, B:190:0x0401, B:186:0x03eb, B:182:0x03d5, B:178:0x03bf, B:174:0x03a9, B:170:0x0393, B:166:0x037d, B:162:0x0368, B:158:0x0353, B:154:0x033e, B:150:0x0329, B:146:0x0314, B:142:0x02ff, B:138:0x02e9, B:135:0x02d1, B:95:0x0210] A[DONT_GENERATE, DONT_INLINE]
      0x0212: PHI (r18v27 java.lang.String) = 
      (r18v1 java.lang.String)
      (r18v1 java.lang.String)
      (r18v1 java.lang.String)
      (r18v1 java.lang.String)
      (r18v1 java.lang.String)
      (r18v1 java.lang.String)
      (r18v1 java.lang.String)
      (r18v1 java.lang.String)
      (r18v1 java.lang.String)
      (r18v1 java.lang.String)
      (r18v1 java.lang.String)
      (r18v1 java.lang.String)
      (r18v1 java.lang.String)
      (r18v1 java.lang.String)
      (r18v1 java.lang.String)
      (r18v1 java.lang.String)
      (r18v1 java.lang.String)
      (r18v1 java.lang.String)
      (r18v1 java.lang.String)
      (r18v1 java.lang.String)
      (r18v1 java.lang.String)
      (r18v1 java.lang.String)
      (r18v1 java.lang.String)
      (r18v12 java.lang.String)
      (r18v1 java.lang.String)
     binds: [B:226:0x04b0, B:222:0x049e, B:218:0x048c, B:214:0x047a, B:210:0x0468, B:206:0x0455, B:202:0x0442, B:198:0x042d, B:194:0x0417, B:190:0x0401, B:186:0x03eb, B:182:0x03d5, B:178:0x03bf, B:174:0x03a9, B:170:0x0393, B:166:0x037d, B:162:0x0368, B:158:0x0353, B:154:0x033e, B:150:0x0329, B:146:0x0314, B:142:0x02ff, B:138:0x02e9, B:135:0x02d1, B:95:0x0210] A[DONT_GENERATE, DONT_INLINE]
      0x0212: PHI (r22v52 java.lang.String) = 
      (r22v5 java.lang.String)
      (r22v6 java.lang.String)
      (r22v7 java.lang.String)
      (r22v8 java.lang.String)
      (r22v9 java.lang.String)
      (r22v10 java.lang.String)
      (r22v11 java.lang.String)
      (r22v12 java.lang.String)
      (r22v13 java.lang.String)
      (r22v14 java.lang.String)
      (r22v15 java.lang.String)
      (r22v16 java.lang.String)
      (r22v17 java.lang.String)
      (r22v18 java.lang.String)
      (r22v19 java.lang.String)
      (r22v20 java.lang.String)
      (r22v21 java.lang.String)
      (r22v22 java.lang.String)
      (r22v23 java.lang.String)
      (r22v24 java.lang.String)
      (r22v25 java.lang.String)
      (r22v26 java.lang.String)
      (r22v27 java.lang.String)
      (r22v28 java.lang.String)
      (r22v53 java.lang.String)
     binds: [B:226:0x04b0, B:222:0x049e, B:218:0x048c, B:214:0x047a, B:210:0x0468, B:206:0x0455, B:202:0x0442, B:198:0x042d, B:194:0x0417, B:190:0x0401, B:186:0x03eb, B:182:0x03d5, B:178:0x03bf, B:174:0x03a9, B:170:0x0393, B:166:0x037d, B:162:0x0368, B:158:0x0353, B:154:0x033e, B:150:0x0329, B:146:0x0314, B:142:0x02ff, B:138:0x02e9, B:135:0x02d1, B:95:0x0210] A[DONT_GENERATE, DONT_INLINE]
      0x0212: PHI (r27v37 java.lang.String) = 
      (r27v1 java.lang.String)
      (r27v2 java.lang.String)
      (r27v3 java.lang.String)
      (r27v4 java.lang.String)
      (r27v5 java.lang.String)
      (r27v6 java.lang.String)
      (r27v7 java.lang.String)
      (r27v8 java.lang.String)
      (r27v9 java.lang.String)
      (r27v10 java.lang.String)
      (r27v11 java.lang.String)
      (r27v12 java.lang.String)
      (r27v13 java.lang.String)
      (r27v14 java.lang.String)
      (r27v15 java.lang.String)
      (r27v16 java.lang.String)
      (r27v17 java.lang.String)
      (r27v18 java.lang.String)
      (r27v19 java.lang.String)
      (r27v20 java.lang.String)
      (r27v21 java.lang.String)
      (r27v22 java.lang.String)
      (r27v23 java.lang.String)
      (r27v24 java.lang.String)
      (r27v38 java.lang.String)
     binds: [B:226:0x04b0, B:222:0x049e, B:218:0x048c, B:214:0x047a, B:210:0x0468, B:206:0x0455, B:202:0x0442, B:198:0x042d, B:194:0x0417, B:190:0x0401, B:186:0x03eb, B:182:0x03d5, B:178:0x03bf, B:174:0x03a9, B:170:0x0393, B:166:0x037d, B:162:0x0368, B:158:0x0353, B:154:0x033e, B:150:0x0329, B:146:0x0314, B:142:0x02ff, B:138:0x02e9, B:135:0x02d1, B:95:0x0210] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v158 */
    /* JADX WARN: Type inference failed for: r0v159, types: [java.lang.RuntimeException] */
    /* JADX WARN: Type inference failed for: r0v22, types: [com.google.android.gms.internal.ads.M] */
    /* JADX WARN: Type inference failed for: r0v23, types: [com.google.android.gms.internal.ads.M] */
    /* JADX WARN: Type inference failed for: r0v265 */
    /* JADX WARN: Type inference failed for: r0v266 */
    /* JADX WARN: Type inference failed for: r0v267 */
    /* JADX WARN: Type inference failed for: r0v268 */
    /* JADX WARN: Type inference failed for: r0v269 */
    /* JADX WARN: Type inference failed for: r0v270 */
    /* JADX WARN: Type inference failed for: r0v271 */
    /* JADX WARN: Type inference failed for: r0v272 */
    /* JADX WARN: Type inference failed for: r0v273 */
    /* JADX WARN: Type inference failed for: r0v274 */
    /* JADX WARN: Type inference failed for: r0v32 */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v8, types: [com.google.android.gms.internal.ads.M] */
    /* JADX WARN: Type inference failed for: r11v1, types: [com.google.android.gms.internal.ads.c1] */
    /* JADX WARN: Type inference failed for: r13v6, types: [com.google.android.gms.internal.ads.g1] */
    /* JADX WARN: Type inference failed for: r1v36 */
    /* JADX WARN: Type inference failed for: r1v37, types: [com.google.android.gms.internal.ads.g1] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r2v6, types: [com.google.android.gms.internal.ads.f1, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v159 */
    /* JADX WARN: Type inference failed for: r6v19, types: [int] */
    /* JADX WARN: Type inference failed for: r6v22 */
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
    @Override // com.google.android.gms.internal.ads.L
    public final int c(M m7, W0.w wVar) throws C0800Ka {
        String str;
        String str2;
        boolean z7;
        boolean z8;
        String str3;
        C1287f1 c1287f1;
        String str4;
        boolean z9;
        ?? r7;
        ?? r8;
        M m8;
        ?? r9;
        int i8;
        ?? r10;
        long j8;
        long j9;
        int i9;
        byte[] bArr;
        String str5;
        int i10;
        long j10;
        int i11;
        long jA;
        double dLongBitsToDouble;
        ?? r11;
        long j11;
        int i12;
        String str6;
        int i13;
        String str7;
        String str8;
        byte b8;
        byte b9;
        int i14;
        List listSingletonList;
        String str9;
        String str10;
        RuntimeException runtimeException;
        Pair pair;
        String str11;
        int i15;
        PA paX;
        int i16;
        K k8;
        int i17;
        int i18;
        int i19;
        float f8;
        C1928rL c1928rL;
        String str12;
        int iIntValue;
        Map map;
        byte[] bArr2;
        int i20;
        int i21;
        int i22;
        String str13;
        C1287f1 c1287f2;
        C1235e1 c1235e1;
        J jA2;
        Y p7;
        int i23;
        C1287f1 c1287f3 = this;
        String str14 = "A_PCM/INT/BIG";
        String str15 = "A_PCM/INT/LIT";
        String str16 = "S_TEXT/ASS";
        String str17 = "V_MPEGH/ISO/HEVC";
        String str18 = "S_TEXT/UTF8";
        c1287f3.f18661G = false;
        while (!c1287f3.f18661G) {
            ?? r12 = c1287f3.f18688d0;
            p113o3.r.x(r12.f18145d);
            while (true) {
                ArrayDeque arrayDeque = r12.f18143b;
                C1081b1 c1081b1 = (C1081b1) arrayDeque.peek();
                str = str14;
                str2 = str18;
                int i24 = 374648427;
                if (c1081b1 != null) {
                    String str19 = str16;
                    if (m7.zzf() < c1081b1.f18007b) {
                        str3 = str19;
                        z7 = true;
                        z8 = false;
                    } else {
                        C1184d1 c1184d1 = r12.f18145d;
                        int i25 = ((C1081b1) arrayDeque.pop()).f18006a;
                        C1287f1 c1287f4 = c1184d1.f18293a;
                        p113o3.r.x(c1287f4.f18686c0);
                        SparseArray sparseArray = c1287f4.f18683b;
                        if (i25 == 160) {
                            str15 = str15;
                            str6 = str17;
                            str3 = str19;
                            if (c1287f4.f18662H == 2) {
                                C1235e1 c1235e2 = (C1235e1) sparseArray.get(c1287f4.f18668N);
                                c1235e2.f18435Y.getClass();
                                if (c1287f4.f18673S > 0 && "A_OPUS".equals(c1235e2.f18438b)) {
                                    byte[] bArrArray = ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(c1287f4.f18673S).array();
                                    c1287f4.f18699o.h(bArrArray.length, bArrArray);
                                }
                                int i26 = 0;
                                for (int i27 = 0; i27 < c1287f4.f18666L; i27++) {
                                    i26 += c1287f4.f18667M[i27];
                                }
                                int i28 = 0;
                                while (i28 < c1287f4.f18666L) {
                                    long j12 = c1287f4.f18663I + ((long) ((c1235e2.f18441e * i28) / 1000));
                                    int i29 = c1287f4.f18670P;
                                    if (i28 == 0) {
                                        if (!c1287f4.f18672R) {
                                            i29 |= 1;
                                        }
                                        i13 = i29;
                                        i28 = 0;
                                    } else {
                                        i13 = i29;
                                    }
                                    int i30 = c1287f4.f18667M[i28];
                                    i26 -= i30;
                                    c1287f4.m(c1235e2, j12, i13, i30, i26);
                                    i28++;
                                }
                                c1287f4.f18662H = 0;
                            }
                            c1287f1 = this;
                            r8 = m7;
                            str4 = str6;
                            str = str;
                            z9 = false;
                        } else if (i25 != 174) {
                            if (i25 == 19899) {
                                int i31 = c1287f4.f18708x;
                                if (i31 != -1) {
                                    long j13 = c1287f4.f18709y;
                                    if (j13 != -1) {
                                        if (i31 == 475249515) {
                                            c1287f4.f18655A = j13;
                                        }
                                    }
                                }
                                throw C0800Ka.a("Mandatory element SeekID or SeekPosition not found", null);
                            }
                            if (i25 == 25152) {
                                c1287f4.l(i25);
                                C1235e1 c1235e3 = c1287f4.f18706v;
                                if (c1235e3.f18444h) {
                                    C1183d0 c1183d0 = c1235e3.f18446j;
                                    if (c1183d0 == null) {
                                        throw C0800Ka.a("Encrypted Track found but ContentEncKeyID was not found", null);
                                    }
                                    c1235e3.f18448l = new C1672mO(null, true, new C1155cO(AbstractC2187wK.f21659a, "video/webm", c1183d0.f18290b));
                                }
                            } else if (i25 == 28032) {
                                c1287f4.l(i25);
                                C1235e1 c1235e4 = c1287f4.f18706v;
                                if (c1235e4.f18444h && c1235e4.f18445i != null) {
                                    throw C0800Ka.a("Combining encryption and compression is not supported", null);
                                }
                            } else if (i25 == 357149030) {
                                if (c1287f4.f18703s == -9223372036854775807L) {
                                    c1287f4.f18703s = 1000000L;
                                }
                                long j14 = c1287f4.f18704t;
                                if (j14 != -9223372036854775807L) {
                                    c1287f4.f18705u = c1287f4.j(j14);
                                }
                            } else if (i25 == 374648427) {
                                if (sparseArray.size() == 0) {
                                    throw C0800Ka.a("No valid tracks were found", null);
                                }
                                c1287f4.f18686c0.f();
                            } else if (i25 == 475249515) {
                                if (!c1287f4.f18707w) {
                                    N n7 = c1287f4.f18686c0;
                                    p117p0.y yVar = c1287f4.f18658D;
                                    p117p0.y yVar2 = c1287f4.f18659E;
                                    if (c1287f4.f18702r == -1 || c1287f4.f18705u == -9223372036854775807L || yVar == null || (i23 = yVar.f28127a) == 0 || yVar2 == null || yVar2.f28127a != i23) {
                                        p7 = new P(c1287f4.f18705u, 0L);
                                    } else {
                                        int[] iArrCopyOf = new int[i23];
                                        long[] jArrCopyOf = new long[i23];
                                        long[] jArrCopyOf2 = new long[i23];
                                        long[] jArrCopyOf3 = new long[i23];
                                        for (int i32 = 0; i32 < i23; i32++) {
                                            jArrCopyOf3[i32] = yVar.d(i32);
                                            jArrCopyOf[i32] = yVar2.d(i32) + c1287f4.f18702r;
                                        }
                                        int i33 = 0;
                                        while (true) {
                                            int i34 = i23 - 1;
                                            if (i33 < i34) {
                                                int i35 = i33 + 1;
                                                iArrCopyOf[i33] = (int) (jArrCopyOf[i35] - jArrCopyOf[i33]);
                                                jArrCopyOf2[i33] = jArrCopyOf3[i35] - jArrCopyOf3[i33];
                                                i23 = i23;
                                                i33 = i35;
                                            } else {
                                                iArrCopyOf[i34] = (int) ((c1287f4.f18702r + c1287f4.f18701q) - jArrCopyOf[i34]);
                                                long j15 = c1287f4.f18705u - jArrCopyOf3[i34];
                                                jArrCopyOf2[i34] = j15;
                                                if (j15 <= 0) {
                                                    Zo.f("MatroskaExtractor", "Discarding last cue point with unexpected duration: " + j15);
                                                    iArrCopyOf = Arrays.copyOf(iArrCopyOf, i34);
                                                    jArrCopyOf = Arrays.copyOf(jArrCopyOf, i34);
                                                    jArrCopyOf2 = Arrays.copyOf(jArrCopyOf2, i34);
                                                    jArrCopyOf3 = Arrays.copyOf(jArrCopyOf3, i34);
                                                }
                                                p7 = new E(iArrCopyOf, jArrCopyOf, jArrCopyOf2, jArrCopyOf3);
                                            }
                                        }
                                    }
                                    n7.g(p7);
                                    c1287f4.f18707w = true;
                                }
                                c1287f4.f18658D = null;
                                c1287f4.f18659E = null;
                            }
                            str15 = str15;
                            str6 = str17;
                            str3 = str19;
                        } else {
                            C1235e1 c1235e5 = c1287f4.f18706v;
                            p113o3.r.x(c1235e5);
                            String str20 = c1235e5.f18438b;
                            if (str20 == null) {
                                throw C0800Ka.a("CodecId is missing in TrackEntry element", null);
                            }
                            switch (str20.hashCode()) {
                                case -2095576542:
                                    str2 = str2;
                                    str7 = str17;
                                    str3 = str19;
                                    str8 = str15;
                                    if (str20.equals("V_MPEG4/ISO/AP")) {
                                        b8 = 0;
                                    } else {
                                        b8 = -1;
                                    }
                                    break;
                                case -2095575984:
                                    str2 = str2;
                                    str7 = str17;
                                    str3 = str19;
                                    str8 = str15;
                                    if (str20.equals("V_MPEG4/ISO/SP")) {
                                        b8 = 1;
                                    } else {
                                        b8 = -1;
                                    }
                                    break;
                                case -1985379776:
                                    str2 = str2;
                                    str7 = str17;
                                    str3 = str19;
                                    str8 = str15;
                                    if (str20.equals("A_MS/ACM")) {
                                        b8 = 2;
                                    } else {
                                        b8 = -1;
                                    }
                                    break;
                                case -1784763192:
                                    str2 = str2;
                                    str7 = str17;
                                    str3 = str19;
                                    str8 = str15;
                                    if (str20.equals("A_TRUEHD")) {
                                        b8 = 3;
                                    } else {
                                        b8 = -1;
                                    }
                                    break;
                                case -1730367663:
                                    str2 = str2;
                                    str7 = str17;
                                    str3 = str19;
                                    str8 = str15;
                                    if (str20.equals("A_VORBIS")) {
                                        b8 = 4;
                                    } else {
                                        b8 = -1;
                                    }
                                    break;
                                case -1482641358:
                                    str2 = str2;
                                    str7 = str17;
                                    str3 = str19;
                                    str8 = str15;
                                    if (str20.equals("A_MPEG/L2")) {
                                        b8 = 5;
                                    } else {
                                        b8 = -1;
                                    }
                                    break;
                                case -1482641357:
                                    str2 = str2;
                                    str7 = str17;
                                    str3 = str19;
                                    str8 = str15;
                                    if (str20.equals("A_MPEG/L3")) {
                                        b8 = 6;
                                    } else {
                                        b8 = -1;
                                    }
                                    break;
                                case -1373388978:
                                    str2 = str2;
                                    str7 = str17;
                                    str3 = str19;
                                    str8 = str15;
                                    if (str20.equals("V_MS/VFW/FOURCC")) {
                                        b8 = 7;
                                    } else {
                                        b8 = -1;
                                    }
                                    break;
                                case -933872740:
                                    str2 = str2;
                                    str7 = str17;
                                    str3 = str19;
                                    str8 = str15;
                                    if (str20.equals("S_DVBSUB")) {
                                        b8 = 8;
                                    } else {
                                        b8 = -1;
                                    }
                                    break;
                                case -538363189:
                                    str2 = str2;
                                    str7 = str17;
                                    str3 = str19;
                                    str8 = str15;
                                    if (str20.equals("V_MPEG4/ISO/ASP")) {
                                        b8 = 9;
                                    } else {
                                        b8 = -1;
                                    }
                                    break;
                                case -538363109:
                                    str2 = str2;
                                    str7 = str17;
                                    str3 = str19;
                                    str8 = str15;
                                    if (str20.equals("V_MPEG4/ISO/AVC")) {
                                        b8 = 10;
                                    } else {
                                        b8 = -1;
                                    }
                                    break;
                                case -425012669:
                                    str2 = str2;
                                    str7 = str17;
                                    str3 = str19;
                                    str8 = str15;
                                    if (str20.equals("S_VOBSUB")) {
                                        b8 = MqttWireMessage.MESSAGE_TYPE_UNSUBACK;
                                    } else {
                                        b8 = -1;
                                    }
                                    break;
                                case -356037306:
                                    str2 = str2;
                                    str7 = str17;
                                    str3 = str19;
                                    str8 = str15;
                                    if (str20.equals("A_DTS/LOSSLESS")) {
                                        b8 = MqttWireMessage.MESSAGE_TYPE_PINGREQ;
                                    } else {
                                        b8 = -1;
                                    }
                                    break;
                                case 62923557:
                                    str2 = str2;
                                    str7 = str17;
                                    str3 = str19;
                                    str8 = str15;
                                    if (str20.equals("A_AAC")) {
                                        b8 = MqttWireMessage.MESSAGE_TYPE_PINGRESP;
                                    } else {
                                        b8 = -1;
                                    }
                                    break;
                                case 62923603:
                                    str2 = str2;
                                    str7 = str17;
                                    str3 = str19;
                                    str8 = str15;
                                    if (str20.equals("A_AC3")) {
                                        b8 = MqttWireMessage.MESSAGE_TYPE_DISCONNECT;
                                    } else {
                                        b8 = -1;
                                    }
                                    break;
                                case 62927045:
                                    str2 = str2;
                                    str7 = str17;
                                    str3 = str19;
                                    str8 = str15;
                                    if (str20.equals("A_DTS")) {
                                        b8 = 15;
                                    } else {
                                        b8 = -1;
                                    }
                                    break;
                                case 82318131:
                                    str2 = str2;
                                    str7 = str17;
                                    str3 = str19;
                                    str8 = str15;
                                    if (str20.equals("V_AV1")) {
                                        b8 = 16;
                                    } else {
                                        b8 = -1;
                                    }
                                    break;
                                case 82338133:
                                    str2 = str2;
                                    str7 = str17;
                                    str3 = str19;
                                    str8 = str15;
                                    if (str20.equals("V_VP8")) {
                                        b8 = 17;
                                    } else {
                                        b8 = -1;
                                    }
                                    break;
                                case 82338134:
                                    str2 = str2;
                                    str7 = str17;
                                    str3 = str19;
                                    str8 = str15;
                                    if (str20.equals("V_VP9")) {
                                        b8 = 18;
                                    } else {
                                        b8 = -1;
                                    }
                                    break;
                                case 99146302:
                                    str2 = str2;
                                    str7 = str17;
                                    str3 = str19;
                                    str8 = str15;
                                    if (str20.equals("S_HDMV/PGS")) {
                                        b8 = 19;
                                    } else {
                                        b8 = -1;
                                    }
                                    break;
                                case 444813526:
                                    str2 = str2;
                                    str7 = str17;
                                    str3 = str19;
                                    str8 = str15;
                                    if (str20.equals("V_THEORA")) {
                                        b8 = 20;
                                    } else {
                                        b8 = -1;
                                    }
                                    break;
                                case 542569478:
                                    str2 = str2;
                                    str7 = str17;
                                    str3 = str19;
                                    str8 = str15;
                                    if (str20.equals("A_DTS/EXPRESS")) {
                                        b8 = 21;
                                    } else {
                                        b8 = -1;
                                    }
                                    break;
                                case 635596514:
                                    str2 = str2;
                                    str7 = str17;
                                    str3 = str19;
                                    str8 = str15;
                                    if (str20.equals("A_PCM/FLOAT/IEEE")) {
                                        b8 = 22;
                                    } else {
                                        b8 = -1;
                                    }
                                    break;
                                case 725948237:
                                    str2 = str2;
                                    str7 = str17;
                                    str3 = str19;
                                    str8 = str15;
                                    if (str20.equals(str)) {
                                        str = str;
                                        b8 = 23;
                                    } else {
                                        str = str;
                                        b8 = -1;
                                    }
                                    break;
                                case 725957860:
                                    str2 = str2;
                                    str7 = str17;
                                    str3 = str19;
                                    if (str20.equals(str15)) {
                                        str8 = str15;
                                        b8 = 24;
                                    } else {
                                        str8 = str15;
                                        b8 = -1;
                                    }
                                    break;
                                case 738597099:
                                    str2 = str2;
                                    str7 = str17;
                                    str3 = str19;
                                    if (str20.equals(str3)) {
                                        str8 = str15;
                                        b8 = 25;
                                    } else {
                                        str8 = str15;
                                        b8 = -1;
                                    }
                                    break;
                                case 855502857:
                                    str2 = str2;
                                    if (str20.equals(str17)) {
                                        str7 = str17;
                                        str3 = str19;
                                        str8 = str15;
                                        b8 = 26;
                                    } else {
                                        str7 = str17;
                                        str3 = str19;
                                        str8 = str15;
                                        b8 = -1;
                                    }
                                    break;
                                case 1045209816:
                                    str2 = str2;
                                    if (str20.equals("S_TEXT/WEBVTT")) {
                                        str7 = str17;
                                        str3 = str19;
                                        str8 = str15;
                                        b8 = 27;
                                    } else {
                                        str7 = str17;
                                        str3 = str19;
                                        str8 = str15;
                                        b8 = -1;
                                    }
                                    break;
                                case 1422270023:
                                    str2 = str2;
                                    if (str20.equals(str2)) {
                                        str7 = str17;
                                        str3 = str19;
                                        str8 = str15;
                                        b8 = 28;
                                    } else {
                                        str7 = str17;
                                        str3 = str19;
                                        str8 = str15;
                                        b8 = -1;
                                    }
                                    break;
                                case 1809237540:
                                    if (str20.equals("V_MPEG2")) {
                                        str2 = str2;
                                        str7 = str17;
                                        str3 = str19;
                                        str8 = str15;
                                        b8 = 29;
                                    } else {
                                        str2 = str2;
                                        str7 = str17;
                                        str3 = str19;
                                        str8 = str15;
                                        b8 = -1;
                                    }
                                    break;
                                case 1950749482:
                                    if (str20.equals("A_EAC3")) {
                                        str2 = str2;
                                        str7 = str17;
                                        str3 = str19;
                                        str8 = str15;
                                        b8 = 30;
                                    } else {
                                        str2 = str2;
                                        str7 = str17;
                                        str3 = str19;
                                        str8 = str15;
                                        b8 = -1;
                                    }
                                    break;
                                case 1950789798:
                                    if (str20.equals("A_FLAC")) {
                                        str2 = str2;
                                        str7 = str17;
                                        str3 = str19;
                                        str8 = str15;
                                        b8 = 31;
                                    } else {
                                        str2 = str2;
                                        str7 = str17;
                                        str3 = str19;
                                        str8 = str15;
                                        b8 = -1;
                                    }
                                    break;
                                case 1951062397:
                                    if (str20.equals("A_OPUS")) {
                                        str2 = str2;
                                        str7 = str17;
                                        str3 = str19;
                                        str8 = str15;
                                        b8 = 32;
                                    } else {
                                        str2 = str2;
                                        str7 = str17;
                                        str3 = str19;
                                        str8 = str15;
                                        b8 = -1;
                                    }
                                    break;
                                default:
                                    str2 = str2;
                                    str7 = str17;
                                    str3 = str19;
                                    str8 = str15;
                                    b8 = -1;
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
                                    N n8 = c1287f4.f18686c0;
                                    int i36 = c1235e5.f18439c;
                                    switch (str20.hashCode()) {
                                        case -2095576542:
                                            str = str;
                                            str6 = str7;
                                            str15 = str8;
                                            if (str20.equals("V_MPEG4/ISO/AP")) {
                                                b9 = 6;
                                            } else {
                                                b9 = -1;
                                            }
                                            break;
                                        case -2095575984:
                                            str = str;
                                            str6 = str7;
                                            str15 = str8;
                                            if (str20.equals("V_MPEG4/ISO/SP")) {
                                                b9 = 4;
                                            } else {
                                                b9 = -1;
                                            }
                                            break;
                                        case -1985379776:
                                            str = str;
                                            str6 = str7;
                                            str15 = str8;
                                            if (str20.equals("A_MS/ACM")) {
                                                b9 = 23;
                                            } else {
                                                b9 = -1;
                                            }
                                            break;
                                        case -1784763192:
                                            str = str;
                                            str6 = str7;
                                            str15 = str8;
                                            if (str20.equals("A_TRUEHD")) {
                                                b9 = 18;
                                            } else {
                                                b9 = -1;
                                            }
                                            break;
                                        case -1730367663:
                                            str = str;
                                            str6 = str7;
                                            str15 = str8;
                                            if (str20.equals("A_VORBIS")) {
                                                b9 = MqttWireMessage.MESSAGE_TYPE_UNSUBACK;
                                            } else {
                                                b9 = -1;
                                            }
                                            break;
                                        case -1482641358:
                                            str = str;
                                            str6 = str7;
                                            str15 = str8;
                                            if (str20.equals("A_MPEG/L2")) {
                                                b9 = MqttWireMessage.MESSAGE_TYPE_DISCONNECT;
                                            } else {
                                                b9 = -1;
                                            }
                                            break;
                                        case -1482641357:
                                            str = str;
                                            str6 = str7;
                                            str15 = str8;
                                            if (str20.equals("A_MPEG/L3")) {
                                                b9 = 15;
                                            } else {
                                                b9 = -1;
                                            }
                                            break;
                                        case -1373388978:
                                            str = str;
                                            str6 = str7;
                                            str15 = str8;
                                            if (str20.equals("V_MS/VFW/FOURCC")) {
                                                b9 = 9;
                                            } else {
                                                b9 = -1;
                                            }
                                            break;
                                        case -933872740:
                                            str = str;
                                            str6 = str7;
                                            str15 = str8;
                                            if (str20.equals("S_DVBSUB")) {
                                                b9 = 32;
                                            } else {
                                                b9 = -1;
                                            }
                                            break;
                                        case -538363189:
                                            str = str;
                                            str6 = str7;
                                            str15 = str8;
                                            if (str20.equals("V_MPEG4/ISO/ASP")) {
                                                b9 = 5;
                                            } else {
                                                b9 = -1;
                                            }
                                            break;
                                        case -538363109:
                                            str = str;
                                            str6 = str7;
                                            str15 = str8;
                                            if (str20.equals("V_MPEG4/ISO/AVC")) {
                                                b9 = 7;
                                            } else {
                                                b9 = -1;
                                            }
                                            break;
                                        case -425012669:
                                            str = str;
                                            str6 = str7;
                                            str15 = str8;
                                            if (str20.equals("S_VOBSUB")) {
                                                b9 = 30;
                                            } else {
                                                b9 = -1;
                                            }
                                            break;
                                        case -356037306:
                                            str = str;
                                            str6 = str7;
                                            str15 = str8;
                                            if (str20.equals("A_DTS/LOSSLESS")) {
                                                b9 = 21;
                                            } else {
                                                b9 = -1;
                                            }
                                            break;
                                        case 62923557:
                                            str = str;
                                            str6 = str7;
                                            str15 = str8;
                                            if (str20.equals("A_AAC")) {
                                                b9 = MqttWireMessage.MESSAGE_TYPE_PINGRESP;
                                            } else {
                                                b9 = -1;
                                            }
                                            break;
                                        case 62923603:
                                            str = str;
                                            str6 = str7;
                                            str15 = str8;
                                            if (str20.equals("A_AC3")) {
                                                b9 = 16;
                                            } else {
                                                b9 = -1;
                                            }
                                            break;
                                        case 62927045:
                                            str = str;
                                            str6 = str7;
                                            str15 = str8;
                                            if (str20.equals("A_DTS")) {
                                                b9 = 19;
                                            } else {
                                                b9 = -1;
                                            }
                                            break;
                                        case 82318131:
                                            str = str;
                                            str6 = str7;
                                            str15 = str8;
                                            if (str20.equals("V_AV1")) {
                                                b9 = 2;
                                            } else {
                                                b9 = -1;
                                            }
                                            break;
                                        case 82338133:
                                            str = str;
                                            str6 = str7;
                                            str15 = str8;
                                            if (str20.equals("V_VP8")) {
                                                b9 = 0;
                                            } else {
                                                b9 = -1;
                                            }
                                            break;
                                        case 82338134:
                                            str = str;
                                            str6 = str7;
                                            str15 = str8;
                                            if (str20.equals("V_VP9")) {
                                                b9 = 1;
                                            } else {
                                                b9 = -1;
                                            }
                                            break;
                                        case 99146302:
                                            str = str;
                                            str6 = str7;
                                            str15 = str8;
                                            if (str20.equals("S_HDMV/PGS")) {
                                                b9 = 31;
                                            } else {
                                                b9 = -1;
                                            }
                                            break;
                                        case 444813526:
                                            str = str;
                                            str6 = str7;
                                            str15 = str8;
                                            if (str20.equals("V_THEORA")) {
                                                b9 = 10;
                                            } else {
                                                b9 = -1;
                                            }
                                            break;
                                        case 542569478:
                                            str = str;
                                            str6 = str7;
                                            str15 = str8;
                                            if (str20.equals("A_DTS/EXPRESS")) {
                                                b9 = 20;
                                            } else {
                                                b9 = -1;
                                            }
                                            break;
                                        case 635596514:
                                            str = str;
                                            str6 = str7;
                                            str15 = str8;
                                            if (str20.equals("A_PCM/FLOAT/IEEE")) {
                                                b9 = 26;
                                            } else {
                                                b9 = -1;
                                            }
                                            break;
                                        case 725948237:
                                            str = str;
                                            str6 = str7;
                                            str15 = str8;
                                            if (str20.equals(str)) {
                                                b9 = 25;
                                            } else {
                                                b9 = -1;
                                            }
                                            break;
                                        case 725957860:
                                            str6 = str7;
                                            str15 = str8;
                                            str = str;
                                            if (str20.equals(str15)) {
                                                b9 = 24;
                                            } else {
                                                b9 = -1;
                                            }
                                            break;
                                        case 738597099:
                                            str6 = str7;
                                            if (str20.equals(str3)) {
                                                str = str;
                                                str15 = str8;
                                                b9 = 28;
                                            } else {
                                                str15 = str8;
                                                b9 = -1;
                                            }
                                            break;
                                        case 855502857:
                                            str6 = str7;
                                            if (str20.equals(str6)) {
                                                str = str;
                                                str15 = str8;
                                                b9 = 8;
                                            } else {
                                                str15 = str8;
                                                b9 = -1;
                                            }
                                            break;
                                        case 1045209816:
                                            if (str20.equals("S_TEXT/WEBVTT")) {
                                                str = str;
                                                str6 = str7;
                                                str15 = str8;
                                                b9 = 29;
                                            } else {
                                                str6 = str7;
                                                str15 = str8;
                                                b9 = -1;
                                            }
                                            break;
                                        case 1422270023:
                                            if (str20.equals(str2)) {
                                                str = str;
                                                str6 = str7;
                                                str15 = str8;
                                                b9 = 27;
                                            } else {
                                                str6 = str7;
                                                str15 = str8;
                                                b9 = -1;
                                            }
                                            break;
                                        case 1809237540:
                                            if (str20.equals("V_MPEG2")) {
                                                str = str;
                                                str6 = str7;
                                                str15 = str8;
                                                b9 = 3;
                                            } else {
                                                str6 = str7;
                                                str15 = str8;
                                                b9 = -1;
                                            }
                                            break;
                                        case 1950749482:
                                            if (str20.equals("A_EAC3")) {
                                                str = str;
                                                str6 = str7;
                                                str15 = str8;
                                                b9 = 17;
                                            } else {
                                                str6 = str7;
                                                str15 = str8;
                                                b9 = -1;
                                            }
                                            break;
                                        case 1950789798:
                                            if (str20.equals("A_FLAC")) {
                                                str = str;
                                                str6 = str7;
                                                str15 = str8;
                                                b9 = 22;
                                            } else {
                                                str6 = str7;
                                                str15 = str8;
                                                b9 = -1;
                                            }
                                            break;
                                        case 1951062397:
                                            if (str20.equals("A_OPUS")) {
                                                b9 = MqttWireMessage.MESSAGE_TYPE_PINGREQ;
                                                str = str;
                                                str6 = str7;
                                                str15 = str8;
                                            } else {
                                                str6 = str7;
                                                str15 = str8;
                                                b9 = -1;
                                            }
                                            break;
                                        default:
                                            str6 = str7;
                                            str15 = str8;
                                            b9 = -1;
                                            break;
                                    }
                                    String str21 = "audio/raw";
                                    switch (b9) {
                                        case 0:
                                            str21 = "video/x-vnd.on2.vp8";
                                            i14 = -1;
                                            listSingletonList = null;
                                            str10 = null;
                                            i15 = -1;
                                            if (c1235e5.f18425O != null && (jA2 = J.a(new C1534jr(c1235e5.f18425O))) != null) {
                                                str10 = jA2.f14099H;
                                                str21 = "video/dolby-vision";
                                            }
                                            boolean z10 = c1235e5.f18433W;
                                            if (true != c1235e5.f18432V) {
                                                i16 = 0;
                                            } else {
                                                i16 = 2;
                                            }
                                            int i37 = (z10 ? 1 : 0) | i16;
                                            k8 = new K();
                                            if ("audio".equals(AbstractC2140va.h(str21))) {
                                                k8.f14285z = c1235e5.f18426P;
                                                k8.f14253A = c1235e5.f18428R;
                                                k8.f14254B = i15;
                                                str2 = str2;
                                                str = str;
                                                i17 = 1;
                                            } else if (AbstractC2140va.g(str21)) {
                                                if (c1235e5.f18454r == 0) {
                                                    i21 = c1235e5.f18452p;
                                                    i18 = -1;
                                                    if (i21 == -1) {
                                                        i21 = c1235e5.f18449m;
                                                    }
                                                    c1235e5.f18452p = i21;
                                                    i22 = c1235e5.f18453q;
                                                    if (i22 == -1) {
                                                        i22 = c1235e5.f18450n;
                                                    }
                                                    c1235e5.f18453q = i22;
                                                } else {
                                                    i18 = -1;
                                                }
                                                i19 = c1235e5.f18452p;
                                                if (i19 != i18 || (i20 = c1235e5.f18453q) == i18) {
                                                    f8 = -1.0f;
                                                } else {
                                                    f8 = (c1235e5.f18450n * i19) / (c1235e5.f18449m * i20);
                                                }
                                                if (c1235e5.f18461y) {
                                                    if (c1235e5.f18415E != -1.0f || c1235e5.f18416F == -1.0f || c1235e5.f18417G == -1.0f || c1235e5.f18418H == -1.0f || c1235e5.f18419I == -1.0f || c1235e5.f18420J == -1.0f || c1235e5.f18421K == -1.0f || c1235e5.f18422L == -1.0f || c1235e5.f18423M == -1.0f || c1235e5.f18424N == -1.0f) {
                                                        bArr2 = null;
                                                    } else {
                                                        byte[] bArr3 = new byte[25];
                                                        ByteBuffer byteBufferOrder = ByteBuffer.wrap(bArr3).order(ByteOrder.LITTLE_ENDIAN);
                                                        byteBufferOrder.put((byte) 0);
                                                        byteBufferOrder.putShort((short) ((c1235e5.f18415E * 50000.0f) + 0.5f));
                                                        byteBufferOrder.putShort((short) ((c1235e5.f18416F * 50000.0f) + 0.5f));
                                                        byteBufferOrder.putShort((short) ((c1235e5.f18417G * 50000.0f) + 0.5f));
                                                        byteBufferOrder.putShort((short) ((c1235e5.f18418H * 50000.0f) + 0.5f));
                                                        byteBufferOrder.putShort((short) ((c1235e5.f18419I * 50000.0f) + 0.5f));
                                                        byteBufferOrder.putShort((short) ((c1235e5.f18420J * 50000.0f) + 0.5f));
                                                        byteBufferOrder.putShort((short) ((c1235e5.f18421K * 50000.0f) + 0.5f));
                                                        byteBufferOrder.putShort((short) ((c1235e5.f18422L * 50000.0f) + 0.5f));
                                                        byteBufferOrder.putShort((short) (c1235e5.f18423M + 0.5f));
                                                        byteBufferOrder.putShort((short) (c1235e5.f18424N + 0.5f));
                                                        byteBufferOrder.putShort((short) c1235e5.f18413C);
                                                        byteBufferOrder.putShort((short) c1235e5.f18414D);
                                                        bArr2 = bArr3;
                                                    }
                                                    int i38 = c1235e5.f18462z;
                                                    int i39 = c1235e5.f18412B;
                                                    int i40 = c1235e5.f18411A;
                                                    int i41 = c1235e5.f18451o;
                                                    c1928rL = new C1928rL(i38, i39, i40, bArr2, i41, i41);
                                                } else {
                                                    str2 = str2;
                                                    c1928rL = null;
                                                }
                                                str12 = c1235e5.f18437a;
                                                if (str12 != null) {
                                                    map = f18654j0;
                                                    if (map.containsKey(str12)) {
                                                        iIntValue = ((Integer) map.get(c1235e5.f18437a)).intValue();
                                                    } else {
                                                        iIntValue = -1;
                                                    }
                                                } else {
                                                    iIntValue = -1;
                                                }
                                                if (c1235e5.f18455s == 0 && Float.compare(c1235e5.f18456t, 0.0f) == 0 && Float.compare(c1235e5.f18457u, 0.0f) == 0) {
                                                    if (Float.compare(c1235e5.f18458v, 0.0f) == 0) {
                                                        iIntValue = 0;
                                                    } else if (Float.compare(c1235e5.f18458v, 90.0f) == 0) {
                                                        iIntValue = 90;
                                                    } else if (Float.compare(c1235e5.f18458v, -180.0f) != 0 || Float.compare(c1235e5.f18458v, 180.0f) == 0) {
                                                        iIntValue = 180;
                                                    } else if (Float.compare(c1235e5.f18458v, -90.0f) == 0) {
                                                        iIntValue = MediaPlayer.Event.PausableChanged;
                                                    }
                                                }
                                                k8.f14277r = c1235e5.f18449m;
                                                k8.f14278s = c1235e5.f18450n;
                                                k8.f14281v = f8;
                                                k8.f14280u = iIntValue;
                                                k8.f14282w = c1235e5.f18459w;
                                                k8.f14283x = c1235e5.f18460x;
                                                k8.f14284y = c1928rL;
                                                i17 = 2;
                                            } else {
                                                str2 = str2;
                                                str = str;
                                                if (org.videolan.libvlc.media.MediaPlayer.MEDIA_MIMETYPE_TEXT_SUBRIP.equals(str21) && !"text/x-ssa".equals(str21) && !"text/vtt".equals(str21) && !"application/vobsub".equals(str21) && !"application/pgs".equals(str21) && !"application/dvbsubs".equals(str21)) {
                                                    throw C0800Ka.a("Unexpected MIME type.", null);
                                                }
                                                i17 = 3;
                                            }
                                            str13 = c1235e5.f18437a;
                                            if (str13 != null && !f18654j0.containsKey(str13)) {
                                                k8.f14261b = c1235e5.f18437a;
                                            }
                                            k8.c(i36);
                                            k8.f(str21);
                                            k8.f14272m = i14;
                                            k8.f14263d = c1235e5.f18434X;
                                            k8.f14264e = i37;
                                            k8.f14274o = listSingletonList;
                                            k8.f14268i = str10;
                                            k8.f14275p = c1235e5.f18448l;
                                            C1804p0 c1804p0 = new C1804p0(k8);
                                            InterfaceC1234e0 interfaceC1234e0H = n8.h(c1235e5.f18439c, i17);
                                            c1235e5.f18435Y = interfaceC1234e0H;
                                            interfaceC1234e0H.d(c1804p0);
                                            sparseArray.put(c1235e5.f18439c, c1235e5);
                                            c1287f2 = c1287f4;
                                            c1235e1 = null;
                                            break;
                                        case 1:
                                            str21 = "video/x-vnd.on2.vp9";
                                            i14 = -1;
                                            listSingletonList = null;
                                            str10 = null;
                                            i15 = -1;
                                            if (c1235e5.f18425O != null) {
                                                str10 = jA2.f14099H;
                                                str21 = "video/dolby-vision";
                                            }
                                            boolean z11 = c1235e5.f18433W;
                                            if (true != c1235e5.f18432V) {
                                                i16 = 0;
                                            } else {
                                                i16 = 2;
                                            }
                                            int i310 = (z11 ? 1 : 0) | i16;
                                            k8 = new K();
                                            if ("audio".equals(AbstractC2140va.h(str21))) {
                                                k8.f14285z = c1235e5.f18426P;
                                                k8.f14253A = c1235e5.f18428R;
                                                k8.f14254B = i15;
                                                str2 = str2;
                                                str = str;
                                                i17 = 1;
                                            } else if (AbstractC2140va.g(str21)) {
                                                if (c1235e5.f18454r == 0) {
                                                    i21 = c1235e5.f18452p;
                                                    i18 = -1;
                                                    if (i21 == -1) {
                                                        i21 = c1235e5.f18449m;
                                                    }
                                                    c1235e5.f18452p = i21;
                                                    i22 = c1235e5.f18453q;
                                                    if (i22 == -1) {
                                                        i22 = c1235e5.f18450n;
                                                    }
                                                    c1235e5.f18453q = i22;
                                                } else {
                                                    i18 = -1;
                                                }
                                                i19 = c1235e5.f18452p;
                                                if (i19 != i18) {
                                                    f8 = -1.0f;
                                                } else {
                                                    f8 = -1.0f;
                                                }
                                                if (c1235e5.f18461y) {
                                                    if (c1235e5.f18415E != -1.0f) {
                                                        bArr2 = null;
                                                    } else {
                                                        bArr2 = null;
                                                    }
                                                    int i311 = c1235e5.f18462z;
                                                    int i312 = c1235e5.f18412B;
                                                    int i42 = c1235e5.f18411A;
                                                    int i43 = c1235e5.f18451o;
                                                    c1928rL = new C1928rL(i311, i312, i42, bArr2, i43, i43);
                                                } else {
                                                    str2 = str2;
                                                    c1928rL = null;
                                                }
                                                str12 = c1235e5.f18437a;
                                                if (str12 != null) {
                                                    map = f18654j0;
                                                    if (map.containsKey(str12)) {
                                                        iIntValue = ((Integer) map.get(c1235e5.f18437a)).intValue();
                                                    } else {
                                                        iIntValue = -1;
                                                    }
                                                } else {
                                                    iIntValue = -1;
                                                }
                                                if (c1235e5.f18455s == 0) {
                                                    if (Float.compare(c1235e5.f18458v, 0.0f) == 0) {
                                                        iIntValue = 0;
                                                    } else if (Float.compare(c1235e5.f18458v, 90.0f) == 0) {
                                                        iIntValue = 90;
                                                    } else if (Float.compare(c1235e5.f18458v, -180.0f) != 0) {
                                                        iIntValue = 180;
                                                    } else {
                                                        iIntValue = 180;
                                                    }
                                                }
                                                k8.f14277r = c1235e5.f18449m;
                                                k8.f14278s = c1235e5.f18450n;
                                                k8.f14281v = f8;
                                                k8.f14280u = iIntValue;
                                                k8.f14282w = c1235e5.f18459w;
                                                k8.f14283x = c1235e5.f18460x;
                                                k8.f14284y = c1928rL;
                                                i17 = 2;
                                            } else {
                                                str2 = str2;
                                                str = str;
                                                if (org.videolan.libvlc.media.MediaPlayer.MEDIA_MIMETYPE_TEXT_SUBRIP.equals(str21)) {
                                                }
                                                i17 = 3;
                                            }
                                            str13 = c1235e5.f18437a;
                                            if (str13 != null) {
                                                k8.f14261b = c1235e5.f18437a;
                                            }
                                            k8.c(i36);
                                            k8.f(str21);
                                            k8.f14272m = i14;
                                            k8.f14263d = c1235e5.f18434X;
                                            k8.f14264e = i310;
                                            k8.f14274o = listSingletonList;
                                            k8.f14268i = str10;
                                            k8.f14275p = c1235e5.f18448l;
                                            C1804p0 c1804p1 = new C1804p0(k8);
                                            InterfaceC1234e0 interfaceC1234e0H2 = n8.h(c1235e5.f18439c, i17);
                                            c1235e5.f18435Y = interfaceC1234e0H2;
                                            interfaceC1234e0H2.d(c1804p1);
                                            sparseArray.put(c1235e5.f18439c, c1235e5);
                                            c1287f2 = c1287f4;
                                            c1235e1 = null;
                                            break;
                                        case 2:
                                            str21 = "video/av01";
                                            i14 = -1;
                                            listSingletonList = null;
                                            str10 = null;
                                            i15 = -1;
                                            if (c1235e5.f18425O != null) {
                                                str10 = jA2.f14099H;
                                                str21 = "video/dolby-vision";
                                            }
                                            boolean z12 = c1235e5.f18433W;
                                            if (true != c1235e5.f18432V) {
                                                i16 = 0;
                                            } else {
                                                i16 = 2;
                                            }
                                            int i313 = (z12 ? 1 : 0) | i16;
                                            k8 = new K();
                                            if ("audio".equals(AbstractC2140va.h(str21))) {
                                                k8.f14285z = c1235e5.f18426P;
                                                k8.f14253A = c1235e5.f18428R;
                                                k8.f14254B = i15;
                                                str2 = str2;
                                                str = str;
                                                i17 = 1;
                                            } else if (AbstractC2140va.g(str21)) {
                                                if (c1235e5.f18454r == 0) {
                                                    i21 = c1235e5.f18452p;
                                                    i18 = -1;
                                                    if (i21 == -1) {
                                                        i21 = c1235e5.f18449m;
                                                    }
                                                    c1235e5.f18452p = i21;
                                                    i22 = c1235e5.f18453q;
                                                    if (i22 == -1) {
                                                        i22 = c1235e5.f18450n;
                                                    }
                                                    c1235e5.f18453q = i22;
                                                } else {
                                                    i18 = -1;
                                                }
                                                i19 = c1235e5.f18452p;
                                                if (i19 != i18) {
                                                    f8 = -1.0f;
                                                } else {
                                                    f8 = -1.0f;
                                                }
                                                if (c1235e5.f18461y) {
                                                    if (c1235e5.f18415E != -1.0f) {
                                                        bArr2 = null;
                                                    } else {
                                                        bArr2 = null;
                                                    }
                                                    int i314 = c1235e5.f18462z;
                                                    int i315 = c1235e5.f18412B;
                                                    int i44 = c1235e5.f18411A;
                                                    int i45 = c1235e5.f18451o;
                                                    c1928rL = new C1928rL(i314, i315, i44, bArr2, i45, i45);
                                                } else {
                                                    str2 = str2;
                                                    c1928rL = null;
                                                }
                                                str12 = c1235e5.f18437a;
                                                if (str12 != null) {
                                                    map = f18654j0;
                                                    if (map.containsKey(str12)) {
                                                        iIntValue = ((Integer) map.get(c1235e5.f18437a)).intValue();
                                                    } else {
                                                        iIntValue = -1;
                                                    }
                                                } else {
                                                    iIntValue = -1;
                                                }
                                                if (c1235e5.f18455s == 0) {
                                                    if (Float.compare(c1235e5.f18458v, 0.0f) == 0) {
                                                        iIntValue = 0;
                                                    } else if (Float.compare(c1235e5.f18458v, 90.0f) == 0) {
                                                        iIntValue = 90;
                                                    } else if (Float.compare(c1235e5.f18458v, -180.0f) != 0) {
                                                        iIntValue = 180;
                                                    } else {
                                                        iIntValue = 180;
                                                    }
                                                }
                                                k8.f14277r = c1235e5.f18449m;
                                                k8.f14278s = c1235e5.f18450n;
                                                k8.f14281v = f8;
                                                k8.f14280u = iIntValue;
                                                k8.f14282w = c1235e5.f18459w;
                                                k8.f14283x = c1235e5.f18460x;
                                                k8.f14284y = c1928rL;
                                                i17 = 2;
                                            } else {
                                                str2 = str2;
                                                str = str;
                                                if (org.videolan.libvlc.media.MediaPlayer.MEDIA_MIMETYPE_TEXT_SUBRIP.equals(str21)) {
                                                }
                                                i17 = 3;
                                            }
                                            str13 = c1235e5.f18437a;
                                            if (str13 != null) {
                                                k8.f14261b = c1235e5.f18437a;
                                            }
                                            k8.c(i36);
                                            k8.f(str21);
                                            k8.f14272m = i14;
                                            k8.f14263d = c1235e5.f18434X;
                                            k8.f14264e = i313;
                                            k8.f14274o = listSingletonList;
                                            k8.f14268i = str10;
                                            k8.f14275p = c1235e5.f18448l;
                                            C1804p0 c1804p2 = new C1804p0(k8);
                                            InterfaceC1234e0 interfaceC1234e0H3 = n8.h(c1235e5.f18439c, i17);
                                            c1235e5.f18435Y = interfaceC1234e0H3;
                                            interfaceC1234e0H3.d(c1804p2);
                                            sparseArray.put(c1235e5.f18439c, c1235e5);
                                            c1287f2 = c1287f4;
                                            c1235e1 = null;
                                            break;
                                        case 3:
                                            str21 = "video/mpeg2";
                                            i14 = -1;
                                            listSingletonList = null;
                                            str10 = null;
                                            i15 = -1;
                                            if (c1235e5.f18425O != null) {
                                                str10 = jA2.f14099H;
                                                str21 = "video/dolby-vision";
                                            }
                                            boolean z13 = c1235e5.f18433W;
                                            if (true != c1235e5.f18432V) {
                                                i16 = 0;
                                            } else {
                                                i16 = 2;
                                            }
                                            int i316 = (z13 ? 1 : 0) | i16;
                                            k8 = new K();
                                            if ("audio".equals(AbstractC2140va.h(str21))) {
                                                k8.f14285z = c1235e5.f18426P;
                                                k8.f14253A = c1235e5.f18428R;
                                                k8.f14254B = i15;
                                                str2 = str2;
                                                str = str;
                                                i17 = 1;
                                            } else if (AbstractC2140va.g(str21)) {
                                                if (c1235e5.f18454r == 0) {
                                                    i21 = c1235e5.f18452p;
                                                    i18 = -1;
                                                    if (i21 == -1) {
                                                        i21 = c1235e5.f18449m;
                                                    }
                                                    c1235e5.f18452p = i21;
                                                    i22 = c1235e5.f18453q;
                                                    if (i22 == -1) {
                                                        i22 = c1235e5.f18450n;
                                                    }
                                                    c1235e5.f18453q = i22;
                                                } else {
                                                    i18 = -1;
                                                }
                                                i19 = c1235e5.f18452p;
                                                if (i19 != i18) {
                                                    f8 = -1.0f;
                                                } else {
                                                    f8 = -1.0f;
                                                }
                                                if (c1235e5.f18461y) {
                                                    if (c1235e5.f18415E != -1.0f) {
                                                        bArr2 = null;
                                                    } else {
                                                        bArr2 = null;
                                                    }
                                                    int i317 = c1235e5.f18462z;
                                                    int i318 = c1235e5.f18412B;
                                                    int i46 = c1235e5.f18411A;
                                                    int i47 = c1235e5.f18451o;
                                                    c1928rL = new C1928rL(i317, i318, i46, bArr2, i47, i47);
                                                } else {
                                                    str2 = str2;
                                                    c1928rL = null;
                                                }
                                                str12 = c1235e5.f18437a;
                                                if (str12 != null) {
                                                    map = f18654j0;
                                                    if (map.containsKey(str12)) {
                                                        iIntValue = ((Integer) map.get(c1235e5.f18437a)).intValue();
                                                    } else {
                                                        iIntValue = -1;
                                                    }
                                                } else {
                                                    iIntValue = -1;
                                                }
                                                if (c1235e5.f18455s == 0) {
                                                    if (Float.compare(c1235e5.f18458v, 0.0f) == 0) {
                                                        iIntValue = 0;
                                                    } else if (Float.compare(c1235e5.f18458v, 90.0f) == 0) {
                                                        iIntValue = 90;
                                                    } else if (Float.compare(c1235e5.f18458v, -180.0f) != 0) {
                                                        iIntValue = 180;
                                                    } else {
                                                        iIntValue = 180;
                                                    }
                                                }
                                                k8.f14277r = c1235e5.f18449m;
                                                k8.f14278s = c1235e5.f18450n;
                                                k8.f14281v = f8;
                                                k8.f14280u = iIntValue;
                                                k8.f14282w = c1235e5.f18459w;
                                                k8.f14283x = c1235e5.f18460x;
                                                k8.f14284y = c1928rL;
                                                i17 = 2;
                                            } else {
                                                str2 = str2;
                                                str = str;
                                                if (org.videolan.libvlc.media.MediaPlayer.MEDIA_MIMETYPE_TEXT_SUBRIP.equals(str21)) {
                                                }
                                                i17 = 3;
                                            }
                                            str13 = c1235e5.f18437a;
                                            if (str13 != null) {
                                                k8.f14261b = c1235e5.f18437a;
                                            }
                                            k8.c(i36);
                                            k8.f(str21);
                                            k8.f14272m = i14;
                                            k8.f14263d = c1235e5.f18434X;
                                            k8.f14264e = i316;
                                            k8.f14274o = listSingletonList;
                                            k8.f14268i = str10;
                                            k8.f14275p = c1235e5.f18448l;
                                            C1804p0 c1804p3 = new C1804p0(k8);
                                            InterfaceC1234e0 interfaceC1234e0H4 = n8.h(c1235e5.f18439c, i17);
                                            c1235e5.f18435Y = interfaceC1234e0H4;
                                            interfaceC1234e0H4.d(c1804p3);
                                            sparseArray.put(c1235e5.f18439c, c1235e5);
                                            c1287f2 = c1287f4;
                                            c1235e1 = null;
                                            break;
                                        case 4:
                                        case 5:
                                        case 6:
                                            byte[] bArr4 = c1235e5.f18447k;
                                            str21 = "video/mp4v-es";
                                            listSingletonList = bArr4 == null ? null : Collections.singletonList(bArr4);
                                            i14 = -1;
                                            str10 = null;
                                            i15 = -1;
                                            if (c1235e5.f18425O != null) {
                                                str10 = jA2.f14099H;
                                                str21 = "video/dolby-vision";
                                            }
                                            boolean z14 = c1235e5.f18433W;
                                            if (true != c1235e5.f18432V) {
                                                i16 = 0;
                                            } else {
                                                i16 = 2;
                                            }
                                            int i319 = (z14 ? 1 : 0) | i16;
                                            k8 = new K();
                                            if ("audio".equals(AbstractC2140va.h(str21))) {
                                                k8.f14285z = c1235e5.f18426P;
                                                k8.f14253A = c1235e5.f18428R;
                                                k8.f14254B = i15;
                                                str2 = str2;
                                                str = str;
                                                i17 = 1;
                                            } else if (AbstractC2140va.g(str21)) {
                                                if (c1235e5.f18454r == 0) {
                                                    i21 = c1235e5.f18452p;
                                                    i18 = -1;
                                                    if (i21 == -1) {
                                                        i21 = c1235e5.f18449m;
                                                    }
                                                    c1235e5.f18452p = i21;
                                                    i22 = c1235e5.f18453q;
                                                    if (i22 == -1) {
                                                        i22 = c1235e5.f18450n;
                                                    }
                                                    c1235e5.f18453q = i22;
                                                } else {
                                                    i18 = -1;
                                                }
                                                i19 = c1235e5.f18452p;
                                                if (i19 != i18) {
                                                    f8 = -1.0f;
                                                } else {
                                                    f8 = -1.0f;
                                                }
                                                if (c1235e5.f18461y) {
                                                    if (c1235e5.f18415E != -1.0f) {
                                                        bArr2 = null;
                                                    } else {
                                                        bArr2 = null;
                                                    }
                                                    int i3110 = c1235e5.f18462z;
                                                    int i3111 = c1235e5.f18412B;
                                                    int i48 = c1235e5.f18411A;
                                                    int i49 = c1235e5.f18451o;
                                                    c1928rL = new C1928rL(i3110, i3111, i48, bArr2, i49, i49);
                                                } else {
                                                    str2 = str2;
                                                    c1928rL = null;
                                                }
                                                str12 = c1235e5.f18437a;
                                                if (str12 != null) {
                                                    map = f18654j0;
                                                    if (map.containsKey(str12)) {
                                                        iIntValue = ((Integer) map.get(c1235e5.f18437a)).intValue();
                                                    } else {
                                                        iIntValue = -1;
                                                    }
                                                } else {
                                                    iIntValue = -1;
                                                }
                                                if (c1235e5.f18455s == 0) {
                                                    if (Float.compare(c1235e5.f18458v, 0.0f) == 0) {
                                                        iIntValue = 0;
                                                    } else if (Float.compare(c1235e5.f18458v, 90.0f) == 0) {
                                                        iIntValue = 90;
                                                    } else if (Float.compare(c1235e5.f18458v, -180.0f) != 0) {
                                                        iIntValue = 180;
                                                    } else {
                                                        iIntValue = 180;
                                                    }
                                                }
                                                k8.f14277r = c1235e5.f18449m;
                                                k8.f14278s = c1235e5.f18450n;
                                                k8.f14281v = f8;
                                                k8.f14280u = iIntValue;
                                                k8.f14282w = c1235e5.f18459w;
                                                k8.f14283x = c1235e5.f18460x;
                                                k8.f14284y = c1928rL;
                                                i17 = 2;
                                            } else {
                                                str2 = str2;
                                                str = str;
                                                if (org.videolan.libvlc.media.MediaPlayer.MEDIA_MIMETYPE_TEXT_SUBRIP.equals(str21)) {
                                                }
                                                i17 = 3;
                                            }
                                            str13 = c1235e5.f18437a;
                                            if (str13 != null) {
                                                k8.f14261b = c1235e5.f18437a;
                                            }
                                            k8.c(i36);
                                            k8.f(str21);
                                            k8.f14272m = i14;
                                            k8.f14263d = c1235e5.f18434X;
                                            k8.f14264e = i319;
                                            k8.f14274o = listSingletonList;
                                            k8.f14268i = str10;
                                            k8.f14275p = c1235e5.f18448l;
                                            C1804p0 c1804p4 = new C1804p0(k8);
                                            InterfaceC1234e0 interfaceC1234e0H5 = n8.h(c1235e5.f18439c, i17);
                                            c1235e5.f18435Y = interfaceC1234e0H5;
                                            interfaceC1234e0H5.d(c1804p4);
                                            sparseArray.put(c1235e5.f18439c, c1235e5);
                                            c1287f2 = c1287f4;
                                            c1235e1 = null;
                                            break;
                                        case 7:
                                            C0372e c0372eB = C0372e.b(new C1534jr(c1235e5.a(c1235e5.f18438b)));
                                            c1235e5.f18436Z = c0372eB.f7394b;
                                            listSingletonList = c0372eB.f7393a;
                                            str9 = c0372eB.f7404l;
                                            str21 = "video/avc";
                                            str10 = str9;
                                            i14 = -1;
                                            i15 = -1;
                                            if (c1235e5.f18425O != null) {
                                                str10 = jA2.f14099H;
                                                str21 = "video/dolby-vision";
                                            }
                                            boolean z15 = c1235e5.f18433W;
                                            if (true != c1235e5.f18432V) {
                                                i16 = 0;
                                            } else {
                                                i16 = 2;
                                            }
                                            int i3112 = (z15 ? 1 : 0) | i16;
                                            k8 = new K();
                                            if ("audio".equals(AbstractC2140va.h(str21))) {
                                                k8.f14285z = c1235e5.f18426P;
                                                k8.f14253A = c1235e5.f18428R;
                                                k8.f14254B = i15;
                                                str2 = str2;
                                                str = str;
                                                i17 = 1;
                                            } else if (AbstractC2140va.g(str21)) {
                                                if (c1235e5.f18454r == 0) {
                                                    i21 = c1235e5.f18452p;
                                                    i18 = -1;
                                                    if (i21 == -1) {
                                                        i21 = c1235e5.f18449m;
                                                    }
                                                    c1235e5.f18452p = i21;
                                                    i22 = c1235e5.f18453q;
                                                    if (i22 == -1) {
                                                        i22 = c1235e5.f18450n;
                                                    }
                                                    c1235e5.f18453q = i22;
                                                } else {
                                                    i18 = -1;
                                                }
                                                i19 = c1235e5.f18452p;
                                                if (i19 != i18) {
                                                    f8 = -1.0f;
                                                } else {
                                                    f8 = -1.0f;
                                                }
                                                if (c1235e5.f18461y) {
                                                    if (c1235e5.f18415E != -1.0f) {
                                                        bArr2 = null;
                                                    } else {
                                                        bArr2 = null;
                                                    }
                                                    int i3113 = c1235e5.f18462z;
                                                    int i3114 = c1235e5.f18412B;
                                                    int i410 = c1235e5.f18411A;
                                                    int i411 = c1235e5.f18451o;
                                                    c1928rL = new C1928rL(i3113, i3114, i410, bArr2, i411, i411);
                                                } else {
                                                    str2 = str2;
                                                    c1928rL = null;
                                                }
                                                str12 = c1235e5.f18437a;
                                                if (str12 != null) {
                                                    map = f18654j0;
                                                    if (map.containsKey(str12)) {
                                                        iIntValue = ((Integer) map.get(c1235e5.f18437a)).intValue();
                                                    } else {
                                                        iIntValue = -1;
                                                    }
                                                } else {
                                                    iIntValue = -1;
                                                }
                                                if (c1235e5.f18455s == 0) {
                                                    if (Float.compare(c1235e5.f18458v, 0.0f) == 0) {
                                                        iIntValue = 0;
                                                    } else if (Float.compare(c1235e5.f18458v, 90.0f) == 0) {
                                                        iIntValue = 90;
                                                    } else if (Float.compare(c1235e5.f18458v, -180.0f) != 0) {
                                                        iIntValue = 180;
                                                    } else {
                                                        iIntValue = 180;
                                                    }
                                                }
                                                k8.f14277r = c1235e5.f18449m;
                                                k8.f14278s = c1235e5.f18450n;
                                                k8.f14281v = f8;
                                                k8.f14280u = iIntValue;
                                                k8.f14282w = c1235e5.f18459w;
                                                k8.f14283x = c1235e5.f18460x;
                                                k8.f14284y = c1928rL;
                                                i17 = 2;
                                            } else {
                                                str2 = str2;
                                                str = str;
                                                if (org.videolan.libvlc.media.MediaPlayer.MEDIA_MIMETYPE_TEXT_SUBRIP.equals(str21)) {
                                                }
                                                i17 = 3;
                                            }
                                            str13 = c1235e5.f18437a;
                                            if (str13 != null) {
                                                k8.f14261b = c1235e5.f18437a;
                                            }
                                            k8.c(i36);
                                            k8.f(str21);
                                            k8.f14272m = i14;
                                            k8.f14263d = c1235e5.f18434X;
                                            k8.f14264e = i3112;
                                            k8.f14274o = listSingletonList;
                                            k8.f14268i = str10;
                                            k8.f14275p = c1235e5.f18448l;
                                            C1804p0 c1804p5 = new C1804p0(k8);
                                            InterfaceC1234e0 interfaceC1234e0H6 = n8.h(c1235e5.f18439c, i17);
                                            c1235e5.f18435Y = interfaceC1234e0H6;
                                            interfaceC1234e0H6.d(c1804p5);
                                            sparseArray.put(c1235e5.f18439c, c1235e5);
                                            c1287f2 = c1287f4;
                                            c1235e1 = null;
                                            break;
                                        case 8:
                                            U uA = U.a(new C1534jr(c1235e5.a(c1235e5.f18438b)), false, null);
                                            c1235e5.f18436Z = uA.f16770b;
                                            listSingletonList = uA.f16769a;
                                            str9 = uA.f16779k;
                                            str21 = "video/hevc";
                                            str10 = str9;
                                            i14 = -1;
                                            i15 = -1;
                                            if (c1235e5.f18425O != null) {
                                                str10 = jA2.f14099H;
                                                str21 = "video/dolby-vision";
                                            }
                                            boolean z16 = c1235e5.f18433W;
                                            if (true != c1235e5.f18432V) {
                                                i16 = 0;
                                            } else {
                                                i16 = 2;
                                            }
                                            int i3115 = (z16 ? 1 : 0) | i16;
                                            k8 = new K();
                                            if ("audio".equals(AbstractC2140va.h(str21))) {
                                                k8.f14285z = c1235e5.f18426P;
                                                k8.f14253A = c1235e5.f18428R;
                                                k8.f14254B = i15;
                                                str2 = str2;
                                                str = str;
                                                i17 = 1;
                                            } else if (AbstractC2140va.g(str21)) {
                                                if (c1235e5.f18454r == 0) {
                                                    i21 = c1235e5.f18452p;
                                                    i18 = -1;
                                                    if (i21 == -1) {
                                                        i21 = c1235e5.f18449m;
                                                    }
                                                    c1235e5.f18452p = i21;
                                                    i22 = c1235e5.f18453q;
                                                    if (i22 == -1) {
                                                        i22 = c1235e5.f18450n;
                                                    }
                                                    c1235e5.f18453q = i22;
                                                } else {
                                                    i18 = -1;
                                                }
                                                i19 = c1235e5.f18452p;
                                                if (i19 != i18) {
                                                    f8 = -1.0f;
                                                } else {
                                                    f8 = -1.0f;
                                                }
                                                if (c1235e5.f18461y) {
                                                    if (c1235e5.f18415E != -1.0f) {
                                                        bArr2 = null;
                                                    } else {
                                                        bArr2 = null;
                                                    }
                                                    int i3116 = c1235e5.f18462z;
                                                    int i3117 = c1235e5.f18412B;
                                                    int i412 = c1235e5.f18411A;
                                                    int i413 = c1235e5.f18451o;
                                                    c1928rL = new C1928rL(i3116, i3117, i412, bArr2, i413, i413);
                                                } else {
                                                    str2 = str2;
                                                    c1928rL = null;
                                                }
                                                str12 = c1235e5.f18437a;
                                                if (str12 != null) {
                                                    map = f18654j0;
                                                    if (map.containsKey(str12)) {
                                                        iIntValue = ((Integer) map.get(c1235e5.f18437a)).intValue();
                                                    } else {
                                                        iIntValue = -1;
                                                    }
                                                } else {
                                                    iIntValue = -1;
                                                }
                                                if (c1235e5.f18455s == 0) {
                                                    if (Float.compare(c1235e5.f18458v, 0.0f) == 0) {
                                                        iIntValue = 0;
                                                    } else if (Float.compare(c1235e5.f18458v, 90.0f) == 0) {
                                                        iIntValue = 90;
                                                    } else if (Float.compare(c1235e5.f18458v, -180.0f) != 0) {
                                                        iIntValue = 180;
                                                    } else {
                                                        iIntValue = 180;
                                                    }
                                                }
                                                k8.f14277r = c1235e5.f18449m;
                                                k8.f14278s = c1235e5.f18450n;
                                                k8.f14281v = f8;
                                                k8.f14280u = iIntValue;
                                                k8.f14282w = c1235e5.f18459w;
                                                k8.f14283x = c1235e5.f18460x;
                                                k8.f14284y = c1928rL;
                                                i17 = 2;
                                            } else {
                                                str2 = str2;
                                                str = str;
                                                if (org.videolan.libvlc.media.MediaPlayer.MEDIA_MIMETYPE_TEXT_SUBRIP.equals(str21)) {
                                                }
                                                i17 = 3;
                                            }
                                            str13 = c1235e5.f18437a;
                                            if (str13 != null) {
                                                k8.f14261b = c1235e5.f18437a;
                                            }
                                            k8.c(i36);
                                            k8.f(str21);
                                            k8.f14272m = i14;
                                            k8.f14263d = c1235e5.f18434X;
                                            k8.f14264e = i3115;
                                            k8.f14274o = listSingletonList;
                                            k8.f14268i = str10;
                                            k8.f14275p = c1235e5.f18448l;
                                            C1804p0 c1804p6 = new C1804p0(k8);
                                            InterfaceC1234e0 interfaceC1234e0H7 = n8.h(c1235e5.f18439c, i17);
                                            c1235e5.f18435Y = interfaceC1234e0H7;
                                            interfaceC1234e0H7.d(c1804p6);
                                            sparseArray.put(c1235e5.f18439c, c1235e5);
                                            c1287f2 = c1287f4;
                                            c1235e1 = null;
                                            break;
                                        case 9:
                                            C1534jr c1534jr = new C1534jr(c1235e5.a(c1235e5.f18438b));
                                            try {
                                                c1534jr.k(16);
                                                long jC = c1534jr.C();
                                                if (jC == 1482049860) {
                                                    runtimeException = null;
                                                    try {
                                                        pair = new Pair("video/divx", null);
                                                        str11 = null;
                                                    } catch (ArrayIndexOutOfBoundsException unused) {
                                                    }
                                                } else if (jC == 859189832) {
                                                    pair = new Pair("video/3gpp", null);
                                                    str11 = null;
                                                } else {
                                                    if (jC == 826496599) {
                                                        int i50 = c1534jr.f19516b + 20;
                                                        byte[] bArr5 = c1534jr.f19515a;
                                                        while (true) {
                                                            int length = bArr5.length;
                                                            if (i50 < length - 4) {
                                                                int i51 = i50 + 1;
                                                                if (bArr5[i50] == 0 && bArr5[i51] == 0 && bArr5[i50 + 2] == 1) {
                                                                    if (bArr5[i50 + 3] == 15) {
                                                                        pair = new Pair("video/wvc1", Collections.singletonList(Arrays.copyOfRange(bArr5, i50, length)));
                                                                        str11 = null;
                                                                    }
                                                                }
                                                                i50 = i51;
                                                            } else {
                                                                try {
                                                                    throw C0800Ka.a("Failed to find FourCC VC1 initialization data", null);
                                                                } catch (ArrayIndexOutOfBoundsException unused2) {
                                                                    runtimeException = null;
                                                                }
                                                            }
                                                            throw C0800Ka.a("Error parsing FourCC private data", runtimeException);
                                                        }
                                                    }
                                                    Zo.f("MatroskaExtractor", "Unknown FourCC. Setting mimeType to video/x-unknown");
                                                    str11 = null;
                                                    pair = new Pair("video/x-unknown", null);
                                                }
                                                String str22 = (String) pair.first;
                                                List list = (List) pair.second;
                                                str10 = str11;
                                                i14 = -1;
                                                i15 = -1;
                                                str21 = str22;
                                                listSingletonList = list;
                                                if (c1235e5.f18425O != null) {
                                                    str10 = jA2.f14099H;
                                                    str21 = "video/dolby-vision";
                                                }
                                                boolean z17 = c1235e5.f18433W;
                                                if (true != c1235e5.f18432V) {
                                                    i16 = 0;
                                                } else {
                                                    i16 = 2;
                                                }
                                                int i3118 = (z17 ? 1 : 0) | i16;
                                                k8 = new K();
                                                if ("audio".equals(AbstractC2140va.h(str21))) {
                                                    k8.f14285z = c1235e5.f18426P;
                                                    k8.f14253A = c1235e5.f18428R;
                                                    k8.f14254B = i15;
                                                    str2 = str2;
                                                    str = str;
                                                    i17 = 1;
                                                } else if (AbstractC2140va.g(str21)) {
                                                    if (c1235e5.f18454r == 0) {
                                                        i21 = c1235e5.f18452p;
                                                        i18 = -1;
                                                        if (i21 == -1) {
                                                            i21 = c1235e5.f18449m;
                                                        }
                                                        c1235e5.f18452p = i21;
                                                        i22 = c1235e5.f18453q;
                                                        if (i22 == -1) {
                                                            i22 = c1235e5.f18450n;
                                                        }
                                                        c1235e5.f18453q = i22;
                                                    } else {
                                                        i18 = -1;
                                                    }
                                                    i19 = c1235e5.f18452p;
                                                    if (i19 != i18) {
                                                        f8 = -1.0f;
                                                    } else {
                                                        f8 = -1.0f;
                                                    }
                                                    if (c1235e5.f18461y) {
                                                        if (c1235e5.f18415E != -1.0f) {
                                                            bArr2 = null;
                                                        } else {
                                                            bArr2 = null;
                                                        }
                                                        int i3119 = c1235e5.f18462z;
                                                        int i31110 = c1235e5.f18412B;
                                                        int i414 = c1235e5.f18411A;
                                                        int i415 = c1235e5.f18451o;
                                                        c1928rL = new C1928rL(i3119, i31110, i414, bArr2, i415, i415);
                                                    } else {
                                                        str2 = str2;
                                                        c1928rL = null;
                                                    }
                                                    str12 = c1235e5.f18437a;
                                                    if (str12 != null) {
                                                        map = f18654j0;
                                                        if (map.containsKey(str12)) {
                                                            iIntValue = ((Integer) map.get(c1235e5.f18437a)).intValue();
                                                        } else {
                                                            iIntValue = -1;
                                                        }
                                                    } else {
                                                        iIntValue = -1;
                                                    }
                                                    if (c1235e5.f18455s == 0) {
                                                        if (Float.compare(c1235e5.f18458v, 0.0f) == 0) {
                                                            iIntValue = 0;
                                                        } else if (Float.compare(c1235e5.f18458v, 90.0f) == 0) {
                                                            iIntValue = 90;
                                                        } else if (Float.compare(c1235e5.f18458v, -180.0f) != 0) {
                                                            iIntValue = 180;
                                                        } else {
                                                            iIntValue = 180;
                                                        }
                                                    }
                                                    k8.f14277r = c1235e5.f18449m;
                                                    k8.f14278s = c1235e5.f18450n;
                                                    k8.f14281v = f8;
                                                    k8.f14280u = iIntValue;
                                                    k8.f14282w = c1235e5.f18459w;
                                                    k8.f14283x = c1235e5.f18460x;
                                                    k8.f14284y = c1928rL;
                                                    i17 = 2;
                                                } else {
                                                    str2 = str2;
                                                    str = str;
                                                    if (org.videolan.libvlc.media.MediaPlayer.MEDIA_MIMETYPE_TEXT_SUBRIP.equals(str21)) {
                                                    }
                                                    i17 = 3;
                                                }
                                                str13 = c1235e5.f18437a;
                                                if (str13 != null) {
                                                    k8.f14261b = c1235e5.f18437a;
                                                }
                                                k8.c(i36);
                                                k8.f(str21);
                                                k8.f14272m = i14;
                                                k8.f14263d = c1235e5.f18434X;
                                                k8.f14264e = i3118;
                                                k8.f14274o = listSingletonList;
                                                k8.f14268i = str10;
                                                k8.f14275p = c1235e5.f18448l;
                                                C1804p0 c1804p7 = new C1804p0(k8);
                                                InterfaceC1234e0 interfaceC1234e0H8 = n8.h(c1235e5.f18439c, i17);
                                                c1235e5.f18435Y = interfaceC1234e0H8;
                                                interfaceC1234e0H8.d(c1804p7);
                                                sparseArray.put(c1235e5.f18439c, c1235e5);
                                                c1287f2 = c1287f4;
                                                c1235e1 = null;
                                            } catch (ArrayIndexOutOfBoundsException unused3) {
                                                runtimeException = null;
                                            }
                                            break;
                                        case 10:
                                            str21 = "video/x-unknown";
                                            i14 = -1;
                                            listSingletonList = null;
                                            str10 = null;
                                            i15 = -1;
                                            if (c1235e5.f18425O != null) {
                                                str10 = jA2.f14099H;
                                                str21 = "video/dolby-vision";
                                            }
                                            boolean z18 = c1235e5.f18433W;
                                            if (true != c1235e5.f18432V) {
                                                i16 = 0;
                                            } else {
                                                i16 = 2;
                                            }
                                            int i31111 = (z18 ? 1 : 0) | i16;
                                            k8 = new K();
                                            if ("audio".equals(AbstractC2140va.h(str21))) {
                                                k8.f14285z = c1235e5.f18426P;
                                                k8.f14253A = c1235e5.f18428R;
                                                k8.f14254B = i15;
                                                str2 = str2;
                                                str = str;
                                                i17 = 1;
                                            } else if (AbstractC2140va.g(str21)) {
                                                if (c1235e5.f18454r == 0) {
                                                    i21 = c1235e5.f18452p;
                                                    i18 = -1;
                                                    if (i21 == -1) {
                                                        i21 = c1235e5.f18449m;
                                                    }
                                                    c1235e5.f18452p = i21;
                                                    i22 = c1235e5.f18453q;
                                                    if (i22 == -1) {
                                                        i22 = c1235e5.f18450n;
                                                    }
                                                    c1235e5.f18453q = i22;
                                                } else {
                                                    i18 = -1;
                                                }
                                                i19 = c1235e5.f18452p;
                                                if (i19 != i18) {
                                                    f8 = -1.0f;
                                                } else {
                                                    f8 = -1.0f;
                                                }
                                                if (c1235e5.f18461y) {
                                                    if (c1235e5.f18415E != -1.0f) {
                                                        bArr2 = null;
                                                    } else {
                                                        bArr2 = null;
                                                    }
                                                    int i31112 = c1235e5.f18462z;
                                                    int i31113 = c1235e5.f18412B;
                                                    int i416 = c1235e5.f18411A;
                                                    int i417 = c1235e5.f18451o;
                                                    c1928rL = new C1928rL(i31112, i31113, i416, bArr2, i417, i417);
                                                } else {
                                                    str2 = str2;
                                                    c1928rL = null;
                                                }
                                                str12 = c1235e5.f18437a;
                                                if (str12 != null) {
                                                    map = f18654j0;
                                                    if (map.containsKey(str12)) {
                                                        iIntValue = ((Integer) map.get(c1235e5.f18437a)).intValue();
                                                    } else {
                                                        iIntValue = -1;
                                                    }
                                                } else {
                                                    iIntValue = -1;
                                                }
                                                if (c1235e5.f18455s == 0) {
                                                    if (Float.compare(c1235e5.f18458v, 0.0f) == 0) {
                                                        iIntValue = 0;
                                                    } else if (Float.compare(c1235e5.f18458v, 90.0f) == 0) {
                                                        iIntValue = 90;
                                                    } else if (Float.compare(c1235e5.f18458v, -180.0f) != 0) {
                                                        iIntValue = 180;
                                                    } else {
                                                        iIntValue = 180;
                                                    }
                                                }
                                                k8.f14277r = c1235e5.f18449m;
                                                k8.f14278s = c1235e5.f18450n;
                                                k8.f14281v = f8;
                                                k8.f14280u = iIntValue;
                                                k8.f14282w = c1235e5.f18459w;
                                                k8.f14283x = c1235e5.f18460x;
                                                k8.f14284y = c1928rL;
                                                i17 = 2;
                                            } else {
                                                str2 = str2;
                                                str = str;
                                                if (org.videolan.libvlc.media.MediaPlayer.MEDIA_MIMETYPE_TEXT_SUBRIP.equals(str21)) {
                                                }
                                                i17 = 3;
                                            }
                                            str13 = c1235e5.f18437a;
                                            if (str13 != null) {
                                                k8.f14261b = c1235e5.f18437a;
                                            }
                                            k8.c(i36);
                                            k8.f(str21);
                                            k8.f14272m = i14;
                                            k8.f14263d = c1235e5.f18434X;
                                            k8.f14264e = i31111;
                                            k8.f14274o = listSingletonList;
                                            k8.f14268i = str10;
                                            k8.f14275p = c1235e5.f18448l;
                                            C1804p0 c1804p8 = new C1804p0(k8);
                                            InterfaceC1234e0 interfaceC1234e0H9 = n8.h(c1235e5.f18439c, i17);
                                            c1235e5.f18435Y = interfaceC1234e0H9;
                                            interfaceC1234e0H9.d(c1804p8);
                                            sparseArray.put(c1235e5.f18439c, c1235e5);
                                            c1287f2 = c1287f4;
                                            c1235e1 = null;
                                            break;
                                        case 11:
                                            byte[] bArrA = c1235e5.a(str20);
                                            try {
                                                try {
                                                    if (bArrA[0] != 2) {
                                                        throw C0800Ka.a("Error parsing vorbis codec private", null);
                                                    }
                                                    int i52 = 0;
                                                    int i53 = 1;
                                                    while (true) {
                                                        int i54 = bArrA[i53];
                                                        i53++;
                                                        int i55 = i54 & 255;
                                                        if (i55 != 255) {
                                                            int i56 = i52 + i55;
                                                            int i57 = 0;
                                                            while (true) {
                                                                int i58 = bArrA[i53];
                                                                i53++;
                                                                int i59 = i58 & 255;
                                                                if (i59 != 255) {
                                                                    int i60 = i57 + i59;
                                                                    if (bArrA[i53] != 1) {
                                                                        throw C0800Ka.a("Error parsing vorbis codec private", null);
                                                                    }
                                                                    byte[] bArr6 = new byte[i56];
                                                                    System.arraycopy(bArrA, i53, bArr6, 0, i56);
                                                                    int i61 = i53 + i56;
                                                                    if (bArrA[i61] != 3) {
                                                                        throw C0800Ka.a("Error parsing vorbis codec private", null);
                                                                    }
                                                                    int i62 = i61 + i60;
                                                                    if (bArrA[i62] != 5) {
                                                                        throw C0800Ka.a("Error parsing vorbis codec private", null);
                                                                    }
                                                                    int length2 = bArrA.length - i62;
                                                                    byte[] bArr7 = new byte[length2];
                                                                    System.arraycopy(bArrA, i62, bArr7, 0, length2);
                                                                    ArrayList arrayList = new ArrayList(2);
                                                                    arrayList.add(bArr6);
                                                                    arrayList.add(bArr7);
                                                                    str21 = "audio/vorbis";
                                                                    listSingletonList = arrayList;
                                                                    i14 = 8192;
                                                                    str10 = null;
                                                                    i15 = -1;
                                                                    if (c1235e5.f18425O != null) {
                                                                        str10 = jA2.f14099H;
                                                                        str21 = "video/dolby-vision";
                                                                    }
                                                                    boolean z19 = c1235e5.f18433W;
                                                                    if (true != c1235e5.f18432V) {
                                                                        i16 = 0;
                                                                    } else {
                                                                        i16 = 2;
                                                                    }
                                                                    int i31114 = (z19 ? 1 : 0) | i16;
                                                                    k8 = new K();
                                                                    if ("audio".equals(AbstractC2140va.h(str21))) {
                                                                        k8.f14285z = c1235e5.f18426P;
                                                                        k8.f14253A = c1235e5.f18428R;
                                                                        k8.f14254B = i15;
                                                                        str2 = str2;
                                                                        str = str;
                                                                        i17 = 1;
                                                                    } else if (AbstractC2140va.g(str21)) {
                                                                        if (c1235e5.f18454r == 0) {
                                                                            i21 = c1235e5.f18452p;
                                                                            i18 = -1;
                                                                            if (i21 == -1) {
                                                                                i21 = c1235e5.f18449m;
                                                                            }
                                                                            c1235e5.f18452p = i21;
                                                                            i22 = c1235e5.f18453q;
                                                                            if (i22 == -1) {
                                                                                i22 = c1235e5.f18450n;
                                                                            }
                                                                            c1235e5.f18453q = i22;
                                                                        } else {
                                                                            i18 = -1;
                                                                        }
                                                                        i19 = c1235e5.f18452p;
                                                                        if (i19 != i18) {
                                                                            f8 = -1.0f;
                                                                        } else {
                                                                            f8 = -1.0f;
                                                                        }
                                                                        if (c1235e5.f18461y) {
                                                                            if (c1235e5.f18415E != -1.0f) {
                                                                                bArr2 = null;
                                                                            } else {
                                                                                bArr2 = null;
                                                                            }
                                                                            int i31115 = c1235e5.f18462z;
                                                                            int i31116 = c1235e5.f18412B;
                                                                            int i418 = c1235e5.f18411A;
                                                                            int i419 = c1235e5.f18451o;
                                                                            c1928rL = new C1928rL(i31115, i31116, i418, bArr2, i419, i419);
                                                                        } else {
                                                                            str2 = str2;
                                                                            c1928rL = null;
                                                                        }
                                                                        str12 = c1235e5.f18437a;
                                                                        if (str12 != null) {
                                                                            map = f18654j0;
                                                                            if (map.containsKey(str12)) {
                                                                                iIntValue = ((Integer) map.get(c1235e5.f18437a)).intValue();
                                                                            } else {
                                                                                iIntValue = -1;
                                                                            }
                                                                        } else {
                                                                            iIntValue = -1;
                                                                        }
                                                                        if (c1235e5.f18455s == 0) {
                                                                            if (Float.compare(c1235e5.f18458v, 0.0f) == 0) {
                                                                                iIntValue = 0;
                                                                            } else if (Float.compare(c1235e5.f18458v, 90.0f) == 0) {
                                                                                iIntValue = 90;
                                                                            } else if (Float.compare(c1235e5.f18458v, -180.0f) != 0) {
                                                                                iIntValue = 180;
                                                                            } else {
                                                                                iIntValue = 180;
                                                                            }
                                                                        }
                                                                        k8.f14277r = c1235e5.f18449m;
                                                                        k8.f14278s = c1235e5.f18450n;
                                                                        k8.f14281v = f8;
                                                                        k8.f14280u = iIntValue;
                                                                        k8.f14282w = c1235e5.f18459w;
                                                                        k8.f14283x = c1235e5.f18460x;
                                                                        k8.f14284y = c1928rL;
                                                                        i17 = 2;
                                                                    } else {
                                                                        str2 = str2;
                                                                        str = str;
                                                                        if (org.videolan.libvlc.media.MediaPlayer.MEDIA_MIMETYPE_TEXT_SUBRIP.equals(str21)) {
                                                                        }
                                                                        i17 = 3;
                                                                    }
                                                                    str13 = c1235e5.f18437a;
                                                                    if (str13 != null) {
                                                                        k8.f14261b = c1235e5.f18437a;
                                                                    }
                                                                    k8.c(i36);
                                                                    k8.f(str21);
                                                                    k8.f14272m = i14;
                                                                    k8.f14263d = c1235e5.f18434X;
                                                                    k8.f14264e = i31114;
                                                                    k8.f14274o = listSingletonList;
                                                                    k8.f14268i = str10;
                                                                    k8.f14275p = c1235e5.f18448l;
                                                                    C1804p0 c1804p9 = new C1804p0(k8);
                                                                    InterfaceC1234e0 interfaceC1234e0H10 = n8.h(c1235e5.f18439c, i17);
                                                                    c1235e5.f18435Y = interfaceC1234e0H10;
                                                                    interfaceC1234e0H10.d(c1804p9);
                                                                    sparseArray.put(c1235e5.f18439c, c1235e5);
                                                                    c1287f2 = c1287f4;
                                                                    c1235e1 = null;
                                                                } else {
                                                                    i57 += 255;
                                                                }
                                                            }
                                                        } else {
                                                            i52 += 255;
                                                        }
                                                    }
                                                } catch (ArrayIndexOutOfBoundsException unused4) {
                                                    throw C0800Ka.a("Error parsing vorbis codec private", bArrA);
                                                }
                                            } catch (ArrayIndexOutOfBoundsException unused5) {
                                                bArrA = 0;
                                            }
                                            break;
                                        case 12:
                                            ArrayList arrayList2 = new ArrayList(3);
                                            arrayList2.add(c1235e5.a(c1235e5.f18438b));
                                            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
                                            ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
                                            arrayList2.add(byteBufferAllocate.order(byteOrder).putLong(c1235e5.f18429S).array());
                                            arrayList2.add(ByteBuffer.allocate(8).order(byteOrder).putLong(c1235e5.f18430T).array());
                                            str21 = "audio/opus";
                                            listSingletonList = arrayList2;
                                            i14 = 5760;
                                            str10 = null;
                                            i15 = -1;
                                            if (c1235e5.f18425O != null) {
                                                str10 = jA2.f14099H;
                                                str21 = "video/dolby-vision";
                                            }
                                            boolean z110 = c1235e5.f18433W;
                                            if (true != c1235e5.f18432V) {
                                                i16 = 0;
                                            } else {
                                                i16 = 2;
                                            }
                                            int i31117 = (z110 ? 1 : 0) | i16;
                                            k8 = new K();
                                            if ("audio".equals(AbstractC2140va.h(str21))) {
                                                k8.f14285z = c1235e5.f18426P;
                                                k8.f14253A = c1235e5.f18428R;
                                                k8.f14254B = i15;
                                                str2 = str2;
                                                str = str;
                                                i17 = 1;
                                            } else if (AbstractC2140va.g(str21)) {
                                                if (c1235e5.f18454r == 0) {
                                                    i21 = c1235e5.f18452p;
                                                    i18 = -1;
                                                    if (i21 == -1) {
                                                        i21 = c1235e5.f18449m;
                                                    }
                                                    c1235e5.f18452p = i21;
                                                    i22 = c1235e5.f18453q;
                                                    if (i22 == -1) {
                                                        i22 = c1235e5.f18450n;
                                                    }
                                                    c1235e5.f18453q = i22;
                                                } else {
                                                    i18 = -1;
                                                }
                                                i19 = c1235e5.f18452p;
                                                if (i19 != i18) {
                                                    f8 = -1.0f;
                                                } else {
                                                    f8 = -1.0f;
                                                }
                                                if (c1235e5.f18461y) {
                                                    if (c1235e5.f18415E != -1.0f) {
                                                        bArr2 = null;
                                                    } else {
                                                        bArr2 = null;
                                                    }
                                                    int i31118 = c1235e5.f18462z;
                                                    int i31119 = c1235e5.f18412B;
                                                    int i4110 = c1235e5.f18411A;
                                                    int i4111 = c1235e5.f18451o;
                                                    c1928rL = new C1928rL(i31118, i31119, i4110, bArr2, i4111, i4111);
                                                } else {
                                                    str2 = str2;
                                                    c1928rL = null;
                                                }
                                                str12 = c1235e5.f18437a;
                                                if (str12 != null) {
                                                    map = f18654j0;
                                                    if (map.containsKey(str12)) {
                                                        iIntValue = ((Integer) map.get(c1235e5.f18437a)).intValue();
                                                    } else {
                                                        iIntValue = -1;
                                                    }
                                                } else {
                                                    iIntValue = -1;
                                                }
                                                if (c1235e5.f18455s == 0) {
                                                    if (Float.compare(c1235e5.f18458v, 0.0f) == 0) {
                                                        iIntValue = 0;
                                                    } else if (Float.compare(c1235e5.f18458v, 90.0f) == 0) {
                                                        iIntValue = 90;
                                                    } else if (Float.compare(c1235e5.f18458v, -180.0f) != 0) {
                                                        iIntValue = 180;
                                                    } else {
                                                        iIntValue = 180;
                                                    }
                                                }
                                                k8.f14277r = c1235e5.f18449m;
                                                k8.f14278s = c1235e5.f18450n;
                                                k8.f14281v = f8;
                                                k8.f14280u = iIntValue;
                                                k8.f14282w = c1235e5.f18459w;
                                                k8.f14283x = c1235e5.f18460x;
                                                k8.f14284y = c1928rL;
                                                i17 = 2;
                                            } else {
                                                str2 = str2;
                                                str = str;
                                                if (org.videolan.libvlc.media.MediaPlayer.MEDIA_MIMETYPE_TEXT_SUBRIP.equals(str21)) {
                                                }
                                                i17 = 3;
                                            }
                                            str13 = c1235e5.f18437a;
                                            if (str13 != null) {
                                                k8.f14261b = c1235e5.f18437a;
                                            }
                                            k8.c(i36);
                                            k8.f(str21);
                                            k8.f14272m = i14;
                                            k8.f14263d = c1235e5.f18434X;
                                            k8.f14264e = i31117;
                                            k8.f14274o = listSingletonList;
                                            k8.f14268i = str10;
                                            k8.f14275p = c1235e5.f18448l;
                                            C1804p0 c1804p10 = new C1804p0(k8);
                                            InterfaceC1234e0 interfaceC1234e0H11 = n8.h(c1235e5.f18439c, i17);
                                            c1235e5.f18435Y = interfaceC1234e0H11;
                                            interfaceC1234e0H11.d(c1804p10);
                                            sparseArray.put(c1235e5.f18439c, c1235e5);
                                            c1287f2 = c1287f4;
                                            c1235e1 = null;
                                            break;
                                        case 13:
                                            List listSingletonList2 = Collections.singletonList(c1235e5.a(str20));
                                            byte[] bArr8 = c1235e5.f18447k;
                                            W0.r rVarC = AbstractC1717nH.c(new C1286f0(bArr8, bArr8.length), false);
                                            c1235e5.f18428R = rVarC.f7455b;
                                            c1235e5.f18426P = rVarC.f7456c;
                                            String str23 = rVarC.f7454a;
                                            str21 = "audio/mp4a-latm";
                                            str10 = str23;
                                            i15 = -1;
                                            listSingletonList = listSingletonList2;
                                            i14 = -1;
                                            if (c1235e5.f18425O != null) {
                                                str10 = jA2.f14099H;
                                                str21 = "video/dolby-vision";
                                            }
                                            boolean z111 = c1235e5.f18433W;
                                            if (true != c1235e5.f18432V) {
                                                i16 = 0;
                                            } else {
                                                i16 = 2;
                                            }
                                            int i311110 = (z111 ? 1 : 0) | i16;
                                            k8 = new K();
                                            if ("audio".equals(AbstractC2140va.h(str21))) {
                                                k8.f14285z = c1235e5.f18426P;
                                                k8.f14253A = c1235e5.f18428R;
                                                k8.f14254B = i15;
                                                str2 = str2;
                                                str = str;
                                                i17 = 1;
                                            } else if (AbstractC2140va.g(str21)) {
                                                if (c1235e5.f18454r == 0) {
                                                    i21 = c1235e5.f18452p;
                                                    i18 = -1;
                                                    if (i21 == -1) {
                                                        i21 = c1235e5.f18449m;
                                                    }
                                                    c1235e5.f18452p = i21;
                                                    i22 = c1235e5.f18453q;
                                                    if (i22 == -1) {
                                                        i22 = c1235e5.f18450n;
                                                    }
                                                    c1235e5.f18453q = i22;
                                                } else {
                                                    i18 = -1;
                                                }
                                                i19 = c1235e5.f18452p;
                                                if (i19 != i18) {
                                                    f8 = -1.0f;
                                                } else {
                                                    f8 = -1.0f;
                                                }
                                                if (c1235e5.f18461y) {
                                                    if (c1235e5.f18415E != -1.0f) {
                                                        bArr2 = null;
                                                    } else {
                                                        bArr2 = null;
                                                    }
                                                    int i311111 = c1235e5.f18462z;
                                                    int i311112 = c1235e5.f18412B;
                                                    int i4112 = c1235e5.f18411A;
                                                    int i4113 = c1235e5.f18451o;
                                                    c1928rL = new C1928rL(i311111, i311112, i4112, bArr2, i4113, i4113);
                                                } else {
                                                    str2 = str2;
                                                    c1928rL = null;
                                                }
                                                str12 = c1235e5.f18437a;
                                                if (str12 != null) {
                                                    map = f18654j0;
                                                    if (map.containsKey(str12)) {
                                                        iIntValue = ((Integer) map.get(c1235e5.f18437a)).intValue();
                                                    } else {
                                                        iIntValue = -1;
                                                    }
                                                } else {
                                                    iIntValue = -1;
                                                }
                                                if (c1235e5.f18455s == 0) {
                                                    if (Float.compare(c1235e5.f18458v, 0.0f) == 0) {
                                                        iIntValue = 0;
                                                    } else if (Float.compare(c1235e5.f18458v, 90.0f) == 0) {
                                                        iIntValue = 90;
                                                    } else if (Float.compare(c1235e5.f18458v, -180.0f) != 0) {
                                                        iIntValue = 180;
                                                    } else {
                                                        iIntValue = 180;
                                                    }
                                                }
                                                k8.f14277r = c1235e5.f18449m;
                                                k8.f14278s = c1235e5.f18450n;
                                                k8.f14281v = f8;
                                                k8.f14280u = iIntValue;
                                                k8.f14282w = c1235e5.f18459w;
                                                k8.f14283x = c1235e5.f18460x;
                                                k8.f14284y = c1928rL;
                                                i17 = 2;
                                            } else {
                                                str2 = str2;
                                                str = str;
                                                if (org.videolan.libvlc.media.MediaPlayer.MEDIA_MIMETYPE_TEXT_SUBRIP.equals(str21)) {
                                                }
                                                i17 = 3;
                                            }
                                            str13 = c1235e5.f18437a;
                                            if (str13 != null) {
                                                k8.f14261b = c1235e5.f18437a;
                                            }
                                            k8.c(i36);
                                            k8.f(str21);
                                            k8.f14272m = i14;
                                            k8.f14263d = c1235e5.f18434X;
                                            k8.f14264e = i311110;
                                            k8.f14274o = listSingletonList;
                                            k8.f14268i = str10;
                                            k8.f14275p = c1235e5.f18448l;
                                            C1804p0 c1804p11 = new C1804p0(k8);
                                            InterfaceC1234e0 interfaceC1234e0H12 = n8.h(c1235e5.f18439c, i17);
                                            c1235e5.f18435Y = interfaceC1234e0H12;
                                            interfaceC1234e0H12.d(c1804p11);
                                            sparseArray.put(c1235e5.f18439c, c1235e5);
                                            c1287f2 = c1287f4;
                                            c1235e1 = null;
                                            break;
                                        case 14:
                                            i14 = 4096;
                                            str21 = "audio/mpeg-L2";
                                            listSingletonList = null;
                                            str10 = null;
                                            i15 = -1;
                                            if (c1235e5.f18425O != null) {
                                                str10 = jA2.f14099H;
                                                str21 = "video/dolby-vision";
                                            }
                                            boolean z112 = c1235e5.f18433W;
                                            if (true != c1235e5.f18432V) {
                                                i16 = 0;
                                            } else {
                                                i16 = 2;
                                            }
                                            int i311113 = (z112 ? 1 : 0) | i16;
                                            k8 = new K();
                                            if ("audio".equals(AbstractC2140va.h(str21))) {
                                                k8.f14285z = c1235e5.f18426P;
                                                k8.f14253A = c1235e5.f18428R;
                                                k8.f14254B = i15;
                                                str2 = str2;
                                                str = str;
                                                i17 = 1;
                                            } else if (AbstractC2140va.g(str21)) {
                                                if (c1235e5.f18454r == 0) {
                                                    i21 = c1235e5.f18452p;
                                                    i18 = -1;
                                                    if (i21 == -1) {
                                                        i21 = c1235e5.f18449m;
                                                    }
                                                    c1235e5.f18452p = i21;
                                                    i22 = c1235e5.f18453q;
                                                    if (i22 == -1) {
                                                        i22 = c1235e5.f18450n;
                                                    }
                                                    c1235e5.f18453q = i22;
                                                } else {
                                                    i18 = -1;
                                                }
                                                i19 = c1235e5.f18452p;
                                                if (i19 != i18) {
                                                    f8 = -1.0f;
                                                } else {
                                                    f8 = -1.0f;
                                                }
                                                if (c1235e5.f18461y) {
                                                    if (c1235e5.f18415E != -1.0f) {
                                                        bArr2 = null;
                                                    } else {
                                                        bArr2 = null;
                                                    }
                                                    int i311114 = c1235e5.f18462z;
                                                    int i311115 = c1235e5.f18412B;
                                                    int i4114 = c1235e5.f18411A;
                                                    int i4115 = c1235e5.f18451o;
                                                    c1928rL = new C1928rL(i311114, i311115, i4114, bArr2, i4115, i4115);
                                                } else {
                                                    str2 = str2;
                                                    c1928rL = null;
                                                }
                                                str12 = c1235e5.f18437a;
                                                if (str12 != null) {
                                                    map = f18654j0;
                                                    if (map.containsKey(str12)) {
                                                        iIntValue = ((Integer) map.get(c1235e5.f18437a)).intValue();
                                                    } else {
                                                        iIntValue = -1;
                                                    }
                                                } else {
                                                    iIntValue = -1;
                                                }
                                                if (c1235e5.f18455s == 0) {
                                                    if (Float.compare(c1235e5.f18458v, 0.0f) == 0) {
                                                        iIntValue = 0;
                                                    } else if (Float.compare(c1235e5.f18458v, 90.0f) == 0) {
                                                        iIntValue = 90;
                                                    } else if (Float.compare(c1235e5.f18458v, -180.0f) != 0) {
                                                        iIntValue = 180;
                                                    } else {
                                                        iIntValue = 180;
                                                    }
                                                }
                                                k8.f14277r = c1235e5.f18449m;
                                                k8.f14278s = c1235e5.f18450n;
                                                k8.f14281v = f8;
                                                k8.f14280u = iIntValue;
                                                k8.f14282w = c1235e5.f18459w;
                                                k8.f14283x = c1235e5.f18460x;
                                                k8.f14284y = c1928rL;
                                                i17 = 2;
                                            } else {
                                                str2 = str2;
                                                str = str;
                                                if (org.videolan.libvlc.media.MediaPlayer.MEDIA_MIMETYPE_TEXT_SUBRIP.equals(str21)) {
                                                }
                                                i17 = 3;
                                            }
                                            str13 = c1235e5.f18437a;
                                            if (str13 != null) {
                                                k8.f14261b = c1235e5.f18437a;
                                            }
                                            k8.c(i36);
                                            k8.f(str21);
                                            k8.f14272m = i14;
                                            k8.f14263d = c1235e5.f18434X;
                                            k8.f14264e = i311113;
                                            k8.f14274o = listSingletonList;
                                            k8.f14268i = str10;
                                            k8.f14275p = c1235e5.f18448l;
                                            C1804p0 c1804p12 = new C1804p0(k8);
                                            InterfaceC1234e0 interfaceC1234e0H13 = n8.h(c1235e5.f18439c, i17);
                                            c1235e5.f18435Y = interfaceC1234e0H13;
                                            interfaceC1234e0H13.d(c1804p12);
                                            sparseArray.put(c1235e5.f18439c, c1235e5);
                                            c1287f2 = c1287f4;
                                            c1235e1 = null;
                                            break;
                                        case 15:
                                            i14 = 4096;
                                            str21 = "audio/mpeg";
                                            listSingletonList = null;
                                            str10 = null;
                                            i15 = -1;
                                            if (c1235e5.f18425O != null) {
                                                str10 = jA2.f14099H;
                                                str21 = "video/dolby-vision";
                                            }
                                            boolean z113 = c1235e5.f18433W;
                                            if (true != c1235e5.f18432V) {
                                                i16 = 0;
                                            } else {
                                                i16 = 2;
                                            }
                                            int i311116 = (z113 ? 1 : 0) | i16;
                                            k8 = new K();
                                            if ("audio".equals(AbstractC2140va.h(str21))) {
                                                k8.f14285z = c1235e5.f18426P;
                                                k8.f14253A = c1235e5.f18428R;
                                                k8.f14254B = i15;
                                                str2 = str2;
                                                str = str;
                                                i17 = 1;
                                            } else if (AbstractC2140va.g(str21)) {
                                                if (c1235e5.f18454r == 0) {
                                                    i21 = c1235e5.f18452p;
                                                    i18 = -1;
                                                    if (i21 == -1) {
                                                        i21 = c1235e5.f18449m;
                                                    }
                                                    c1235e5.f18452p = i21;
                                                    i22 = c1235e5.f18453q;
                                                    if (i22 == -1) {
                                                        i22 = c1235e5.f18450n;
                                                    }
                                                    c1235e5.f18453q = i22;
                                                } else {
                                                    i18 = -1;
                                                }
                                                i19 = c1235e5.f18452p;
                                                if (i19 != i18) {
                                                    f8 = -1.0f;
                                                } else {
                                                    f8 = -1.0f;
                                                }
                                                if (c1235e5.f18461y) {
                                                    if (c1235e5.f18415E != -1.0f) {
                                                        bArr2 = null;
                                                    } else {
                                                        bArr2 = null;
                                                    }
                                                    int i311117 = c1235e5.f18462z;
                                                    int i311118 = c1235e5.f18412B;
                                                    int i4116 = c1235e5.f18411A;
                                                    int i4117 = c1235e5.f18451o;
                                                    c1928rL = new C1928rL(i311117, i311118, i4116, bArr2, i4117, i4117);
                                                } else {
                                                    str2 = str2;
                                                    c1928rL = null;
                                                }
                                                str12 = c1235e5.f18437a;
                                                if (str12 != null) {
                                                    map = f18654j0;
                                                    if (map.containsKey(str12)) {
                                                        iIntValue = ((Integer) map.get(c1235e5.f18437a)).intValue();
                                                    } else {
                                                        iIntValue = -1;
                                                    }
                                                } else {
                                                    iIntValue = -1;
                                                }
                                                if (c1235e5.f18455s == 0) {
                                                    if (Float.compare(c1235e5.f18458v, 0.0f) == 0) {
                                                        iIntValue = 0;
                                                    } else if (Float.compare(c1235e5.f18458v, 90.0f) == 0) {
                                                        iIntValue = 90;
                                                    } else if (Float.compare(c1235e5.f18458v, -180.0f) != 0) {
                                                        iIntValue = 180;
                                                    } else {
                                                        iIntValue = 180;
                                                    }
                                                }
                                                k8.f14277r = c1235e5.f18449m;
                                                k8.f14278s = c1235e5.f18450n;
                                                k8.f14281v = f8;
                                                k8.f14280u = iIntValue;
                                                k8.f14282w = c1235e5.f18459w;
                                                k8.f14283x = c1235e5.f18460x;
                                                k8.f14284y = c1928rL;
                                                i17 = 2;
                                            } else {
                                                str2 = str2;
                                                str = str;
                                                if (org.videolan.libvlc.media.MediaPlayer.MEDIA_MIMETYPE_TEXT_SUBRIP.equals(str21)) {
                                                }
                                                i17 = 3;
                                            }
                                            str13 = c1235e5.f18437a;
                                            if (str13 != null) {
                                                k8.f14261b = c1235e5.f18437a;
                                            }
                                            k8.c(i36);
                                            k8.f(str21);
                                            k8.f14272m = i14;
                                            k8.f14263d = c1235e5.f18434X;
                                            k8.f14264e = i311116;
                                            k8.f14274o = listSingletonList;
                                            k8.f14268i = str10;
                                            k8.f14275p = c1235e5.f18448l;
                                            C1804p0 c1804p13 = new C1804p0(k8);
                                            InterfaceC1234e0 interfaceC1234e0H14 = n8.h(c1235e5.f18439c, i17);
                                            c1235e5.f18435Y = interfaceC1234e0H14;
                                            interfaceC1234e0H14.d(c1804p13);
                                            sparseArray.put(c1235e5.f18439c, c1235e5);
                                            c1287f2 = c1287f4;
                                            c1235e1 = null;
                                            break;
                                        case 16:
                                            str21 = "audio/ac3";
                                            i14 = -1;
                                            listSingletonList = null;
                                            str10 = null;
                                            i15 = -1;
                                            if (c1235e5.f18425O != null) {
                                                str10 = jA2.f14099H;
                                                str21 = "video/dolby-vision";
                                            }
                                            boolean z114 = c1235e5.f18433W;
                                            if (true != c1235e5.f18432V) {
                                                i16 = 0;
                                            } else {
                                                i16 = 2;
                                            }
                                            int i311119 = (z114 ? 1 : 0) | i16;
                                            k8 = new K();
                                            if ("audio".equals(AbstractC2140va.h(str21))) {
                                                k8.f14285z = c1235e5.f18426P;
                                                k8.f14253A = c1235e5.f18428R;
                                                k8.f14254B = i15;
                                                str2 = str2;
                                                str = str;
                                                i17 = 1;
                                            } else if (AbstractC2140va.g(str21)) {
                                                if (c1235e5.f18454r == 0) {
                                                    i21 = c1235e5.f18452p;
                                                    i18 = -1;
                                                    if (i21 == -1) {
                                                        i21 = c1235e5.f18449m;
                                                    }
                                                    c1235e5.f18452p = i21;
                                                    i22 = c1235e5.f18453q;
                                                    if (i22 == -1) {
                                                        i22 = c1235e5.f18450n;
                                                    }
                                                    c1235e5.f18453q = i22;
                                                } else {
                                                    i18 = -1;
                                                }
                                                i19 = c1235e5.f18452p;
                                                if (i19 != i18) {
                                                    f8 = -1.0f;
                                                } else {
                                                    f8 = -1.0f;
                                                }
                                                if (c1235e5.f18461y) {
                                                    if (c1235e5.f18415E != -1.0f) {
                                                        bArr2 = null;
                                                    } else {
                                                        bArr2 = null;
                                                    }
                                                    int i3111110 = c1235e5.f18462z;
                                                    int i3111111 = c1235e5.f18412B;
                                                    int i4118 = c1235e5.f18411A;
                                                    int i4119 = c1235e5.f18451o;
                                                    c1928rL = new C1928rL(i3111110, i3111111, i4118, bArr2, i4119, i4119);
                                                } else {
                                                    str2 = str2;
                                                    c1928rL = null;
                                                }
                                                str12 = c1235e5.f18437a;
                                                if (str12 != null) {
                                                    map = f18654j0;
                                                    if (map.containsKey(str12)) {
                                                        iIntValue = ((Integer) map.get(c1235e5.f18437a)).intValue();
                                                    } else {
                                                        iIntValue = -1;
                                                    }
                                                } else {
                                                    iIntValue = -1;
                                                }
                                                if (c1235e5.f18455s == 0) {
                                                    if (Float.compare(c1235e5.f18458v, 0.0f) == 0) {
                                                        iIntValue = 0;
                                                    } else if (Float.compare(c1235e5.f18458v, 90.0f) == 0) {
                                                        iIntValue = 90;
                                                    } else if (Float.compare(c1235e5.f18458v, -180.0f) != 0) {
                                                        iIntValue = 180;
                                                    } else {
                                                        iIntValue = 180;
                                                    }
                                                }
                                                k8.f14277r = c1235e5.f18449m;
                                                k8.f14278s = c1235e5.f18450n;
                                                k8.f14281v = f8;
                                                k8.f14280u = iIntValue;
                                                k8.f14282w = c1235e5.f18459w;
                                                k8.f14283x = c1235e5.f18460x;
                                                k8.f14284y = c1928rL;
                                                i17 = 2;
                                            } else {
                                                str2 = str2;
                                                str = str;
                                                if (org.videolan.libvlc.media.MediaPlayer.MEDIA_MIMETYPE_TEXT_SUBRIP.equals(str21)) {
                                                }
                                                i17 = 3;
                                            }
                                            str13 = c1235e5.f18437a;
                                            if (str13 != null) {
                                                k8.f14261b = c1235e5.f18437a;
                                            }
                                            k8.c(i36);
                                            k8.f(str21);
                                            k8.f14272m = i14;
                                            k8.f14263d = c1235e5.f18434X;
                                            k8.f14264e = i311119;
                                            k8.f14274o = listSingletonList;
                                            k8.f14268i = str10;
                                            k8.f14275p = c1235e5.f18448l;
                                            C1804p0 c1804p14 = new C1804p0(k8);
                                            InterfaceC1234e0 interfaceC1234e0H15 = n8.h(c1235e5.f18439c, i17);
                                            c1235e5.f18435Y = interfaceC1234e0H15;
                                            interfaceC1234e0H15.d(c1804p14);
                                            sparseArray.put(c1235e5.f18439c, c1235e5);
                                            c1287f2 = c1287f4;
                                            c1235e1 = null;
                                            break;
                                        case 17:
                                            str21 = "audio/eac3";
                                            i14 = -1;
                                            listSingletonList = null;
                                            str10 = null;
                                            i15 = -1;
                                            if (c1235e5.f18425O != null) {
                                                str10 = jA2.f14099H;
                                                str21 = "video/dolby-vision";
                                            }
                                            boolean z115 = c1235e5.f18433W;
                                            if (true != c1235e5.f18432V) {
                                                i16 = 0;
                                            } else {
                                                i16 = 2;
                                            }
                                            int i3111112 = (z115 ? 1 : 0) | i16;
                                            k8 = new K();
                                            if ("audio".equals(AbstractC2140va.h(str21))) {
                                                k8.f14285z = c1235e5.f18426P;
                                                k8.f14253A = c1235e5.f18428R;
                                                k8.f14254B = i15;
                                                str2 = str2;
                                                str = str;
                                                i17 = 1;
                                            } else if (AbstractC2140va.g(str21)) {
                                                if (c1235e5.f18454r == 0) {
                                                    i21 = c1235e5.f18452p;
                                                    i18 = -1;
                                                    if (i21 == -1) {
                                                        i21 = c1235e5.f18449m;
                                                    }
                                                    c1235e5.f18452p = i21;
                                                    i22 = c1235e5.f18453q;
                                                    if (i22 == -1) {
                                                        i22 = c1235e5.f18450n;
                                                    }
                                                    c1235e5.f18453q = i22;
                                                } else {
                                                    i18 = -1;
                                                }
                                                i19 = c1235e5.f18452p;
                                                if (i19 != i18) {
                                                    f8 = -1.0f;
                                                } else {
                                                    f8 = -1.0f;
                                                }
                                                if (c1235e5.f18461y) {
                                                    if (c1235e5.f18415E != -1.0f) {
                                                        bArr2 = null;
                                                    } else {
                                                        bArr2 = null;
                                                    }
                                                    int i3111113 = c1235e5.f18462z;
                                                    int i3111114 = c1235e5.f18412B;
                                                    int i41110 = c1235e5.f18411A;
                                                    int i41111 = c1235e5.f18451o;
                                                    c1928rL = new C1928rL(i3111113, i3111114, i41110, bArr2, i41111, i41111);
                                                } else {
                                                    str2 = str2;
                                                    c1928rL = null;
                                                }
                                                str12 = c1235e5.f18437a;
                                                if (str12 != null) {
                                                    map = f18654j0;
                                                    if (map.containsKey(str12)) {
                                                        iIntValue = ((Integer) map.get(c1235e5.f18437a)).intValue();
                                                    } else {
                                                        iIntValue = -1;
                                                    }
                                                } else {
                                                    iIntValue = -1;
                                                }
                                                if (c1235e5.f18455s == 0) {
                                                    if (Float.compare(c1235e5.f18458v, 0.0f) == 0) {
                                                        iIntValue = 0;
                                                    } else if (Float.compare(c1235e5.f18458v, 90.0f) == 0) {
                                                        iIntValue = 90;
                                                    } else if (Float.compare(c1235e5.f18458v, -180.0f) != 0) {
                                                        iIntValue = 180;
                                                    } else {
                                                        iIntValue = 180;
                                                    }
                                                }
                                                k8.f14277r = c1235e5.f18449m;
                                                k8.f14278s = c1235e5.f18450n;
                                                k8.f14281v = f8;
                                                k8.f14280u = iIntValue;
                                                k8.f14282w = c1235e5.f18459w;
                                                k8.f14283x = c1235e5.f18460x;
                                                k8.f14284y = c1928rL;
                                                i17 = 2;
                                            } else {
                                                str2 = str2;
                                                str = str;
                                                if (org.videolan.libvlc.media.MediaPlayer.MEDIA_MIMETYPE_TEXT_SUBRIP.equals(str21)) {
                                                }
                                                i17 = 3;
                                            }
                                            str13 = c1235e5.f18437a;
                                            if (str13 != null) {
                                                k8.f14261b = c1235e5.f18437a;
                                            }
                                            k8.c(i36);
                                            k8.f(str21);
                                            k8.f14272m = i14;
                                            k8.f14263d = c1235e5.f18434X;
                                            k8.f14264e = i3111112;
                                            k8.f14274o = listSingletonList;
                                            k8.f14268i = str10;
                                            k8.f14275p = c1235e5.f18448l;
                                            C1804p0 c1804p15 = new C1804p0(k8);
                                            InterfaceC1234e0 interfaceC1234e0H16 = n8.h(c1235e5.f18439c, i17);
                                            c1235e5.f18435Y = interfaceC1234e0H16;
                                            interfaceC1234e0H16.d(c1804p15);
                                            sparseArray.put(c1235e5.f18439c, c1235e5);
                                            c1287f2 = c1287f4;
                                            c1235e1 = null;
                                            break;
                                        case 18:
                                            c1235e5.f18431U = new W0.M(1);
                                            str21 = "audio/true-hd";
                                            i14 = -1;
                                            listSingletonList = null;
                                            str10 = null;
                                            i15 = -1;
                                            if (c1235e5.f18425O != null) {
                                                str10 = jA2.f14099H;
                                                str21 = "video/dolby-vision";
                                            }
                                            boolean z116 = c1235e5.f18433W;
                                            if (true != c1235e5.f18432V) {
                                                i16 = 0;
                                            } else {
                                                i16 = 2;
                                            }
                                            int i3111115 = (z116 ? 1 : 0) | i16;
                                            k8 = new K();
                                            if ("audio".equals(AbstractC2140va.h(str21))) {
                                                k8.f14285z = c1235e5.f18426P;
                                                k8.f14253A = c1235e5.f18428R;
                                                k8.f14254B = i15;
                                                str2 = str2;
                                                str = str;
                                                i17 = 1;
                                            } else if (AbstractC2140va.g(str21)) {
                                                if (c1235e5.f18454r == 0) {
                                                    i21 = c1235e5.f18452p;
                                                    i18 = -1;
                                                    if (i21 == -1) {
                                                        i21 = c1235e5.f18449m;
                                                    }
                                                    c1235e5.f18452p = i21;
                                                    i22 = c1235e5.f18453q;
                                                    if (i22 == -1) {
                                                        i22 = c1235e5.f18450n;
                                                    }
                                                    c1235e5.f18453q = i22;
                                                } else {
                                                    i18 = -1;
                                                }
                                                i19 = c1235e5.f18452p;
                                                if (i19 != i18) {
                                                    f8 = -1.0f;
                                                } else {
                                                    f8 = -1.0f;
                                                }
                                                if (c1235e5.f18461y) {
                                                    if (c1235e5.f18415E != -1.0f) {
                                                        bArr2 = null;
                                                    } else {
                                                        bArr2 = null;
                                                    }
                                                    int i3111116 = c1235e5.f18462z;
                                                    int i3111117 = c1235e5.f18412B;
                                                    int i41112 = c1235e5.f18411A;
                                                    int i41113 = c1235e5.f18451o;
                                                    c1928rL = new C1928rL(i3111116, i3111117, i41112, bArr2, i41113, i41113);
                                                } else {
                                                    str2 = str2;
                                                    c1928rL = null;
                                                }
                                                str12 = c1235e5.f18437a;
                                                if (str12 != null) {
                                                    map = f18654j0;
                                                    if (map.containsKey(str12)) {
                                                        iIntValue = ((Integer) map.get(c1235e5.f18437a)).intValue();
                                                    } else {
                                                        iIntValue = -1;
                                                    }
                                                } else {
                                                    iIntValue = -1;
                                                }
                                                if (c1235e5.f18455s == 0) {
                                                    if (Float.compare(c1235e5.f18458v, 0.0f) == 0) {
                                                        iIntValue = 0;
                                                    } else if (Float.compare(c1235e5.f18458v, 90.0f) == 0) {
                                                        iIntValue = 90;
                                                    } else if (Float.compare(c1235e5.f18458v, -180.0f) != 0) {
                                                        iIntValue = 180;
                                                    } else {
                                                        iIntValue = 180;
                                                    }
                                                }
                                                k8.f14277r = c1235e5.f18449m;
                                                k8.f14278s = c1235e5.f18450n;
                                                k8.f14281v = f8;
                                                k8.f14280u = iIntValue;
                                                k8.f14282w = c1235e5.f18459w;
                                                k8.f14283x = c1235e5.f18460x;
                                                k8.f14284y = c1928rL;
                                                i17 = 2;
                                            } else {
                                                str2 = str2;
                                                str = str;
                                                if (org.videolan.libvlc.media.MediaPlayer.MEDIA_MIMETYPE_TEXT_SUBRIP.equals(str21)) {
                                                }
                                                i17 = 3;
                                            }
                                            str13 = c1235e5.f18437a;
                                            if (str13 != null) {
                                                k8.f14261b = c1235e5.f18437a;
                                            }
                                            k8.c(i36);
                                            k8.f(str21);
                                            k8.f14272m = i14;
                                            k8.f14263d = c1235e5.f18434X;
                                            k8.f14264e = i3111115;
                                            k8.f14274o = listSingletonList;
                                            k8.f14268i = str10;
                                            k8.f14275p = c1235e5.f18448l;
                                            C1804p0 c1804p16 = new C1804p0(k8);
                                            InterfaceC1234e0 interfaceC1234e0H17 = n8.h(c1235e5.f18439c, i17);
                                            c1235e5.f18435Y = interfaceC1234e0H17;
                                            interfaceC1234e0H17.d(c1804p16);
                                            sparseArray.put(c1235e5.f18439c, c1235e5);
                                            c1287f2 = c1287f4;
                                            c1235e1 = null;
                                            break;
                                        case 19:
                                        case 20:
                                            str21 = "audio/vnd.dts";
                                            i14 = -1;
                                            listSingletonList = null;
                                            str10 = null;
                                            i15 = -1;
                                            if (c1235e5.f18425O != null) {
                                                str10 = jA2.f14099H;
                                                str21 = "video/dolby-vision";
                                            }
                                            boolean z117 = c1235e5.f18433W;
                                            if (true != c1235e5.f18432V) {
                                                i16 = 0;
                                            } else {
                                                i16 = 2;
                                            }
                                            int i3111118 = (z117 ? 1 : 0) | i16;
                                            k8 = new K();
                                            if ("audio".equals(AbstractC2140va.h(str21))) {
                                                k8.f14285z = c1235e5.f18426P;
                                                k8.f14253A = c1235e5.f18428R;
                                                k8.f14254B = i15;
                                                str2 = str2;
                                                str = str;
                                                i17 = 1;
                                            } else if (AbstractC2140va.g(str21)) {
                                                if (c1235e5.f18454r == 0) {
                                                    i21 = c1235e5.f18452p;
                                                    i18 = -1;
                                                    if (i21 == -1) {
                                                        i21 = c1235e5.f18449m;
                                                    }
                                                    c1235e5.f18452p = i21;
                                                    i22 = c1235e5.f18453q;
                                                    if (i22 == -1) {
                                                        i22 = c1235e5.f18450n;
                                                    }
                                                    c1235e5.f18453q = i22;
                                                } else {
                                                    i18 = -1;
                                                }
                                                i19 = c1235e5.f18452p;
                                                if (i19 != i18) {
                                                    f8 = -1.0f;
                                                } else {
                                                    f8 = -1.0f;
                                                }
                                                if (c1235e5.f18461y) {
                                                    if (c1235e5.f18415E != -1.0f) {
                                                        bArr2 = null;
                                                    } else {
                                                        bArr2 = null;
                                                    }
                                                    int i3111119 = c1235e5.f18462z;
                                                    int i31111110 = c1235e5.f18412B;
                                                    int i41114 = c1235e5.f18411A;
                                                    int i41115 = c1235e5.f18451o;
                                                    c1928rL = new C1928rL(i3111119, i31111110, i41114, bArr2, i41115, i41115);
                                                } else {
                                                    str2 = str2;
                                                    c1928rL = null;
                                                }
                                                str12 = c1235e5.f18437a;
                                                if (str12 != null) {
                                                    map = f18654j0;
                                                    if (map.containsKey(str12)) {
                                                        iIntValue = ((Integer) map.get(c1235e5.f18437a)).intValue();
                                                    } else {
                                                        iIntValue = -1;
                                                    }
                                                } else {
                                                    iIntValue = -1;
                                                }
                                                if (c1235e5.f18455s == 0) {
                                                    if (Float.compare(c1235e5.f18458v, 0.0f) == 0) {
                                                        iIntValue = 0;
                                                    } else if (Float.compare(c1235e5.f18458v, 90.0f) == 0) {
                                                        iIntValue = 90;
                                                    } else if (Float.compare(c1235e5.f18458v, -180.0f) != 0) {
                                                        iIntValue = 180;
                                                    } else {
                                                        iIntValue = 180;
                                                    }
                                                }
                                                k8.f14277r = c1235e5.f18449m;
                                                k8.f14278s = c1235e5.f18450n;
                                                k8.f14281v = f8;
                                                k8.f14280u = iIntValue;
                                                k8.f14282w = c1235e5.f18459w;
                                                k8.f14283x = c1235e5.f18460x;
                                                k8.f14284y = c1928rL;
                                                i17 = 2;
                                            } else {
                                                str2 = str2;
                                                str = str;
                                                if (org.videolan.libvlc.media.MediaPlayer.MEDIA_MIMETYPE_TEXT_SUBRIP.equals(str21)) {
                                                }
                                                i17 = 3;
                                            }
                                            str13 = c1235e5.f18437a;
                                            if (str13 != null) {
                                                k8.f14261b = c1235e5.f18437a;
                                            }
                                            k8.c(i36);
                                            k8.f(str21);
                                            k8.f14272m = i14;
                                            k8.f14263d = c1235e5.f18434X;
                                            k8.f14264e = i3111118;
                                            k8.f14274o = listSingletonList;
                                            k8.f14268i = str10;
                                            k8.f14275p = c1235e5.f18448l;
                                            C1804p0 c1804p17 = new C1804p0(k8);
                                            InterfaceC1234e0 interfaceC1234e0H18 = n8.h(c1235e5.f18439c, i17);
                                            c1235e5.f18435Y = interfaceC1234e0H18;
                                            interfaceC1234e0H18.d(c1804p17);
                                            sparseArray.put(c1235e5.f18439c, c1235e5);
                                            c1287f2 = c1287f4;
                                            c1235e1 = null;
                                            break;
                                        case 21:
                                            str21 = "audio/vnd.dts.hd";
                                            i14 = -1;
                                            listSingletonList = null;
                                            str10 = null;
                                            i15 = -1;
                                            if (c1235e5.f18425O != null) {
                                                str10 = jA2.f14099H;
                                                str21 = "video/dolby-vision";
                                            }
                                            boolean z118 = c1235e5.f18433W;
                                            if (true != c1235e5.f18432V) {
                                                i16 = 0;
                                            } else {
                                                i16 = 2;
                                            }
                                            int i31111111 = (z118 ? 1 : 0) | i16;
                                            k8 = new K();
                                            if ("audio".equals(AbstractC2140va.h(str21))) {
                                                k8.f14285z = c1235e5.f18426P;
                                                k8.f14253A = c1235e5.f18428R;
                                                k8.f14254B = i15;
                                                str2 = str2;
                                                str = str;
                                                i17 = 1;
                                            } else if (AbstractC2140va.g(str21)) {
                                                if (c1235e5.f18454r == 0) {
                                                    i21 = c1235e5.f18452p;
                                                    i18 = -1;
                                                    if (i21 == -1) {
                                                        i21 = c1235e5.f18449m;
                                                    }
                                                    c1235e5.f18452p = i21;
                                                    i22 = c1235e5.f18453q;
                                                    if (i22 == -1) {
                                                        i22 = c1235e5.f18450n;
                                                    }
                                                    c1235e5.f18453q = i22;
                                                } else {
                                                    i18 = -1;
                                                }
                                                i19 = c1235e5.f18452p;
                                                if (i19 != i18) {
                                                    f8 = -1.0f;
                                                } else {
                                                    f8 = -1.0f;
                                                }
                                                if (c1235e5.f18461y) {
                                                    if (c1235e5.f18415E != -1.0f) {
                                                        bArr2 = null;
                                                    } else {
                                                        bArr2 = null;
                                                    }
                                                    int i31111112 = c1235e5.f18462z;
                                                    int i31111113 = c1235e5.f18412B;
                                                    int i41116 = c1235e5.f18411A;
                                                    int i41117 = c1235e5.f18451o;
                                                    c1928rL = new C1928rL(i31111112, i31111113, i41116, bArr2, i41117, i41117);
                                                } else {
                                                    str2 = str2;
                                                    c1928rL = null;
                                                }
                                                str12 = c1235e5.f18437a;
                                                if (str12 != null) {
                                                    map = f18654j0;
                                                    if (map.containsKey(str12)) {
                                                        iIntValue = ((Integer) map.get(c1235e5.f18437a)).intValue();
                                                    } else {
                                                        iIntValue = -1;
                                                    }
                                                } else {
                                                    iIntValue = -1;
                                                }
                                                if (c1235e5.f18455s == 0) {
                                                    if (Float.compare(c1235e5.f18458v, 0.0f) == 0) {
                                                        iIntValue = 0;
                                                    } else if (Float.compare(c1235e5.f18458v, 90.0f) == 0) {
                                                        iIntValue = 90;
                                                    } else if (Float.compare(c1235e5.f18458v, -180.0f) != 0) {
                                                        iIntValue = 180;
                                                    } else {
                                                        iIntValue = 180;
                                                    }
                                                }
                                                k8.f14277r = c1235e5.f18449m;
                                                k8.f14278s = c1235e5.f18450n;
                                                k8.f14281v = f8;
                                                k8.f14280u = iIntValue;
                                                k8.f14282w = c1235e5.f18459w;
                                                k8.f14283x = c1235e5.f18460x;
                                                k8.f14284y = c1928rL;
                                                i17 = 2;
                                            } else {
                                                str2 = str2;
                                                str = str;
                                                if (org.videolan.libvlc.media.MediaPlayer.MEDIA_MIMETYPE_TEXT_SUBRIP.equals(str21)) {
                                                }
                                                i17 = 3;
                                            }
                                            str13 = c1235e5.f18437a;
                                            if (str13 != null) {
                                                k8.f14261b = c1235e5.f18437a;
                                            }
                                            k8.c(i36);
                                            k8.f(str21);
                                            k8.f14272m = i14;
                                            k8.f14263d = c1235e5.f18434X;
                                            k8.f14264e = i31111111;
                                            k8.f14274o = listSingletonList;
                                            k8.f14268i = str10;
                                            k8.f14275p = c1235e5.f18448l;
                                            C1804p0 c1804p18 = new C1804p0(k8);
                                            InterfaceC1234e0 interfaceC1234e0H19 = n8.h(c1235e5.f18439c, i17);
                                            c1235e5.f18435Y = interfaceC1234e0H19;
                                            interfaceC1234e0H19.d(c1804p18);
                                            sparseArray.put(c1235e5.f18439c, c1235e5);
                                            c1287f2 = c1287f4;
                                            c1235e1 = null;
                                            break;
                                        case 22:
                                            str21 = "audio/flac";
                                            listSingletonList = Collections.singletonList(c1235e5.a(str20));
                                            i14 = -1;
                                            str10 = null;
                                            i15 = -1;
                                            if (c1235e5.f18425O != null) {
                                                str10 = jA2.f14099H;
                                                str21 = "video/dolby-vision";
                                            }
                                            boolean z119 = c1235e5.f18433W;
                                            if (true != c1235e5.f18432V) {
                                                i16 = 0;
                                            } else {
                                                i16 = 2;
                                            }
                                            int i31111114 = (z119 ? 1 : 0) | i16;
                                            k8 = new K();
                                            if ("audio".equals(AbstractC2140va.h(str21))) {
                                                k8.f14285z = c1235e5.f18426P;
                                                k8.f14253A = c1235e5.f18428R;
                                                k8.f14254B = i15;
                                                str2 = str2;
                                                str = str;
                                                i17 = 1;
                                            } else if (AbstractC2140va.g(str21)) {
                                                if (c1235e5.f18454r == 0) {
                                                    i21 = c1235e5.f18452p;
                                                    i18 = -1;
                                                    if (i21 == -1) {
                                                        i21 = c1235e5.f18449m;
                                                    }
                                                    c1235e5.f18452p = i21;
                                                    i22 = c1235e5.f18453q;
                                                    if (i22 == -1) {
                                                        i22 = c1235e5.f18450n;
                                                    }
                                                    c1235e5.f18453q = i22;
                                                } else {
                                                    i18 = -1;
                                                }
                                                i19 = c1235e5.f18452p;
                                                if (i19 != i18) {
                                                    f8 = -1.0f;
                                                } else {
                                                    f8 = -1.0f;
                                                }
                                                if (c1235e5.f18461y) {
                                                    if (c1235e5.f18415E != -1.0f) {
                                                        bArr2 = null;
                                                    } else {
                                                        bArr2 = null;
                                                    }
                                                    int i31111115 = c1235e5.f18462z;
                                                    int i31111116 = c1235e5.f18412B;
                                                    int i41118 = c1235e5.f18411A;
                                                    int i41119 = c1235e5.f18451o;
                                                    c1928rL = new C1928rL(i31111115, i31111116, i41118, bArr2, i41119, i41119);
                                                } else {
                                                    str2 = str2;
                                                    c1928rL = null;
                                                }
                                                str12 = c1235e5.f18437a;
                                                if (str12 != null) {
                                                    map = f18654j0;
                                                    if (map.containsKey(str12)) {
                                                        iIntValue = ((Integer) map.get(c1235e5.f18437a)).intValue();
                                                    } else {
                                                        iIntValue = -1;
                                                    }
                                                } else {
                                                    iIntValue = -1;
                                                }
                                                if (c1235e5.f18455s == 0) {
                                                    if (Float.compare(c1235e5.f18458v, 0.0f) == 0) {
                                                        iIntValue = 0;
                                                    } else if (Float.compare(c1235e5.f18458v, 90.0f) == 0) {
                                                        iIntValue = 90;
                                                    } else if (Float.compare(c1235e5.f18458v, -180.0f) != 0) {
                                                        iIntValue = 180;
                                                    } else {
                                                        iIntValue = 180;
                                                    }
                                                }
                                                k8.f14277r = c1235e5.f18449m;
                                                k8.f14278s = c1235e5.f18450n;
                                                k8.f14281v = f8;
                                                k8.f14280u = iIntValue;
                                                k8.f14282w = c1235e5.f18459w;
                                                k8.f14283x = c1235e5.f18460x;
                                                k8.f14284y = c1928rL;
                                                i17 = 2;
                                            } else {
                                                str2 = str2;
                                                str = str;
                                                if (org.videolan.libvlc.media.MediaPlayer.MEDIA_MIMETYPE_TEXT_SUBRIP.equals(str21)) {
                                                }
                                                i17 = 3;
                                            }
                                            str13 = c1235e5.f18437a;
                                            if (str13 != null) {
                                                k8.f14261b = c1235e5.f18437a;
                                            }
                                            k8.c(i36);
                                            k8.f(str21);
                                            k8.f14272m = i14;
                                            k8.f14263d = c1235e5.f18434X;
                                            k8.f14264e = i31111114;
                                            k8.f14274o = listSingletonList;
                                            k8.f14268i = str10;
                                            k8.f14275p = c1235e5.f18448l;
                                            C1804p0 c1804p19 = new C1804p0(k8);
                                            InterfaceC1234e0 interfaceC1234e0H110 = n8.h(c1235e5.f18439c, i17);
                                            c1235e5.f18435Y = interfaceC1234e0H110;
                                            interfaceC1234e0H110.d(c1804p19);
                                            sparseArray.put(c1235e5.f18439c, c1235e5);
                                            c1287f2 = c1287f4;
                                            c1235e1 = null;
                                            break;
                                        case 23:
                                            C1534jr c1534jr2 = new C1534jr(c1235e5.a(c1235e5.f18438b));
                                            try {
                                                int iU = c1534jr2.u();
                                                if (iU != 1) {
                                                    if (iU == 65534) {
                                                        c1534jr2.j(24);
                                                        long jD = c1534jr2.D();
                                                        UUID uuid = f18653i0;
                                                        if (jD != uuid.getMostSignificantBits() || c1534jr2.D() != uuid.getLeastSignificantBits()) {
                                                        }
                                                        str21 = "audio/x-unknown";
                                                        i14 = -1;
                                                        listSingletonList = null;
                                                        str10 = null;
                                                        i15 = -1;
                                                        if (c1235e5.f18425O != null) {
                                                            str10 = jA2.f14099H;
                                                            str21 = "video/dolby-vision";
                                                        }
                                                        boolean z1110 = c1235e5.f18433W;
                                                        if (true != c1235e5.f18432V) {
                                                            i16 = 0;
                                                        } else {
                                                            i16 = 2;
                                                        }
                                                        int i31111117 = (z1110 ? 1 : 0) | i16;
                                                        k8 = new K();
                                                        if ("audio".equals(AbstractC2140va.h(str21))) {
                                                            k8.f14285z = c1235e5.f18426P;
                                                            k8.f14253A = c1235e5.f18428R;
                                                            k8.f14254B = i15;
                                                            str2 = str2;
                                                            str = str;
                                                            i17 = 1;
                                                        } else if (AbstractC2140va.g(str21)) {
                                                            if (c1235e5.f18454r == 0) {
                                                                i21 = c1235e5.f18452p;
                                                                i18 = -1;
                                                                if (i21 == -1) {
                                                                    i21 = c1235e5.f18449m;
                                                                }
                                                                c1235e5.f18452p = i21;
                                                                i22 = c1235e5.f18453q;
                                                                if (i22 == -1) {
                                                                    i22 = c1235e5.f18450n;
                                                                }
                                                                c1235e5.f18453q = i22;
                                                            } else {
                                                                i18 = -1;
                                                            }
                                                            i19 = c1235e5.f18452p;
                                                            if (i19 != i18) {
                                                                f8 = -1.0f;
                                                            } else {
                                                                f8 = -1.0f;
                                                            }
                                                            if (c1235e5.f18461y) {
                                                                if (c1235e5.f18415E != -1.0f) {
                                                                    bArr2 = null;
                                                                } else {
                                                                    bArr2 = null;
                                                                }
                                                                int i31111118 = c1235e5.f18462z;
                                                                int i31111119 = c1235e5.f18412B;
                                                                int i411110 = c1235e5.f18411A;
                                                                int i411111 = c1235e5.f18451o;
                                                                c1928rL = new C1928rL(i31111118, i31111119, i411110, bArr2, i411111, i411111);
                                                            } else {
                                                                str2 = str2;
                                                                c1928rL = null;
                                                            }
                                                            str12 = c1235e5.f18437a;
                                                            if (str12 != null) {
                                                                map = f18654j0;
                                                                if (map.containsKey(str12)) {
                                                                    iIntValue = ((Integer) map.get(c1235e5.f18437a)).intValue();
                                                                } else {
                                                                    iIntValue = -1;
                                                                }
                                                            } else {
                                                                iIntValue = -1;
                                                            }
                                                            if (c1235e5.f18455s == 0) {
                                                                if (Float.compare(c1235e5.f18458v, 0.0f) == 0) {
                                                                    iIntValue = 0;
                                                                } else if (Float.compare(c1235e5.f18458v, 90.0f) == 0) {
                                                                    iIntValue = 90;
                                                                } else if (Float.compare(c1235e5.f18458v, -180.0f) != 0) {
                                                                    iIntValue = 180;
                                                                } else {
                                                                    iIntValue = 180;
                                                                }
                                                            }
                                                            k8.f14277r = c1235e5.f18449m;
                                                            k8.f14278s = c1235e5.f18450n;
                                                            k8.f14281v = f8;
                                                            k8.f14280u = iIntValue;
                                                            k8.f14282w = c1235e5.f18459w;
                                                            k8.f14283x = c1235e5.f18460x;
                                                            k8.f14284y = c1928rL;
                                                            i17 = 2;
                                                        } else {
                                                            str2 = str2;
                                                            str = str;
                                                            if (org.videolan.libvlc.media.MediaPlayer.MEDIA_MIMETYPE_TEXT_SUBRIP.equals(str21)) {
                                                            }
                                                            i17 = 3;
                                                        }
                                                        str13 = c1235e5.f18437a;
                                                        if (str13 != null) {
                                                            k8.f14261b = c1235e5.f18437a;
                                                        }
                                                        k8.c(i36);
                                                        k8.f(str21);
                                                        k8.f14272m = i14;
                                                        k8.f14263d = c1235e5.f18434X;
                                                        k8.f14264e = i31111117;
                                                        k8.f14274o = listSingletonList;
                                                        k8.f14268i = str10;
                                                        k8.f14275p = c1235e5.f18448l;
                                                        C1804p0 c1804p110 = new C1804p0(k8);
                                                        InterfaceC1234e0 interfaceC1234e0H111 = n8.h(c1235e5.f18439c, i17);
                                                        c1235e5.f18435Y = interfaceC1234e0H111;
                                                        interfaceC1234e0H111.d(c1804p110);
                                                        sparseArray.put(c1235e5.f18439c, c1235e5);
                                                        c1287f2 = c1287f4;
                                                        c1235e1 = null;
                                                        break;
                                                    }
                                                    Zo.f("MatroskaExtractor", "Non-PCM MS/ACM is unsupported. Setting mimeType to audio/x-unknown");
                                                    str21 = "audio/x-unknown";
                                                    i14 = -1;
                                                    listSingletonList = null;
                                                    str10 = null;
                                                    i15 = -1;
                                                    if (c1235e5.f18425O != null) {
                                                        str10 = jA2.f14099H;
                                                        str21 = "video/dolby-vision";
                                                    }
                                                    boolean z1111 = c1235e5.f18433W;
                                                    if (true != c1235e5.f18432V) {
                                                        i16 = 0;
                                                    } else {
                                                        i16 = 2;
                                                    }
                                                    int i311111110 = (z1111 ? 1 : 0) | i16;
                                                    k8 = new K();
                                                    if ("audio".equals(AbstractC2140va.h(str21))) {
                                                        k8.f14285z = c1235e5.f18426P;
                                                        k8.f14253A = c1235e5.f18428R;
                                                        k8.f14254B = i15;
                                                        str2 = str2;
                                                        str = str;
                                                        i17 = 1;
                                                    } else if (AbstractC2140va.g(str21)) {
                                                        if (c1235e5.f18454r == 0) {
                                                            i21 = c1235e5.f18452p;
                                                            i18 = -1;
                                                            if (i21 == -1) {
                                                                i21 = c1235e5.f18449m;
                                                            }
                                                            c1235e5.f18452p = i21;
                                                            i22 = c1235e5.f18453q;
                                                            if (i22 == -1) {
                                                                i22 = c1235e5.f18450n;
                                                            }
                                                            c1235e5.f18453q = i22;
                                                        } else {
                                                            i18 = -1;
                                                        }
                                                        i19 = c1235e5.f18452p;
                                                        if (i19 != i18) {
                                                            f8 = -1.0f;
                                                        } else {
                                                            f8 = -1.0f;
                                                        }
                                                        if (c1235e5.f18461y) {
                                                            if (c1235e5.f18415E != -1.0f) {
                                                                bArr2 = null;
                                                            } else {
                                                                bArr2 = null;
                                                            }
                                                            int i311111111 = c1235e5.f18462z;
                                                            int i311111112 = c1235e5.f18412B;
                                                            int i411112 = c1235e5.f18411A;
                                                            int i411113 = c1235e5.f18451o;
                                                            c1928rL = new C1928rL(i311111111, i311111112, i411112, bArr2, i411113, i411113);
                                                        } else {
                                                            str2 = str2;
                                                            c1928rL = null;
                                                        }
                                                        str12 = c1235e5.f18437a;
                                                        if (str12 != null) {
                                                            map = f18654j0;
                                                            if (map.containsKey(str12)) {
                                                                iIntValue = ((Integer) map.get(c1235e5.f18437a)).intValue();
                                                            } else {
                                                                iIntValue = -1;
                                                            }
                                                        } else {
                                                            iIntValue = -1;
                                                        }
                                                        if (c1235e5.f18455s == 0) {
                                                            if (Float.compare(c1235e5.f18458v, 0.0f) == 0) {
                                                                iIntValue = 0;
                                                            } else if (Float.compare(c1235e5.f18458v, 90.0f) == 0) {
                                                                iIntValue = 90;
                                                            } else if (Float.compare(c1235e5.f18458v, -180.0f) != 0) {
                                                                iIntValue = 180;
                                                            } else {
                                                                iIntValue = 180;
                                                            }
                                                        }
                                                        k8.f14277r = c1235e5.f18449m;
                                                        k8.f14278s = c1235e5.f18450n;
                                                        k8.f14281v = f8;
                                                        k8.f14280u = iIntValue;
                                                        k8.f14282w = c1235e5.f18459w;
                                                        k8.f14283x = c1235e5.f18460x;
                                                        k8.f14284y = c1928rL;
                                                        i17 = 2;
                                                    } else {
                                                        str2 = str2;
                                                        str = str;
                                                        if (org.videolan.libvlc.media.MediaPlayer.MEDIA_MIMETYPE_TEXT_SUBRIP.equals(str21)) {
                                                        }
                                                        i17 = 3;
                                                    }
                                                    str13 = c1235e5.f18437a;
                                                    if (str13 != null) {
                                                        k8.f14261b = c1235e5.f18437a;
                                                    }
                                                    k8.c(i36);
                                                    k8.f(str21);
                                                    k8.f14272m = i14;
                                                    k8.f14263d = c1235e5.f18434X;
                                                    k8.f14264e = i311111110;
                                                    k8.f14274o = listSingletonList;
                                                    k8.f14268i = str10;
                                                    k8.f14275p = c1235e5.f18448l;
                                                    C1804p0 c1804p111 = new C1804p0(k8);
                                                    InterfaceC1234e0 interfaceC1234e0H112 = n8.h(c1235e5.f18439c, i17);
                                                    c1235e5.f18435Y = interfaceC1234e0H112;
                                                    interfaceC1234e0H112.d(c1804p111);
                                                    sparseArray.put(c1235e5.f18439c, c1235e5);
                                                    c1287f2 = c1287f4;
                                                    c1235e1 = null;
                                                    break;
                                                }
                                                int iR = Et.r(c1235e5.f18427Q);
                                                if (iR == 0) {
                                                    Zo.f("MatroskaExtractor", "Unsupported PCM bit depth: " + c1235e5.f18427Q + ". Setting mimeType to audio/x-unknown");
                                                    str21 = "audio/x-unknown";
                                                    i14 = -1;
                                                    listSingletonList = null;
                                                    str10 = null;
                                                    i15 = -1;
                                                } else {
                                                    i15 = iR;
                                                    i14 = -1;
                                                    listSingletonList = null;
                                                    str10 = null;
                                                }
                                                if (c1235e5.f18425O != null) {
                                                    str10 = jA2.f14099H;
                                                    str21 = "video/dolby-vision";
                                                }
                                                boolean z1112 = c1235e5.f18433W;
                                                if (true != c1235e5.f18432V) {
                                                    i16 = 0;
                                                } else {
                                                    i16 = 2;
                                                }
                                                int i311111113 = (z1112 ? 1 : 0) | i16;
                                                k8 = new K();
                                                if ("audio".equals(AbstractC2140va.h(str21))) {
                                                    k8.f14285z = c1235e5.f18426P;
                                                    k8.f14253A = c1235e5.f18428R;
                                                    k8.f14254B = i15;
                                                    str2 = str2;
                                                    str = str;
                                                    i17 = 1;
                                                } else if (AbstractC2140va.g(str21)) {
                                                    if (c1235e5.f18454r == 0) {
                                                        i21 = c1235e5.f18452p;
                                                        i18 = -1;
                                                        if (i21 == -1) {
                                                            i21 = c1235e5.f18449m;
                                                        }
                                                        c1235e5.f18452p = i21;
                                                        i22 = c1235e5.f18453q;
                                                        if (i22 == -1) {
                                                            i22 = c1235e5.f18450n;
                                                        }
                                                        c1235e5.f18453q = i22;
                                                    } else {
                                                        i18 = -1;
                                                    }
                                                    i19 = c1235e5.f18452p;
                                                    if (i19 != i18) {
                                                        f8 = -1.0f;
                                                    } else {
                                                        f8 = -1.0f;
                                                    }
                                                    if (c1235e5.f18461y) {
                                                        if (c1235e5.f18415E != -1.0f) {
                                                            bArr2 = null;
                                                        } else {
                                                            bArr2 = null;
                                                        }
                                                        int i311111114 = c1235e5.f18462z;
                                                        int i311111115 = c1235e5.f18412B;
                                                        int i411114 = c1235e5.f18411A;
                                                        int i411115 = c1235e5.f18451o;
                                                        c1928rL = new C1928rL(i311111114, i311111115, i411114, bArr2, i411115, i411115);
                                                    } else {
                                                        str2 = str2;
                                                        c1928rL = null;
                                                    }
                                                    str12 = c1235e5.f18437a;
                                                    if (str12 != null) {
                                                        map = f18654j0;
                                                        if (map.containsKey(str12)) {
                                                            iIntValue = ((Integer) map.get(c1235e5.f18437a)).intValue();
                                                        } else {
                                                            iIntValue = -1;
                                                        }
                                                    } else {
                                                        iIntValue = -1;
                                                    }
                                                    if (c1235e5.f18455s == 0) {
                                                        if (Float.compare(c1235e5.f18458v, 0.0f) == 0) {
                                                            iIntValue = 0;
                                                        } else if (Float.compare(c1235e5.f18458v, 90.0f) == 0) {
                                                            iIntValue = 90;
                                                        } else if (Float.compare(c1235e5.f18458v, -180.0f) != 0) {
                                                            iIntValue = 180;
                                                        } else {
                                                            iIntValue = 180;
                                                        }
                                                    }
                                                    k8.f14277r = c1235e5.f18449m;
                                                    k8.f14278s = c1235e5.f18450n;
                                                    k8.f14281v = f8;
                                                    k8.f14280u = iIntValue;
                                                    k8.f14282w = c1235e5.f18459w;
                                                    k8.f14283x = c1235e5.f18460x;
                                                    k8.f14284y = c1928rL;
                                                    i17 = 2;
                                                } else {
                                                    str2 = str2;
                                                    str = str;
                                                    if (org.videolan.libvlc.media.MediaPlayer.MEDIA_MIMETYPE_TEXT_SUBRIP.equals(str21)) {
                                                    }
                                                    i17 = 3;
                                                }
                                                str13 = c1235e5.f18437a;
                                                if (str13 != null) {
                                                    k8.f14261b = c1235e5.f18437a;
                                                }
                                                k8.c(i36);
                                                k8.f(str21);
                                                k8.f14272m = i14;
                                                k8.f14263d = c1235e5.f18434X;
                                                k8.f14264e = i311111113;
                                                k8.f14274o = listSingletonList;
                                                k8.f14268i = str10;
                                                k8.f14275p = c1235e5.f18448l;
                                                C1804p0 c1804p112 = new C1804p0(k8);
                                                InterfaceC1234e0 interfaceC1234e0H113 = n8.h(c1235e5.f18439c, i17);
                                                c1235e5.f18435Y = interfaceC1234e0H113;
                                                interfaceC1234e0H113.d(c1804p112);
                                                sparseArray.put(c1235e5.f18439c, c1235e5);
                                                c1287f2 = c1287f4;
                                                c1235e1 = null;
                                            } catch (ArrayIndexOutOfBoundsException unused6) {
                                                throw C0800Ka.a("Error parsing MS/ACM codec private", null);
                                            }
                                            break;
                                        case 24:
                                            int iR2 = Et.r(c1235e5.f18427Q);
                                            if (iR2 == 0) {
                                                Zo.f("MatroskaExtractor", "Unsupported little endian PCM bit depth: " + c1235e5.f18427Q + ". Setting mimeType to audio/x-unknown");
                                                str21 = "audio/x-unknown";
                                                i14 = -1;
                                                listSingletonList = null;
                                                str10 = null;
                                                i15 = -1;
                                            } else {
                                                i15 = iR2;
                                                i14 = -1;
                                                listSingletonList = null;
                                                str10 = null;
                                            }
                                            if (c1235e5.f18425O != null) {
                                                str10 = jA2.f14099H;
                                                str21 = "video/dolby-vision";
                                            }
                                            boolean z1113 = c1235e5.f18433W;
                                            if (true != c1235e5.f18432V) {
                                                i16 = 0;
                                            } else {
                                                i16 = 2;
                                            }
                                            int i311111116 = (z1113 ? 1 : 0) | i16;
                                            k8 = new K();
                                            if ("audio".equals(AbstractC2140va.h(str21))) {
                                                k8.f14285z = c1235e5.f18426P;
                                                k8.f14253A = c1235e5.f18428R;
                                                k8.f14254B = i15;
                                                str2 = str2;
                                                str = str;
                                                i17 = 1;
                                            } else if (AbstractC2140va.g(str21)) {
                                                if (c1235e5.f18454r == 0) {
                                                    i21 = c1235e5.f18452p;
                                                    i18 = -1;
                                                    if (i21 == -1) {
                                                        i21 = c1235e5.f18449m;
                                                    }
                                                    c1235e5.f18452p = i21;
                                                    i22 = c1235e5.f18453q;
                                                    if (i22 == -1) {
                                                        i22 = c1235e5.f18450n;
                                                    }
                                                    c1235e5.f18453q = i22;
                                                } else {
                                                    i18 = -1;
                                                }
                                                i19 = c1235e5.f18452p;
                                                if (i19 != i18) {
                                                    f8 = -1.0f;
                                                } else {
                                                    f8 = -1.0f;
                                                }
                                                if (c1235e5.f18461y) {
                                                    if (c1235e5.f18415E != -1.0f) {
                                                        bArr2 = null;
                                                    } else {
                                                        bArr2 = null;
                                                    }
                                                    int i311111117 = c1235e5.f18462z;
                                                    int i311111118 = c1235e5.f18412B;
                                                    int i411116 = c1235e5.f18411A;
                                                    int i411117 = c1235e5.f18451o;
                                                    c1928rL = new C1928rL(i311111117, i311111118, i411116, bArr2, i411117, i411117);
                                                } else {
                                                    str2 = str2;
                                                    c1928rL = null;
                                                }
                                                str12 = c1235e5.f18437a;
                                                if (str12 != null) {
                                                    map = f18654j0;
                                                    if (map.containsKey(str12)) {
                                                        iIntValue = ((Integer) map.get(c1235e5.f18437a)).intValue();
                                                    } else {
                                                        iIntValue = -1;
                                                    }
                                                } else {
                                                    iIntValue = -1;
                                                }
                                                if (c1235e5.f18455s == 0) {
                                                    if (Float.compare(c1235e5.f18458v, 0.0f) == 0) {
                                                        iIntValue = 0;
                                                    } else if (Float.compare(c1235e5.f18458v, 90.0f) == 0) {
                                                        iIntValue = 90;
                                                    } else if (Float.compare(c1235e5.f18458v, -180.0f) != 0) {
                                                        iIntValue = 180;
                                                    } else {
                                                        iIntValue = 180;
                                                    }
                                                }
                                                k8.f14277r = c1235e5.f18449m;
                                                k8.f14278s = c1235e5.f18450n;
                                                k8.f14281v = f8;
                                                k8.f14280u = iIntValue;
                                                k8.f14282w = c1235e5.f18459w;
                                                k8.f14283x = c1235e5.f18460x;
                                                k8.f14284y = c1928rL;
                                                i17 = 2;
                                            } else {
                                                str2 = str2;
                                                str = str;
                                                if (org.videolan.libvlc.media.MediaPlayer.MEDIA_MIMETYPE_TEXT_SUBRIP.equals(str21)) {
                                                }
                                                i17 = 3;
                                            }
                                            str13 = c1235e5.f18437a;
                                            if (str13 != null) {
                                                k8.f14261b = c1235e5.f18437a;
                                            }
                                            k8.c(i36);
                                            k8.f(str21);
                                            k8.f14272m = i14;
                                            k8.f14263d = c1235e5.f18434X;
                                            k8.f14264e = i311111116;
                                            k8.f14274o = listSingletonList;
                                            k8.f14268i = str10;
                                            k8.f14275p = c1235e5.f18448l;
                                            C1804p0 c1804p113 = new C1804p0(k8);
                                            InterfaceC1234e0 interfaceC1234e0H114 = n8.h(c1235e5.f18439c, i17);
                                            c1235e5.f18435Y = interfaceC1234e0H114;
                                            interfaceC1234e0H114.d(c1804p113);
                                            sparseArray.put(c1235e5.f18439c, c1235e5);
                                            c1287f2 = c1287f4;
                                            c1235e1 = null;
                                            break;
                                        case 25:
                                            int i63 = c1235e5.f18427Q;
                                            if (i63 == 8) {
                                                i14 = -1;
                                                listSingletonList = null;
                                                str10 = null;
                                                i15 = 3;
                                            } else if (i63 == 16) {
                                                i14 = -1;
                                                listSingletonList = null;
                                                str10 = null;
                                                i15 = 268435456;
                                            } else if (i63 == 24) {
                                                i14 = -1;
                                                listSingletonList = null;
                                                str10 = null;
                                                i15 = 1342177280;
                                            } else if (i63 == 32) {
                                                i14 = -1;
                                                listSingletonList = null;
                                                str10 = null;
                                                i15 = 1610612736;
                                            } else {
                                                Zo.f("MatroskaExtractor", "Unsupported big endian PCM bit depth: " + i63 + ". Setting mimeType to audio/x-unknown");
                                                str21 = "audio/x-unknown";
                                                i14 = -1;
                                                listSingletonList = null;
                                                str10 = null;
                                                i15 = -1;
                                            }
                                            if (c1235e5.f18425O != null) {
                                                str10 = jA2.f14099H;
                                                str21 = "video/dolby-vision";
                                            }
                                            boolean z1114 = c1235e5.f18433W;
                                            if (true != c1235e5.f18432V) {
                                                i16 = 0;
                                            } else {
                                                i16 = 2;
                                            }
                                            int i311111119 = (z1114 ? 1 : 0) | i16;
                                            k8 = new K();
                                            if ("audio".equals(AbstractC2140va.h(str21))) {
                                                k8.f14285z = c1235e5.f18426P;
                                                k8.f14253A = c1235e5.f18428R;
                                                k8.f14254B = i15;
                                                str2 = str2;
                                                str = str;
                                                i17 = 1;
                                            } else if (AbstractC2140va.g(str21)) {
                                                if (c1235e5.f18454r == 0) {
                                                    i21 = c1235e5.f18452p;
                                                    i18 = -1;
                                                    if (i21 == -1) {
                                                        i21 = c1235e5.f18449m;
                                                    }
                                                    c1235e5.f18452p = i21;
                                                    i22 = c1235e5.f18453q;
                                                    if (i22 == -1) {
                                                        i22 = c1235e5.f18450n;
                                                    }
                                                    c1235e5.f18453q = i22;
                                                } else {
                                                    i18 = -1;
                                                }
                                                i19 = c1235e5.f18452p;
                                                if (i19 != i18) {
                                                    f8 = -1.0f;
                                                } else {
                                                    f8 = -1.0f;
                                                }
                                                if (c1235e5.f18461y) {
                                                    if (c1235e5.f18415E != -1.0f) {
                                                        bArr2 = null;
                                                    } else {
                                                        bArr2 = null;
                                                    }
                                                    int i3111111110 = c1235e5.f18462z;
                                                    int i3111111111 = c1235e5.f18412B;
                                                    int i411118 = c1235e5.f18411A;
                                                    int i411119 = c1235e5.f18451o;
                                                    c1928rL = new C1928rL(i3111111110, i3111111111, i411118, bArr2, i411119, i411119);
                                                } else {
                                                    str2 = str2;
                                                    c1928rL = null;
                                                }
                                                str12 = c1235e5.f18437a;
                                                if (str12 != null) {
                                                    map = f18654j0;
                                                    if (map.containsKey(str12)) {
                                                        iIntValue = ((Integer) map.get(c1235e5.f18437a)).intValue();
                                                    } else {
                                                        iIntValue = -1;
                                                    }
                                                } else {
                                                    iIntValue = -1;
                                                }
                                                if (c1235e5.f18455s == 0) {
                                                    if (Float.compare(c1235e5.f18458v, 0.0f) == 0) {
                                                        iIntValue = 0;
                                                    } else if (Float.compare(c1235e5.f18458v, 90.0f) == 0) {
                                                        iIntValue = 90;
                                                    } else if (Float.compare(c1235e5.f18458v, -180.0f) != 0) {
                                                        iIntValue = 180;
                                                    } else {
                                                        iIntValue = 180;
                                                    }
                                                }
                                                k8.f14277r = c1235e5.f18449m;
                                                k8.f14278s = c1235e5.f18450n;
                                                k8.f14281v = f8;
                                                k8.f14280u = iIntValue;
                                                k8.f14282w = c1235e5.f18459w;
                                                k8.f14283x = c1235e5.f18460x;
                                                k8.f14284y = c1928rL;
                                                i17 = 2;
                                            } else {
                                                str2 = str2;
                                                str = str;
                                                if (org.videolan.libvlc.media.MediaPlayer.MEDIA_MIMETYPE_TEXT_SUBRIP.equals(str21)) {
                                                }
                                                i17 = 3;
                                            }
                                            str13 = c1235e5.f18437a;
                                            if (str13 != null) {
                                                k8.f14261b = c1235e5.f18437a;
                                            }
                                            k8.c(i36);
                                            k8.f(str21);
                                            k8.f14272m = i14;
                                            k8.f14263d = c1235e5.f18434X;
                                            k8.f14264e = i311111119;
                                            k8.f14274o = listSingletonList;
                                            k8.f14268i = str10;
                                            k8.f14275p = c1235e5.f18448l;
                                            C1804p0 c1804p114 = new C1804p0(k8);
                                            InterfaceC1234e0 interfaceC1234e0H115 = n8.h(c1235e5.f18439c, i17);
                                            c1235e5.f18435Y = interfaceC1234e0H115;
                                            interfaceC1234e0H115.d(c1804p114);
                                            sparseArray.put(c1235e5.f18439c, c1235e5);
                                            c1287f2 = c1287f4;
                                            c1235e1 = null;
                                            break;
                                        case Service.BILLING_FIELD_NUMBER /* 26 */:
                                            int i64 = c1235e5.f18427Q;
                                            if (i64 == 32) {
                                                i14 = -1;
                                                listSingletonList = null;
                                                str10 = null;
                                                i15 = 4;
                                            } else {
                                                Zo.f("MatroskaExtractor", "Unsupported floating point PCM bit depth: " + i64 + ". Setting mimeType to audio/x-unknown");
                                                str21 = "audio/x-unknown";
                                                i14 = -1;
                                                listSingletonList = null;
                                                str10 = null;
                                                i15 = -1;
                                            }
                                            if (c1235e5.f18425O != null) {
                                                str10 = jA2.f14099H;
                                                str21 = "video/dolby-vision";
                                            }
                                            boolean z1115 = c1235e5.f18433W;
                                            if (true != c1235e5.f18432V) {
                                                i16 = 0;
                                            } else {
                                                i16 = 2;
                                            }
                                            int i3111111112 = (z1115 ? 1 : 0) | i16;
                                            k8 = new K();
                                            if ("audio".equals(AbstractC2140va.h(str21))) {
                                                k8.f14285z = c1235e5.f18426P;
                                                k8.f14253A = c1235e5.f18428R;
                                                k8.f14254B = i15;
                                                str2 = str2;
                                                str = str;
                                                i17 = 1;
                                            } else if (AbstractC2140va.g(str21)) {
                                                if (c1235e5.f18454r == 0) {
                                                    i21 = c1235e5.f18452p;
                                                    i18 = -1;
                                                    if (i21 == -1) {
                                                        i21 = c1235e5.f18449m;
                                                    }
                                                    c1235e5.f18452p = i21;
                                                    i22 = c1235e5.f18453q;
                                                    if (i22 == -1) {
                                                        i22 = c1235e5.f18450n;
                                                    }
                                                    c1235e5.f18453q = i22;
                                                } else {
                                                    i18 = -1;
                                                }
                                                i19 = c1235e5.f18452p;
                                                if (i19 != i18) {
                                                    f8 = -1.0f;
                                                } else {
                                                    f8 = -1.0f;
                                                }
                                                if (c1235e5.f18461y) {
                                                    if (c1235e5.f18415E != -1.0f) {
                                                        bArr2 = null;
                                                    } else {
                                                        bArr2 = null;
                                                    }
                                                    int i3111111113 = c1235e5.f18462z;
                                                    int i3111111114 = c1235e5.f18412B;
                                                    int i4111110 = c1235e5.f18411A;
                                                    int i4111111 = c1235e5.f18451o;
                                                    c1928rL = new C1928rL(i3111111113, i3111111114, i4111110, bArr2, i4111111, i4111111);
                                                } else {
                                                    str2 = str2;
                                                    c1928rL = null;
                                                }
                                                str12 = c1235e5.f18437a;
                                                if (str12 != null) {
                                                    map = f18654j0;
                                                    if (map.containsKey(str12)) {
                                                        iIntValue = ((Integer) map.get(c1235e5.f18437a)).intValue();
                                                    } else {
                                                        iIntValue = -1;
                                                    }
                                                } else {
                                                    iIntValue = -1;
                                                }
                                                if (c1235e5.f18455s == 0) {
                                                    if (Float.compare(c1235e5.f18458v, 0.0f) == 0) {
                                                        iIntValue = 0;
                                                    } else if (Float.compare(c1235e5.f18458v, 90.0f) == 0) {
                                                        iIntValue = 90;
                                                    } else if (Float.compare(c1235e5.f18458v, -180.0f) != 0) {
                                                        iIntValue = 180;
                                                    } else {
                                                        iIntValue = 180;
                                                    }
                                                }
                                                k8.f14277r = c1235e5.f18449m;
                                                k8.f14278s = c1235e5.f18450n;
                                                k8.f14281v = f8;
                                                k8.f14280u = iIntValue;
                                                k8.f14282w = c1235e5.f18459w;
                                                k8.f14283x = c1235e5.f18460x;
                                                k8.f14284y = c1928rL;
                                                i17 = 2;
                                            } else {
                                                str2 = str2;
                                                str = str;
                                                if (org.videolan.libvlc.media.MediaPlayer.MEDIA_MIMETYPE_TEXT_SUBRIP.equals(str21)) {
                                                }
                                                i17 = 3;
                                            }
                                            str13 = c1235e5.f18437a;
                                            if (str13 != null) {
                                                k8.f14261b = c1235e5.f18437a;
                                            }
                                            k8.c(i36);
                                            k8.f(str21);
                                            k8.f14272m = i14;
                                            k8.f14263d = c1235e5.f18434X;
                                            k8.f14264e = i3111111112;
                                            k8.f14274o = listSingletonList;
                                            k8.f14268i = str10;
                                            k8.f14275p = c1235e5.f18448l;
                                            C1804p0 c1804p115 = new C1804p0(k8);
                                            InterfaceC1234e0 interfaceC1234e0H116 = n8.h(c1235e5.f18439c, i17);
                                            c1235e5.f18435Y = interfaceC1234e0H116;
                                            interfaceC1234e0H116.d(c1804p115);
                                            sparseArray.put(c1235e5.f18439c, c1235e5);
                                            c1287f2 = c1287f4;
                                            c1235e1 = null;
                                            break;
                                        case 27:
                                            str21 = org.videolan.libvlc.media.MediaPlayer.MEDIA_MIMETYPE_TEXT_SUBRIP;
                                            i14 = -1;
                                            listSingletonList = null;
                                            str10 = null;
                                            i15 = -1;
                                            if (c1235e5.f18425O != null) {
                                                str10 = jA2.f14099H;
                                                str21 = "video/dolby-vision";
                                            }
                                            boolean z1116 = c1235e5.f18433W;
                                            if (true != c1235e5.f18432V) {
                                                i16 = 0;
                                            } else {
                                                i16 = 2;
                                            }
                                            int i3111111115 = (z1116 ? 1 : 0) | i16;
                                            k8 = new K();
                                            if ("audio".equals(AbstractC2140va.h(str21))) {
                                                k8.f14285z = c1235e5.f18426P;
                                                k8.f14253A = c1235e5.f18428R;
                                                k8.f14254B = i15;
                                                str2 = str2;
                                                str = str;
                                                i17 = 1;
                                            } else if (AbstractC2140va.g(str21)) {
                                                if (c1235e5.f18454r == 0) {
                                                    i21 = c1235e5.f18452p;
                                                    i18 = -1;
                                                    if (i21 == -1) {
                                                        i21 = c1235e5.f18449m;
                                                    }
                                                    c1235e5.f18452p = i21;
                                                    i22 = c1235e5.f18453q;
                                                    if (i22 == -1) {
                                                        i22 = c1235e5.f18450n;
                                                    }
                                                    c1235e5.f18453q = i22;
                                                } else {
                                                    i18 = -1;
                                                }
                                                i19 = c1235e5.f18452p;
                                                if (i19 != i18) {
                                                    f8 = -1.0f;
                                                } else {
                                                    f8 = -1.0f;
                                                }
                                                if (c1235e5.f18461y) {
                                                    if (c1235e5.f18415E != -1.0f) {
                                                        bArr2 = null;
                                                    } else {
                                                        bArr2 = null;
                                                    }
                                                    int i3111111116 = c1235e5.f18462z;
                                                    int i3111111117 = c1235e5.f18412B;
                                                    int i4111112 = c1235e5.f18411A;
                                                    int i4111113 = c1235e5.f18451o;
                                                    c1928rL = new C1928rL(i3111111116, i3111111117, i4111112, bArr2, i4111113, i4111113);
                                                } else {
                                                    str2 = str2;
                                                    c1928rL = null;
                                                }
                                                str12 = c1235e5.f18437a;
                                                if (str12 != null) {
                                                    map = f18654j0;
                                                    if (map.containsKey(str12)) {
                                                        iIntValue = ((Integer) map.get(c1235e5.f18437a)).intValue();
                                                    } else {
                                                        iIntValue = -1;
                                                    }
                                                } else {
                                                    iIntValue = -1;
                                                }
                                                if (c1235e5.f18455s == 0) {
                                                    if (Float.compare(c1235e5.f18458v, 0.0f) == 0) {
                                                        iIntValue = 0;
                                                    } else if (Float.compare(c1235e5.f18458v, 90.0f) == 0) {
                                                        iIntValue = 90;
                                                    } else if (Float.compare(c1235e5.f18458v, -180.0f) != 0) {
                                                        iIntValue = 180;
                                                    } else {
                                                        iIntValue = 180;
                                                    }
                                                }
                                                k8.f14277r = c1235e5.f18449m;
                                                k8.f14278s = c1235e5.f18450n;
                                                k8.f14281v = f8;
                                                k8.f14280u = iIntValue;
                                                k8.f14282w = c1235e5.f18459w;
                                                k8.f14283x = c1235e5.f18460x;
                                                k8.f14284y = c1928rL;
                                                i17 = 2;
                                            } else {
                                                str2 = str2;
                                                str = str;
                                                if (org.videolan.libvlc.media.MediaPlayer.MEDIA_MIMETYPE_TEXT_SUBRIP.equals(str21)) {
                                                }
                                                i17 = 3;
                                            }
                                            str13 = c1235e5.f18437a;
                                            if (str13 != null) {
                                                k8.f14261b = c1235e5.f18437a;
                                            }
                                            k8.c(i36);
                                            k8.f(str21);
                                            k8.f14272m = i14;
                                            k8.f14263d = c1235e5.f18434X;
                                            k8.f14264e = i3111111115;
                                            k8.f14274o = listSingletonList;
                                            k8.f14268i = str10;
                                            k8.f14275p = c1235e5.f18448l;
                                            C1804p0 c1804p116 = new C1804p0(k8);
                                            InterfaceC1234e0 interfaceC1234e0H117 = n8.h(c1235e5.f18439c, i17);
                                            c1235e5.f18435Y = interfaceC1234e0H117;
                                            interfaceC1234e0H117.d(c1804p116);
                                            sparseArray.put(c1235e5.f18439c, c1235e5);
                                            c1287f2 = c1287f4;
                                            c1235e1 = null;
                                            break;
                                        case Service.MONITORING_FIELD_NUMBER /* 28 */:
                                            paX = AbstractC2073uA.x(f18650f0, c1235e5.a(c1235e5.f18438b));
                                            str21 = "text/x-ssa";
                                            listSingletonList = paX;
                                            i14 = -1;
                                            str10 = null;
                                            i15 = -1;
                                            if (c1235e5.f18425O != null) {
                                                str10 = jA2.f14099H;
                                                str21 = "video/dolby-vision";
                                            }
                                            boolean z1117 = c1235e5.f18433W;
                                            if (true != c1235e5.f18432V) {
                                                i16 = 0;
                                            } else {
                                                i16 = 2;
                                            }
                                            int i3111111118 = (z1117 ? 1 : 0) | i16;
                                            k8 = new K();
                                            if ("audio".equals(AbstractC2140va.h(str21))) {
                                                k8.f14285z = c1235e5.f18426P;
                                                k8.f14253A = c1235e5.f18428R;
                                                k8.f14254B = i15;
                                                str2 = str2;
                                                str = str;
                                                i17 = 1;
                                            } else if (AbstractC2140va.g(str21)) {
                                                if (c1235e5.f18454r == 0) {
                                                    i21 = c1235e5.f18452p;
                                                    i18 = -1;
                                                    if (i21 == -1) {
                                                        i21 = c1235e5.f18449m;
                                                    }
                                                    c1235e5.f18452p = i21;
                                                    i22 = c1235e5.f18453q;
                                                    if (i22 == -1) {
                                                        i22 = c1235e5.f18450n;
                                                    }
                                                    c1235e5.f18453q = i22;
                                                } else {
                                                    i18 = -1;
                                                }
                                                i19 = c1235e5.f18452p;
                                                if (i19 != i18) {
                                                    f8 = -1.0f;
                                                } else {
                                                    f8 = -1.0f;
                                                }
                                                if (c1235e5.f18461y) {
                                                    if (c1235e5.f18415E != -1.0f) {
                                                        bArr2 = null;
                                                    } else {
                                                        bArr2 = null;
                                                    }
                                                    int i3111111119 = c1235e5.f18462z;
                                                    int i31111111110 = c1235e5.f18412B;
                                                    int i4111114 = c1235e5.f18411A;
                                                    int i4111115 = c1235e5.f18451o;
                                                    c1928rL = new C1928rL(i3111111119, i31111111110, i4111114, bArr2, i4111115, i4111115);
                                                } else {
                                                    str2 = str2;
                                                    c1928rL = null;
                                                }
                                                str12 = c1235e5.f18437a;
                                                if (str12 != null) {
                                                    map = f18654j0;
                                                    if (map.containsKey(str12)) {
                                                        iIntValue = ((Integer) map.get(c1235e5.f18437a)).intValue();
                                                    } else {
                                                        iIntValue = -1;
                                                    }
                                                } else {
                                                    iIntValue = -1;
                                                }
                                                if (c1235e5.f18455s == 0) {
                                                    if (Float.compare(c1235e5.f18458v, 0.0f) == 0) {
                                                        iIntValue = 0;
                                                    } else if (Float.compare(c1235e5.f18458v, 90.0f) == 0) {
                                                        iIntValue = 90;
                                                    } else if (Float.compare(c1235e5.f18458v, -180.0f) != 0) {
                                                        iIntValue = 180;
                                                    } else {
                                                        iIntValue = 180;
                                                    }
                                                }
                                                k8.f14277r = c1235e5.f18449m;
                                                k8.f14278s = c1235e5.f18450n;
                                                k8.f14281v = f8;
                                                k8.f14280u = iIntValue;
                                                k8.f14282w = c1235e5.f18459w;
                                                k8.f14283x = c1235e5.f18460x;
                                                k8.f14284y = c1928rL;
                                                i17 = 2;
                                            } else {
                                                str2 = str2;
                                                str = str;
                                                if (org.videolan.libvlc.media.MediaPlayer.MEDIA_MIMETYPE_TEXT_SUBRIP.equals(str21)) {
                                                }
                                                i17 = 3;
                                            }
                                            str13 = c1235e5.f18437a;
                                            if (str13 != null) {
                                                k8.f14261b = c1235e5.f18437a;
                                            }
                                            k8.c(i36);
                                            k8.f(str21);
                                            k8.f14272m = i14;
                                            k8.f14263d = c1235e5.f18434X;
                                            k8.f14264e = i3111111118;
                                            k8.f14274o = listSingletonList;
                                            k8.f14268i = str10;
                                            k8.f14275p = c1235e5.f18448l;
                                            C1804p0 c1804p117 = new C1804p0(k8);
                                            InterfaceC1234e0 interfaceC1234e0H118 = n8.h(c1235e5.f18439c, i17);
                                            c1235e5.f18435Y = interfaceC1234e0H118;
                                            interfaceC1234e0H118.d(c1804p117);
                                            sparseArray.put(c1235e5.f18439c, c1235e5);
                                            c1287f2 = c1287f4;
                                            c1235e1 = null;
                                            break;
                                        case Service.SYSTEM_PARAMETERS_FIELD_NUMBER /* 29 */:
                                            str21 = "text/vtt";
                                            i14 = -1;
                                            listSingletonList = null;
                                            str10 = null;
                                            i15 = -1;
                                            if (c1235e5.f18425O != null) {
                                                str10 = jA2.f14099H;
                                                str21 = "video/dolby-vision";
                                            }
                                            boolean z1118 = c1235e5.f18433W;
                                            if (true != c1235e5.f18432V) {
                                                i16 = 0;
                                            } else {
                                                i16 = 2;
                                            }
                                            int i31111111111 = (z1118 ? 1 : 0) | i16;
                                            k8 = new K();
                                            if ("audio".equals(AbstractC2140va.h(str21))) {
                                                k8.f14285z = c1235e5.f18426P;
                                                k8.f14253A = c1235e5.f18428R;
                                                k8.f14254B = i15;
                                                str2 = str2;
                                                str = str;
                                                i17 = 1;
                                            } else if (AbstractC2140va.g(str21)) {
                                                if (c1235e5.f18454r == 0) {
                                                    i21 = c1235e5.f18452p;
                                                    i18 = -1;
                                                    if (i21 == -1) {
                                                        i21 = c1235e5.f18449m;
                                                    }
                                                    c1235e5.f18452p = i21;
                                                    i22 = c1235e5.f18453q;
                                                    if (i22 == -1) {
                                                        i22 = c1235e5.f18450n;
                                                    }
                                                    c1235e5.f18453q = i22;
                                                } else {
                                                    i18 = -1;
                                                }
                                                i19 = c1235e5.f18452p;
                                                if (i19 != i18) {
                                                    f8 = -1.0f;
                                                } else {
                                                    f8 = -1.0f;
                                                }
                                                if (c1235e5.f18461y) {
                                                    if (c1235e5.f18415E != -1.0f) {
                                                        bArr2 = null;
                                                    } else {
                                                        bArr2 = null;
                                                    }
                                                    int i31111111112 = c1235e5.f18462z;
                                                    int i31111111113 = c1235e5.f18412B;
                                                    int i4111116 = c1235e5.f18411A;
                                                    int i4111117 = c1235e5.f18451o;
                                                    c1928rL = new C1928rL(i31111111112, i31111111113, i4111116, bArr2, i4111117, i4111117);
                                                } else {
                                                    str2 = str2;
                                                    c1928rL = null;
                                                }
                                                str12 = c1235e5.f18437a;
                                                if (str12 != null) {
                                                    map = f18654j0;
                                                    if (map.containsKey(str12)) {
                                                        iIntValue = ((Integer) map.get(c1235e5.f18437a)).intValue();
                                                    } else {
                                                        iIntValue = -1;
                                                    }
                                                } else {
                                                    iIntValue = -1;
                                                }
                                                if (c1235e5.f18455s == 0) {
                                                    if (Float.compare(c1235e5.f18458v, 0.0f) == 0) {
                                                        iIntValue = 0;
                                                    } else if (Float.compare(c1235e5.f18458v, 90.0f) == 0) {
                                                        iIntValue = 90;
                                                    } else if (Float.compare(c1235e5.f18458v, -180.0f) != 0) {
                                                        iIntValue = 180;
                                                    } else {
                                                        iIntValue = 180;
                                                    }
                                                }
                                                k8.f14277r = c1235e5.f18449m;
                                                k8.f14278s = c1235e5.f18450n;
                                                k8.f14281v = f8;
                                                k8.f14280u = iIntValue;
                                                k8.f14282w = c1235e5.f18459w;
                                                k8.f14283x = c1235e5.f18460x;
                                                k8.f14284y = c1928rL;
                                                i17 = 2;
                                            } else {
                                                str2 = str2;
                                                str = str;
                                                if (org.videolan.libvlc.media.MediaPlayer.MEDIA_MIMETYPE_TEXT_SUBRIP.equals(str21)) {
                                                }
                                                i17 = 3;
                                            }
                                            str13 = c1235e5.f18437a;
                                            if (str13 != null) {
                                                k8.f14261b = c1235e5.f18437a;
                                            }
                                            k8.c(i36);
                                            k8.f(str21);
                                            k8.f14272m = i14;
                                            k8.f14263d = c1235e5.f18434X;
                                            k8.f14264e = i31111111111;
                                            k8.f14274o = listSingletonList;
                                            k8.f14268i = str10;
                                            k8.f14275p = c1235e5.f18448l;
                                            C1804p0 c1804p118 = new C1804p0(k8);
                                            InterfaceC1234e0 interfaceC1234e0H119 = n8.h(c1235e5.f18439c, i17);
                                            c1235e5.f18435Y = interfaceC1234e0H119;
                                            interfaceC1234e0H119.d(c1804p118);
                                            sparseArray.put(c1235e5.f18439c, c1235e5);
                                            c1287f2 = c1287f4;
                                            c1235e1 = null;
                                            break;
                                        case MqttConnectOptions.CONNECTION_TIMEOUT_DEFAULT /* 30 */:
                                            paX = AbstractC2073uA.w(c1235e5.a(str20));
                                            str21 = "application/vobsub";
                                            listSingletonList = paX;
                                            i14 = -1;
                                            str10 = null;
                                            i15 = -1;
                                            if (c1235e5.f18425O != null) {
                                                str10 = jA2.f14099H;
                                                str21 = "video/dolby-vision";
                                            }
                                            boolean z1119 = c1235e5.f18433W;
                                            if (true != c1235e5.f18432V) {
                                                i16 = 0;
                                            } else {
                                                i16 = 2;
                                            }
                                            int i31111111114 = (z1119 ? 1 : 0) | i16;
                                            k8 = new K();
                                            if ("audio".equals(AbstractC2140va.h(str21))) {
                                                k8.f14285z = c1235e5.f18426P;
                                                k8.f14253A = c1235e5.f18428R;
                                                k8.f14254B = i15;
                                                str2 = str2;
                                                str = str;
                                                i17 = 1;
                                            } else if (AbstractC2140va.g(str21)) {
                                                if (c1235e5.f18454r == 0) {
                                                    i21 = c1235e5.f18452p;
                                                    i18 = -1;
                                                    if (i21 == -1) {
                                                        i21 = c1235e5.f18449m;
                                                    }
                                                    c1235e5.f18452p = i21;
                                                    i22 = c1235e5.f18453q;
                                                    if (i22 == -1) {
                                                        i22 = c1235e5.f18450n;
                                                    }
                                                    c1235e5.f18453q = i22;
                                                } else {
                                                    i18 = -1;
                                                }
                                                i19 = c1235e5.f18452p;
                                                if (i19 != i18) {
                                                    f8 = -1.0f;
                                                } else {
                                                    f8 = -1.0f;
                                                }
                                                if (c1235e5.f18461y) {
                                                    if (c1235e5.f18415E != -1.0f) {
                                                        bArr2 = null;
                                                    } else {
                                                        bArr2 = null;
                                                    }
                                                    int i31111111115 = c1235e5.f18462z;
                                                    int i31111111116 = c1235e5.f18412B;
                                                    int i4111118 = c1235e5.f18411A;
                                                    int i4111119 = c1235e5.f18451o;
                                                    c1928rL = new C1928rL(i31111111115, i31111111116, i4111118, bArr2, i4111119, i4111119);
                                                } else {
                                                    str2 = str2;
                                                    c1928rL = null;
                                                }
                                                str12 = c1235e5.f18437a;
                                                if (str12 != null) {
                                                    map = f18654j0;
                                                    if (map.containsKey(str12)) {
                                                        iIntValue = ((Integer) map.get(c1235e5.f18437a)).intValue();
                                                    } else {
                                                        iIntValue = -1;
                                                    }
                                                } else {
                                                    iIntValue = -1;
                                                }
                                                if (c1235e5.f18455s == 0) {
                                                    if (Float.compare(c1235e5.f18458v, 0.0f) == 0) {
                                                        iIntValue = 0;
                                                    } else if (Float.compare(c1235e5.f18458v, 90.0f) == 0) {
                                                        iIntValue = 90;
                                                    } else if (Float.compare(c1235e5.f18458v, -180.0f) != 0) {
                                                        iIntValue = 180;
                                                    } else {
                                                        iIntValue = 180;
                                                    }
                                                }
                                                k8.f14277r = c1235e5.f18449m;
                                                k8.f14278s = c1235e5.f18450n;
                                                k8.f14281v = f8;
                                                k8.f14280u = iIntValue;
                                                k8.f14282w = c1235e5.f18459w;
                                                k8.f14283x = c1235e5.f18460x;
                                                k8.f14284y = c1928rL;
                                                i17 = 2;
                                            } else {
                                                str2 = str2;
                                                str = str;
                                                if (org.videolan.libvlc.media.MediaPlayer.MEDIA_MIMETYPE_TEXT_SUBRIP.equals(str21)) {
                                                }
                                                i17 = 3;
                                            }
                                            str13 = c1235e5.f18437a;
                                            if (str13 != null) {
                                                k8.f14261b = c1235e5.f18437a;
                                            }
                                            k8.c(i36);
                                            k8.f(str21);
                                            k8.f14272m = i14;
                                            k8.f14263d = c1235e5.f18434X;
                                            k8.f14264e = i31111111114;
                                            k8.f14274o = listSingletonList;
                                            k8.f14268i = str10;
                                            k8.f14275p = c1235e5.f18448l;
                                            C1804p0 c1804p119 = new C1804p0(k8);
                                            InterfaceC1234e0 interfaceC1234e0H1110 = n8.h(c1235e5.f18439c, i17);
                                            c1235e5.f18435Y = interfaceC1234e0H1110;
                                            interfaceC1234e0H1110.d(c1804p119);
                                            sparseArray.put(c1235e5.f18439c, c1235e5);
                                            c1287f2 = c1287f4;
                                            c1235e1 = null;
                                            break;
                                        case DescriptorProtos$FileOptions.CC_ENABLE_ARENAS_FIELD_NUMBER /* 31 */:
                                            str21 = "application/pgs";
                                            i14 = -1;
                                            listSingletonList = null;
                                            str10 = null;
                                            i15 = -1;
                                            if (c1235e5.f18425O != null) {
                                                str10 = jA2.f14099H;
                                                str21 = "video/dolby-vision";
                                            }
                                            boolean z11110 = c1235e5.f18433W;
                                            if (true != c1235e5.f18432V) {
                                                i16 = 0;
                                            } else {
                                                i16 = 2;
                                            }
                                            int i31111111117 = (z11110 ? 1 : 0) | i16;
                                            k8 = new K();
                                            if ("audio".equals(AbstractC2140va.h(str21))) {
                                                k8.f14285z = c1235e5.f18426P;
                                                k8.f14253A = c1235e5.f18428R;
                                                k8.f14254B = i15;
                                                str2 = str2;
                                                str = str;
                                                i17 = 1;
                                            } else if (AbstractC2140va.g(str21)) {
                                                if (c1235e5.f18454r == 0) {
                                                    i21 = c1235e5.f18452p;
                                                    i18 = -1;
                                                    if (i21 == -1) {
                                                        i21 = c1235e5.f18449m;
                                                    }
                                                    c1235e5.f18452p = i21;
                                                    i22 = c1235e5.f18453q;
                                                    if (i22 == -1) {
                                                        i22 = c1235e5.f18450n;
                                                    }
                                                    c1235e5.f18453q = i22;
                                                } else {
                                                    i18 = -1;
                                                }
                                                i19 = c1235e5.f18452p;
                                                if (i19 != i18) {
                                                    f8 = -1.0f;
                                                } else {
                                                    f8 = -1.0f;
                                                }
                                                if (c1235e5.f18461y) {
                                                    if (c1235e5.f18415E != -1.0f) {
                                                        bArr2 = null;
                                                    } else {
                                                        bArr2 = null;
                                                    }
                                                    int i31111111118 = c1235e5.f18462z;
                                                    int i31111111119 = c1235e5.f18412B;
                                                    int i41111110 = c1235e5.f18411A;
                                                    int i41111111 = c1235e5.f18451o;
                                                    c1928rL = new C1928rL(i31111111118, i31111111119, i41111110, bArr2, i41111111, i41111111);
                                                } else {
                                                    str2 = str2;
                                                    c1928rL = null;
                                                }
                                                str12 = c1235e5.f18437a;
                                                if (str12 != null) {
                                                    map = f18654j0;
                                                    if (map.containsKey(str12)) {
                                                        iIntValue = ((Integer) map.get(c1235e5.f18437a)).intValue();
                                                    } else {
                                                        iIntValue = -1;
                                                    }
                                                } else {
                                                    iIntValue = -1;
                                                }
                                                if (c1235e5.f18455s == 0) {
                                                    if (Float.compare(c1235e5.f18458v, 0.0f) == 0) {
                                                        iIntValue = 0;
                                                    } else if (Float.compare(c1235e5.f18458v, 90.0f) == 0) {
                                                        iIntValue = 90;
                                                    } else if (Float.compare(c1235e5.f18458v, -180.0f) != 0) {
                                                        iIntValue = 180;
                                                    } else {
                                                        iIntValue = 180;
                                                    }
                                                }
                                                k8.f14277r = c1235e5.f18449m;
                                                k8.f14278s = c1235e5.f18450n;
                                                k8.f14281v = f8;
                                                k8.f14280u = iIntValue;
                                                k8.f14282w = c1235e5.f18459w;
                                                k8.f14283x = c1235e5.f18460x;
                                                k8.f14284y = c1928rL;
                                                i17 = 2;
                                            } else {
                                                str2 = str2;
                                                str = str;
                                                if (org.videolan.libvlc.media.MediaPlayer.MEDIA_MIMETYPE_TEXT_SUBRIP.equals(str21)) {
                                                }
                                                i17 = 3;
                                            }
                                            str13 = c1235e5.f18437a;
                                            if (str13 != null) {
                                                k8.f14261b = c1235e5.f18437a;
                                            }
                                            k8.c(i36);
                                            k8.f(str21);
                                            k8.f14272m = i14;
                                            k8.f14263d = c1235e5.f18434X;
                                            k8.f14264e = i31111111117;
                                            k8.f14274o = listSingletonList;
                                            k8.f14268i = str10;
                                            k8.f14275p = c1235e5.f18448l;
                                            C1804p0 c1804p1110 = new C1804p0(k8);
                                            InterfaceC1234e0 interfaceC1234e0H1111 = n8.h(c1235e5.f18439c, i17);
                                            c1235e5.f18435Y = interfaceC1234e0H1111;
                                            interfaceC1234e0H1111.d(c1804p1110);
                                            sparseArray.put(c1235e5.f18439c, c1235e5);
                                            c1287f2 = c1287f4;
                                            c1235e1 = null;
                                            break;
                                        case 32:
                                            byte[] bArr9 = new byte[4];
                                            System.arraycopy(c1235e5.a(str20), 0, bArr9, 0, 4);
                                            paX = AbstractC2073uA.w(bArr9);
                                            str21 = "application/dvbsubs";
                                            listSingletonList = paX;
                                            i14 = -1;
                                            str10 = null;
                                            i15 = -1;
                                            if (c1235e5.f18425O != null) {
                                                str10 = jA2.f14099H;
                                                str21 = "video/dolby-vision";
                                            }
                                            boolean z11111 = c1235e5.f18433W;
                                            if (true != c1235e5.f18432V) {
                                                i16 = 0;
                                            } else {
                                                i16 = 2;
                                            }
                                            int i311111111110 = (z11111 ? 1 : 0) | i16;
                                            k8 = new K();
                                            if ("audio".equals(AbstractC2140va.h(str21))) {
                                                k8.f14285z = c1235e5.f18426P;
                                                k8.f14253A = c1235e5.f18428R;
                                                k8.f14254B = i15;
                                                str2 = str2;
                                                str = str;
                                                i17 = 1;
                                            } else if (AbstractC2140va.g(str21)) {
                                                if (c1235e5.f18454r == 0) {
                                                    i21 = c1235e5.f18452p;
                                                    i18 = -1;
                                                    if (i21 == -1) {
                                                        i21 = c1235e5.f18449m;
                                                    }
                                                    c1235e5.f18452p = i21;
                                                    i22 = c1235e5.f18453q;
                                                    if (i22 == -1) {
                                                        i22 = c1235e5.f18450n;
                                                    }
                                                    c1235e5.f18453q = i22;
                                                } else {
                                                    i18 = -1;
                                                }
                                                i19 = c1235e5.f18452p;
                                                if (i19 != i18) {
                                                    f8 = -1.0f;
                                                } else {
                                                    f8 = -1.0f;
                                                }
                                                if (c1235e5.f18461y) {
                                                    if (c1235e5.f18415E != -1.0f) {
                                                        bArr2 = null;
                                                    } else {
                                                        bArr2 = null;
                                                    }
                                                    int i311111111111 = c1235e5.f18462z;
                                                    int i311111111112 = c1235e5.f18412B;
                                                    int i41111112 = c1235e5.f18411A;
                                                    int i41111113 = c1235e5.f18451o;
                                                    c1928rL = new C1928rL(i311111111111, i311111111112, i41111112, bArr2, i41111113, i41111113);
                                                } else {
                                                    str2 = str2;
                                                    c1928rL = null;
                                                }
                                                str12 = c1235e5.f18437a;
                                                if (str12 != null) {
                                                    map = f18654j0;
                                                    if (map.containsKey(str12)) {
                                                        iIntValue = ((Integer) map.get(c1235e5.f18437a)).intValue();
                                                    } else {
                                                        iIntValue = -1;
                                                    }
                                                } else {
                                                    iIntValue = -1;
                                                }
                                                if (c1235e5.f18455s == 0) {
                                                    if (Float.compare(c1235e5.f18458v, 0.0f) == 0) {
                                                        iIntValue = 0;
                                                    } else if (Float.compare(c1235e5.f18458v, 90.0f) == 0) {
                                                        iIntValue = 90;
                                                    } else if (Float.compare(c1235e5.f18458v, -180.0f) != 0) {
                                                        iIntValue = 180;
                                                    } else {
                                                        iIntValue = 180;
                                                    }
                                                }
                                                k8.f14277r = c1235e5.f18449m;
                                                k8.f14278s = c1235e5.f18450n;
                                                k8.f14281v = f8;
                                                k8.f14280u = iIntValue;
                                                k8.f14282w = c1235e5.f18459w;
                                                k8.f14283x = c1235e5.f18460x;
                                                k8.f14284y = c1928rL;
                                                i17 = 2;
                                            } else {
                                                str2 = str2;
                                                str = str;
                                                if (org.videolan.libvlc.media.MediaPlayer.MEDIA_MIMETYPE_TEXT_SUBRIP.equals(str21)) {
                                                }
                                                i17 = 3;
                                            }
                                            str13 = c1235e5.f18437a;
                                            if (str13 != null) {
                                                k8.f14261b = c1235e5.f18437a;
                                            }
                                            k8.c(i36);
                                            k8.f(str21);
                                            k8.f14272m = i14;
                                            k8.f14263d = c1235e5.f18434X;
                                            k8.f14264e = i311111111110;
                                            k8.f14274o = listSingletonList;
                                            k8.f14268i = str10;
                                            k8.f14275p = c1235e5.f18448l;
                                            C1804p0 c1804p1111 = new C1804p0(k8);
                                            InterfaceC1234e0 interfaceC1234e0H1112 = n8.h(c1235e5.f18439c, i17);
                                            c1235e5.f18435Y = interfaceC1234e0H1112;
                                            interfaceC1234e0H1112.d(c1804p1111);
                                            sparseArray.put(c1235e5.f18439c, c1235e5);
                                            c1287f2 = c1287f4;
                                            c1235e1 = null;
                                            break;
                                        default:
                                            throw C0800Ka.a("Unrecognized codec identifier.", null);
                                    }
                                    break;
                                default:
                                    str6 = str7;
                                    str15 = str8;
                                    c1235e1 = null;
                                    str2 = str2;
                                    c1287f2 = c1287f4;
                                    break;
                            }
                            c1287f2.f18706v = c1235e1;
                        }
                        c1287f1 = this;
                        r8 = m7;
                        str4 = str6;
                        str = str;
                        z9 = false;
                    }
                    r7 = r8;
                } else {
                    z7 = true;
                    z8 = false;
                    str3 = str16;
                }
                int i65 = r12.f18146e;
                if (i65 != 0) {
                    c1287f1 = this;
                    m8 = m7;
                    str4 = str17;
                    if (i65 != z7) {
                        r11 = m8;
                        r9 = m8;
                    }
                    C1184d1 c1184d2 = r12.f18145d;
                    i8 = r12.f18147f;
                    r10 = c1184d2.f18293a;
                    switch (i8) {
                        case 131:
                        case 136:
                        case 155:
                        case 159:
                        case 176:
                        case 179:
                        case 186:
                        case 215:
                        case 231:
                        case 238:
                        case 241:
                        case 251:
                        case 16871:
                        case 16980:
                        case 17029:
                        case 17143:
                        case 18401:
                        case 18408:
                        case 20529:
                        case 20530:
                        case 21420:
                        case 21432:
                        case 21680:
                        case 21682:
                        case 21690:
                        case 21930:
                        case 21938:
                        case 21945:
                        case 21946:
                        case 21947:
                        case 21948:
                        case 21949:
                        case 21998:
                        case 22186:
                        case 22203:
                        case 25188:
                        case 30114:
                        case 30321:
                        case 2352003:
                        case 2807729:
                            j8 = r12.f18148g;
                            if (j8 <= 8) {
                                throw C0800Ka.a("Invalid integer size: " + j8, null);
                            }
                            r10.g(i8, r12.a(r9, (int) j8));
                            z9 = false;
                            r12.f18146e = 0;
                            r7 = r9;
                            break;
                            break;
                        case 134:
                        case 17026:
                        case 21358:
                        case 2274716:
                            j9 = r12.f18148g;
                            if (j9 <= 2147483647L) {
                                throw C0800Ka.a("String element size: " + j9, null);
                            }
                            i9 = (int) j9;
                            if (i9 == 0) {
                                str5 = HttpUrl.FRAGMENT_ENCODE_SET;
                            } else {
                                bArr = new byte[i9];
                                r9.h(0, bArr, i9);
                                while (i9 > 0) {
                                    i10 = i9 - 1;
                                    if (bArr[i10] == 0) {
                                        i9 = i10;
                                    } else {
                                        str5 = new String(bArr, 0, i9);
                                    }
                                }
                                str5 = new String(bArr, 0, i9);
                            }
                            r10.getClass();
                            if (i8 != 134) {
                                r10.l(i8);
                                r10.f18706v.f18438b = str5;
                            } else if (i8 != 17026) {
                                if (i8 != 21358) {
                                    r10.l(i8);
                                    r10.f18706v.f18437a = str5;
                                } else if (i8 == 2274716) {
                                    r10.l(i8);
                                    r10.f18706v.f18434X = str5;
                                }
                            } else if (!"webm".equals(str5) && !"matroska".equals(str5)) {
                                throw C0800Ka.a("DocType " + str5 + " not supported", null);
                            }
                            z9 = false;
                            r12.f18146e = 0;
                            r7 = r9;
                            break;
                            break;
                        case 160:
                        case 166:
                        case 174:
                        case 183:
                        case 187:
                        case 224:
                        case 225:
                        case 16868:
                        case 18407:
                        case 19899:
                        case 20532:
                        case 20533:
                        case 21936:
                        case 21968:
                        case 25152:
                        case 28032:
                        case 30113:
                        case 30320:
                        case 290298740:
                        case 357149030:
                        case 374648427:
                        case 408125543:
                        case 440786851:
                        case 475249515:
                        case 524531317:
                            long jZzf = m7.zzf();
                            arrayDeque.push(new C1081b1(i8, jZzf + r12.f18148g));
                            r12.f18145d.f18293a.h(r12.f18147f, jZzf, r12.f18148g);
                            z9 = false;
                            r12.f18146e = 0;
                            r8 = r9;
                            r7 = r8;
                            break;
                        case 161:
                        case 163:
                        case 165:
                        case 16877:
                        case 16981:
                        case 18402:
                        case 21419:
                        case 25506:
                        case 30322:
                            r10.a(i8, (int) r12.f18148g, r9);
                            z9 = false;
                            r12.f18146e = 0;
                            r8 = r9;
                            r7 = r8;
                            break;
                        case 181:
                        case 17545:
                        case 21969:
                        case 21970:
                        case 21971:
                        case 21972:
                        case 21973:
                        case 21974:
                        case 21975:
                        case 21976:
                        case 21977:
                        case 21978:
                        case 30323:
                        case 30324:
                        case 30325:
                            j10 = r12.f18148g;
                            if (j10 == 4 && j10 != 8) {
                                throw C0800Ka.a("Invalid float size: " + j10, null);
                            }
                            i11 = (int) j10;
                            jA = r12.a(r9, i11);
                            if (i11 == 4) {
                                dLongBitsToDouble = Float.intBitsToFloat((int) jA);
                            } else {
                                dLongBitsToDouble = Double.longBitsToDouble(jA);
                            }
                            r10.b(i8, dLongBitsToDouble);
                            z9 = false;
                            r12.f18146e = 0;
                            r8 = r9;
                            r7 = r8;
                            break;
                            break;
                        default:
                            r9.q((int) r12.f18148g);
                            r12.f18146e = 0;
                            str14 = str;
                            str16 = str3;
                            str15 = str15;
                            str18 = str2;
                            str17 = str4;
                            break;
                    }
                } else {
                    ?? r13 = m7;
                    int i66 = 4;
                    long jB = r12.f18144c.b(r13, z7, z8, 4);
                    if (jB == -2) {
                        m7.zzj();
                        ?? r14 = z8;
                        while (true) {
                            byte[] bArr10 = r12.f18142a;
                            r13.g(r14, bArr10, i66);
                            byte b10 = bArr10[r14];
                            int i67 = 0;
                            while (true) {
                                if (i67 < 8) {
                                    int i68 = i67 + 1;
                                    if ((C1339g1.f18884d[i67] & ((long) b10)) != 0) {
                                        i12 = i68;
                                    } else {
                                        i67 = i68;
                                    }
                                } else {
                                    i12 = -1;
                                }
                            }
                            if (i12 == -1 || i12 > 4) {
                                str4 = str17;
                            } else {
                                str4 = str17;
                                int iA = (int) C1339g1.a(bArr10, i12, false);
                                C1287f1 c1287f5 = r12.f18145d.f18293a;
                                if (iA == 357149030 || iA == 524531317 || iA == 475249515) {
                                    i24 = iA;
                                } else if (iA == 374648427) {
                                }
                            }
                            r13.q(1);
                            str17 = str4;
                            i66 = 4;
                            r14 = 0;
                        }
                        r13.q(i12);
                        j11 = i24;
                    } else {
                        str4 = str17;
                        j11 = jB;
                    }
                    if (j11 == -1) {
                        for (int i69 = 0; i69 < this.f18683b.size(); i69++) {
                            C1235e1 c1235e6 = (C1235e1) this.f18683b.valueAt(i69);
                            c1235e6.f18435Y.getClass();
                            W0.M m9 = c1235e6.f18431U;
                            if (m9 != null) {
                                m9.d(c1235e6.f18435Y, c1235e6.f18446j);
                            }
                        }
                        return -1;
                    }
                    c1287f1 = this;
                    z7 = true;
                    r12.f18147f = (int) j11;
                    r12.f18146e = 1;
                    r11 = r13;
                }
                r11 = m8;
                r12.f18148g = r12.f18144c.b(r11, false, z7, 8);
                r12.f18146e = 2;
                r9 = r11;
                C1184d1 c1184d3 = r12.f18145d;
                i8 = r12.f18147f;
                r10 = c1184d3.f18293a;
                switch (i8) {
                    case 131:
                    case 136:
                    case 155:
                    case 159:
                    case 176:
                    case 179:
                    case 186:
                    case 215:
                    case 231:
                    case 238:
                    case 241:
                    case 251:
                    case 16871:
                    case 16980:
                    case 17029:
                    case 17143:
                    case 18401:
                    case 18408:
                    case 20529:
                    case 20530:
                    case 21420:
                    case 21432:
                    case 21680:
                    case 21682:
                    case 21690:
                    case 21930:
                    case 21938:
                    case 21945:
                    case 21946:
                    case 21947:
                    case 21948:
                    case 21949:
                    case 21998:
                    case 22186:
                    case 22203:
                    case 25188:
                    case 30114:
                    case 30321:
                    case 2352003:
                    case 2807729:
                        j8 = r12.f18148g;
                        if (j8 <= 8) {
                            throw C0800Ka.a("Invalid integer size: " + j8, null);
                        }
                        r10.g(i8, r12.a(r9, (int) j8));
                        z9 = false;
                        r12.f18146e = 0;
                        r7 = r9;
                        break;
                        break;
                    case 134:
                    case 17026:
                    case 21358:
                    case 2274716:
                        j9 = r12.f18148g;
                        if (j9 <= 2147483647L) {
                            throw C0800Ka.a("String element size: " + j9, null);
                        }
                        i9 = (int) j9;
                        if (i9 == 0) {
                            str5 = HttpUrl.FRAGMENT_ENCODE_SET;
                        } else {
                            bArr = new byte[i9];
                            r9.h(0, bArr, i9);
                            while (i9 > 0) {
                                i10 = i9 - 1;
                                if (bArr[i10] == 0) {
                                    i9 = i10;
                                } else {
                                    str5 = new String(bArr, 0, i9);
                                }
                            }
                            str5 = new String(bArr, 0, i9);
                        }
                        r10.getClass();
                        if (i8 != 134) {
                            r10.l(i8);
                            r10.f18706v.f18438b = str5;
                        } else if (i8 != 17026) {
                            if (i8 != 21358) {
                                r10.l(i8);
                                r10.f18706v.f18437a = str5;
                            } else if (i8 == 2274716) {
                                r10.l(i8);
                                r10.f18706v.f18434X = str5;
                            }
                        } else if (!"webm".equals(str5)) {
                            throw C0800Ka.a("DocType " + str5 + " not supported", null);
                        }
                        z9 = false;
                        r12.f18146e = 0;
                        r7 = r9;
                        break;
                        break;
                    case 160:
                    case 166:
                    case 174:
                    case 183:
                    case 187:
                    case 224:
                    case 225:
                    case 16868:
                    case 18407:
                    case 19899:
                    case 20532:
                    case 20533:
                    case 21936:
                    case 21968:
                    case 25152:
                    case 28032:
                    case 30113:
                    case 30320:
                    case 290298740:
                    case 357149030:
                    case 374648427:
                    case 408125543:
                    case 440786851:
                    case 475249515:
                    case 524531317:
                        long jZzf2 = m7.zzf();
                        arrayDeque.push(new C1081b1(i8, jZzf2 + r12.f18148g));
                        r12.f18145d.f18293a.h(r12.f18147f, jZzf2, r12.f18148g);
                        z9 = false;
                        r12.f18146e = 0;
                        r8 = r9;
                        r7 = r8;
                        break;
                    case 161:
                    case 163:
                    case 165:
                    case 16877:
                    case 16981:
                    case 18402:
                    case 21419:
                    case 25506:
                    case 30322:
                        r10.a(i8, (int) r12.f18148g, r9);
                        z9 = false;
                        r12.f18146e = 0;
                        r8 = r9;
                        r7 = r8;
                        break;
                    case 181:
                    case 17545:
                    case 21969:
                    case 21970:
                    case 21971:
                    case 21972:
                    case 21973:
                    case 21974:
                    case 21975:
                    case 21976:
                    case 21977:
                    case 21978:
                    case 30323:
                    case 30324:
                    case 30325:
                        j10 = r12.f18148g;
                        if (j10 == 4) {
                        }
                        i11 = (int) j10;
                        jA = r12.a(r9, i11);
                        if (i11 == 4) {
                            dLongBitsToDouble = Float.intBitsToFloat((int) jA);
                        } else {
                            dLongBitsToDouble = Double.longBitsToDouble(jA);
                        }
                        r10.b(i8, dLongBitsToDouble);
                        z9 = false;
                        r12.f18146e = 0;
                        r8 = r9;
                        r7 = r8;
                        break;
                    default:
                        r9.q((int) r12.f18148g);
                        r12.f18146e = 0;
                        str14 = str;
                        str16 = str3;
                        str15 = str15;
                        str18 = str2;
                        str17 = str4;
                        break;
                }
            }
            long jZzf3 = m7.zzf();
            if (c1287f1.f18710z) {
                c1287f1.f18656B = jZzf3;
                wVar.f7458a = c1287f1.f18655A;
                c1287f1.f18710z = z9;
                return 1;
            }
            if (c1287f1.f18707w) {
                long j16 = c1287f1.f18656B;
                if (j16 != -1) {
                    wVar.f7458a = j16;
                    c1287f1.f18656B = -1L;
                    return 1;
                }
            }
            c1287f3 = c1287f1;
            str14 = str;
            str16 = str3;
            str15 = str15;
            str18 = str2;
            str17 = str4;
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.L
    public final boolean d(M m7) throws EOFException, InterruptedIOException {
        K.k kVar = new K.k(7, 0);
        long jZzd = m7.zzd();
        long j8 = 1024;
        if (jZzd != -1 && jZzd <= 1024) {
            j8 = jZzd;
        }
        F f8 = (F) m7;
        f8.d(((C1534jr) kVar.f4295I).f19515a, 0, 4, false);
        kVar.f4294H = 4;
        for (long jE = ((C1534jr) kVar.f4295I).E(); jE != 440786851; jE = ((jE << 8) & (-256)) | ((long) (((C1534jr) kVar.f4295I).f19515a[0] & 255))) {
            int i8 = (int) j8;
            int i9 = kVar.f4294H + 1;
            kVar.f4294H = i9;
            if (i9 == i8) {
                return false;
            }
            f8.d(((C1534jr) kVar.f4295I).f19515a, 0, 1, false);
        }
        long jH = kVar.h(m7);
        long j9 = kVar.f4294H;
        if (jH == Long.MIN_VALUE) {
            return false;
        }
        long j10 = j9 + jH;
        if (jZzd != -1 && j10 >= jZzd) {
            return false;
        }
        while (true) {
            long j11 = kVar.f4294H;
            if (j11 >= j10) {
                return j11 == j10;
            }
            if (kVar.h(m7) == Long.MIN_VALUE) {
                return false;
            }
            long jH2 = kVar.h(m7);
            if (jH2 < 0) {
                return false;
            }
            if (jH2 != 0) {
                int i10 = (int) jH2;
                f8.i(i10, false);
                kVar.f4294H += i10;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.L
    public final void e(long j8, long j9) {
        this.f18657C = -9223372036854775807L;
        this.f18662H = 0;
        C1132c1 c1132c1 = this.f18688d0;
        c1132c1.f18146e = 0;
        c1132c1.f18143b.clear();
        C1339g1 c1339g1 = c1132c1.f18144c;
        c1339g1.f18886b = 0;
        c1339g1.f18887c = 0;
        C1339g1 c1339g2 = this.f18681a;
        c1339g2.f18886b = 0;
        c1339g2.f18887c = 0;
        o();
        int i8 = 0;
        while (true) {
            SparseArray sparseArray = this.f18683b;
            if (i8 >= sparseArray.size()) {
                return;
            }
            W0.M m7 = ((C1235e1) sparseArray.valueAt(i8)).f18431U;
            if (m7 != null) {
                m7.f7341b = false;
                m7.f7342c = 0;
            }
            i8++;
        }
    }

    @Override // com.google.android.gms.internal.ads.L
    public final void f(N n7) {
        this.f18686c0 = n7;
        if (this.f18687d) {
            n7 = new X1(n7, this.f18689e);
        }
        this.f18686c0 = n7;
    }

    public final void g(int i8, long j8) throws C0800Ka {
        boolean z7;
        if (i8 == 20529) {
            if (j8 == 0) {
                return;
            }
            throw C0800Ka.a("ContentEncodingOrder " + j8 + " not supported", null);
        }
        if (i8 == 20530) {
            if (j8 == 1) {
                return;
            }
            throw C0800Ka.a("ContentEncodingScope " + j8 + " not supported", null);
        }
        switch (i8) {
            case 131:
                l(i8);
                this.f18706v.f18440d = (int) j8;
                return;
            case 136:
                z7 = j8 == 1;
                l(i8);
                this.f18706v.f18433W = z7;
                return;
            case 155:
                this.f18664J = j(j8);
                return;
            case 159:
                l(i8);
                this.f18706v.f18426P = (int) j8;
                return;
            case 176:
                l(i8);
                this.f18706v.f18449m = (int) j8;
                return;
            case 179:
                k(i8);
                p117p0.y yVar = this.f18658D;
                long j9 = j(j8);
                int i9 = yVar.f28127a;
                long[] jArr = yVar.f28128b;
                if (i9 == jArr.length) {
                    yVar.f28128b = Arrays.copyOf(jArr, i9 + i9);
                }
                long[] jArr2 = yVar.f28128b;
                int i10 = yVar.f28127a;
                yVar.f28127a = i10 + 1;
                jArr2[i10] = j9;
                return;
            case 186:
                l(i8);
                this.f18706v.f18450n = (int) j8;
                return;
            case 215:
                l(i8);
                this.f18706v.f18439c = (int) j8;
                return;
            case 231:
                this.f18657C = j(j8);
                return;
            case 238:
                this.f18671Q = (int) j8;
                return;
            case 241:
                if (this.f18660F) {
                    return;
                }
                k(i8);
                p117p0.y yVar2 = this.f18659E;
                int i11 = yVar2.f28127a;
                long[] jArr3 = yVar2.f28128b;
                if (i11 == jArr3.length) {
                    yVar2.f28128b = Arrays.copyOf(jArr3, i11 + i11);
                }
                long[] jArr4 = yVar2.f28128b;
                int i12 = yVar2.f28127a;
                yVar2.f28127a = i12 + 1;
                jArr4[i12] = j8;
                this.f18660F = true;
                return;
            case 251:
                this.f18672R = true;
                return;
            case 16871:
                l(i8);
                this.f18706v.f18443g = (int) j8;
                return;
            case 16980:
                if (j8 == 3) {
                    return;
                }
                throw C0800Ka.a("ContentCompAlgo " + j8 + " not supported", null);
            case 17029:
                if (j8 < 1 || j8 > 2) {
                    throw C0800Ka.a("DocTypeReadVersion " + j8 + " not supported", null);
                }
                return;
            case 17143:
                if (j8 == 1) {
                    return;
                }
                throw C0800Ka.a("EBMLReadVersion " + j8 + " not supported", null);
            case 18401:
                if (j8 == 5) {
                    return;
                }
                throw C0800Ka.a("ContentEncAlgo " + j8 + " not supported", null);
            case 18408:
                if (j8 == 1) {
                    return;
                }
                throw C0800Ka.a("AESSettingsCipherMode " + j8 + " not supported", null);
            case 21420:
                this.f18709y = j8 + this.f18702r;
                return;
            case 21432:
                int i13 = (int) j8;
                l(i8);
                if (i13 == 0) {
                    this.f18706v.f18460x = 0;
                    return;
                }
                if (i13 == 1) {
                    this.f18706v.f18460x = 2;
                    return;
                } else if (i13 == 3) {
                    this.f18706v.f18460x = 1;
                    return;
                } else {
                    if (i13 != 15) {
                        return;
                    }
                    this.f18706v.f18460x = 3;
                    return;
                }
            case 21680:
                l(i8);
                this.f18706v.f18452p = (int) j8;
                return;
            case 21682:
                l(i8);
                this.f18706v.f18454r = (int) j8;
                return;
            case 21690:
                l(i8);
                this.f18706v.f18453q = (int) j8;
                return;
            case 21930:
                z7 = j8 == 1;
                l(i8);
                this.f18706v.f18432V = z7;
                return;
            case 21938:
                l(i8);
                C1235e1 c1235e1 = this.f18706v;
                c1235e1.f18461y = true;
                c1235e1.f18451o = (int) j8;
                return;
            case 21998:
                l(i8);
                this.f18706v.f18442f = (int) j8;
                return;
            case 22186:
                l(i8);
                this.f18706v.f18429S = j8;
                return;
            case 22203:
                l(i8);
                this.f18706v.f18430T = j8;
                return;
            case 25188:
                l(i8);
                this.f18706v.f18427Q = (int) j8;
                return;
            case 30114:
                this.f18673S = j8;
                return;
            case 30321:
                int i14 = (int) j8;
                l(i8);
                if (i14 == 0) {
                    this.f18706v.f18455s = 0;
                    return;
                }
                if (i14 == 1) {
                    this.f18706v.f18455s = 1;
                    return;
                } else if (i14 == 2) {
                    this.f18706v.f18455s = 2;
                    return;
                } else {
                    if (i14 != 3) {
                        return;
                    }
                    this.f18706v.f18455s = 3;
                    return;
                }
            case 2352003:
                l(i8);
                this.f18706v.f18441e = (int) j8;
                return;
            case 2807729:
                this.f18703s = j8;
                return;
            default:
                switch (i8) {
                    case 21945:
                        int i15 = (int) j8;
                        l(i8);
                        if (i15 == 1) {
                            this.f18706v.f18412B = 2;
                            return;
                        } else {
                            if (i15 != 2) {
                                return;
                            }
                            this.f18706v.f18412B = 1;
                            return;
                        }
                    case 21946:
                        l(i8);
                        int iB = C1928rL.b((int) j8);
                        if (iB != -1) {
                            this.f18706v.f18411A = iB;
                            return;
                        }
                        return;
                    case 21947:
                        l(i8);
                        this.f18706v.f18461y = true;
                        int iA = C1928rL.a((int) j8);
                        if (iA != -1) {
                            this.f18706v.f18462z = iA;
                            return;
                        }
                        return;
                    case 21948:
                        l(i8);
                        this.f18706v.f18413C = (int) j8;
                        return;
                    case 21949:
                        l(i8);
                        this.f18706v.f18414D = (int) j8;
                        return;
                    default:
                        return;
                }
        }
    }

    public final void h(int i8, long j8, long j9) throws C0800Ka {
        p113o3.r.x(this.f18686c0);
        if (i8 == 160) {
            this.f18672R = false;
            this.f18673S = 0L;
            return;
        }
        if (i8 != 174) {
            if (i8 == 187) {
                this.f18660F = false;
                return;
            }
            if (i8 == 19899) {
                this.f18708x = -1;
                this.f18709y = -1L;
                return;
            }
            if (i8 == 20533) {
                l(i8);
                this.f18706v.f18444h = true;
                return;
            }
            if (i8 == 21968) {
                l(i8);
                this.f18706v.f18461y = true;
                return;
            }
            if (i8 == 408125543) {
                long j10 = this.f18702r;
                if (j10 != -1 && j10 != j8) {
                    throw C0800Ka.a("Multiple Segment elements not supported", null);
                }
                this.f18702r = j8;
                this.f18701q = j9;
                return;
            }
            if (i8 == 475249515) {
                this.f18658D = new p117p0.y(32, 1);
                this.f18659E = new p117p0.y(32, 1);
                return;
            } else {
                if (i8 == 524531317 && !this.f18707w) {
                    if (this.f18685c && this.f18655A != -1) {
                        this.f18710z = true;
                        return;
                    } else {
                        this.f18686c0.g(new P(this.f18705u, 0L));
                        this.f18707w = true;
                        return;
                    }
                }
                return;
            }
        }
        C1235e1 c1235e1 = new C1235e1();
        c1235e1.f18449m = -1;
        c1235e1.f18450n = -1;
        c1235e1.f18451o = -1;
        c1235e1.f18452p = -1;
        c1235e1.f18453q = -1;
        c1235e1.f18454r = 0;
        c1235e1.f18455s = -1;
        c1235e1.f18456t = 0.0f;
        c1235e1.f18457u = 0.0f;
        c1235e1.f18458v = 0.0f;
        c1235e1.f18459w = null;
        c1235e1.f18460x = -1;
        c1235e1.f18461y = false;
        c1235e1.f18462z = -1;
        c1235e1.f18411A = -1;
        c1235e1.f18412B = -1;
        c1235e1.f18413C = 1000;
        c1235e1.f18414D = org.videolan.libvlc.media.MediaPlayer.MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK;
        c1235e1.f18415E = -1.0f;
        c1235e1.f18416F = -1.0f;
        c1235e1.f18417G = -1.0f;
        c1235e1.f18418H = -1.0f;
        c1235e1.f18419I = -1.0f;
        c1235e1.f18420J = -1.0f;
        c1235e1.f18421K = -1.0f;
        c1235e1.f18422L = -1.0f;
        c1235e1.f18423M = -1.0f;
        c1235e1.f18424N = -1.0f;
        c1235e1.f18426P = 1;
        c1235e1.f18427Q = -1;
        c1235e1.f18428R = 8000;
        c1235e1.f18429S = 0L;
        c1235e1.f18430T = 0L;
        c1235e1.f18433W = true;
        c1235e1.f18434X = "eng";
        this.f18706v = c1235e1;
    }

    public final int i(M m7, C1235e1 c1235e1, int i8, boolean z7) throws C0800Ka {
        int iE;
        int iE2;
        int i9;
        if ("S_TEXT/UTF8".equals(c1235e1.f18438b)) {
            p(m7, f18649e0, i8);
            int i10 = this.f18675U;
            o();
            return i10;
        }
        if ("S_TEXT/ASS".equals(c1235e1.f18438b)) {
            p(m7, f18651g0, i8);
            int i11 = this.f18675U;
            o();
            return i11;
        }
        if ("S_TEXT/WEBVTT".equals(c1235e1.f18438b)) {
            p(m7, f18652h0, i8);
            int i12 = this.f18675U;
            o();
            return i12;
        }
        InterfaceC1234e0 interfaceC1234e0 = c1235e1.f18435Y;
        boolean z8 = this.f18677W;
        C1534jr c1534jr = this.f18695k;
        if (!z8) {
            boolean z9 = c1235e1.f18444h;
            C1534jr c1534jr2 = this.f18692h;
            if (z9) {
                this.f18670P &= -1073741825;
                if (!this.f18678X) {
                    m7.h(0, c1534jr2.f19515a, 1);
                    this.f18674T++;
                    byte b8 = c1534jr2.f19515a[0];
                    if ((b8 & 128) == 128) {
                        throw C0800Ka.a("Extension bit is set in signal byte", null);
                    }
                    this.f18682a0 = b8;
                    this.f18678X = true;
                }
                byte b9 = this.f18682a0;
                if ((b9 & 1) == 1) {
                    int i13 = b9 & 2;
                    this.f18670P |= 1073741824;
                    if (!this.f18684b0) {
                        C1534jr c1534jr3 = this.f18697m;
                        m7.h(0, c1534jr3.f19515a, 8);
                        this.f18674T += 8;
                        this.f18684b0 = true;
                        c1534jr2.f19515a[0] = (byte) ((i13 != 2 ? 0 : 128) | 8);
                        c1534jr2.j(0);
                        interfaceC1234e0.a(c1534jr2, 1, 1);
                        this.f18675U++;
                        c1534jr3.j(0);
                        interfaceC1234e0.a(c1534jr3, 8, 1);
                        this.f18675U += 8;
                    }
                    if (i13 == 2) {
                        if (!this.f18679Y) {
                            m7.h(0, c1534jr2.f19515a, 1);
                            this.f18674T++;
                            c1534jr2.j(0);
                            this.f18680Z = c1534jr2.w();
                            this.f18679Y = true;
                        }
                        int i14 = this.f18680Z * 4;
                        c1534jr2.g(i14);
                        m7.h(0, c1534jr2.f19515a, i14);
                        this.f18674T += i14;
                        int i15 = (this.f18680Z >> 1) + 1;
                        int i16 = (i15 * 6) + 2;
                        ByteBuffer byteBuffer = this.f18700p;
                        if (byteBuffer == null || byteBuffer.capacity() < i16) {
                            this.f18700p = ByteBuffer.allocate(i16);
                        }
                        this.f18700p.position(0);
                        this.f18700p.putShort((short) i15);
                        int i17 = 0;
                        int i18 = 0;
                        while (true) {
                            i9 = this.f18680Z;
                            if (i17 >= i9) {
                                break;
                            }
                            int iZ = c1534jr2.z();
                            int i19 = iZ - i18;
                            if (i17 % 2 == 0) {
                                this.f18700p.putShort((short) i19);
                            } else {
                                this.f18700p.putInt(i19);
                            }
                            i17++;
                            i18 = iZ;
                        }
                        int i20 = (i8 - this.f18674T) - i18;
                        if ((i9 & 1) == 1) {
                            this.f18700p.putInt(i20);
                        } else {
                            this.f18700p.putShort((short) i20);
                            this.f18700p.putInt(0);
                        }
                        byte[] bArrArray = this.f18700p.array();
                        C1534jr c1534jr4 = this.f18698n;
                        c1534jr4.h(i16, bArrArray);
                        interfaceC1234e0.a(c1534jr4, i16, 1);
                        this.f18675U += i16;
                    }
                }
            } else {
                byte[] bArr = c1235e1.f18445i;
                if (bArr != null) {
                    c1534jr.h(bArr.length, bArr);
                }
            }
            if (!"A_OPUS".equals(c1235e1.f18438b) ? c1235e1.f18442f > 0 : z7) {
                this.f18670P |= 268435456;
                this.f18699o.g(0);
                int i21 = (c1534jr.f19517c + i8) - this.f18674T;
                c1534jr2.g(4);
                byte[] bArr2 = c1534jr2.f19515a;
                bArr2[0] = (byte) ((i21 >> 24) & 255);
                bArr2[1] = (byte) ((i21 >> 16) & 255);
                bArr2[2] = (byte) ((i21 >> 8) & 255);
                bArr2[3] = (byte) (i21 & 255);
                interfaceC1234e0.a(c1534jr2, 4, 2);
                this.f18675U += 4;
            }
            this.f18677W = true;
        }
        int i22 = i8 + c1534jr.f19517c;
        if (!"V_MPEG4/ISO/AVC".equals(c1235e1.f18438b) && !"V_MPEGH/ISO/HEVC".equals(c1235e1.f18438b)) {
            if (c1235e1.f18431U != null) {
                p113o3.r.M(c1534jr.f19517c == 0);
                c1235e1.f18431U.f(m7);
            }
            while (true) {
                int i23 = this.f18674T;
                if (i23 >= i22) {
                    break;
                }
                int i24 = i22 - i23;
                int iO = c1534jr.o();
                if (iO > 0) {
                    iE2 = Math.min(i24, iO);
                    interfaceC1234e0.f(iE2, c1534jr);
                } else {
                    iE2 = interfaceC1234e0.e(m7, i24, false);
                }
                this.f18674T += iE2;
                this.f18675U += iE2;
            }
        } else {
            C1534jr c1534jr5 = this.f18691g;
            byte[] bArr3 = c1534jr5.f19515a;
            bArr3[0] = 0;
            bArr3[1] = 0;
            bArr3[2] = 0;
            int i25 = c1235e1.f18436Z;
            int i26 = 4 - i25;
            while (this.f18674T < i22) {
                int i27 = this.f18676V;
                if (i27 == 0) {
                    int iMin = Math.min(i25, c1534jr.o());
                    m7.h(i26 + iMin, bArr3, i25 - iMin);
                    if (iMin > 0) {
                        c1534jr.f(i26, bArr3, iMin);
                    }
                    this.f18674T += i25;
                    c1534jr5.j(0);
                    this.f18676V = c1534jr5.z();
                    C1534jr c1534jr6 = this.f18690f;
                    c1534jr6.j(0);
                    interfaceC1234e0.f(4, c1534jr6);
                    this.f18675U += 4;
                } else {
                    int iO2 = c1534jr.o();
                    if (iO2 > 0) {
                        iE = Math.min(i27, iO2);
                        interfaceC1234e0.f(iE, c1534jr);
                    } else {
                        iE = interfaceC1234e0.e(m7, i27, false);
                    }
                    this.f18674T += iE;
                    this.f18675U += iE;
                    this.f18676V -= iE;
                }
            }
        }
        if ("A_VORBIS".equals(c1235e1.f18438b)) {
            C1534jr c1534jr7 = this.f18693i;
            c1534jr7.j(0);
            interfaceC1234e0.f(4, c1534jr7);
            this.f18675U += 4;
        }
        int i28 = this.f18675U;
        o();
        return i28;
    }

    public final long j(long j8) throws C0800Ka {
        long j9 = this.f18703s;
        if (j9 != -9223372036854775807L) {
            return Et.v(j8, j9, 1000L, RoundingMode.FLOOR);
        }
        throw C0800Ka.a("Can't scale timecode prior to timecodeScale being set.", null);
    }

    public final void k(int i8) throws C0800Ka {
        if (this.f18658D == null || this.f18659E == null) {
            throw C0800Ka.a("Element " + i8 + " must be in a Cues", null);
        }
    }

    public final void l(int i8) throws C0800Ka {
        if (this.f18706v != null) {
            return;
        }
        throw C0800Ka.a("Element " + i8 + " must be in a TrackEntry", null);
    }

    /* JADX WARN: Code duplicated, block: B:34:0x008e  */
    public final void m(C1235e1 c1235e1, long j8, int i8, int i9, int i10) {
        byte b8;
        byte[] bArrQ;
        int i11;
        int i12;
        W0.M m7 = c1235e1.f18431U;
        if (m7 != null) {
            m7.e(c1235e1.f18435Y, j8, i8, i9, i10, c1235e1.f18446j);
        } else {
            if ("S_TEXT/UTF8".equals(c1235e1.f18438b) || "S_TEXT/ASS".equals(c1235e1.f18438b) || "S_TEXT/WEBVTT".equals(c1235e1.f18438b)) {
                if (this.f18666L > 1) {
                    Zo.f("MatroskaExtractor", "Skipping subtitle sample in laced block.");
                } else {
                    long j9 = this.f18664J;
                    if (j9 == -9223372036854775807L) {
                        Zo.f("MatroskaExtractor", "Skipping subtitle sample with no duration.");
                    } else {
                        String str = c1235e1.f18438b;
                        C1534jr c1534jr = this.f18696l;
                        byte[] bArr = c1534jr.f19515a;
                        int iHashCode = str.hashCode();
                        if (iHashCode != 738597099) {
                            if (iHashCode != 1045209816) {
                                if (iHashCode == 1422270023 && str.equals("S_TEXT/UTF8")) {
                                    b8 = 0;
                                } else {
                                    b8 = -1;
                                }
                            } else if (str.equals("S_TEXT/WEBVTT")) {
                                b8 = 2;
                            } else {
                                b8 = -1;
                            }
                        } else if (str.equals("S_TEXT/ASS")) {
                            b8 = 1;
                        } else {
                            b8 = -1;
                        }
                        if (b8 == 0) {
                            bArrQ = q(j9, 1000L, "%02d:%02d:%02d,%03d");
                            i11 = 19;
                        } else if (b8 == 1) {
                            bArrQ = q(j9, 10000L, "%01d:%02d:%02d:%02d");
                            i11 = 21;
                        } else {
                            if (b8 != 2) {
                                throw new IllegalArgumentException();
                            }
                            bArrQ = q(j9, 1000L, "%02d:%02d:%02d.%03d");
                            i11 = 25;
                        }
                        System.arraycopy(bArrQ, 0, bArr, i11, bArrQ.length);
                        for (int i13 = c1534jr.f19516b; i13 < c1534jr.f19517c; i13++) {
                            if (c1534jr.f19515a[i13] == 0) {
                                c1534jr.i(i13);
                                break;
                            }
                        }
                        c1235e1.f18435Y.f(c1534jr.f19517c, c1534jr);
                        i12 = i9 + c1534jr.f19517c;
                    }
                }
                i12 = i9;
            } else {
                i12 = i9;
            }
            if ((i8 & 268435456) != 0) {
                int i14 = this.f18666L;
                C1534jr c1534jr2 = this.f18699o;
                if (i14 > 1) {
                    c1534jr2.g(0);
                } else {
                    int i15 = c1534jr2.f19517c;
                    c1235e1.f18435Y.a(c1534jr2, i15, 2);
                    i12 += i15;
                }
            }
            c1235e1.f18435Y.b(j8, i8, i12, i10, c1235e1.f18446j);
        }
        this.f18661G = true;
    }

    public final void n(M m7, int i8) {
        C1534jr c1534jr = this.f18692h;
        if (c1534jr.f19517c >= i8) {
            return;
        }
        byte[] bArr = c1534jr.f19515a;
        if (bArr.length < i8) {
            int length = bArr.length;
            c1534jr.e(Math.max(length + length, i8));
        }
        byte[] bArr2 = c1534jr.f19515a;
        int i9 = c1534jr.f19517c;
        m7.h(i9, bArr2, i8 - i9);
        c1534jr.i(i8);
    }

    public final void o() {
        this.f18674T = 0;
        this.f18675U = 0;
        this.f18676V = 0;
        this.f18677W = false;
        this.f18678X = false;
        this.f18679Y = false;
        this.f18680Z = 0;
        this.f18682a0 = (byte) 0;
        this.f18684b0 = false;
        this.f18695k.g(0);
    }

    public final void p(M m7, byte[] bArr, int i8) {
        int length = bArr.length;
        int i9 = length + i8;
        C1534jr c1534jr = this.f18696l;
        byte[] bArr2 = c1534jr.f19515a;
        if (bArr2.length < i9) {
            byte[] bArrCopyOf = Arrays.copyOf(bArr, i9 + i8);
            c1534jr.h(bArrCopyOf.length, bArrCopyOf);
        } else {
            System.arraycopy(bArr, 0, bArr2, 0, length);
        }
        m7.h(length, c1534jr.f19515a, i8);
        c1534jr.j(0);
        c1534jr.i(i9);
    }

    @Override // com.google.android.gms.internal.ads.L
    public final List zzd() {
        C1969sA c1969sA = AbstractC2073uA.f21207H;
        return PA.f15340K;
    }

    public C1287f1(C1132c1 c1132c1, int i8, C1561kH c1561kH) {
        this.f18702r = -1L;
        this.f18703s = -9223372036854775807L;
        this.f18704t = -9223372036854775807L;
        this.f18705u = -9223372036854775807L;
        this.f18655A = -1L;
        this.f18656B = -1L;
        this.f18657C = -9223372036854775807L;
        this.f18688d0 = c1132c1;
        c1132c1.f18145d = new C1184d1(this);
        this.f18689e = c1561kH;
        this.f18685c = true;
        this.f18687d = (i8 & 2) == 0;
        this.f18681a = new C1339g1();
        this.f18683b = new SparseArray();
        this.f18692h = new C1534jr(4);
        this.f18693i = new C1534jr(ByteBuffer.allocate(4).putInt(-1).array());
        this.f18694j = new C1534jr(4);
        this.f18690f = new C1534jr(AbstractC2008sy.f21015a);
        this.f18691g = new C1534jr(4);
        this.f18695k = new C1534jr();
        this.f18696l = new C1534jr();
        this.f18697m = new C1534jr(8);
        this.f18698n = new C1534jr();
        this.f18699o = new C1534jr();
        this.f18667M = new int[1];
    }
}
