package A1;

import W0.AbstractC0368a;
import W0.L;
import com.google.android.gms.internal.measurement.H1;
import java.math.RoundingMode;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import okhttp3.internal.http2.Settings;
import org.videolan.libvlc.interfaces.IMediaList;
import p094m0.C3135s;
import p094m0.C3136t;
import p094m0.O;
import p094m0.P;
import p117p0.M;

/* JADX INFO: renamed from: A1.h, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0033h implements InterfaceC0035j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final p117p0.E f386a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f388c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f389d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f391f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public L f392g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f394i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f395j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long f396k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public C3136t f397l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f398m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f399n;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f393h = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public long f402q = -9223372036854775807L;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AtomicInteger f387b = new AtomicInteger();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f400o = -1;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f401p = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f390e = "video/mp2t";

    public C0033h(int i8, int i9, String str) {
        this.f386a = new p117p0.E(new byte[i9]);
        this.f388c = str;
        this.f389d = i8;
    }

    @Override // A1.InterfaceC0035j
    public final void a() {
        this.f393h = 0;
        this.f394i = 0;
        this.f395j = 0;
        this.f402q = -9223372036854775807L;
        this.f387b.set(0);
    }

    /* JADX WARN: Code duplicated, block: B:175:0x0467  */
    /* JADX WARN: Code duplicated, block: B:178:0x046f  */
    /* JADX WARN: Code duplicated, block: B:180:0x0472 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:181:0x0474  */
    /* JADX WARN: Code duplicated, block: B:183:0x0484  */
    /* JADX WARN: Code duplicated, block: B:185:0x0491  */
    /* JADX WARN: Code duplicated, block: B:186:0x049b  */
    @Override // A1.InterfaceC0035j
    public final void b(p117p0.E e8) throws P {
        int i8;
        int i9;
        boolean z7;
        int i10;
        int i11;
        int i12;
        byte b8;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        long jZ;
        int i22;
        long jZ2;
        int i23;
        int i24;
        int i25;
        H1.j(this.f392g);
        while (e8.a() > 0) {
            int i26 = this.f393h;
            p117p0.E e9 = this.f386a;
            switch (i26) {
                case 0:
                    while (e8.a() > 0) {
                        int i27 = this.f395j << 8;
                        this.f395j = i27;
                        int iZ = i27 | e8.z();
                        this.f395j = iZ;
                        if (iZ == 2147385345 || iZ == -25230976 || iZ == 536864768 || iZ == -14745368) {
                            i8 = 1;
                        } else if (iZ == 1683496997 || iZ == 622876772) {
                            i8 = 2;
                        } else if (iZ == 1078008818 || iZ == -233094848) {
                            i8 = 3;
                        } else {
                            i8 = (iZ == 1908687592 || iZ == -398277519) ? 4 : 0;
                        }
                        this.f399n = i8;
                        if (i8 != 0) {
                            byte[] bArr = e9.f28035a;
                            bArr[0] = (byte) ((iZ >> 24) & 255);
                            bArr[1] = (byte) ((iZ >> 16) & 255);
                            bArr[2] = (byte) ((iZ >> 8) & 255);
                            bArr[3] = (byte) (iZ & 255);
                            this.f394i = 4;
                            this.f395j = 0;
                            if (i8 != 3 && i8 != 4) {
                                if (i8 == 1) {
                                    this.f393h = 1;
                                } else {
                                    this.f393h = 2;
                                }
                            }
                            this.f393h = 4;
                        }
                        break;
                    }
                    break;
                case 1:
                    if (f(18, e8, e9.f28035a)) {
                        byte[] bArr2 = e9.f28035a;
                        if (this.f397l == null) {
                            String str = this.f391f;
                            p117p0.D d6 = AbstractC0368a.d(bArr2);
                            d6.u(60);
                            int i28 = AbstractC0368a.f7357j[d6.i(6)];
                            int i29 = AbstractC0368a.f7358k[d6.i(4)];
                            int i30 = d6.i(5);
                            int i31 = i30 >= 29 ? -1 : (AbstractC0368a.f7359l[i30] * 1000) / 2;
                            d6.u(10);
                            int i32 = i28 + (d6.i(2) > 0 ? 1 : 0);
                            C3135s c3135s = new C3135s();
                            c3135s.f26983a = str;
                            c3135s.f26995m = O.p(this.f390e);
                            c3135s.f26996n = O.p("audio/vnd.dts");
                            c3135s.f26990h = i31;
                            c3135s.f26973F = i32;
                            c3135s.f26974G = i29;
                            c3135s.f27000r = null;
                            c3135s.f26986d = this.f388c;
                            c3135s.f26988f = this.f389d;
                            C3136t c3136t = new C3136t(c3135s);
                            this.f397l = c3136t;
                            this.f392g.b(c3136t);
                        }
                        byte b9 = bArr2[0];
                        if (b9 != -2) {
                            if (b9 == -1) {
                                i14 = ((bArr2[7] & 3) << 12) | ((bArr2[6] & 255) << 4) | ((bArr2[9] & 60) >> 2);
                            } else if (b9 != 31) {
                                i9 = (((bArr2[5] & 3) << 12) | ((bArr2[6] & 255) << 4) | ((bArr2[7] & 240) >> 4)) + 1;
                            } else {
                                i14 = ((bArr2[8] & 60) >> 2) | ((3 & bArr2[6]) << 12) | ((bArr2[7] & 255) << 4);
                            }
                            i9 = i14 + 1;
                            z7 = true;
                            if (z7) {
                                i9 = (i9 * 16) / 14;
                            }
                            this.f398m = i9;
                            if (b9 != -2) {
                                if (b9 != -1) {
                                    if (b9 != 31) {
                                        i12 = (bArr2[4] & 1) << 6;
                                        i13 = bArr2[5] & 252;
                                    } else {
                                        i12 = (bArr2[5] & 7) << 4;
                                        b8 = bArr2[6];
                                    }
                                    i11 = (i13 >> 2) | i12;
                                    i10 = 1;
                                } else {
                                    i12 = (bArr2[4] & 7) << 4;
                                    b8 = bArr2[7];
                                }
                                i13 = b8 & 60;
                                i11 = (i13 >> 2) | i12;
                                i10 = 1;
                            } else {
                                i10 = 1;
                                i11 = ((bArr2[4] & 252) >> 2) | ((bArr2[5] & 1) << 6);
                            }
                            this.f396k = p190y4.k.y(M.X(this.f397l.f27017H, (i11 + i10) * 32));
                            e9.L(0);
                            this.f392g.e(18, e9);
                            this.f393h = 6;
                        } else {
                            i9 = (((bArr2[4] & 3) << 12) | ((bArr2[7] & 255) << 4) | ((bArr2[6] & 240) >> 4)) + 1;
                        }
                        z7 = false;
                        if (z7) {
                            i9 = (i9 * 16) / 14;
                        }
                        this.f398m = i9;
                        if (b9 != -2) {
                            if (b9 != -1) {
                                if (b9 != 31) {
                                    i12 = (bArr2[4] & 1) << 6;
                                    i13 = bArr2[5] & 252;
                                } else {
                                    i12 = (bArr2[5] & 7) << 4;
                                    b8 = bArr2[6];
                                }
                                i11 = (i13 >> 2) | i12;
                                i10 = 1;
                            } else {
                                i12 = (bArr2[4] & 7) << 4;
                                b8 = bArr2[7];
                            }
                            i13 = b8 & 60;
                            i11 = (i13 >> 2) | i12;
                            i10 = 1;
                        } else {
                            i10 = 1;
                            i11 = ((bArr2[4] & 252) >> 2) | ((bArr2[5] & 1) << 6);
                        }
                        this.f396k = p190y4.k.y(M.X(this.f397l.f27017H, (i11 + i10) * 32));
                        e9.L(0);
                        this.f392g.e(18, e9);
                        this.f393h = 6;
                        break;
                    }
                    break;
                case 2:
                    if (f(7, e8, e9.f28035a)) {
                        p117p0.D d8 = AbstractC0368a.d(e9.f28035a);
                        d8.u(42);
                        this.f400o = d8.i(d8.h() ? 12 : 8) + 1;
                        this.f393h = 3;
                    }
                    break;
                case 3:
                    if (f(this.f400o, e8, e9.f28035a)) {
                        p117p0.D d9 = AbstractC0368a.d(e9.f28035a);
                        d9.u(40);
                        int i33 = d9.i(2);
                        if (d9.h()) {
                            i15 = 20;
                            i16 = 12;
                        } else {
                            i15 = 16;
                            i16 = 8;
                        }
                        d9.u(i16);
                        int i34 = d9.i(i15) + 1;
                        boolean zH = d9.h();
                        if (zH) {
                            i18 = d9.i(2);
                            i17 = (d9.i(3) + 1) * IMediaList.Event.ItemAdded;
                            if (d9.h()) {
                                d9.u(36);
                            }
                            int i35 = d9.i(3) + 1;
                            int i36 = d9.i(3) + 1;
                            if (i35 != 1 || i36 != 1) {
                                throw P.c("Multiple audio presentations or assets not supported");
                            }
                            int i37 = i33 + 1;
                            int i38 = d9.i(i37);
                            for (int i39 = 0; i39 < i37; i39++) {
                                if (((i38 >> i39) & 1) == 1) {
                                    d9.u(8);
                                }
                            }
                            if (d9.h()) {
                                d9.u(2);
                                int i40 = (d9.i(2) + 1) << 2;
                                int i41 = d9.i(2) + 1;
                                for (int i42 = 0; i42 < i41; i42++) {
                                    d9.u(i40);
                                }
                            }
                        } else {
                            i17 = 0;
                            i18 = -1;
                        }
                        d9.u(i15);
                        d9.u(12);
                        if (zH) {
                            if (d9.h()) {
                                d9.u(4);
                            }
                            if (d9.h()) {
                                d9.u(24);
                            }
                            if (d9.h()) {
                                i19 = 1;
                                d9.v(d9.i(10) + 1);
                            } else {
                                i19 = 1;
                            }
                            d9.u(5);
                            int i43 = AbstractC0368a.f7360m[d9.i(4)];
                            i20 = d9.i(8) + i19;
                            i21 = i43;
                        } else {
                            i19 = 1;
                            i20 = -1;
                            i21 = -2147483647;
                        }
                        if (zH) {
                            if (i18 == 0) {
                                i22 = 32000;
                            } else if (i18 == i19) {
                                i22 = 44100;
                            } else {
                                if (i18 != 2) {
                                    throw P.a("Unsupported reference clock code in DTS HD header: " + i18, null);
                                }
                                i22 = 48000;
                            }
                            String str2 = M.f28050a;
                            jZ = M.Z(i17, 1000000L, i22, RoundingMode.DOWN);
                        } else {
                            jZ = -9223372036854775807L;
                        }
                        g(new W0.r("audio/vnd.dts.hd;profile=lbr", i20, i21, i34, jZ));
                        this.f398m = i34;
                        if (jZ == -9223372036854775807L) {
                            jZ = 0;
                        }
                        this.f396k = jZ;
                        e9.L(0);
                        this.f392g.e(this.f400o, e9);
                        this.f393h = 6;
                    } else {
                        continue;
                    }
                    break;
                case 4:
                    if (f(6, e8, e9.f28035a)) {
                        p117p0.D d10 = AbstractC0368a.d(e9.f28035a);
                        d10.u(32);
                        int iJ = AbstractC0368a.j(d10, AbstractC0368a.f7365r) + 1;
                        this.f401p = iJ;
                        int i44 = this.f394i;
                        if (i44 > iJ) {
                            int i45 = i44 - iJ;
                            this.f394i = i44 - i45;
                            e8.L(e8.f28036b - i45);
                        }
                        this.f393h = 5;
                    }
                    break;
                case 5:
                    if (f(this.f401p, e8, e9.f28035a)) {
                        byte[] bArr3 = e9.f28035a;
                        AtomicInteger atomicInteger = this.f387b;
                        p117p0.D d11 = AbstractC0368a.d(bArr3);
                        int i46 = d11.i(32) == 1078008818 ? 1 : 0;
                        int iJ2 = AbstractC0368a.j(d11, AbstractC0368a.f7361n);
                        int i47 = iJ2 + 1;
                        if (i46 == 0) {
                            jZ2 = -9223372036854775807L;
                            i23 = -2147483647;
                        } else {
                            if (!d11.h()) {
                                throw P.c("Only supports full channel mask-based audio presentation");
                            }
                            int i48 = iJ2 - 1;
                            int i49 = ((bArr3[i48] << 8) & Settings.DEFAULT_INITIAL_WINDOW_SIZE) | (bArr3[iJ2] & 255);
                            String str3 = M.f28050a;
                            int i50 = Settings.DEFAULT_INITIAL_WINDOW_SIZE;
                            for (int i51 = 0; i51 < i48; i51++) {
                                byte b10 = bArr3[i51];
                                int i52 = (((i50 >> 12) & 255) ^ ((b10 & 255) >> 4)) & 255;
                                int i53 = (i50 << 4) & Settings.DEFAULT_INITIAL_WINDOW_SIZE;
                                int[] iArr = M.f28061l;
                                int i54 = (iArr[i52] ^ i53) & Settings.DEFAULT_INITIAL_WINDOW_SIZE;
                                i50 = (iArr[((b10 & 15) ^ ((i54 >> 12) & 255)) & 255] ^ ((i54 << 4) & Settings.DEFAULT_INITIAL_WINDOW_SIZE)) & Settings.DEFAULT_INITIAL_WINDOW_SIZE;
                            }
                            if (i49 != i50) {
                                throw P.a("CRC check failed", null);
                            }
                            int i55 = d11.i(2);
                            if (i55 == 0) {
                                i24 = IMediaList.Event.ItemAdded;
                            } else if (i55 == 1) {
                                i24 = 480;
                            } else {
                                if (i55 != 2) {
                                    throw P.a("Unsupported base duration index in DTS UHD header: " + i55, null);
                                }
                                i24 = 384;
                            }
                            int i56 = (d11.i(3) + 1) * i24;
                            int i57 = d11.i(2);
                            if (i57 == 0) {
                                i25 = 32000;
                            } else if (i57 == 1) {
                                i25 = 44100;
                            } else {
                                if (i57 != 2) {
                                    throw P.a("Unsupported clock rate index in DTS UHD header: " + i57, null);
                                }
                                i25 = 48000;
                            }
                            if (d11.h()) {
                                d11.u(36);
                            }
                            i23 = (1 << d11.i(2)) * i25;
                            jZ2 = M.Z(i56, 1000000L, i25, RoundingMode.DOWN);
                        }
                        int iJ3 = 0;
                        for (int i58 = 0; i58 < i46; i58++) {
                            iJ3 += AbstractC0368a.j(d11, AbstractC0368a.f7362o);
                        }
                        if (i46 != 0) {
                            atomicInteger.set(AbstractC0368a.j(d11, AbstractC0368a.f7363p));
                        }
                        int iJ4 = iJ3 + (atomicInteger.get() != 0 ? AbstractC0368a.j(d11, AbstractC0368a.f7364q) : 0) + i47;
                        W0.r rVar = new W0.r("audio/vnd.dts.uhd;profile=p2", 2, i23, iJ4, jZ2);
                        if (this.f399n == 3) {
                            g(rVar);
                        }
                        this.f398m = iJ4;
                        if (jZ2 == -9223372036854775807L) {
                            jZ2 = 0;
                        }
                        this.f396k = jZ2;
                        e9.L(0);
                        this.f392g.e(this.f401p, e9);
                        this.f393h = 6;
                    } else {
                        continue;
                    }
                    break;
                case 6:
                    int iMin = Math.min(e8.a(), this.f398m - this.f394i);
                    this.f392g.e(iMin, e8);
                    int i59 = this.f394i + iMin;
                    this.f394i = i59;
                    if (i59 == this.f398m) {
                        H1.i(this.f402q != -9223372036854775807L);
                        this.f392g.d(this.f402q, this.f399n == 4 ? 0 : 1, this.f398m, 0, null);
                        this.f402q += this.f396k;
                        this.f393h = 0;
                    }
                    break;
                default:
                    throw new IllegalStateException();
            }
        }
    }

    @Override // A1.InterfaceC0035j
    public final void c(W0.u uVar, I i8) {
        i8.a();
        i8.b();
        this.f391f = i8.f310e;
        i8.b();
        this.f392g = uVar.t(i8.f309d, 1);
    }

    @Override // A1.InterfaceC0035j
    public final void e(int i8, long j8) {
        this.f402q = j8;
    }

    public final boolean f(int i8, p117p0.E e8, byte[] bArr) {
        int iMin = Math.min(e8.a(), i8 - this.f394i);
        e8.j(this.f394i, bArr, iMin);
        int i9 = this.f394i + iMin;
        this.f394i = i9;
        return i9 == i8;
    }

    public final void g(W0.r rVar) {
        int i8;
        int i9 = rVar.f7455b;
        if (i9 == -2147483647 || (i8 = rVar.f7456c) == -1) {
            return;
        }
        C3136t c3136t = this.f397l;
        String str = rVar.f7454a;
        if (c3136t != null && i8 == c3136t.f27016G && i9 == c3136t.f27017H && Objects.equals(str, c3136t.f27041o)) {
            return;
        }
        C3136t c3136t2 = this.f397l;
        C3135s c3135s = c3136t2 == null ? new C3135s() : c3136t2.a();
        c3135s.f26983a = this.f391f;
        c3135s.f26995m = O.p(this.f390e);
        c3135s.f26996n = O.p(str);
        c3135s.f26973F = i8;
        c3135s.f26974G = i9;
        c3135s.f26986d = this.f388c;
        c3135s.f26988f = this.f389d;
        C3136t c3136t3 = new C3136t(c3135s);
        this.f397l = c3136t3;
        this.f392g.b(c3136t3);
    }

    @Override // A1.InterfaceC0035j
    public final void d(boolean z7) {
    }
}
