package p111o1;

import C0.C0083h;
import F2.G;
import W0.A;
import W0.AbstractC0368a;
import W0.F;
import W0.J;
import W0.L;
import W0.s;
import W0.t;
import W0.u;
import W0.w;
import android.support.v4.media.session.PlaybackStateCompat;
import com.google.android.gms.internal.measurement.H1;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import p073j1.b;
import p094m0.C3135s;
import p094m0.C3136t;
import p094m0.N;
import p094m0.O;
import p094m0.P;
import p117p0.E;
import p117p0.M;
import p125q0.a;
import p125q0.c;
import p125q0.d;
import p125q0.p;
import p126q1.k;
import p126q1.n;
import z4.H;
import z4.d0;

/* JADX INFO: loaded from: classes.dex */
public final class l implements s, F {

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public long[][] f27760A;

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public int f27761B;

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public long f27762C;

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public int f27763D;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final k f27764a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f27765b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final E f27766c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final E f27767d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final E f27768e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final E f27769f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final ArrayDeque f27770g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final n f27771h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ArrayList f27772i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public d0 f27773j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f27774k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f27775l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public long f27776m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f27777n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public E f27778o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f27779p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f27780q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f27781r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f27782s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f27783t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f27784u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f27785v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f27786w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public long f27787x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public u f27788y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public k[] f27789z;

    public l(int i8, G g8) {
        this.f27764a = g8;
        this.f27765b = i8;
        z4.F f8 = H.f31804H;
        this.f27773j = d0.f31844K;
        this.f27774k = 0;
        this.f27771h = new n();
        this.f27772i = new ArrayList();
        this.f27769f = new E(16);
        this.f27770g = new ArrayDeque();
        this.f27766c = new E(p.f29508a);
        this.f27767d = new E(6);
        this.f27768e = new E();
        this.f27779p = -1;
        this.f27788y = u.f7457l;
        this.f27789z = new k[0];
    }

    @Override // W0.s
    public final void d(u uVar) {
        if ((this.f27765b & 16) == 0) {
            uVar = new n(uVar, this.f27764a);
        }
        this.f27788y = uVar;
    }

    @Override // W0.F
    public final boolean f() {
        return true;
    }

    @Override // W0.s
    public final boolean g(t tVar) {
        d0 d0VarX;
        J jB = o.b(tVar, false, false);
        if (jB != null) {
            d0VarX = H.x(jB);
        } else {
            z4.F f8 = H.f31804H;
            d0VarX = d0.f31844K;
        }
        this.f27773j = d0VarX;
        return jB == null;
    }

