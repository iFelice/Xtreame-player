package A1;

import W0.L;
import com.google.android.gms.internal.measurement.H1;
import com.google.api.Service;
import p094m0.C3135s;
import p094m0.C3136t;
import p094m0.O;
import p094m0.P;
import p117p0.M;
import z4.d0;

/* JADX INFO: loaded from: classes.dex */
public final class w implements InterfaceC0035j {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f577e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public L f578f;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f581i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f583k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f584l;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f586n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f587o;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f591s;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f593u;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f576d = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final p117p0.E f573a = new p117p0.E(new byte[15], 2);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final p117p0.D f574b = new p117p0.D();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final p117p0.E f575c = new p117p0.E();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final p111o1.a f588p = new p111o1.a();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f589q = -2147483647;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f590r = -1;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public long f592t = -1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f582j = true;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f585m = true;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public double f579g = -9.223372036854776E18d;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public double f580h = -9.223372036854776E18d;

    @Override // A1.InterfaceC0035j
    public final void a() {
        this.f576d = 0;
        this.f584l = 0;
        this.f573a.I(2);
        this.f586n = 0;
        this.f587o = 0;
        this.f589q = -2147483647;
        this.f590r = -1;
        this.f591s = 0;
        this.f592t = -1L;
        this.f593u = false;
        this.f581i = false;
        this.f585m = true;
        this.f582j = true;
        this.f579g = -9.223372036854776E18d;
        this.f580h = -9.223372036854776E18d;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:152:0x02b6  */
    /* JADX WARN: Code duplicated, block: B:154:0x02bd  */
    /* JADX WARN: Code duplicated, block: B:156:0x02d3  */
    /* JADX WARN: Code duplicated, block: B:159:0x02dd  */
    /* JADX WARN: Code duplicated, block: B:189:0x03bd  */
    /* JADX WARN: Instruction removed from duplicated block: B:152:0x02b6, please report this as an issue */
    @Override // A1.InterfaceC0035j
    public final void b(p117p0.E e8) throws P {
        long j8;
        boolean z7;
        int i8;
        int i9;
        int i10;
        int i11;
        char c8;
        byte[] bArr;
        long j9;
        long j10;
        d0 d0VarY;
        int i12;
        int i13 = 4;
        int i14 = 0;
        int i15 = 8;
        int i16 = 1;
        H1.j(this.f578f);
        while (e8.a() > 0) {
            int i17 = this.f576d;
            if (i17 != 0) {
                p111o1.a aVar = this.f588p;
                p117p0.E e9 = this.f575c;
                if (i17 == i16) {
                    int iA = e8.a();
                    p117p0.E e10 = this.f573a;
                    int iMin = Math.min(iA, e10.a());
                    e8.j(e10.f28036b, e10.f28035a, iMin);
                    e10.M(iMin);
                    if (e10.a() == 0) {
                        int i18 = e10.f28037c;
                        byte[] bArr2 = e10.f28035a;
                        p117p0.D d6 = this.f574b;
                        d6.p(i18, bArr2);
                        d6.f();
                        int iP = J6.r.p(d6, 3, 8, 8);
                        aVar.f27673G = iP;
                        if (iP != -1) {
                            H1.d(Math.max(Math.max(2, 8), 32) <= 63);
                            Q3.b.c(Q3.b.c(3L, 255L), 4294967296L);
                            if (d6.b() < 2) {
                                j8 = -1;
                            } else {
                                long jK = d6.k(2);
                                if (jK == 3) {
                                    if (d6.b() >= 8) {
                                        long jK2 = d6.k(8);
                                        jK += jK2;
                                        if (jK2 == 255) {
                                            if (d6.b() >= 32) {
                                                jK = d6.k(32) + jK;
                                            }
                                        }
                                    }
                                    j8 = -1;
                                }
                                j8 = jK;
                            }
                            aVar.f27674H = j8;
                            if (j8 == -1) {
                                z7 = false;
                            } else {
                                if (j8 > 16) {
                                    throw P.c("Contains sub-stream with an invalid packet label " + aVar.f27674H);
                                }
                                if (j8 == 0) {
                                    int i19 = aVar.f27673G;
                                    if (i19 == 1) {
                                        throw P.a("Mpegh3daConfig packet with invalid packet label 0", null);
                                    }
                                    if (i19 == 2) {
                                        throw P.a("Mpegh3daFrame packet with invalid packet label 0", null);
                                    }
                                    if (i19 == 17) {
                                        throw P.a("AudioTruncation packet with invalid packet label 0", null);
                                    }
                                }
                                int iP2 = J6.r.p(d6, 11, 24, 24);
                                aVar.f27675I = iP2;
                                if (iP2 != -1) {
                                    z7 = true;
                                } else {
                                    z7 = false;
                                }
                            }
                        } else {
                            z7 = false;
                        }
                        if (z7) {
                            this.f586n = 0;
                            this.f587o = aVar.f27675I + i18 + this.f587o;
                        }
                        if (z7) {
                            e10.L(0);
                            this.f578f.e(e10.f28037c, e10);
                            e10.I(2);
                            e9.I(aVar.f27675I);
                            this.f585m = true;
                            this.f576d = 2;
                        } else {
                            int i20 = e10.f28037c;
                            if (i20 < 15) {
                                e10.K(i20 + 1);
                                this.f585m = false;
                            }
                        }
                    } else {
                        this.f585m = false;
                    }
                } else {
                    if (i17 != 2) {
                        throw new IllegalStateException();
                    }
                    int i21 = aVar.f27673G;
                    if (i21 == i16 || i21 == 17) {
                        int i22 = e8.f28036b;
                        int iMin2 = Math.min(e8.a(), e9.a());
                        e8.j(e9.f28036b, e9.f28035a, iMin2);
                        e9.M(iMin2);
                        e8.L(i22);
                    }
                    int iMin3 = Math.min(e8.a(), aVar.f27675I - this.f586n);
                    this.f578f.e(iMin3, e8);
                    int i23 = this.f586n + iMin3;
                    this.f586n = i23;
                    if (i23 != aVar.f27675I) {
                        continue;
                    } else {
                        int i24 = aVar.f27673G;
                        if (i24 == i16) {
                            p117p0.D d8 = new p117p0.D(e9.f28035a, i14, (Object) null);
                            int i25 = d8.i(i15);
                            int i26 = d8.i(5);
                            if (i26 != 31) {
                                switch (i26) {
                                    case 0:
                                        i10 = 96000;
                                        break;
                                    case 1:
                                        i10 = 88200;
                                        break;
                                    case 2:
                                        i10 = 64000;
                                        break;
                                    case 3:
                                        i10 = 48000;
                                        break;
                                    case 4:
                                        i10 = 44100;
                                        break;
                                    case 5:
                                        i10 = 32000;
                                        break;
                                    case 6:
                                        i10 = 24000;
                                        break;
                                    case 7:
                                        i10 = 22050;
                                        break;
                                    case 8:
                                        i10 = 16000;
                                        break;
                                    case 9:
                                        i10 = 12000;
                                        break;
                                    case 10:
                                        i10 = 11025;
                                        break;
                                    case 11:
                                        i10 = 8000;
                                        break;
                                    case 12:
                                        i10 = 7350;
                                        break;
                                    case 13:
                                    case 14:
                                    default:
                                        throw P.c("Unsupported sampling rate index " + i26);
                                    case 15:
                                        i10 = 57600;
                                        break;
                                    case 16:
                                        i10 = 51200;
                                        break;
                                    case 17:
                                        i10 = 40000;
                                        break;
                                    case 18:
                                        i10 = 38400;
                                        break;
                                    case 19:
                                        i10 = 34150;
                                        break;
                                    case 20:
                                        i10 = 28800;
                                        break;
                                    case 21:
                                        i10 = 25600;
                                        break;
                                    case 22:
                                        i10 = 20000;
                                        break;
                                    case 23:
                                        i10 = 19200;
                                        break;
                                    case 24:
                                        i10 = 17075;
                                        break;
                                    case 25:
                                        i10 = 14400;
                                        break;
                                    case Service.BILLING_FIELD_NUMBER /* 26 */:
                                        i10 = 12800;
                                        break;
                                    case 27:
                                        i10 = 9600;
                                        break;
                                }
                            } else {
                                i10 = d8.i(24);
                            }
                            int i27 = d8.i(3);
                            if (i27 == 0) {
                                i11 = 768;
                            } else if (i27 == i16) {
                                i11 = 1024;
                            } else if (i27 == 2 || i27 == 3) {
                                i11 = 2048;
                            } else {
                                if (i27 != i13) {
                                    throw P.c("Unsupported coreSbrFrameLengthIndex " + i27);
                                }
                                i11 = 4096;
                            }
                            if (i27 == 0 || i27 == i16) {
                                c8 = 0;
                            } else if (i27 == 2) {
                                c8 = 2;
                            } else if (i27 == 3) {
                                c8 = 3;
                            } else {
                                if (i27 != i13) {
                                    throw P.c("Unsupported coreSbrFrameLengthIndex " + i27);
                                }
                                c8 = 1;
                            }
                            d8.u(2);
                            J6.r.s(d8);
                            int i28 = d8.i(5);
                            int i29 = 0;
                            int iP3 = 0;
                            while (true) {
                                int i30 = 16;
                                if (i29 < i28 + 1) {
                                    int i31 = d8.i(3);
                                    iP3 = J6.r.p(d8, 5, i15, 16) + i16 + iP3;
                                    if ((i31 == 0 || i31 == 2) && d8.h()) {
                                        J6.r.s(d8);
                                    }
                                    i29 += i16;
                                } else {
                                    int iP4 = J6.r.p(d8, 4, i15, 16) + i16;
                                    d8.t();
                                    int i32 = 0;
                                    while (true) {
                                        double d9 = 2.0d;
                                        if (i32 < iP4) {
                                            int i33 = d8.i(2);
                                            if (i33 == 0) {
                                                d8.u(3);
                                                if (d8.h()) {
                                                    d8.u(13);
                                                }
                                                if (c8 > 0) {
                                                    J6.r.r(d8);
                                                }
                                            } else if (i33 == i16) {
                                                d8.u(3);
                                                boolean zH = d8.h();
                                                if (zH) {
                                                    d8.u(13);
                                                }
                                                if (zH) {
                                                    d8.t();
                                                }
                                                if (c8 > 0) {
                                                    J6.r.r(d8);
                                                    i12 = d8.i(2);
                                                } else {
                                                    i12 = 0;
                                                }
                                                if (i12 > 0) {
                                                    d8.u(6);
                                                    int i34 = d8.i(2);
                                                    d8.u(4);
                                                    if (d8.h()) {
                                                        d8.u(5);
                                                    }
                                                    if (i12 == 2 || i12 == 3) {
                                                        d8.u(6);
                                                    }
                                                    if (i34 == 2) {
                                                        d8.t();
                                                    }
                                                }
                                                int iFloor = ((int) Math.floor(Math.log(iP3 - 1) / Math.log(2.0d))) + 1;
                                                int i35 = d8.i(2);
                                                if (i35 > 0 && d8.h()) {
                                                    d8.u(iFloor);
                                                }
                                                if (d8.h()) {
                                                    d8.u(iFloor);
                                                }
                                                if (c8 == 0 && i35 == 0) {
                                                    d8.t();
                                                }
                                            } else if (i33 == 3) {
                                                J6.r.p(d8, 4, i15, i30);
                                                int iP5 = J6.r.p(d8, 4, i15, i30);
                                                if (d8.h()) {
                                                    J6.r.p(d8, i15, i30, 0);
                                                }
                                                d8.t();
                                                if (iP5 > 0) {
                                                    d8.u(iP5 * 8);
                                                }
                                            }
                                            i32++;
                                            i30 = 16;
                                            i15 = 8;
                                            i16 = 1;
                                        } else {
                                            if (d8.h()) {
                                                int i36 = 8;
                                                int i37 = 4;
                                                int iP6 = J6.r.p(d8, 2, 4, 8) + 1;
                                                bArr = null;
                                                int i38 = 0;
                                                while (i38 < iP6) {
                                                    int iP7 = J6.r.p(d8, i37, i36, 16);
                                                    int iP8 = J6.r.p(d8, i37, i36, 16);
                                                    if (iP7 == 7) {
                                                        int i39 = d8.i(i37) + 1;
                                                        d8.u(i37);
                                                        byte[] bArr3 = new byte[i39];
                                                        for (int i40 = 0; i40 < i39; i40++) {
                                                            bArr3[i40] = (byte) d8.i(i36);
                                                        }
                                                        bArr = bArr3;
                                                    } else {
                                                        d8.u(iP8 * 8);
                                                    }
                                                    i38++;
                                                    i36 = 8;
                                                    i37 = 4;
                                                }
                                            } else {
                                                bArr = null;
                                            }
                                            switch (i10) {
                                                case 14700:
                                                case 16000:
                                                    d9 = 3.0d;
                                                    this.f589q = (int) (((double) i10) * d9);
                                                    this.f590r = (int) (((double) i11) * d9);
                                                    j9 = this.f592t;
                                                    j10 = aVar.f27674H;
                                                    if (j9 != j10) {
                                                        this.f592t = j10;
                                                        String strConcat = i25 != -1 ? "mhm1".concat(String.format(".%02X", Integer.valueOf(i25))) : "mhm1";
                                                        if (bArr != null || bArr.length <= 0) {
                                                            d0VarY = null;
                                                        } else {
                                                            d0VarY = z4.H.y(M.f28051b, bArr);
                                                        }
                                                        C3135s c3135s = new C3135s();
                                                        c3135s.f26983a = this.f577e;
                                                        c3135s.f26995m = O.p("video/mp2t");
                                                        c3135s.f26996n = O.p("audio/mhm1");
                                                        c3135s.f26974G = this.f589q;
                                                        c3135s.f26992j = strConcat;
                                                        c3135s.f26999q = d0VarY;
                                                        this.f578f.b(new C3136t(c3135s));
                                                    }
                                                    this.f593u = true;
                                                    break;
                                                case 22050:
                                                case 24000:
                                                    this.f589q = (int) (((double) i10) * d9);
                                                    this.f590r = (int) (((double) i11) * d9);
                                                    j9 = this.f592t;
                                                    j10 = aVar.f27674H;
                                                    if (j9 != j10) {
                                                        this.f592t = j10;
                                                        if (i25 != -1) {
                                                        }
                                                        if (bArr != null) {
                                                            d0VarY = null;
                                                        } else {
                                                            d0VarY = null;
                                                        }
                                                        C3135s c3135s2 = new C3135s();
                                                        c3135s2.f26983a = this.f577e;
                                                        c3135s2.f26995m = O.p("video/mp2t");
                                                        c3135s2.f26996n = O.p("audio/mhm1");
                                                        c3135s2.f26974G = this.f589q;
                                                        c3135s2.f26992j = strConcat;
                                                        c3135s2.f26999q = d0VarY;
                                                        this.f578f.b(new C3136t(c3135s2));
                                                    }
                                                    this.f593u = true;
                                                    break;
                                                case 29400:
                                                case 32000:
                                                case 58800:
                                                case 64000:
                                                    d9 = 1.5d;
                                                    this.f589q = (int) (((double) i10) * d9);
                                                    this.f590r = (int) (((double) i11) * d9);
                                                    j9 = this.f592t;
                                                    j10 = aVar.f27674H;
                                                    if (j9 != j10) {
                                                        this.f592t = j10;
                                                        if (i25 != -1) {
                                                        }
                                                        if (bArr != null) {
                                                            d0VarY = null;
                                                        } else {
                                                            d0VarY = null;
                                                        }
                                                        C3135s c3135s3 = new C3135s();
                                                        c3135s3.f26983a = this.f577e;
                                                        c3135s3.f26995m = O.p("video/mp2t");
                                                        c3135s3.f26996n = O.p("audio/mhm1");
                                                        c3135s3.f26974G = this.f589q;
                                                        c3135s3.f26992j = strConcat;
                                                        c3135s3.f26999q = d0VarY;
                                                        this.f578f.b(new C3136t(c3135s3));
                                                    }
                                                    this.f593u = true;
                                                    break;
                                                case 44100:
                                                case 48000:
                                                case 88200:
                                                case 96000:
                                                    d9 = 1.0d;
                                                    this.f589q = (int) (((double) i10) * d9);
                                                    this.f590r = (int) (((double) i11) * d9);
                                                    j9 = this.f592t;
                                                    j10 = aVar.f27674H;
                                                    if (j9 != j10) {
                                                        this.f592t = j10;
                                                        if (i25 != -1) {
                                                        }
                                                        if (bArr != null) {
                                                            d0VarY = null;
                                                        } else {
                                                            d0VarY = null;
                                                        }
                                                        C3135s c3135s4 = new C3135s();
                                                        c3135s4.f26983a = this.f577e;
                                                        c3135s4.f26995m = O.p("video/mp2t");
                                                        c3135s4.f26996n = O.p("audio/mhm1");
                                                        c3135s4.f26974G = this.f589q;
                                                        c3135s4.f26992j = strConcat;
                                                        c3135s4.f26999q = d0VarY;
                                                        this.f578f.b(new C3136t(c3135s4));
                                                    }
                                                    this.f593u = true;
                                                    break;
                                                default:
                                                    throw P.c("Unsupported sampling rate " + i10);
                                            }
                                        }
                                    }
                                }
                            }
                        } else if (i24 == 17) {
                            p117p0.D d10 = new p117p0.D(e9.f28035a, 0, (Object) null);
                            if (d10.h()) {
                                d10.u(2);
                                i9 = d10.i(13);
                            } else {
                                i9 = 0;
                            }
                            this.f591s = i9;
                        } else if (i24 == 2) {
                            if (this.f593u) {
                                this.f582j = false;
                                i8 = 1;
                            } else {
                                i8 = 0;
                            }
                            double d11 = (((double) (this.f590r - this.f591s)) * 1000000.0d) / ((double) this.f589q);
                            long jRound = Math.round(this.f579g);
                            if (this.f581i) {
                                this.f581i = false;
                                this.f579g = this.f580h;
                            } else {
                                this.f579g += d11;
                            }
                            this.f578f.d(jRound, i8, this.f587o, 0, null);
                            this.f593u = false;
                            this.f591s = 0;
                            this.f587o = 0;
                        }
                        this.f576d = 1;
                    }
                }
                i13 = 4;
                i14 = 0;
                i15 = 8;
                i16 = 1;
            } else {
                int i41 = this.f583k;
                if ((i41 & 2) == 0) {
                    e8.L(e8.f28037c);
                } else {
                    if ((i41 & 4) == 0) {
                        while (true) {
                            if (e8.a() > 0) {
                                i15 = 8;
                                int i42 = this.f584l << 8;
                                this.f584l = i42;
                                int iZ = i42 | e8.z();
                                this.f584l = iZ;
                                if ((iZ & 16777215) == 12583333) {
                                    e8.L(e8.f28036b - 3);
                                    this.f584l = 0;
                                }
                            }
                        }
                    } else {
                        i15 = 8;
                    }
                    i16 = 1;
                    this.f576d = 1;
                    i13 = 4;
                    i14 = 0;
                }
                i15 = 8;
                i13 = 4;
                i14 = 0;
                i16 = 1;
            }
        }
    }

    @Override // A1.InterfaceC0035j
    public final void c(W0.u uVar, I i8) {
        i8.a();
        i8.b();
        this.f577e = i8.f310e;
        i8.b();
        this.f578f = uVar.t(i8.f309d, 1);
    }

    @Override // A1.InterfaceC0035j
    public final void e(int i8, long j8) {
        this.f583k = i8;
        if (!this.f582j && (this.f587o != 0 || !this.f585m)) {
            this.f581i = true;
        }
        if (j8 != -9223372036854775807L) {
            if (this.f581i) {
                this.f580h = j8;
            } else {
                this.f579g = j8;
            }
        }
    }

    @Override // A1.InterfaceC0035j
    public final void d(boolean z7) {
    }
}
