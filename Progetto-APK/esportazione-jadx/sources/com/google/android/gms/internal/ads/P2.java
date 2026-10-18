package com.google.android.gms.internal.ads;

import com.google.api.Service;

/* JADX INFO: loaded from: classes.dex */
public final class P2 implements F2 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f15312e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public InterfaceC1234e0 f15313f;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f15316i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f15318k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f15319l;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f15321n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f15322o;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f15326s;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f15328u;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f15311d = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C1534jr f15308a = new C1534jr(new byte[15], 2);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C1286f0 f15309b = new C1286f0();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C1534jr f15310c = new C1534jr();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final p111o1.a f15323p = new p111o1.a();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f15324q = -2147483647;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f15325r = -1;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public long f15327t = -1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f15317j = true;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f15320m = true;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public double f15314g = -9.223372036854776E18d;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public double f15315h = -9.223372036854776E18d;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:152:0x02bd  */
    /* JADX WARN: Code duplicated, block: B:154:0x02c4  */
    /* JADX WARN: Code duplicated, block: B:156:0x02da  */
    /* JADX WARN: Code duplicated, block: B:159:0x02e4  */
    /* JADX WARN: Code duplicated, block: B:193:0x03e3  */
    /* JADX WARN: Code duplicated, block: B:207:0x0414  */
    /* JADX WARN: Code duplicated, block: B:231:0x048e  */
    /* JADX WARN: Instruction removed from duplicated block: B:152:0x02bd, please report this as an issue */
    @Override // com.google.android.gms.internal.ads.F2
    public final void b(C1534jr c1534jr) throws C0800Ka {
        boolean z7;
        int i8;
        long j8;
        int i9;
        int i10;
        int iG;
        int iG2;
        int i11;
        char c8;
        byte[] bArr;
        long j9;
        long j10;
        PA paX;
        p111o1.a aVar;
        int iG3;
        char c9;
        int i12 = 4;
        int i13 = 8;
        int i14 = 1;
        p113o3.r.x(this.f15313f);
        while (c1534jr.o() > 0) {
            int i15 = this.f15311d;
            if (i15 != 0) {
                C1534jr c1534jr2 = this.f15310c;
                p111o1.a aVar2 = this.f15323p;
                if (i15 != i14) {
                    int i16 = aVar2.f27673G;
                    if (i16 == i14 || i16 == 17) {
                        int i17 = c1534jr.f19516b;
                        int iMin = Math.min(c1534jr.o(), c1534jr2.o());
                        c1534jr.f(c1534jr2.f19516b, c1534jr2.f19515a, iMin);
                        c1534jr2.k(iMin);
                        c1534jr.j(i17);
                    }
                    int iMin2 = Math.min(c1534jr.o(), aVar2.f27675I - this.f15321n);
                    this.f15313f.f(iMin2, c1534jr);
                    int i18 = this.f15321n + iMin2;
                    this.f15321n = i18;
                    if (i18 != aVar2.f27675I) {
                        continue;
                    } else {
                        int i19 = aVar2.f27673G;
                        if (i19 == i14) {
                            byte[] bArr2 = c1534jr2.f19515a;
                            C1286f0 c1286f0 = new C1286f0(bArr2, bArr2.length);
                            int iG4 = c1286f0.g(i13);
                            int i20 = 5;
                            int iG5 = c1286f0.g(5);
                            if (iG5 != 31) {
                                switch (iG5) {
                                    case 0:
                                        iG2 = 96000;
                                        break;
                                    case 1:
                                        iG2 = 88200;
                                        break;
                                    case 2:
                                        iG2 = 64000;
                                        break;
                                    case 3:
                                        iG2 = 48000;
                                        break;
                                    case 4:
                                        iG2 = 44100;
                                        break;
                                    case 5:
                                        iG2 = 32000;
                                        break;
                                    case 6:
                                        iG2 = 24000;
                                        break;
                                    case 7:
                                        iG2 = 22050;
                                        break;
                                    case 8:
                                        iG2 = 16000;
                                        break;
                                    case 9:
                                        iG2 = 12000;
                                        break;
                                    case 10:
                                        iG2 = 11025;
                                        break;
                                    case 11:
                                        iG2 = 8000;
                                        break;
                                    case 12:
                                        iG2 = 7350;
                                        break;
                                    case 13:
                                    case 14:
                                    default:
                                        throw C0800Ka.b("Unsupported sampling rate index " + iG5);
                                    case 15:
                                        iG2 = 57600;
                                        break;
                                    case 16:
                                        iG2 = 51200;
                                        break;
                                    case 17:
                                        iG2 = 40000;
                                        break;
                                    case 18:
                                        iG2 = 38400;
                                        break;
                                    case 19:
                                        iG2 = 34150;
                                        break;
                                    case 20:
                                        iG2 = 28800;
                                        break;
                                    case 21:
                                        iG2 = 25600;
                                        break;
                                    case 22:
                                        iG2 = 20000;
                                        break;
                                    case 23:
                                        iG2 = 19200;
                                        break;
                                    case 24:
                                        iG2 = 17075;
                                        break;
                                    case 25:
                                        iG2 = 14400;
                                        break;
                                    case Service.BILLING_FIELD_NUMBER /* 26 */:
                                        iG2 = 12800;
                                        break;
                                    case 27:
                                        iG2 = 9600;
                                        break;
                                }
                            } else {
                                iG2 = c1286f0.g(24);
                            }
                            int iG6 = c1286f0.g(3);
                            if (iG6 == 0) {
                                i11 = 768;
                            } else if (iG6 == i14) {
                                i11 = 1024;
                            } else if (iG6 == 2 || iG6 == 3) {
                                i11 = 2048;
                            } else {
                                if (iG6 != i12) {
                                    throw C0800Ka.b("Unsupported coreSbrFrameLengthIndex " + iG6);
                                }
                                i11 = 4096;
                            }
                            if (iG6 == 0 || iG6 == i14) {
                                c8 = 0;
                            } else if (iG6 == 2) {
                                c8 = 2;
                            } else if (iG6 == 3) {
                                c8 = 3;
                            } else {
                                if (iG6 != i12) {
                                    throw C0800Ka.b("Unsupported coreSbrFrameLengthIndex " + iG6);
                                }
                                c8 = 1;
                            }
                            c1286f0.v(2);
                            p113o3.r.K(c1286f0);
                            int iG7 = c1286f0.g(5);
                            int i21 = 0;
                            int iB = 0;
                            while (true) {
                                int i22 = 16;
                                if (i21 < iG7 + 1) {
                                    int iG8 = c1286f0.g(3);
                                    iB = p113o3.r.B(c1286f0, 5, i13, 16) + i14 + iB;
                                    if ((iG8 == 0 || iG8 == 2) && c1286f0.x()) {
                                        p113o3.r.K(c1286f0);
                                    }
                                    i21 += i14;
                                } else {
                                    int iB2 = p113o3.r.B(c1286f0, 4, i13, 16) + i14;
                                    c1286f0.u();
                                    int i23 = 0;
                                    while (true) {
                                        double d6 = 2.0d;
                                        if (i23 < iB2) {
                                            int iG9 = c1286f0.g(2);
                                            if (iG9 == 0) {
                                                aVar = aVar2;
                                                c1286f0.v(3);
                                                if (c1286f0.x()) {
                                                    c1286f0.v(13);
                                                }
                                                if (c8 > 0) {
                                                    p113o3.r.I(c1286f0);
                                                }
                                            } else if (iG9 != i14) {
                                                if (iG9 == 3) {
                                                    p113o3.r.B(c1286f0, 4, i13, i22);
                                                    int iB3 = p113o3.r.B(c1286f0, 4, i13, i22);
                                                    if (c1286f0.x()) {
                                                        p113o3.r.B(c1286f0, i13, i22, 0);
                                                    }
                                                    c1286f0.u();
                                                    if (iB3 > 0) {
                                                        c1286f0.v(iB3 * 8);
                                                    }
                                                }
                                                aVar = aVar2;
                                            } else {
                                                c1286f0.v(3);
                                                boolean zX = c1286f0.x();
                                                if (zX) {
                                                    c1286f0.v(13);
                                                }
                                                if (zX) {
                                                    c1286f0.u();
                                                }
                                                if (c8 > 0) {
                                                    p113o3.r.I(c1286f0);
                                                    iG3 = c1286f0.g(2);
                                                    c9 = c8;
                                                } else {
                                                    iG3 = 0;
                                                    c9 = 0;
                                                }
                                                if (iG3 > 0) {
                                                    c1286f0.v(6);
                                                    int iG10 = c1286f0.g(2);
                                                    c1286f0.v(4);
                                                    if (c1286f0.x()) {
                                                        c1286f0.v(i20);
                                                    }
                                                    if (iG3 == 2 || iG3 == 3) {
                                                        c1286f0.v(6);
                                                    }
                                                    if (iG10 == 2) {
                                                        c1286f0.u();
                                                    }
                                                }
                                                aVar = aVar2;
                                                int iFloor = ((int) Math.floor(Math.log(iB - 1) / Math.log(2.0d))) + 1;
                                                int iG11 = c1286f0.g(2);
                                                if (iG11 > 0 && c1286f0.x()) {
                                                    c1286f0.v(iFloor);
                                                }
                                                if (c1286f0.x()) {
                                                    c1286f0.v(iFloor);
                                                }
                                                if (c9 == 0 && iG11 == 0) {
                                                    c1286f0.u();
                                                }
                                            }
                                            i23++;
                                            aVar2 = aVar;
                                            i22 = 16;
                                            i13 = 8;
                                            i14 = 1;
                                            i20 = 5;
                                        } else {
                                            p111o1.a aVar3 = aVar2;
                                            if (c1286f0.x()) {
                                                int i24 = 8;
                                                int i25 = 4;
                                                int iB4 = p113o3.r.B(c1286f0, 2, 4, 8) + 1;
                                                int i26 = 0;
                                                bArr = null;
                                                while (i26 < iB4) {
                                                    int iB5 = p113o3.r.B(c1286f0, i25, i24, 16);
                                                    int iB6 = p113o3.r.B(c1286f0, i25, i24, 16);
                                                    if (iB5 == 7) {
                                                        int iG12 = c1286f0.g(i25) + 1;
                                                        c1286f0.v(i25);
                                                        byte[] bArr3 = new byte[iG12];
                                                        for (int i27 = 0; i27 < iG12; i27++) {
                                                            bArr3[i27] = (byte) c1286f0.g(i24);
                                                        }
                                                        bArr = bArr3;
                                                    } else {
                                                        c1286f0.v(iB6 * 8);
                                                    }
                                                    i26++;
                                                    i24 = 8;
                                                    i25 = 4;
                                                }
                                            } else {
                                                bArr = null;
                                            }
                                            switch (iG2) {
                                                case 14700:
                                                case 16000:
                                                    d6 = 3.0d;
                                                    this.f15324q = (int) (((double) iG2) * d6);
                                                    this.f15325r = (int) (((double) i11) * d6);
                                                    j9 = this.f15327t;
                                                    j10 = aVar3.f27674H;
                                                    if (j9 != j10) {
                                                        this.f15327t = j10;
                                                        String strConcat = iG4 != -1 ? "mhm1".concat(String.format(".%02X", Integer.valueOf(iG4))) : "mhm1";
                                                        if (bArr != null || bArr.length <= 0) {
                                                            paX = null;
                                                        } else {
                                                            paX = AbstractC2073uA.x(Et.f13239f, bArr);
                                                        }
                                                        K k8 = new K();
                                                        k8.f14260a = this.f15312e;
                                                        k8.f("audio/mhm1");
                                                        k8.f14253A = this.f15324q;
                                                        k8.f14268i = strConcat;
                                                        k8.f14274o = paX;
                                                        this.f15313f.d(new C1804p0(k8));
                                                    }
                                                    i10 = 1;
                                                    this.f15328u = true;
                                                    break;
                                                case 22050:
                                                case 24000:
                                                    this.f15324q = (int) (((double) iG2) * d6);
                                                    this.f15325r = (int) (((double) i11) * d6);
                                                    j9 = this.f15327t;
                                                    j10 = aVar3.f27674H;
                                                    if (j9 != j10) {
                                                        this.f15327t = j10;
                                                        if (iG4 != -1) {
                                                        }
                                                        if (bArr != null) {
                                                            paX = null;
                                                        } else {
                                                            paX = null;
                                                        }
                                                        K k9 = new K();
                                                        k9.f14260a = this.f15312e;
                                                        k9.f("audio/mhm1");
                                                        k9.f14253A = this.f15324q;
                                                        k9.f14268i = strConcat;
                                                        k9.f14274o = paX;
                                                        this.f15313f.d(new C1804p0(k9));
                                                    }
                                                    i10 = 1;
                                                    this.f15328u = true;
                                                    break;
                                                case 29400:
                                                case 32000:
                                                case 58800:
                                                case 64000:
                                                    d6 = 1.5d;
                                                    this.f15324q = (int) (((double) iG2) * d6);
                                                    this.f15325r = (int) (((double) i11) * d6);
                                                    j9 = this.f15327t;
                                                    j10 = aVar3.f27674H;
                                                    if (j9 != j10) {
                                                        this.f15327t = j10;
                                                        if (iG4 != -1) {
                                                        }
                                                        if (bArr != null) {
                                                            paX = null;
                                                        } else {
                                                            paX = null;
                                                        }
                                                        K k10 = new K();
                                                        k10.f14260a = this.f15312e;
                                                        k10.f("audio/mhm1");
                                                        k10.f14253A = this.f15324q;
                                                        k10.f14268i = strConcat;
                                                        k10.f14274o = paX;
                                                        this.f15313f.d(new C1804p0(k10));
                                                    }
                                                    i10 = 1;
                                                    this.f15328u = true;
                                                    break;
                                                case 44100:
                                                case 48000:
                                                case 88200:
                                                case 96000:
                                                    d6 = 1.0d;
                                                    this.f15324q = (int) (((double) iG2) * d6);
                                                    this.f15325r = (int) (((double) i11) * d6);
                                                    j9 = this.f15327t;
                                                    j10 = aVar3.f27674H;
                                                    if (j9 != j10) {
                                                        this.f15327t = j10;
                                                        if (iG4 != -1) {
                                                        }
                                                        if (bArr != null) {
                                                            paX = null;
                                                        } else {
                                                            paX = null;
                                                        }
                                                        K k11 = new K();
                                                        k11.f14260a = this.f15312e;
                                                        k11.f("audio/mhm1");
                                                        k11.f14253A = this.f15324q;
                                                        k11.f14268i = strConcat;
                                                        k11.f14274o = paX;
                                                        this.f15313f.d(new C1804p0(k11));
                                                    }
                                                    i10 = 1;
                                                    this.f15328u = true;
                                                    break;
                                                default:
                                                    throw C0800Ka.b("Unsupported sampling rate " + iG2);
                                            }
                                        }
                                    }
                                }
                            }
                        } else {
                            if (i19 == 17) {
                                byte[] bArr4 = c1534jr2.f19515a;
                                C1286f0 c1286f1 = new C1286f0(bArr4, bArr4.length);
                                if (c1286f1.x()) {
                                    c1286f1.v(2);
                                    iG = c1286f1.g(13);
                                } else {
                                    iG = 0;
                                }
                                this.f15326s = iG;
                            } else if (i19 == 2) {
                                if (this.f15328u) {
                                    this.f15317j = false;
                                    i9 = 1;
                                } else {
                                    i9 = 0;
                                }
                                int i28 = this.f15325r - this.f15326s;
                                double d8 = this.f15324q;
                                long jRound = Math.round(this.f15314g);
                                if (this.f15316i) {
                                    this.f15316i = false;
                                    this.f15314g = this.f15315h;
                                } else {
                                    this.f15314g += (((double) i28) * 1000000.0d) / d8;
                                }
                                this.f15313f.b(jRound, i9, this.f15322o, 0, null);
                                this.f15328u = false;
                                this.f15326s = 0;
                                this.f15322o = 0;
                            }
                            i10 = 1;
                        }
                        this.f15311d = i10;
                    }
                } else {
                    int iO = c1534jr.o();
                    C1534jr c1534jr3 = this.f15308a;
                    int iMin3 = Math.min(iO, c1534jr3.o());
                    c1534jr.f(c1534jr3.f19516b, c1534jr3.f19515a, iMin3);
                    c1534jr3.k(iMin3);
                    if (c1534jr3.o() == 0) {
                        int i29 = c1534jr3.f19517c;
                        byte[] bArr5 = c1534jr3.f19515a;
                        C1286f0 c1286f2 = this.f15309b;
                        c1286f2.f18645b = bArr5;
                        c1286f2.f18646c = 0;
                        c1286f2.f18647d = 0;
                        c1286f2.f18648e = i29;
                        c1286f2.c();
                        int iB7 = p113o3.r.B(c1286f2, 3, 8, 8);
                        aVar2.f27673G = iB7;
                        if (iB7 == -1) {
                            i8 = c1534jr3.f19517c;
                            if (i8 < 15) {
                                c1534jr3.i(i8 + 1);
                                z7 = false;
                            }
                        } else {
                            p113o3.r.J(Math.max(Math.max(2, 8), 32) <= 63);
                            Cw.x(Cw.x(3L, 255L), 4294967296L);
                            if (c1286f2.a() < 2) {
                                j8 = -1;
                            } else {
                                j8 = c1286f2.j(2);
                                if (j8 == 3) {
                                    if (c1286f2.a() < 8) {
                                        j8 = -1;
                                    } else {
                                        long j11 = c1286f2.j(8);
                                        j8 = j11 + 3;
                                        if (j11 == 255) {
                                            if (c1286f2.a() < 32) {
                                                j8 = -1;
                                            } else {
                                                j8 += c1286f2.j(32);
                                            }
                                        }
                                    }
                                }
                            }
                            aVar2.f27674H = j8;
                            if (j8 != -1) {
                                if (j8 > 16) {
                                    throw C0800Ka.b("Contains sub-stream with an invalid packet label " + j8);
                                }
                                if (j8 == 0) {
                                    int i30 = aVar2.f27673G;
                                    if (i30 == 1) {
                                        throw C0800Ka.a("Mpegh3daConfig packet with invalid packet label 0", null);
                                    }
                                    if (i30 == 2) {
                                        throw C0800Ka.a("Mpegh3daFrame packet with invalid packet label 0", null);
                                    }
                                    if (i30 == 17) {
                                        throw C0800Ka.a("AudioTruncation packet with invalid packet label 0", null);
                                    }
                                }
                                int iB8 = p113o3.r.B(c1286f2, 11, 24, 24);
                                aVar2.f27675I = iB8;
                                if (iB8 != -1) {
                                    this.f15321n = 0;
                                    this.f15322o = iB8 + i29 + this.f15322o;
                                    c1534jr3.j(0);
                                    this.f15313f.f(c1534jr3.f19517c, c1534jr3);
                                    c1534jr3.g(2);
                                    c1534jr2.g(aVar2.f27675I);
                                    this.f15320m = true;
                                    this.f15311d = 2;
                                }
                            }
                            i8 = c1534jr3.f19517c;
                            if (i8 < 15) {
                                c1534jr3.i(i8 + 1);
                                z7 = false;
                            }
                        }
                    } else {
                        z7 = false;
                    }
                    this.f15320m = z7;
                }
            } else {
                int i31 = this.f15318k;
                if ((i31 & 2) == 0) {
                    c1534jr.j(c1534jr.f19517c);
                } else {
                    if ((i31 & 4) == 0) {
                        while (true) {
                            if (c1534jr.o() > 0) {
                                i13 = 8;
                                int i32 = this.f15319l << 8;
                                this.f15319l = i32;
                                int iW = i32 | c1534jr.w();
                                this.f15319l = iW;
                                if ((iW & 16777215) == 12583333) {
                                    c1534jr.j(c1534jr.f19516b - 3);
                                    this.f15319l = 0;
                                }
                            }
                        }
                    } else {
                        i13 = 8;
                    }
                    this.f15311d = 1;
                    i12 = 4;
                    i14 = 1;
                }
            }
            i12 = 4;
            i13 = 8;
            i14 = 1;
        }
    }

    @Override // com.google.android.gms.internal.ads.F2
    public final void c(N n7, A1.I i8) {
        i8.c();
        i8.d();
        this.f15312e = i8.f310e;
        i8.d();
        this.f15313f = n7.h(i8.f309d, 1);
    }

    @Override // com.google.android.gms.internal.ads.F2
    public final void d(int i8, long j8) {
        this.f15318k = i8;
        if (!this.f15317j && (this.f15322o != 0 || !this.f15320m)) {
            this.f15316i = true;
        }
        if (j8 != -9223372036854775807L) {
            double d6 = j8;
            if (this.f15316i) {
                this.f15315h = d6;
            } else {
                this.f15314g = d6;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.F2
    public final void zzc(boolean z7) {
    }

    @Override // com.google.android.gms.internal.ads.F2
    public final void zze() {
        this.f15311d = 0;
        this.f15319l = 0;
        this.f15308a.g(2);
        this.f15321n = 0;
        this.f15322o = 0;
        this.f15324q = -2147483647;
        this.f15325r = -1;
        this.f15326s = 0;
        this.f15327t = -1L;
        this.f15328u = false;
        this.f15316i = false;
        this.f15320m = true;
        this.f15317j = true;
        this.f15314g = -9.223372036854776E18d;
        this.f15315h = -9.223372036854776E18d;
    }
}
