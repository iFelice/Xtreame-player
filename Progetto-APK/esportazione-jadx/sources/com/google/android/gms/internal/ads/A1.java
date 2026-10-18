package com.google.android.gms.internal.ads;

import android.os.Parcelable;
import android.support.v4.media.session.PlaybackStateCompat;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class A1 implements L, Y {

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public int f11918A;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final V1 f11919a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f11920b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C1534jr f11921c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final C1534jr f11922d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final C1534jr f11923e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final C1534jr f11924f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final ArrayDeque f11925g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final C1 f11926h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ArrayList f11927i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public PA f11928j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f11929k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f11930l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public long f11931m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f11932n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public C1534jr f11933o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f11934p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f11935q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f11936r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f11937s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f11938t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f11939u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public N f11940v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public C2324z1[] f11941w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public long[][] f11942x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f11943y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public long f11944z;

    public A1() {
        this(16, V1.f16932o);
    }

    @Override // com.google.android.gms.internal.ads.Y
    public final X b(long j8) {
        long j9;
        long j10;
        long jMin;
        int[] iArr;
        int i8;
        long j11;
        int iA;
        long j12 = j8;
        C2324z1[] c2324z1Arr = this.f11941w;
        int length = c2324z1Arr.length;
        Z z7 = Z.f17700c;
        if (length == 0) {
            return new X(z7, z7);
        }
        int i9 = this.f11943y;
        boolean z8 = false;
        int i10 = -1;
        if (i9 != -1) {
            G1 g8 = c2324z1Arr[i9].f22106b;
            int iK = Et.k(g8.f13467f, j12, false);
            while (true) {
                if (iK < 0) {
                    iK = -1;
                    break;
                }
                if ((g8.f13468g[iK] & 1) != 0) {
                    break;
                }
                iK--;
            }
            if (iK == -1) {
                iK = g8.a(j12);
            }
            if (iK == -1) {
                return new X(z7, z7);
            }
            long[] jArr = g8.f13467f;
            long j13 = jArr[iK];
            long[] jArr2 = g8.f13464c;
            j9 = jArr2[iK];
            if (j13 >= j12 || iK >= g8.f13463b - 1 || (iA = g8.a(j12)) == -1 || iA == iK) {
                j11 = -9223372036854775807L;
                jMin = -1;
            } else {
                j11 = jArr[iA];
                jMin = jArr2[iA];
            }
            j10 = j11;
            j12 = j13;
        } else {
            j9 = Long.MAX_VALUE;
            j10 = -9223372036854775807L;
            jMin = -1;
        }
        long jMin2 = j9;
        int i11 = 0;
        while (true) {
            C2324z1[] c2324z1Arr2 = this.f11941w;
            if (i11 >= c2324z1Arr2.length) {
                break;
            }
            if (i11 != this.f11943y) {
                G1 g9 = c2324z1Arr2[i11].f22106b;
                int iK2 = Et.k(g9.f13467f, j12, z8);
                while (true) {
                    iArr = g9.f13468g;
                    if (iK2 < 0) {
                        iK2 = -1;
                        break;
                    }
                    if ((iArr[iK2] & 1) != 0) {
                        break;
                    }
                    iK2--;
                }
                if (iK2 == i10) {
                    iK2 = g9.a(j12);
                }
                long[] jArr3 = g9.f13464c;
                if (iK2 != i10) {
                    jMin2 = Math.min(jArr3[iK2], jMin2);
                }
                if (j10 != -9223372036854775807L) {
                    int iK3 = Et.k(g9.f13467f, j10, false);
                    while (true) {
                        if (iK3 < 0) {
                            i8 = -1;
                            iK3 = -1;
                            break;
                        }
                        if ((iArr[iK3] & 1) != 0) {
                            i8 = -1;
                            break;
                        }
                        iK3--;
                    }
                    if (iK3 == i8) {
                        iK3 = g9.a(j10);
                    }
                    jMin = iK3 == i8 ? jMin : Math.min(jArr3[iK3], jMin);
                }
                i11++;
                jMin = jMin;
                z8 = false;
                i10 = -1;
            }
            i11++;
            jMin = jMin;
            z8 = false;
            i10 = -1;
        }
        long j14 = jMin;
        Z z9 = new Z(j12, jMin2);
        return j10 == -9223372036854775807L ? new X(z9, z9) : new X(z9, new Z(j10, j14));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:130:0x029c  */
    /* JADX WARN: Code duplicated, block: B:19:0x0078  */
    @Override // com.google.android.gms.internal.ads.L
    public final int c(M m7, W0.w wVar) throws C0800Ka {
        char c8;
        int i8;
        char c9;
        boolean z7;
        while (true) {
            int i9 = this.f11929k;
            ArrayDeque arrayDeque = this.f11925g;
            int i10 = 4;
            C1534jr c1534jr = this.f11923e;
            if (i9 == 0) {
                int i11 = this.f11932n;
                C1534jr c1534jr2 = this.f11924f;
                if (i11 == 0) {
                    if (!m7.b(c1534jr2.f19515a, 0, 8, true)) {
                        return -1;
                    }
                    this.f11932n = 8;
                    c1534jr2.j(0);
                    this.f11931m = c1534jr2.E();
                    this.f11930l = c1534jr2.r();
                }
                long j8 = this.f11931m;
                if (j8 == 1) {
                    m7.h(8, c1534jr2.f19515a, 8);
                    this.f11932n += 8;
                    this.f11931m = c1534jr2.F();
                } else if (j8 == 0) {
                    long jZzd = m7.zzd();
                    if (jZzd == -1) {
                        C1753o1 c1753o1 = (C1753o1) arrayDeque.peek();
                        jZzd = c1753o1 != null ? c1753o1.f20218c : -1L;
                    }
                    if (jZzd != -1) {
                        this.f11931m = (jZzd - m7.zzf()) + ((long) this.f11932n);
                    }
                }
                long j9 = this.f11931m;
                int i12 = this.f11932n;
                if (j9 < i12) {
                    throw C0800Ka.b("Atom size less than header length (unsupported).");
                }
                int i13 = this.f11930l;
                if (i13 == 1836019574 || i13 == 1953653099 || i13 == 1835297121 || i13 == 1835626086 || i13 == 1937007212 || i13 == 1701082227 || i13 == 1835365473) {
                    long jZzf = m7.zzf();
                    long j10 = this.f11931m;
                    long j11 = jZzf + j10;
                    long j12 = this.f11932n;
                    if (j10 != j12 && this.f11930l == 1835365473) {
                        c1534jr.g(8);
                        m7.g(0, c1534jr.f19515a, 8);
                        byte[] bArr = AbstractC1908r1.f20670a;
                        int i14 = c1534jr.f19516b;
                        c1534jr.k(4);
                        if (c1534jr.r() != 1751411826) {
                            i14 += 4;
                        }
                        c1534jr.j(i14);
                        m7.q(c1534jr.f19516b);
                        m7.zzj();
                    }
                    long j13 = j11 - j12;
                    arrayDeque.push(new C1753o1(this.f11930l, j13));
                    if (this.f11931m == this.f11932n) {
                        g(j13);
                    } else {
                        this.f11929k = 0;
                        this.f11932n = 0;
                    }
                } else if (i13 == 1835296868 || i13 == 1836476516 || i13 == 1751411826 || i13 == 1937011556 || i13 == 1937011827 || i13 == 1937011571 || i13 == 1668576371 || i13 == 1701606260 || i13 == 1937011555 || i13 == 1937011578 || i13 == 1937013298 || i13 == 1937007471 || i13 == 1668232756 || i13 == 1953196132 || i13 == 1718909296 || i13 == 1969517665 || i13 == 1801812339 || i13 == 1768715124) {
                    p113o3.r.M(i12 == 8);
                    p113o3.r.M(this.f11931m <= 2147483647L);
                    C1534jr c1534jr3 = new C1534jr((int) this.f11931m);
                    System.arraycopy(c1534jr2.f19515a, 0, c1534jr3.f19515a, 0, 8);
                    this.f11933o = c1534jr3;
                    this.f11929k = 1;
                } else {
                    m7.zzf();
                    this.f11933o = null;
                    this.f11929k = 1;
                }
            } else {
                if (i9 != 1) {
                    if (i9 == 2) {
                        long jZzf2 = m7.zzf();
                        int i15 = this.f11934p;
                        if (i15 == -1) {
                            int i16 = -1;
                            int i17 = -1;
                            boolean z8 = true;
                            boolean z9 = true;
                            int i18 = 0;
                            long j14 = Long.MAX_VALUE;
                            long j15 = Long.MAX_VALUE;
                            long j16 = Long.MAX_VALUE;
                            while (true) {
                                C2324z1[] c2324z1Arr = this.f11941w;
                                if (i18 >= c2324z1Arr.length) {
                                    break;
                                }
                                C2324z1 c2324z1 = c2324z1Arr[i18];
                                int i19 = c2324z1.f22109e;
                                G1 g8 = c2324z1.f22106b;
                                if (i19 != g8.f13463b) {
                                    long j17 = g8.f13464c[i19];
                                    long[][] jArr = this.f11942x;
                                    int i20 = Et.f13234a;
                                    long j18 = jArr[i18][i19];
                                    long j19 = j17 - jZzf2;
                                    boolean z10 = j19 < 0 || j19 >= PlaybackStateCompat.ACTION_SET_REPEAT_MODE;
                                    if (z10) {
                                        if (z10 == z9 && j19 < j16) {
                                            z9 = z10;
                                            i17 = i18;
                                            j15 = j18;
                                            j16 = j19;
                                        }
                                    } else if (z9) {
                                        z9 = z10;
                                        i17 = i18;
                                        j15 = j18;
                                        j16 = j19;
                                    } else {
                                        z9 = false;
                                        if (z10 == z9) {
                                            z9 = z10;
                                            i17 = i18;
                                            j15 = j18;
                                            j16 = j19;
                                        }
                                    }
                                    if (j18 < j14) {
                                        z8 = z10;
                                        i16 = i18;
                                        j14 = j18;
                                    }
                                }
                                i18++;
                            }
                            i15 = (j14 == Long.MAX_VALUE || !z8 || j15 < j14 + 10485760) ? i17 : i16;
                            this.f11934p = i15;
                            if (i15 == -1) {
                                return -1;
                            }
                        }
                        C2324z1 c2324z2 = this.f11941w[i15];
                        InterfaceC1234e0 interfaceC1234e0 = c2324z2.f22107c;
                        int i21 = c2324z2.f22109e;
                        G1 g9 = c2324z2.f22106b;
                        long j20 = g9.f13464c[i21];
                        int i22 = g9.f13465d[i21];
                        long j21 = (j20 - jZzf2) + ((long) this.f11935q);
                        if (j21 < 0 || j21 >= PlaybackStateCompat.ACTION_SET_REPEAT_MODE) {
                            wVar.f7458a = j20;
                            return 1;
                        }
                        D1 d6 = c2324z2.f22105a;
                        if (d6.f12744g == 1) {
                            j21 += 8;
                            i22 -= 8;
                        }
                        m7.q((int) j21);
                        C1804p0 c1804p0 = d6.f12743f;
                        if (Objects.equals(c1804p0.f20383m, "video/avc")) {
                            c8 = 1;
                        } else {
                            c8 = 1;
                            this.f11938t = true;
                        }
                        int i23 = d6.f12747j;
                        W0.M m8 = c2324z2.f22108d;
                        if (i23 == 0) {
                            if ("audio/ac4".equals(c1804p0.f20383m)) {
                                if (this.f11936r == 0) {
                                    AbstractC1717nH.f(i22, c1534jr);
                                    interfaceC1234e0.f(7, c1534jr);
                                    this.f11936r += 7;
                                }
                                i22 += 7;
                            } else if (m8 != null) {
                                m8.f(m7);
                            }
                            while (true) {
                                int i24 = this.f11936r;
                                if (i24 >= i22) {
                                    break;
                                }
                                int iE = interfaceC1234e0.e(m7, i22 - i24, false);
                                this.f11935q += iE;
                                this.f11936r += iE;
                                this.f11937s -= iE;
                            }
                        } else {
                            C1534jr c1534jr4 = this.f11922d;
                            byte[] bArr2 = c1534jr4.f19515a;
                            bArr2[0] = 0;
                            bArr2[c8] = 0;
                            bArr2[2] = 0;
                            int i25 = i23 + 1;
                            int i26 = 4 - i23;
                            while (this.f11936r < i22) {
                                int i27 = this.f11937s;
                                if (i27 == 0) {
                                    m7.h(i26, bArr2, i25);
                                    this.f11935q += i25;
                                    c1534jr4.j(0);
                                    int iR = c1534jr4.r();
                                    if (iR <= 0) {
                                        throw C0800Ka.a("Invalid NAL length", null);
                                    }
                                    this.f11937s = iR - 1;
                                    C1534jr c1534jr5 = this.f11921c;
                                    c1534jr5.j(0);
                                    interfaceC1234e0.f(4, c1534jr5);
                                    interfaceC1234e0.f(1, c1534jr4);
                                    this.f11936r += 5;
                                    i22 += i26;
                                    if (!this.f11938t && AbstractC2008sy.h(bArr2[4])) {
                                        this.f11938t = true;
                                    }
                                } else {
                                    int iE2 = interfaceC1234e0.e(m7, i27, false);
                                    this.f11935q += iE2;
                                    this.f11936r += iE2;
                                    this.f11937s -= iE2;
                                }
                            }
                        }
                        int i28 = i22;
                        long j22 = g9.f13467f[i21];
                        int i29 = g9.f13468g[i21];
                        if (!this.f11938t) {
                            i29 |= 67108864;
                        }
                        if (m8 != null) {
                            m8.e(interfaceC1234e0, j22, i29, i28, 0, null);
                            if (i21 + 1 == g9.f13463b) {
                                m8.d(interfaceC1234e0, null);
                            }
                        } else {
                            interfaceC1234e0.b(j22, i29, i28, 0, null);
                        }
                        c2324z2.f22109e++;
                        this.f11934p = -1;
                        this.f11935q = 0;
                        this.f11936r = 0;
                        this.f11937s = 0;
                        this.f11938t = true;
                        return 0;
                    }
                    ArrayList arrayList = this.f11927i;
                    C1 c10 = this.f11926h;
                    int i30 = c10.f12536b;
                    if (i30 != 0) {
                        if (i30 != 1) {
                            ArrayList arrayList2 = c10.f12535a;
                            char c11 = 2817;
                            short s7 = 2192;
                            if (i30 != 2) {
                                long jZzf3 = m7.zzf();
                                int iZzd = (int) ((m7.zzd() - m7.zzf()) - ((long) c10.f12537c));
                                C1534jr c1534jr6 = new C1534jr(iZzd);
                                m7.h(0, c1534jr6.f19515a, iZzd);
                                int i31 = 0;
                                while (i31 < arrayList2.size()) {
                                    B1 b8 = (B1) arrayList2.get(i31);
                                    ArrayList arrayList3 = arrayList2;
                                    c1534jr6.j((int) (b8.f12084a - jZzf3));
                                    c1534jr6.k(i10);
                                    int iS = c1534jr6.s();
                                    Charset charset = StandardCharsets.UTF_8;
                                    switch (c1534jr6.b(iS, charset)) {
                                        case "SlowMotion_Data":
                                            c9 = 2192;
                                            break;
                                        case "Super_SlowMotion_Edit_Data":
                                            c9 = 2819;
                                            break;
                                        case "Super_SlowMotion_Data":
                                            c9 = 2816;
                                            break;
                                        case "Super_SlowMotion_Deflickering_On":
                                            c9 = 2820;
                                            break;
                                        case "Super_SlowMotion_BGM":
                                            c9 = 2817;
                                            break;
                                        default:
                                            throw C0800Ka.a("Invalid SEF name", null);
                                    }
                                    int i32 = b8.f12085b - (iS + 8);
                                    if (c9 == 2192) {
                                        ArrayList arrayList4 = new ArrayList();
                                        List listS = C1.f12534e.s(c1534jr6.b(i32, charset));
                                        for (int i33 = 0; i33 < listS.size(); i33++) {
                                            List listS2 = C1.f12533d.s((CharSequence) listS.get(i33));
                                            if (listS2.size() != 3) {
                                                throw C0800Ka.a(null, null);
                                            }
                                            try {
                                                arrayList4.add(new X0(1 << (Integer.parseInt((String) listS2.get(2)) - 1), Long.parseLong((String) listS2.get(0)), Long.parseLong((String) listS2.get(1))));
                                            } catch (NumberFormatException e8) {
                                                throw C0800Ka.a(null, e8);
                                            }
                                        }
                                        arrayList.add(new Y0(arrayList4));
                                    } else if (c9 != 2816 && c9 != c11 && c9 != 2819 && c9 != 2820) {
                                        throw new IllegalStateException();
                                    }
                                    i31++;
                                    arrayList2 = arrayList3;
                                    c11 = 2817;
                                    i10 = 4;
                                }
                                wVar.f7458a = 0L;
                            } else {
                                long jZzd2 = m7.zzd();
                                int i34 = c10.f12537c - 20;
                                C1534jr c1534jr7 = new C1534jr(i34);
                                m7.h(0, c1534jr7.f19515a, i34);
                                int i35 = 0;
                                while (i35 < i34 / 12) {
                                    c1534jr7.k(2);
                                    byte[] bArr3 = c1534jr7.f19515a;
                                    int i36 = c1534jr7.f19516b;
                                    int i37 = bArr3[i36] & 255;
                                    c1534jr7.f19516b = i36 + 2;
                                    short s8 = (short) (i37 | ((bArr3[i36 + 1] & 255) << 8));
                                    if (s8 != s7 && s8 != 2816) {
                                        if (s8 != 2817) {
                                            if (s8 != 2819 && s8 != 2820) {
                                                c1534jr7.k(8);
                                            }
                                            i35++;
                                            jZzd2 = jZzd2;
                                            s7 = 2192;
                                        }
                                        arrayList2.add(new B1((jZzd2 - ((long) c10.f12537c)) - ((long) c1534jr7.s()), c1534jr7.s()));
                                        i35++;
                                        jZzd2 = jZzd2;
                                        s7 = 2192;
                                    }
                                    arrayList2.add(new B1((jZzd2 - ((long) c10.f12537c)) - ((long) c1534jr7.s()), c1534jr7.s()));
                                    i35++;
                                    jZzd2 = jZzd2;
                                    s7 = 2192;
                                }
                                if (arrayList2.isEmpty()) {
                                    wVar.f7458a = 0L;
                                } else {
                                    c10.f12536b = 3;
                                    wVar.f7458a = ((B1) arrayList2.get(0)).f12084a;
                                }
                            }
                        } else {
                            C1534jr c1534jr8 = new C1534jr(8);
                            m7.h(0, c1534jr8.f19515a, 8);
                            c10.f12537c = c1534jr8.s() + 8;
                            if (c1534jr8.r() != 1397048916) {
                                wVar.f7458a = 0L;
                            } else {
                                wVar.f7458a = m7.zzf() - ((long) (c10.f12537c - 12));
                                c10.f12536b = 2;
                            }
                        }
                        i8 = 1;
                    } else {
                        long jZzd3 = m7.zzd();
                        wVar.f7458a = (jZzd3 == -1 || jZzd3 < 8) ? 0L : jZzd3 - 8;
                        i8 = 1;
                        c10.f12536b = 1;
                    }
                    if (wVar.f7458a == 0) {
                        this.f11929k = 0;
                        this.f11932n = 0;
                    }
                    return i8;
                }
                long j23 = this.f11931m - ((long) this.f11932n);
                long jZzf4 = m7.zzf() + j23;
                C1534jr c1534jr9 = this.f11933o;
                if (c1534jr9 != null) {
                    m7.h(this.f11932n, c1534jr9.f19515a, (int) j23);
                    if (this.f11930l == 1718909296) {
                        this.f11939u = true;
                        c1534jr9.j(8);
                        int iR2 = c1534jr9.r();
                        int i38 = iR2 != 1751476579 ? iR2 != 1903435808 ? 0 : 1 : 2;
                        if (i38 == 0) {
                            c1534jr9.k(4);
                            do {
                                if (c1534jr9.o() <= 0) {
                                    i38 = 0;
                                    break;
                                }
                                int iR3 = c1534jr9.r();
                                i38 = iR3 != 1751476579 ? iR3 != 1903435808 ? 0 : 1 : 2;
                            } while (i38 == 0);
                        }
                        this.f11918A = i38;
                    } else if (!arrayDeque.isEmpty()) {
                        ((C1753o1) arrayDeque.peek()).f20219d.add(new C1805p1(this.f11930l, c1534jr9));
                    }
                } else {
                    if (!this.f11939u && this.f11930l == 1835295092) {
                        this.f11918A = 1;
                    }
                    if (j23 < PlaybackStateCompat.ACTION_SET_REPEAT_MODE) {
                        m7.q((int) j23);
                    } else {
                        wVar.f7458a = m7.zzf() + j23;
                        z7 = true;
                    }
                    g(jZzf4);
                    if (z7 && this.f11929k != 2) {
                        return 1;
                    }
                }
                z7 = false;
                g(jZzf4);
                if (z7) {
                    continue;
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.L
    public final boolean d(M m7) {
        PA paW;
        InterfaceC1131c0 interfaceC1131c0I = AbstractC1717nH.i(m7, false, false);
        if (interfaceC1131c0I != null) {
            paW = AbstractC2073uA.w(interfaceC1131c0I);
        } else {
            C1969sA c1969sA = AbstractC2073uA.f21207H;
            paW = PA.f15340K;
        }
        this.f11928j = paW;
        return interfaceC1131c0I == null;
    }

    @Override // com.google.android.gms.internal.ads.L
    public final void e(long j8, long j9) {
        this.f11925g.clear();
        this.f11932n = 0;
        this.f11934p = -1;
        this.f11935q = 0;
        this.f11936r = 0;
        this.f11937s = 0;
        this.f11938t = true;
        if (j8 == 0) {
            if (this.f11929k != 3) {
                this.f11929k = 0;
                this.f11932n = 0;
                return;
            } else {
                C1 c8 = this.f11926h;
                c8.f12535a.clear();
                c8.f12536b = 0;
                this.f11927i.clear();
                return;
            }
        }
        for (C2324z1 c2324z1 : this.f11941w) {
            G1 g8 = c2324z1.f22106b;
            int iK = Et.k(g8.f13467f, j9, false);
            while (true) {
                if (iK < 0) {
                    iK = -1;
                    break;
                } else if ((g8.f13468g[iK] & 1) != 0) {
                    break;
                } else {
                    iK--;
                }
            }
            if (iK == -1) {
                iK = g8.a(j9);
            }
            c2324z1.f22109e = iK;
            W0.M m7 = c2324z1.f22108d;
            if (m7 != null) {
                m7.f7341b = false;
                m7.f7342c = 0;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.L
    public final void f(N n7) {
        if ((this.f11920b & 16) == 0) {
            n7 = new X1(n7, this.f11919a);
        }
        this.f11940v = n7;
    }

    /* JADX WARN: Code duplicated, block: B:159:0x0310 A[Catch: all -> 0x00e4, TryCatch #1 {all -> 0x00e4, blocks: (B:34:0x00cc, B:36:0x00d8, B:39:0x00e7, B:43:0x00f4, B:46:0x0101, B:49:0x010e, B:52:0x011e, B:55:0x012b, B:57:0x0138, B:65:0x0155, B:66:0x0165, B:67:0x017b, B:70:0x018a, B:73:0x0197, B:76:0x01a4, B:79:0x01b1, B:82:0x01be, B:85:0x01cb, B:88:0x01d8, B:91:0x01e7, B:94:0x01f5, B:97:0x0202, B:101:0x0213, B:103:0x0217, B:105:0x022a, B:107:0x0232, B:109:0x023b, B:115:0x024b, B:121:0x0258, B:159:0x0310, B:122:0x026e, B:124:0x0275, B:126:0x0282, B:127:0x0296, B:140:0x02c2, B:143:0x02cf, B:146:0x02db, B:149:0x02e7, B:152:0x02f3, B:155:0x02ff, B:158:0x0309, B:160:0x0325, B:161:0x032c), top: B:371:0x00cc }] */
    /* JADX WARN: Code duplicated, block: B:204:0x03d5  */
    /* JADX WARN: Code duplicated, block: B:264:0x0579  */
    /* JADX WARN: Code duplicated, block: B:321:0x06b9  */
    /* JADX WARN: Instruction removed from duplicated block: B:159:0x0310, please report this as an issue */
    public final void g(long j8) {
        ArrayList arrayList;
        int i8;
        Q9 q9;
        Q9 q10;
        int i9;
        Q9 q11;
        int i10;
        ArrayList arrayList2;
        int i11;
        int i12;
        Q9 q9D;
        int i13;
        Gu gu;
        ArrayList arrayList3;
        Q9 q12;
        Q9 q9E;
        Q9 q13;
        int iX;
        int i14;
        Q9 q14;
        Parcelable parcelableR;
        int i15;
        String str;
        A1 a8 = this;
        while (true) {
            int i16 = 4;
            ArrayDeque arrayDeque = a8.f11925g;
            if (arrayDeque.isEmpty() || ((C1753o1) arrayDeque.peek()).f20218c != j8) {
                break;
            }
            C1753o1 c1753o1 = (C1753o1) arrayDeque.pop();
            if (c1753o1.f29448b == 1836019574) {
                ArrayList arrayList4 = new ArrayList();
                int i17 = a8.f11918A;
                T t7 = new T();
                C1805p1 c1805p1F = c1753o1.f(1969517665);
                int i18 = 1751411826;
                int i19 = 8;
                int i20 = 1768715124;
                int i21 = 1835365473;
                if (c1805p1F != null) {
                    byte[] bArr = AbstractC1908r1.f20670a;
                    C1534jr c1534jr = c1805p1F.f20397c;
                    c1534jr.j(8);
                    q9 = new Q9(-9223372036854775807L, new K9[0]);
                    while (c1534jr.o() >= i19) {
                        int i22 = c1534jr.f19516b;
                        int iR = c1534jr.r() + i22;
                        int iR2 = c1534jr.r();
                        if (iR2 == i21) {
                            c1534jr.j(i22);
                            c1534jr.k(i19);
                            int i23 = c1534jr.f19516b;
                            c1534jr.k(i16);
                            if (c1534jr.r() != i18) {
                                i23 += i16;
                            }
                            c1534jr.j(i23);
                            while (true) {
                                int i24 = c1534jr.f19516b;
                                if (i24 < iR) {
                                    int iR3 = c1534jr.r() + i24;
                                    if (c1534jr.r() == i20) {
                                        c1534jr.j(i24);
                                        c1534jr.k(i19);
                                        ArrayList arrayList5 = new ArrayList();
                                        while (true) {
                                            int i25 = c1534jr.f19516b;
                                            if (i25 >= iR3) {
                                                break;
                                            }
                                            int iR4 = c1534jr.r() + i25;
                                            int iR5 = c1534jr.r();
                                            int i26 = (iR5 >> 24) & 255;
                                            ArrayList arrayList6 = arrayList4;
                                            if (i26 == 169 || i26 == 253) {
                                                int i27 = iR5 & 16777215;
                                                if (i27 == 6516084) {
                                                    int iR6 = c1534jr.r();
                                                    if (c1534jr.r() == 1684108385) {
                                                        c1534jr.k(8);
                                                        String strA = c1534jr.a(iR6 - 16);
                                                        parcelableR = new N0("und", strA, strA);
                                                    } else {
                                                        Zo.f("MetadataUtil", "Failed to parse comment attribute: ".concat(p125q0.e.d(iR5)));
                                                        parcelableR = null;
                                                    }
                                                } else if (i27 == 7233901 || i27 == 7631467) {
                                                    parcelableR = Q3.b.R(iR5, "TIT2", c1534jr);
                                                } else if (i27 == 6516589 || i27 == 7828084) {
                                                    parcelableR = Q3.b.R(iR5, "TCOM", c1534jr);
                                                } else if (i27 == 6578553) {
                                                    parcelableR = Q3.b.R(iR5, "TDRC", c1534jr);
                                                } else if (i27 == 4280916) {
                                                    parcelableR = Q3.b.R(iR5, "TPE1", c1534jr);
                                                } else if (i27 == 7630703) {
                                                    parcelableR = Q3.b.R(iR5, "TSSE", c1534jr);
                                                } else if (i27 == 6384738) {
                                                    parcelableR = Q3.b.R(iR5, "TALB", c1534jr);
                                                } else if (i27 == 7108978) {
                                                    parcelableR = Q3.b.R(iR5, "USLT", c1534jr);
                                                } else if (i27 == 6776174) {
                                                    parcelableR = Q3.b.R(iR5, "TCON", c1534jr);
                                                } else if (i27 == 6779504) {
                                                    parcelableR = Q3.b.R(iR5, "TIT1", c1534jr);
                                                } else {
                                                    Zo.b("MetadataUtil", "Skipped unknown metadata entry: " + p125q0.e.d(iR5));
                                                    parcelableR = null;
                                                }
                                            } else if (iR5 == 1735291493) {
                                                try {
                                                    String strA2 = Q0.a(Q3.b.E(c1534jr) - 1);
                                                    if (strA2 != null) {
                                                        parcelableR = new U0("TCON", null, AbstractC2073uA.w(strA2));
                                                    } else {
                                                        Zo.f("MetadataUtil", "Failed to parse standard genre code");
                                                        parcelableR = null;
                                                    }
                                                } catch (Throwable th) {
                                                    c1534jr.j(iR4);
                                                    throw th;
                                                }
                                            } else if (iR5 == 1684632427) {
                                                parcelableR = Q3.b.N(1684632427, "TPOS", c1534jr);
                                            } else if (iR5 == 1953655662) {
                                                parcelableR = Q3.b.N(1953655662, "TRCK", c1534jr);
                                            } else if (iR5 == 1953329263) {
                                                parcelableR = Q3.b.J(1953329263, "TBPM", c1534jr, true, false);
                                            } else if (iR5 == 1668311404) {
                                                parcelableR = Q3.b.J(1668311404, "TCMP", c1534jr, true, true);
                                            } else if (iR5 == 1668249202) {
                                                int iR7 = c1534jr.r();
                                                if (c1534jr.r() == 1684108385) {
                                                    int iR8 = c1534jr.r() & 16777215;
                                                    if (iR8 == 13) {
                                                        i15 = iR8;
                                                        str = "image/jpeg";
                                                    } else {
                                                        i15 = 14;
                                                        if (iR8 == 14) {
                                                            str = "image/png";
                                                        } else {
                                                            i15 = iR8;
                                                            str = null;
                                                        }
                                                    }
                                                    if (str == null) {
                                                        Zo.f("MetadataUtil", "Unrecognized cover art flags: " + i15);
                                                        parcelableR = null;
                                                    } else {
                                                        c1534jr.k(4);
                                                        int i28 = iR7 - 16;
                                                        byte[] bArr2 = new byte[i28];
                                                        c1534jr.f(0, bArr2, i28);
                                                        parcelableR = new J0(str, null, 3, bArr2);
                                                    }
                                                } else {
                                                    Zo.f("MetadataUtil", "Failed to parse cover art attribute");
                                                    parcelableR = null;
                                                }
                                            } else if (iR5 == 1631670868) {
                                                parcelableR = Q3.b.R(1631670868, "TPE2", c1534jr);
                                            } else if (iR5 == 1936682605) {
                                                parcelableR = Q3.b.R(1936682605, "TSOT", c1534jr);
                                            } else if (iR5 == 1936679276) {
                                                parcelableR = Q3.b.R(1936679276, "TSOA", c1534jr);
                                            } else if (iR5 == 1936679282) {
                                                parcelableR = Q3.b.R(1936679282, "TSOP", c1534jr);
                                            } else if (iR5 == 1936679265) {
                                                parcelableR = Q3.b.R(1936679265, "TSO2", c1534jr);
                                            } else if (iR5 == 1936679791) {
                                                parcelableR = Q3.b.R(1936679791, "TSOC", c1534jr);
                                            } else if (iR5 == 1920233063) {
                                                parcelableR = Q3.b.J(1920233063, "ITUNESADVISORY", c1534jr, false, false);
                                            } else if (iR5 == 1885823344) {
                                                parcelableR = Q3.b.J(1885823344, "ITUNESGAPLESS", c1534jr, false, true);
                                            } else if (iR5 == 1936683886) {
                                                parcelableR = Q3.b.R(1936683886, "TVSHOWSORT", c1534jr);
                                            } else if (iR5 == 1953919848) {
                                                parcelableR = Q3.b.R(1953919848, "TVSHOW", c1534jr);
                                            } else {
                                                if (iR5 == 757935405) {
                                                    String strA3 = null;
                                                    String strA4 = null;
                                                    int i29 = -1;
                                                    int i30 = -1;
                                                    while (true) {
                                                        int i31 = c1534jr.f19516b;
                                                        if (i31 >= iR4) {
                                                            break;
                                                        }
                                                        int iR9 = c1534jr.r();
                                                        int iR10 = c1534jr.r();
                                                        c1534jr.k(4);
                                                        if (iR10 == 1835360622) {
                                                            strA4 = c1534jr.a(iR9 - 12);
                                                        } else {
                                                            int i32 = iR9 - 12;
                                                            if (iR10 == 1851878757) {
                                                                strA3 = c1534jr.a(i32);
                                                            } else {
                                                                if (iR10 == 1684108385) {
                                                                    i30 = iR9;
                                                                }
                                                                if (iR10 == 1684108385) {
                                                                    i29 = i31;
                                                                }
                                                                c1534jr.k(i32);
                                                            }
                                                        }
                                                    }
                                                    if (strA4 != null && strA3 != null && i29 != -1) {
                                                        c1534jr.j(i29);
                                                        c1534jr.k(16);
                                                        parcelableR = new R0(strA4, strA3, c1534jr.a(i30 - 16));
                                                    }
                                                } else {
                                                    Zo.b("MetadataUtil", "Skipped unknown metadata entry: " + p125q0.e.d(iR5));
                                                }
                                                parcelableR = null;
                                            }
                                            c1534jr.j(iR4);
                                            if (parcelableR != null) {
                                                arrayList5.add(parcelableR);
                                            }
                                            arrayList4 = arrayList6;
                                        }
                                        arrayList3 = arrayList4;
                                        if (!arrayList5.isEmpty()) {
                                            q14 = new Q9(arrayList5);
                                            break;
                                        }
                                        break;
                                    }
                                    c1534jr.j(iR3);
                                    i20 = 1768715124;
                                    i19 = 8;
                                } else {
                                    arrayList3 = arrayList4;
                                }
                                q14 = null;
                                break;
                            }
                            q9E = q9.e(q14);
                        } else {
                            arrayList3 = arrayList4;
                            if (iR2 == 1936553057) {
                                c1534jr.j(i22);
                                c1534jr.k(12);
                                while (true) {
                                    int i33 = c1534jr.f19516b;
                                    if (i33 < iR) {
                                        int iR11 = c1534jr.r();
                                        if (c1534jr.r() == 1935766900) {
                                            if (iR11 >= 16) {
                                                c1534jr.k(4);
                                                int i34 = -1;
                                                int i35 = 0;
                                                int i36 = 0;
                                                while (i35 < 2) {
                                                    int iW = c1534jr.w();
                                                    int iW2 = c1534jr.w();
                                                    if (iW == 0) {
                                                        i34 = iW2;
                                                        i14 = 1;
                                                    } else {
                                                        i14 = 1;
                                                        if (iW == 1) {
                                                            i36 = iW2;
                                                        }
                                                    }
                                                    i35 += i14;
                                                }
                                                if (i34 == 12) {
                                                    iX = 240;
                                                } else if (i34 == 13) {
                                                    iX = 120;
                                                } else if (i34 == 21 && c1534jr.o() >= 8 && c1534jr.f19516b + 8 <= iR) {
                                                    int iR12 = c1534jr.r();
                                                    int iR13 = c1534jr.r();
                                                    if (iR12 < 12 || iR13 != 1936877170) {
                                                        iX = -2147483647;
                                                    } else {
                                                        iX = c1534jr.x();
                                                    }
                                                } else {
                                                    iX = -2147483647;
                                                }
                                                if (iX != -2147483647) {
                                                    q13 = new Q9(-9223372036854775807L, new Z0(i36, iX));
                                                    break;
                                                }
                                                break;
                                            }
                                            break;
                                        }
                                        c1534jr.j(i33 + iR11);
                                    }
                                    q13 = null;
                                    break;
                                }
                                q9E = q9.e(q13);
                            } else {
                                if (iR2 == -1451722374) {
                                    short sD = c1534jr.d();
                                    c1534jr.k(2);
                                    String strB = c1534jr.b(sD, StandardCharsets.UTF_8);
                                    int iMax = Math.max(strB.lastIndexOf(43), strB.lastIndexOf(45));
                                    try {
                                        q12 = new Q9(-9223372036854775807L, new Vu(Float.parseFloat(strB.substring(0, iMax)), Float.parseFloat(strB.substring(iMax, strB.length() - 1))));
                                    } catch (IndexOutOfBoundsException | NumberFormatException unused) {
                                        q12 = null;
                                    }
                                    q9E = q9.e(q12);
                                }
                                c1534jr.j(iR);
                                arrayList4 = arrayList3;
                                i16 = 4;
                                i20 = 1768715124;
                                i18 = 1751411826;
                                i21 = 1835365473;
                                i19 = 8;
                            }
                        }
                        q9 = q9E;
                        c1534jr.j(iR);
                        arrayList4 = arrayList3;
                        i16 = 4;
                        i20 = 1768715124;
                        i18 = 1751411826;
                        i21 = 1835365473;
                        i19 = 8;
                    }
                    arrayList = arrayList4;
                    t7.b(q9);
                    i8 = 1835365473;
                } else {
                    arrayList = arrayList4;
                    i8 = 1835365473;
                    q9 = null;
                }
                C1753o1 c1753o1E = c1753o1.e(i8);
                if (c1753o1E != null) {
                    byte[] bArr3 = AbstractC1908r1.f20670a;
                    C1805p1 c1805p1F2 = c1753o1E.f(1751411826);
                    C1805p1 c1805p1F3 = c1753o1E.f(1801812339);
                    C1805p1 c1805p1F4 = c1753o1E.f(1768715124);
                    if (c1805p1F2 != null && c1805p1F3 != null && c1805p1F4 != null) {
                        C1534jr c1534jr2 = c1805p1F2.f20397c;
                        c1534jr2.j(16);
                        if (c1534jr2.r() == 1835299937) {
                            C1534jr c1534jr3 = c1805p1F3.f20397c;
                            c1534jr3.j(12);
                            int iR14 = c1534jr3.r();
                            String[] strArr = new String[iR14];
                            for (int i37 = 0; i37 < iR14; i37++) {
                                int iR15 = c1534jr3.r();
                                c1534jr3.k(4);
                                strArr[i37] = c1534jr3.b(iR15 - 8, StandardCharsets.UTF_8);
                            }
                            C1534jr c1534jr4 = c1805p1F4.f20397c;
                            c1534jr4.j(8);
                            ArrayList arrayList7 = new ArrayList();
                            for (int i38 = 8; c1534jr4.o() > i38; i38 = 8) {
                                int iR16 = c1534jr4.r() + c1534jr4.f19516b;
                                int iR17 = c1534jr4.r() - 1;
                                if (iR17 < 0 || iR17 >= iR14) {
                                    p000a.r.p("Skipped metadata with unknown key index: ", iR17, "AtomParsers");
                                } else {
                                    String str2 = strArr[iR17];
                                    while (true) {
                                        int i39 = c1534jr4.f19516b;
                                        if (i39 >= iR16) {
                                            gu = null;
                                            break;
                                        }
                                        int iR18 = c1534jr4.r();
                                        if (c1534jr4.r() == 1684108385) {
                                            int iR19 = c1534jr4.r();
                                            int iR20 = c1534jr4.r();
                                            int i40 = iR18 - 16;
                                            byte[] bArr4 = new byte[i40];
                                            c1534jr4.f(0, bArr4, i40);
                                            gu = new Gu(str2, bArr4, iR20, iR19);
                                            break;
                                        }
                                        c1534jr4.j(i39 + iR18);
                                    }
                                    if (gu != null) {
                                        arrayList7.add(gu);
                                    }
                                }
                                c1534jr4.j(iR16);
                            }
                            q10 = arrayList7.isEmpty() ? null : new Q9(arrayList7);
                        }
                    }
                }
                int i41 = 1;
                K9[] k9Arr = new K9[1];
                C1805p1 c1805p1F5 = c1753o1.f(1836476516);
                c1805p1F5.getClass();
                boolean z7 = i17 == 1;
                k9Arr[0] = AbstractC1908r1.a(c1805p1F5.f20397c);
                Q9 q15 = new Q9(-9223372036854775807L, k9Arr);
                ArrayList arrayListB = AbstractC1908r1.b(c1753o1, t7, -9223372036854775807L, null, false, z7, new C2064u1(i41));
                long j9 = -9223372036854775807L;
                int i42 = 0;
                int i43 = 0;
                int size = -1;
                while (i42 < arrayListB.size()) {
                    G1 g8 = (G1) arrayListB.get(i42);
                    if (g8.f13463b == 0) {
                        i9 = i43;
                        arrayList2 = arrayList;
                        i11 = 1;
                    } else {
                        D1 d6 = g8.f13462a;
                        long j10 = d6.f12742e;
                        if (j10 == -9223372036854775807L) {
                            j10 = g8.f13469h;
                        }
                        long jMax = Math.max(j9, j10);
                        N n7 = this.f11940v;
                        i9 = i43 + 1;
                        int i44 = d6.f12739b;
                        C2324z1 c2324z1 = new C2324z1(d6, g8, n7.h(i43, i44));
                        C1804p0 c1804p0 = d6.f12743f;
                        boolean zEquals = "audio/true-hd".equals(c1804p0.f20383m);
                        int i45 = g8.f13466e;
                        int i46 = zEquals ? i45 * 16 : i45 + 30;
                        K k8 = new K(c1804p0);
                        k8.f14272m = i46;
                        if (i44 == 2) {
                            if ((this.f11920b & 8) != 0) {
                                k8.f14265f = c1804p0.f20376f | (size == -1 ? 1 : 2);
                            }
                            if (j10 > 0 && (i13 = g8.f13463b) > 0) {
                                k8.f14279t = i13 / (j10 / 1000000.0f);
                            }
                        }
                        if (i44 == 1 && t7.a()) {
                            k8.f14255C = t7.f16572a;
                            k8.f14256D = t7.f16573b;
                        }
                        ArrayList arrayList8 = this.f11927i;
                        Q9[] q9Arr = new Q9[3];
                        if (arrayList8.isEmpty()) {
                            i10 = 0;
                            q11 = null;
                        } else {
                            q11 = new Q9(arrayList8);
                            i10 = 0;
                        }
                        q9Arr[i10] = q11;
                        q9Arr[1] = q9;
                        q9Arr[2] = q15;
                        Q9 q16 = new Q9(-9223372036854775807L, new K9[i10]);
                        if (q10 != null) {
                            int i47 = 0;
                            while (true) {
                                K9[] k9Arr2 = q10.f15993G;
                                if (i47 >= k9Arr2.length) {
                                    break;
                                }
                                K9 k9 = k9Arr2[i47];
                                if (k9 instanceof Gu) {
                                    Gu gu2 = (Gu) k9;
                                    if (!gu2.f13651G.equals("com.android.capture.fps")) {
                                        i12 = 1;
                                        q9D = q16.d(gu2);
                                    } else if (i44 == 2) {
                                        i12 = 1;
                                        q9D = q16.d(gu2);
                                    } else {
                                        i12 = 1;
                                    }
                                    q16 = q9D;
                                } else {
                                    i12 = 1;
                                }
                                i47 += i12;
                            }
                        }
                        for (int i48 = 0; i48 < 3; i48++) {
                            q16 = q16.e(q9Arr[i48]);
                        }
                        if (q16.f15993G.length > 0) {
                            k8.f14269j = q16;
                        }
                        c2324z1.f22107c.d(new C1804p0(k8));
                        if (i44 == 2 && size == -1) {
                            size = arrayList.size();
                        }
                        arrayList2 = arrayList;
                        arrayList2.add(c2324z1);
                        j9 = jMax;
                        i11 = 1;
                    }
                    i42 += i11;
                    arrayList = arrayList2;
                    arrayListB = arrayListB;
                    i43 = i9;
                }
                a8 = this;
                a8.f11943y = size;
                a8.f11944z = j9;
                C2324z1[] c2324z1Arr = (C2324z1[]) arrayList.toArray(new C2324z1[0]);
                a8.f11941w = c2324z1Arr;
                int length = c2324z1Arr.length;
                long[][] jArr = new long[length][];
                int[] iArr = new int[length];
                long[] jArr2 = new long[length];
                boolean[] zArr = new boolean[length];
                for (int i49 = 0; i49 < c2324z1Arr.length; i49++) {
                    jArr[i49] = new long[c2324z1Arr[i49].f22106b.f13463b];
                    jArr2[i49] = c2324z1Arr[i49].f22106b.f13467f[0];
                }
                long j11 = 0;
                int i50 = 0;
                while (i50 < c2324z1Arr.length) {
                    long j12 = Long.MAX_VALUE;
                    int i51 = -1;
                    for (int i52 = 0; i52 < c2324z1Arr.length; i52++) {
                        if (!zArr[i52]) {
                            long j13 = jArr2[i52];
                            if (j13 <= j12) {
                                i51 = i52;
                                j12 = j13;
                            }
                        }
                    }
                    int i53 = iArr[i51];
                    long[] jArr3 = jArr[i51];
                    jArr3[i53] = j11;
                    G1 g9 = c2324z1Arr[i51].f22106b;
                    int[] iArr2 = iArr;
                    j11 += (long) g9.f13465d[i53];
                    int i54 = i53 + 1;
                    iArr2[i51] = i54;
                    if (i54 < jArr3.length) {
                        jArr2[i51] = g9.f13467f[i54];
                    } else {
                        zArr[i51] = true;
                        i50++;
                    }
                    iArr = iArr2;
                }
                a8.f11942x = jArr;
                a8.f11940v.f();
                a8.f11940v.g(a8);
                arrayDeque.clear();
                a8.f11929k = 2;
            } else if (!arrayDeque.isEmpty()) {
                ((C1753o1) arrayDeque.peek()).f20220e.add(c1753o1);
            }
        }
        if (a8.f11929k != 2) {
            a8.f11929k = 0;
            a8.f11932n = 0;
        }
    }

    @Override // com.google.android.gms.internal.ads.Y
    public final long zza() {
        return this.f11944z;
    }

    @Override // com.google.android.gms.internal.ads.L
    public final /* synthetic */ List zzd() {
        return this.f11928j;
    }

    @Override // com.google.android.gms.internal.ads.Y
    public final boolean zzh() {
        return true;
    }

    public A1(int i8, C1561kH c1561kH) {
        this.f11919a = c1561kH;
        this.f11920b = i8;
        C1969sA c1969sA = AbstractC2073uA.f21207H;
        this.f11928j = PA.f15340K;
        this.f11929k = 0;
        this.f11926h = new C1();
        this.f11927i = new ArrayList();
        this.f11924f = new C1534jr(16);
        this.f11925g = new ArrayDeque();
        this.f11921c = new C1534jr(AbstractC2008sy.f21015a);
        this.f11922d = new C1534jr(5);
        this.f11923e = new C1534jr();
        this.f11934p = -1;
        this.f11940v = N.f14836n;
        this.f11941w = new C2324z1[0];
        this.f11938t = true;
    }
}