    /* JADX WARN: Code duplicated, block: B:250:0x04d8  */
    /* JADX WARN: Code duplicated, block: B:354:0x04e0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:355:0x04cd A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:356:0x04db A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:395:0x0006 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:396:0x0006 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:403:0x0146 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:405:0x00b7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:408:0x0153 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:46:0x00be  */
    /* JADX WARN: Code duplicated, block: B:47:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:48:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:49:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:50:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:53:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:54:0x00d5 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:62:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:65:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:67:0x010e  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // W0.s
    public final int h(t tVar, w wVar) throws P {
        int i8;
        int i9;
        int i10;
        int i11;
        byte b8;
        char c8;
        int i12;
        ArrayList arrayList;
        List listB;
        int i13;
        List listB2;
        boolean z7;
        int i14;
        c cVar;
        while (true) {
            int i15 = this.f27774k;
            ArrayDeque arrayDeque = this.f27770g;
            E e8 = this.f27768e;
            if (i15 != 0) {
                int i16 = 4;
                if (i15 != 1) {
                    if (i15 == 2) {
                        long jR = tVar.r();
                        if (this.f27779p == -1) {
                            int i17 = 0;
                            int i18 = -1;
                            int i19 = -1;
                            boolean z8 = true;
                            boolean z9 = true;
                            long j8 = Long.MAX_VALUE;
                            long j9 = Long.MAX_VALUE;
                            long j10 = Long.MAX_VALUE;
                            while (true) {
                                k[] kVarArr = this.f27789z;
                                if (i17 >= kVarArr.length) {
                                    break;
                                }
                                k kVar = kVarArr[i17];
                                int i20 = kVar.f27759e;
                                s sVar = kVar.f27756b;
                                if (i20 != sVar.f27833b) {
                                    long j11 = sVar.f27834c[i20];
                                    long[][] jArr = this.f27760A;
                                    String str = M.f28050a;
                                    long j12 = jArr[i17][i20];
                                    long j13 = j11 - jR;
                                    boolean z10 = j13 < 0 || j13 >= PlaybackStateCompat.ACTION_SET_REPEAT_MODE;
                                    if ((!z10 && z9) || (z10 == z9 && j13 < j10)) {
                                        z9 = z10;
                                        i19 = i17;
                                        j10 = j13;
                                        j9 = j12;
                                    }
                                    if (j12 < j8) {
                                        z8 = z10;
                                        i18 = i17;
                                        j8 = j12;
                                    }
                                }
                                i17++;
                            }
                            if (j8 == Long.MAX_VALUE || !z8 || j9 < j8 + 10485760) {
                                i18 = i19;
                            }
                            this.f27779p = i18;
                            if (i18 == -1) {
                                return -1;
                            }
                        }
                        k kVar2 = this.f27789z[this.f27779p];
                        L l4 = kVar2.f27757c;
                        int i21 = kVar2.f27759e;
                        s sVar2 = kVar2.f27756b;
                        long j14 = sVar2.f27834c[i21] + this.f27787x;
                        int[] iArr = sVar2.f27835d;
                        int i22 = iArr[i21];
                        long j15 = (j14 - jR) + ((long) this.f27780q);
                        if (j15 < 0 || j15 >= PlaybackStateCompat.ACTION_SET_REPEAT_MODE) {
                            wVar.f7458a = j14;
                            return 1;
                        }
                        p pVar = kVar2.f27755a;
                        if (pVar.f27805h == 1) {
                            j15 += 8;
                            i22 -= 8;
                        }
                        tVar.n((int) j15);
                        C3136t c3136t = pVar.f27804g;
                        boolean zEquals = Objects.equals(c3136t.f27041o, "video/avc");
                        String str2 = c3136t.f27041o;
                        if (!zEquals) {
                            Objects.equals(str2, "video/hevc");
                        }
                        this.f27783t = true;
                        int i23 = pVar.f27808k;
                        W0.M m7 = kVar2.f27758d;
                        if (i23 == 0) {
                            if ("audio/ac4".equals(str2)) {
                                if (this.f27781r == 0) {
                                    AbstractC0368a.b(i22, e8);
                                    l4.e(7, e8);
                                    this.f27781r += 7;
                                }
                                i22 += 7;
                            } else if (m7 != null) {
                                m7.c(tVar);
                            }
                            while (true) {
                                int i24 = this.f27781r;
                                if (i24 >= i22) {
                                    break;
                                }
                                int iF = l4.f(tVar, i22 - i24, false);
                                this.f27780q += iF;
                                this.f27781r += iF;
                                this.f27782s -= iF;
                            }
                        } else {
                            E e9 = this.f27767d;
                            byte[] bArr = e9.f28035a;
                            bArr[0] = 0;
                            bArr[1] = 0;
                            bArr[2] = 0;
                            int i25 = 4 - i23;
                            i22 += i25;
                            while (this.f27781r < i22) {
                                int i26 = this.f27782s;
                                if (i26 == 0) {
                                    if (this.f27783t || p.e(c3136t) + i23 > iArr[i21] - this.f27780q) {
                                        i9 = i23;
                                        i10 = 0;
                                    } else {
                                        int iE = p.e(c3136t);
                                        i10 = iE;
                                        i9 = i23 + iE;
                                    }
                                    tVar.readFully(bArr, i25, i9);
                                    i8 = i23;
                                    this.f27780q += i9;
                                    e9.L(0);
                                    int iL = e9.l();
                                    if (iL < 0) {
                                        throw P.a("Invalid NAL length", null);
                                    }
                                    this.f27782s = iL - i10;
                                    E e10 = this.f27766c;
                                    e10.L(0);
                                    l4.e(4, e10);
                                    this.f27781r += 4;
                                    if (i10 > 0) {
                                        l4.e(i10, e9);
                                        this.f27781r += i10;
                                        if (p.d(bArr, i10, c3136t)) {
                                            this.f27783t = true;
                                        }
                                    }
                                } else {
                                    i8 = i23;
                                    int iF2 = l4.f(tVar, i26, false);
                                    this.f27780q += iF2;
                                    this.f27781r += iF2;
                                    this.f27782s -= iF2;
                                }
                                i23 = i8;
                            }
                        }
                        long j16 = sVar2.f27837f[i21];
                        int i27 = sVar2.f27838g[i21];
                        if (!this.f27783t) {
                            i27 |= 67108864;
                        }
                        if (m7 != null) {
                            m7.b(l4, j16, i27, i22, 0, null);
                            if (i21 + 1 == sVar2.f27833b) {
                                m7.a(l4, null);
                            }
                        } else {
                            l4.d(j16, i27, i22, 0, null);
                        }
                        kVar2.f27759e++;
                        this.f27779p = -1;
                        this.f27780q = 0;
                        this.f27781r = 0;
                        this.f27782s = 0;
                        this.f27783t = false;
                        return 0;
                    }
                    if (i15 != 3) {
                        throw new IllegalStateException();
                    }
                    ArrayList arrayList2 = this.f27772i;
                    n nVar = this.f27771h;
                    int i28 = nVar.f27795b;
                    if (i28 != 0) {
                        if (i28 != 1) {
                            ArrayList arrayList3 = nVar.f27794a;
                            short s7 = 2817;
                            short s8 = 2192;
                            if (i28 == 2) {
                                long j17 = tVar.j();
                                int i29 = nVar.f27796c - 20;
                                E e11 = new E(i29);
                                tVar.readFully(e11.f28035a, 0, i29);
                                int i30 = 0;
                                while (i30 < i29 / 12) {
                                    e11.M(2);
                                    short sP = e11.p();
                                    if (sP != s8 && sP != 2816 && sP != s7) {
                                        if (sP != 2819 && sP != 2820) {
                                            e11.M(8);
                                        }
                                        i30++;
                                        j17 = j17;
                                        s7 = 2817;
                                        s8 = 2192;
                                    }
                                    arrayList3.add(new m((j17 - ((long) nVar.f27796c)) - ((long) e11.n()), e11.n()));
                                    i30++;
                                    j17 = j17;
                                    s7 = 2817;
                                    s8 = 2192;
                                }
                                if (arrayList3.isEmpty()) {
                                    wVar.f7458a = 0L;
                                } else {
                                    nVar.f27795b = 3;
                                    wVar.f7458a = ((m) arrayList3.get(0)).f27790a;
                                }
                            } else {
                                if (i28 != 3) {
                                    throw new IllegalStateException();
                                }
                                long jR2 = tVar.r();
                                int iJ = (int) ((tVar.j() - tVar.r()) - ((long) nVar.f27796c));
                                E e12 = new E(iJ);
                                tVar.readFully(e12.f28035a, 0, iJ);
                                int i31 = 0;
                                while (i31 < arrayList3.size()) {
                                    m mVar = (m) arrayList3.get(i31);
                                    e12.L((int) (mVar.f27790a - jR2));
                                    e12.M(i16);
                                    int iN = e12.n();
                                    Charset charset = StandardCharsets.UTF_8;
                                    String strX = e12.x(iN, charset);
                                    switch (strX.hashCode()) {
                                        case -1711564334:
                                            if (strX.equals("SlowMotion_Data")) {
                                                b8 = 0;
                                            }
                                            switch (b8) {
                                                case 0:
                                                    c8 = 2192;
                                                    break;
                                                case 1:
                                                    c8 = 2819;
                                                    break;
                                                case 2:
                                                    c8 = 2816;
                                                    break;
                                                case 3:
                                                    c8 = 2820;
                                                    break;
                                                case 4:
                                                    c8 = 2817;
                                                    break;
                                                default:
                                                    throw P.a("Invalid SEF name", null);
                                            }
                                            i12 = mVar.f27791b - (iN + 8);
                                            if (c8 != 2192) {
                                                arrayList = new ArrayList();
                                                listB = n.f27793e.b(e12.x(i12, charset));
                                                for (i13 = 0; i13 < listB.size(); i13++) {
                                                    listB2 = n.f27792d.b((CharSequence) listB.get(i13));
                                                    if (listB2.size() == 3) {
                                                        throw P.a(null, null);
                                                    }
                                                    try {
                                                        arrayList.add(new b(1 << (Integer.parseInt((String) listB2.get(2)) - 1), Long.parseLong((String) listB2.get(0)), Long.parseLong((String) listB2.get(1))));
                                                    } catch (NumberFormatException e13) {
                                                        throw P.a(null, e13);
                                                    }
                                                }
                                                arrayList2.add(new p073j1.c(arrayList));
                                            } else if (c8 != 2816 && c8 != 2817 && c8 != 2819 && c8 != 2820) {
                                                throw new IllegalStateException();
                                            }
                                            i31++;
                                            i16 = 4;
                                            break;
                                        case -1332107749:
                                            if (strX.equals("Super_SlowMotion_Edit_Data")) {
                                                b8 = 1;
                                            }
                                            switch (b8) {
                                                case 0:
                                                    c8 = 2192;
                                                    break;
                                                case 1:
                                                    c8 = 2819;
                                                    break;
                                                case 2:
                                                    c8 = 2816;
                                                    break;
                                                case 3:
                                                    c8 = 2820;
                                                    break;
                                                case 4:
                                                    c8 = 2817;
                                                    break;
                                                default:
                                                    throw P.a("Invalid SEF name", null);
                                            }
                                            i12 = mVar.f27791b - (iN + 8);
                                            if (c8 != 2192) {
                                                arrayList = new ArrayList();
                                                listB = n.f27793e.b(e12.x(i12, charset));
                                                while (i13 < listB.size()) {
                                                    listB2 = n.f27792d.b((CharSequence) listB.get(i13));
                                                    if (listB2.size() == 3) {
                                                        throw P.a(null, null);
                                                    }
                                                    arrayList.add(new b(1 << (Integer.parseInt((String) listB2.get(2)) - 1), Long.parseLong((String) listB2.get(0)), Long.parseLong((String) listB2.get(1))));
                                                }
                                                arrayList2.add(new p073j1.c(arrayList));
                                            } else if (c8 != 2816) {
                                                continue;
                                            }
                                            i31++;
                                            i16 = 4;
                                            break;
                                        case -1251387154:
                                            if (strX.equals("Super_SlowMotion_Data")) {
                                                b8 = 2;
                                            }
                                            switch (b8) {
                                                case 0:
                                                    c8 = 2192;
                                                    break;
                                                case 1:
                                                    c8 = 2819;
                                                    break;
                                                case 2:
                                                    c8 = 2816;
                                                    break;
                                                case 3:
                                                    c8 = 2820;
                                                    break;
                                                case 4:
                                                    c8 = 2817;
                                                    break;
                                                default:
                                                    throw P.a("Invalid SEF name", null);
                                            }
                                            i12 = mVar.f27791b - (iN + 8);
                                            if (c8 != 2192) {
                                                arrayList = new ArrayList();
                                                listB = n.f27793e.b(e12.x(i12, charset));
                                                while (i13 < listB.size()) {
                                                    listB2 = n.f27792d.b((CharSequence) listB.get(i13));
                                                    if (listB2.size() == 3) {
                                                        throw P.a(null, null);
                                                    }
                                                    arrayList.add(new b(1 << (Integer.parseInt((String) listB2.get(2)) - 1), Long.parseLong((String) listB2.get(0)), Long.parseLong((String) listB2.get(1))));
                                                }
                                                arrayList2.add(new p073j1.c(arrayList));
                                            } else if (c8 != 2816) {
                                                continue;
                                            }
                                            i31++;
                                            i16 = 4;
                                            break;
                                        case -830665521:
                                            if (strX.equals("Super_SlowMotion_Deflickering_On")) {
                                                b8 = 3;
                                            }
                                            switch (b8) {
                                                case 0:
                                                    c8 = 2192;
                                                    break;
                                                case 1:
                                                    c8 = 2819;
                                                    break;
                                                case 2:
                                                    c8 = 2816;
                                                    break;
                                                case 3:
                                                    c8 = 2820;
                                                    break;
                                                case 4:
                                                    c8 = 2817;
                                                    break;
                                                default:
                                                    throw P.a("Invalid SEF name", null);
                                            }
                                            i12 = mVar.f27791b - (iN + 8);
                                            if (c8 != 2192) {
                                                arrayList = new ArrayList();
                                                listB = n.f27793e.b(e12.x(i12, charset));
                                                while (i13 < listB.size()) {
                                                    listB2 = n.f27792d.b((CharSequence) listB.get(i13));
                                                    if (listB2.size() == 3) {
                                                        throw P.a(null, null);
                                                    }
                                                    arrayList.add(new b(1 << (Integer.parseInt((String) listB2.get(2)) - 1), Long.parseLong((String) listB2.get(0)), Long.parseLong((String) listB2.get(1))));
                                                }
                                                arrayList2.add(new p073j1.c(arrayList));
                                            } else if (c8 != 2816) {
                                                continue;
                                            }
                                            i31++;
                                            i16 = 4;
                                            break;
                                        case 1760745220:
                                            if (strX.equals("Super_SlowMotion_BGM")) {
                                                b8 = 4;
                                            }
                                            switch (b8) {
                                                case 0:
                                                    c8 = 2192;
                                                    break;
                                                case 1:
                                                    c8 = 2819;
                                                    break;
                                                case 2:
                                                    c8 = 2816;
                                                    break;
                                                case 3:
                                                    c8 = 2820;
                                                    break;
                                                case 4:
                                                    c8 = 2817;
                                                    break;
                                                default:
                                                    throw P.a("Invalid SEF name", null);
                                            }
                                            i12 = mVar.f27791b - (iN + 8);
                                            if (c8 != 2192) {
                                                arrayList = new ArrayList();
                                                listB = n.f27793e.b(e12.x(i12, charset));
                                                while (i13 < listB.size()) {
                                                    listB2 = n.f27792d.b((CharSequence) listB.get(i13));
                                                    if (listB2.size() == 3) {
                                                        throw P.a(null, null);
                                                    }
                                                    arrayList.add(new b(1 << (Integer.parseInt((String) listB2.get(2)) - 1), Long.parseLong((String) listB2.get(0)), Long.parseLong((String) listB2.get(1))));
                                                }
                                                arrayList2.add(new p073j1.c(arrayList));
                                            } else if (c8 != 2816) {
                                                continue;
                                            }
                                            i31++;
                                            i16 = 4;
                                            break;
                                    }
                                    b8 = -1;
                                    switch (b8) {
                                        case 0:
                                            c8 = 2192;
                                            break;
                                        case 1:
                                            c8 = 2819;
                                            break;
                                        case 2:
                                            c8 = 2816;
                                            break;
                                        case 3:
                                            c8 = 2820;
                                            break;
                                        case 4:
                                            c8 = 2817;
                                            break;
                                        default:
                                            throw P.a("Invalid SEF name", null);
                                    }
                                    i12 = mVar.f27791b - (iN + 8);
                                    if (c8 != 2192) {
                                        arrayList = new ArrayList();
                                        listB = n.f27793e.b(e12.x(i12, charset));
                                        while (i13 < listB.size()) {
                                            listB2 = n.f27792d.b((CharSequence) listB.get(i13));
                                            if (listB2.size() == 3) {
                                                throw P.a(null, null);
                                            }
                                            arrayList.add(new b(1 << (Integer.parseInt((String) listB2.get(2)) - 1), Long.parseLong((String) listB2.get(0)), Long.parseLong((String) listB2.get(1))));
                                        }
                                        arrayList2.add(new p073j1.c(arrayList));
                                    } else if (c8 != 2816) {
                                        continue;
                                    }
                                    i31++;
                                    i16 = 4;
                                }
                                wVar.f7458a = 0L;
                            }
                        } else {
                            E e14 = new E(8);
                            tVar.readFully(e14.f28035a, 0, 8);
                            nVar.f27796c = e14.n() + 8;
                            if (e14.l() != 1397048916) {
                                wVar.f7458a = 0L;
                            } else {
                                wVar.f7458a = tVar.r() - ((long) (nVar.f27796c - 12));
                                nVar.f27795b = 2;
                            }
                        }
                        i11 = 1;
                    } else {
                        long j18 = tVar.j();
                        wVar.f7458a = (j18 == -1 || j18 < 8) ? 0L : j18 - 8;
                        i11 = 1;
                        nVar.f27795b = 1;
                    }
                    if (wVar.f7458a == 0) {
                        this.f27774k = 0;
                        this.f27777n = 0;
                    }
                    return i11;
                }
                long j19 = this.f27776m - ((long) this.f27777n);
                long jR3 = tVar.r() + j19;
                E e15 = this.f27778o;
                if (e15 != null) {
                    tVar.readFully(e15.f28035a, this.f27777n, (int) j19);
                    if (this.f27775l == 1718909296) {
                        this.f27784u = true;
                        e15.L(8);
                        int iL2 = e15.l();
                        int i32 = iL2 != 1751476579 ? iL2 != 1903435808 ? 0 : 1 : 2;
                        if (i32 == 0) {
                            e15.M(4);
                            do {
                                if (e15.a() <= 0) {
                                    i32 = 0;
                                    break;
                                }
                                int iL3 = e15.l();
                                i32 = iL3 != 1751476579 ? iL3 != 1903435808 ? 0 : 1 : 2;
                            } while (i32 == 0);
                        }
                        this.f27763D = i32;
                    } else if (!arrayDeque.isEmpty()) {
                        ((c) arrayDeque.peek()).f29444d.add(new d(this.f27775l, e15));
                    }
                } else {
                    if (!this.f27784u && this.f27775l == 1835295092) {
                        this.f27763D = 1;
                    }
                    if (j19 < PlaybackStateCompat.ACTION_SET_REPEAT_MODE) {
                        tVar.n((int) j19);
                    } else {
                        wVar.f7458a = tVar.r() + j19;
                        z7 = true;
                    }
                    n(jR3);
                    if (this.f27785v) {
                        i14 = 1;
                        this.f27786w = true;
                        wVar.f7458a = 0L;
                        this.f27785v = false;
                    } else {
                        i14 = 1;
                        if (z7) {
                            continue;
                        }
                    }
                    if (this.f27774k != 2) {
                        return i14;
                    }
                }
                z7 = false;
                n(jR3);
                if (this.f27785v) {
                    i14 = 1;
                    this.f27786w = true;
                    wVar.f7458a = 0L;
                    this.f27785v = false;
                } else {
                    i14 = 1;
                    if (z7) {
                        continue;
                    }
                }
                if (this.f27774k != 2) {
                    return i14;
                }
            } else {
                int i33 = this.f27777n;
                E e16 = this.f27769f;
                if (i33 == 0) {
                    if (!tVar.b(e16.f28035a, 0, 8, true)) {
                        return -1;
                    }
                    this.f27777n = 8;
                    e16.L(0);
                    this.f27776m = e16.B();
                    this.f27775l = e16.l();
                }
                long j20 = this.f27776m;
                if (j20 == 1) {
                    tVar.readFully(e16.f28035a, 8, 8);
                    this.f27777n += 8;
                    this.f27776m = e16.E();
                } else if (j20 == 0) {
                    long j21 = tVar.j();
                    if (j21 == -1 && (cVar = (c) arrayDeque.peek()) != null) {
                        j21 = cVar.f29443c;
                    }
                    if (j21 != -1) {
                        this.f27776m = (j21 - tVar.r()) + ((long) this.f27777n);
                    }
                }
                long j22 = this.f27776m;
                int i34 = this.f27777n;
                if (j22 < i34) {
                    throw P.c("Atom size less than header length (unsupported).");
                }
                int i35 = this.f27775l;
                if (i35 == 1836019574 || i35 == 1953653099 || i35 == 1835297121 || i35 == 1835626086 || i35 == 1937007212 || i35 == 1701082227 || i35 == 1835365473 || i35 == 1635284069) {
                    long jR4 = tVar.r();
                    long j23 = this.f27776m;
                    long j24 = this.f27777n;
                    long j25 = (jR4 + j23) - j24;
                    if (j23 != j24 && this.f27775l == 1835365473) {
                        e8.I(8);
                        tVar.c(0, e8.f28035a, 8);
                        e.a(e8);
                        tVar.n(e8.f28036b);
                        tVar.m();
                    }
                    arrayDeque.push(new c(this.f27775l, j25));
                    if (this.f27776m == this.f27777n) {
                        n(j25);
                    } else {
                        this.f27774k = 0;
                        this.f27777n = 0;
                    }
                } else if (i35 == 1835296868 || i35 == 1836476516 || i35 == 1751411826 || i35 == 1937011556 || i35 == 1937011827 || i35 == 1937011571 || i35 == 1668576371 || i35 == 1701606260 || i35 == 1937011555 || i35 == 1937011578 || i35 == 1937013298 || i35 == 1937007471 || i35 == 1668232756 || i35 == 1953196132 || i35 == 1718909296 || i35 == 1969517665 || i35 == 1801812339 || i35 == 1768715124) {
                    H1.i(i34 == 8);
                    H1.i(this.f27776m <= 2147483647L);
                    E e17 = new E((int) this.f27776m);
                    System.arraycopy(e16.f28035a, 0, e17.f28035a, 0, 8);
                    this.f27778o = e17;
                    this.f27774k = 1;
                } else {
                    tVar.r();
                    this.f27778o = null;
                    this.f27774k = 1;
                }
            }
        }
    }

    @Override // W0.s
    public final void i(long j8, long j9) {
        this.f27770g.clear();
        this.f27777n = 0;
        this.f27779p = -1;
        this.f27780q = 0;
        this.f27781r = 0;
        this.f27782s = 0;
        this.f27783t = false;
        if (j8 == 0) {
            if (this.f27774k != 3) {
                this.f27774k = 0;
                this.f27777n = 0;
                return;
            } else {
                n nVar = this.f27771h;
                nVar.f27794a.clear();
                nVar.f27795b = 0;
                this.f27772i.clear();
                return;
            }
        }
        for (k kVar : this.f27789z) {
            s sVar = kVar.f27756b;
            int iE = M.e(sVar.f27837f, j9, false);
            while (true) {
                if (iE < 0) {
                    iE = -1;
                    break;
                } else if ((sVar.f27838g[iE] & 1) != 0) {
                    break;
                } else {
                    iE--;
                }
            }
            if (iE == -1) {
                iE = sVar.a(j9);
            }
            kVar.f27759e = iE;
            W0.M m7 = kVar.f27758d;
            if (m7 != null) {
                m7.f7341b = false;
                m7.f7342c = 0;
            }
        }
    }

    @Override // W0.s
    public final List j() {
        return this.f27773j;
    }

    @Override // W0.F
    public final W0.E k(long j8) {
        long j9;
        long j10;
        long jMin;
        int[] iArr;
        long j11;
        int iA;
        l lVar = this;
        long j12 = j8;
        k[] kVarArr = lVar.f27789z;
        int length = kVarArr.length;
        W0.G g8 = W0.G.f7326c;
        if (length == 0) {
            return new W0.E(g8, g8);
        }
        int i8 = lVar.f27761B;
        boolean z7 = false;
        if (i8 != -1) {
            s sVar = kVarArr[i8].f27756b;
            int iE = M.e(sVar.f27837f, j12, false);
            while (true) {
                if (iE < 0) {
                    iE = -1;
                    break;
                }
                if ((sVar.f27838g[iE] & 1) != 0) {
                    break;
                }
                iE--;
            }
            if (iE == -1) {
                iE = sVar.a(j12);
            }
            if (iE == -1) {
                return new W0.E(g8, g8);
            }
            long[] jArr = sVar.f27837f;
            long j13 = jArr[iE];
            long[] jArr2 = sVar.f27834c;
            j9 = jArr2[iE];
            if (j13 >= j12 || iE >= sVar.f27833b - 1 || (iA = sVar.a(j12)) == -1 || iA == iE) {
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
        int i9 = 0;
        while (true) {
            k[] kVarArr2 = lVar.f27789z;
            if (i9 >= kVarArr2.length) {
                break;
            }
            if (i9 != lVar.f27761B) {
                s sVar2 = kVarArr2[i9].f27756b;
                int iE2 = M.e(sVar2.f27837f, j12, z7);
                while (true) {
                    iArr = sVar2.f27838g;
                    if (iE2 < 0) {
                        iE2 = -1;
                        break;
                    }
                    if ((iArr[iE2] & 1) != 0) {
                        break;
                    }
                    iE2--;
                }
                if (iE2 == -1) {
                    iE2 = sVar2.a(j12);
                }
                long[] jArr3 = sVar2.f27834c;
                if (iE2 != -1) {
                    jMin2 = Math.min(jArr3[iE2], jMin2);
                }
                if (j10 != -9223372036854775807L) {
                    int iE3 = M.e(sVar2.f27837f, j10, false);
                    while (true) {
                        if (iE3 < 0) {
                            iE3 = -1;
                            break;
                        }
                        if ((iArr[iE3] & 1) != 0) {
                            break;
                        }
                        iE3--;
                    }
                    if (iE3 == -1) {
                        iE3 = sVar2.a(j10);
                    }
                    if (iE3 != -1) {
                        jMin = Math.min(jArr3[iE3], jMin);
                    }
                }
                i9++;
                lVar = this;
                j12 = j12;
                z7 = false;
            } else {
                j12 = j12;
            }
            i9++;
            lVar = this;
            j12 = j12;
            z7 = false;
        }
        W0.G g9 = new W0.G(j12, jMin2);
        return j10 == -9223372036854775807L ? new W0.E(g9, g9) : new W0.E(g9, new W0.G(j10, jMin));
    }

    @Override // W0.F
    public final long m() {
        return this.f27762C;
    }

    public final void n(long j8) throws P {
        ArrayList arrayList;
        N nF;
        N n7;
        int i8;
        ArrayList arrayList2;
        int i9;
        int i10;
        int i11;
        while (true) {
            ArrayDeque arrayDeque = this.f27770g;
            if (arrayDeque.isEmpty() || ((c) arrayDeque.peek()).f29443c != j8) {
                break;
            }
            c cVar = (c) arrayDeque.pop();
            if (cVar.f29448b == 1836019574) {
                c cVarE = cVar.e(1835365473);
                ArrayList arrayList3 = new ArrayList();
                if (cVarE != null) {
                    nF = e.f(cVarE);
                    if (this.f27786w) {
                        H1.j(nF);
                        a aVarD = Z3.H.d(nF, "auxiliary.tracks.interleaved");
                        if (aVarD != null && aVarD.f29439b[0] == 0) {
                            this.f27787x = 16 + 0;
                        }
                        a aVarD2 = Z3.H.d(nF, "auxiliary.tracks.map");
                        H1.j(aVarD2);
                        ArrayList arrayListA = aVarD2.a();
                        ArrayList arrayList4 = new ArrayList(arrayListA.size());
                        for (int i12 = 0; i12 < arrayListA.size(); i12++) {
                            int iIntValue = ((Integer) arrayListA.get(i12)).intValue();
                            if (iIntValue == 0) {
                                i11 = 1;
                            } else if (iIntValue == 1) {
                                i11 = 2;
                            } else if (iIntValue != 2) {
                                i11 = iIntValue != 3 ? 0 : 4;
                            } else {
                                i11 = 3;
                            }
                            arrayList4.add(Integer.valueOf(i11));
                        }
                        arrayList = arrayList4;
                    } else {
                        arrayList = arrayList3;
                    }
                } else {
                    arrayList = arrayList3;
                    nF = null;
                }
                ArrayList arrayList5 = new ArrayList();
                boolean z7 = this.f27763D == 1;
                A a8 = new A();
                d dVarF = cVar.f(1969517665);
                if (dVarF != null) {
                    N nK = e.k(dVarF);
                    a8.b(nK);
                    n7 = nK;
                } else {
                    n7 = null;
                }
                d dVarF2 = cVar.f(1836476516);
                dVarF2.getClass();
                N n8 = new N(e.g(dVarF2.f29446c));
                ArrayList arrayList6 = arrayList;
                ArrayList arrayListJ = e.j(cVar, a8, -9223372036854775807L, null, false, z7, new C0083h(10));
                if (this.f27786w) {
                    boolean z8 = arrayList6.size() == arrayListJ.size();
                    Locale locale = Locale.US;
                    H1.h("The number of auxiliary track types from metadata (" + arrayList6.size() + ") is not same as the number of auxiliary tracks (" + arrayListJ.size() + ")", z8);
                }
                String strP = H1.p(arrayListJ);
                int i13 = 0;
                int i14 = 0;
                int size = -1;
                long jMax = -9223372036854775807L;
                while (i13 < arrayListJ.size()) {
                    s sVar = (s) arrayListJ.get(i13);
                    if (sVar.f27833b == 0) {
                        i8 = i14;
                        i9 = 1;
                    } else {
                        u uVar = this.f27788y;
                        i8 = i14 + 1;
                        p pVar = sVar.f27832a;
                        L lT = uVar.t(i14, pVar.f27799b);
                        k kVar = new k(pVar, sVar, lT);
                        long j9 = pVar.f27802e;
                        if (j9 == -9223372036854775807L) {
                            j9 = sVar.f27839h;
                        }
                        lT.getClass();
                        jMax = Math.max(jMax, j9);
                        C3136t c3136t = pVar.f27804g;
                        boolean zEquals = "audio/true-hd".equals(c3136t.f27041o);
                        int i15 = sVar.f27836e;
                        int i16 = zEquals ? i15 * 16 : i15 + 30;
                        C3135s c3135sA = c3136t.a();
                        c3135sA.f26997o = i16;
                        int i17 = pVar.f27799b;
                        if (i17 == 2) {
                            int i18 = this.f27765b & 8;
                            int i19 = c3136t.f27032f;
                            if (i18 != 0) {
                                i19 |= size == -1 ? 1 : 2;
                            }
                            if (this.f27786w) {
                                i19 |= 32768;
                                arrayList2 = arrayList6;
                                c3135sA.f26989g = ((Integer) arrayList2.get(i13)).intValue();
                            } else {
                                arrayList2 = arrayList6;
                            }
                            c3135sA.f26988f = i19;
                        } else {
                            arrayList2 = arrayList6;
                        }
                        if (i17 == 1) {
                            int i20 = a8.f7303a;
                            arrayList6 = arrayList2;
                            if (i20 != -1 && (i10 = a8.f7304b) != -1) {
                                c3135sA.f26976I = i20;
                                c3135sA.f26977J = i10;
                            }
                        } else {
                            arrayList6 = arrayList2;
                        }
                        N[] nArr = new N[3];
                        ArrayList arrayList7 = this.f27772i;
                        nArr[0] = arrayList7.isEmpty() ? null : new N(arrayList7);
                        nArr[1] = n7;
                        nArr[2] = n8;
                        Z3.H.u(i17, nF, c3135sA, c3136t.f27038l, nArr);
                        c3135sA.f26995m = O.p(strP);
                        lT.b(new C3136t(c3135sA));
                        if (i17 == 2 && size == -1) {
                            size = arrayList5.size();
                        }
                        arrayList5.add(kVar);
                        i9 = 1;
                    }
                    i13 += i9;
                    arrayListJ = arrayListJ;
                    i14 = i8;
                }
                this.f27761B = size;
                this.f27762C = jMax;
                k[] kVarArr = (k[]) arrayList5.toArray(new k[0]);
                this.f27789z = kVarArr;
                long[][] jArr = new long[kVarArr.length][];
                int[] iArr = new int[kVarArr.length];
                long[] jArr2 = new long[kVarArr.length];
                boolean[] zArr = new boolean[kVarArr.length];
                for (int i21 = 0; i21 < kVarArr.length; i21++) {
                    jArr[i21] = new long[kVarArr[i21].f27756b.f27833b];
                    jArr2[i21] = kVarArr[i21].f27756b.f27837f[0];
                }
                long j10 = 0;
                int i22 = 0;
                while (i22 < kVarArr.length) {
                    long j11 = Long.MAX_VALUE;
                    int i23 = -1;
                    for (int i24 = 0; i24 < kVarArr.length; i24++) {
                        if (!zArr[i24]) {
                            long j12 = jArr2[i24];
                            if (j12 <= j11) {
                                i23 = i24;
                                j11 = j12;
                            }
                        }
                    }
                    int i25 = iArr[i23];
                    long[] jArr3 = jArr[i23];
                    jArr3[i25] = j10;
                    s sVar2 = kVarArr[i23].f27756b;
                    ArrayDeque arrayDeque2 = arrayDeque;
                    j10 += (long) sVar2.f27835d[i25];
                    int i26 = i25 + 1;
                    iArr[i23] = i26;
                    if (i26 < jArr3.length) {
                        jArr2[i23] = sVar2.f27837f[i26];
                    } else {
                        zArr[i23] = true;
                        i22++;
                    }
                    arrayDeque = arrayDeque2;
                }
                this.f27760A = jArr;
                this.f27788y.j();
                this.f27788y.r(this);
                arrayDeque.clear();
                if (!this.f27785v) {
                    this.f27774k = 2;
                }
            } else if (!arrayDeque.isEmpty()) {
                ((c) arrayDeque.peek()).f29445e.add(cVar);
            }
        }
        if (this.f27774k != 2) {
            this.f27774k = 0;
            this.f27777n = 0;
        }
    }

    @Override // W0.s
    public final s b() {
        return this;
    }

    @Override // W0.s
    public final void release() {
    }
}
