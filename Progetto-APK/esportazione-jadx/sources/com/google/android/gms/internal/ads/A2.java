package com.google.android.gms.internal.ads;

import java.util.Objects;
import org.eclipse.paho.client.mqttv3.internal.wire.MqttWireMessage;

/* JADX INFO: loaded from: classes.dex */
public final class A2 implements F2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f11945a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C1286f0 f11946b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C1534jr f11947c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f11948d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f11949e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f11950f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public InterfaceC1234e0 f11951g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f11952h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f11953i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f11954j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long f11955k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public C1804p0 f11956l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f11957m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public long f11958n;

    public A2(String str, int i8, int i9) {
        this.f11945a = i9;
        if (i9 != 1) {
            C1286f0 c1286f0 = new C1286f0(new byte[128], 128);
            this.f11946b = c1286f0;
            this.f11947c = new C1534jr(c1286f0.f18645b);
            this.f11952h = 0;
            this.f11958n = -9223372036854775807L;
            this.f11948d = str;
            this.f11949e = i8;
            return;
        }
        C1286f0 c1286f1 = new C1286f0(new byte[16], 16);
        this.f11946b = c1286f1;
        this.f11947c = new C1534jr(c1286f1.f18645b);
        this.f11952h = 0;
        this.f11953i = 0;
        this.f11954j = false;
        this.f11958n = -9223372036854775807L;
        this.f11948d = str;
        this.f11949e = i8;
    }

    /* JADX WARN: Code duplicated, block: B:177:0x0342  */
    /* JADX WARN: Code duplicated, block: B:180:0x0350  */
    /* JADX WARN: Code duplicated, block: B:182:0x0358  */
    /* JADX WARN: Code duplicated, block: B:189:0x036c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:190:0x036e  */
    /* JADX WARN: Code duplicated, block: B:192:0x0374  */
    /* JADX WARN: Code duplicated, block: B:194:0x0377  */
    /* JADX WARN: Code duplicated, block: B:196:0x037d  */
    /* JADX WARN: Code duplicated, block: B:198:0x0383  */
    /* JADX WARN: Code duplicated, block: B:199:0x0386  */
    /* JADX WARN: Code duplicated, block: B:319:0x0380 A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.F2
    public final void b(C1534jr c1534jr) {
        long j8;
        String str;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        byte b8;
        int iG;
        int i15;
        int i16;
        int i17;
        byte b9;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        int i25;
        int i26;
        int i27 = this.f11945a;
        long j9 = 1000000;
        int i28 = this.f11949e;
        String str2 = this.f11948d;
        C1286f0 c1286f0 = this.f11946b;
        int i29 = 16;
        long j10 = -9223372036854775807L;
        int i30 = 0;
        C1534jr c1534jr2 = this.f11947c;
        int i31 = 2;
        int i32 = 1;
        switch (i27) {
            case 0:
                p113o3.r.x(this.f11951g);
                while (c1534jr.o() > 0) {
                    int i33 = this.f11952h;
                    if (i33 == 0) {
                        j8 = j9;
                        while (c1534jr.o() > 0) {
                            if (this.f11954j) {
                                int iW = c1534jr.w();
                                if (iW == 119) {
                                    this.f11954j = false;
                                    this.f11952h = 1;
                                    byte[] bArr = c1534jr2.f19515a;
                                    bArr[0] = MqttWireMessage.MESSAGE_TYPE_UNSUBACK;
                                    bArr[1] = 119;
                                    this.f11953i = 2;
                                } else {
                                    this.f11954j = iW == 11;
                                }
                            } else {
                                this.f11954j = c1534jr.w() == 11;
                            }
                        }
                    } else if (i33 != 1) {
                        int iMin = Math.min(c1534jr.o(), this.f11957m - this.f11953i);
                        this.f11951g.f(iMin, c1534jr);
                        int i34 = this.f11953i + iMin;
                        this.f11953i = i34;
                        if (i34 == this.f11957m) {
                            p113o3.r.M(this.f11958n != -9223372036854775807L);
                            this.f11951g.b(this.f11958n, 1, this.f11957m, 0, null);
                            this.f11958n += this.f11955k;
                            this.f11952h = i30;
                        }
                    } else {
                        byte[] bArr2 = c1534jr2.f19515a;
                        int iMin2 = Math.min(c1534jr.o(), 128 - this.f11953i);
                        c1534jr.f(this.f11953i, bArr2, iMin2);
                        int i35 = this.f11953i + iMin2;
                        this.f11953i = i35;
                        if (i35 == 128) {
                            c1286f0.t(i30);
                            int iE = c1286f0.e();
                            c1286f0.v(40);
                            int iG2 = c1286f0.g(5);
                            c1286f0.t(iE);
                            int[] iArr = AbstractC1717nH.f20118f;
                            int[] iArr2 = AbstractC1717nH.f20114d;
                            if (iG2 > 10) {
                                c1286f0.v(i29);
                                int iG3 = c1286f0.g(i31);
                                if (iG3 != 0) {
                                    i14 = 1;
                                    b8 = iG3 != 1 ? iG3 != i31 ? (byte) -1 : (byte) 2 : (byte) 1;
                                } else {
                                    i14 = 1;
                                    b8 = 0;
                                }
                                c1286f0.v(3);
                                int iG4 = c1286f0.g(11) + i14;
                                int iG5 = c1286f0.g(i31);
                                if (iG5 == 3) {
                                    i15 = AbstractC1717nH.f20116e[c1286f0.g(i31)];
                                    i16 = 6;
                                    iG = 3;
                                } else {
                                    iG = c1286f0.g(i31);
                                    int i36 = AbstractC1717nH.f20112c[iG];
                                    i15 = iArr2[iG5];
                                    i16 = i36;
                                }
                                i12 = iG4 + iG4;
                                int i37 = (i12 * i15) / (i16 * 32);
                                int iG6 = c1286f0.g(3);
                                boolean zX = c1286f0.x();
                                i9 = iArr[iG6] + (zX ? 1 : 0);
                                c1286f0.v(10);
                                if (c1286f0.x()) {
                                    c1286f0.v(8);
                                }
                                if (iG6 == 0) {
                                    c1286f0.v(5);
                                    if (c1286f0.x()) {
                                        c1286f0.v(8);
                                    }
                                    i17 = 0;
                                    b9 = 1;
                                    iG6 = 0;
                                } else {
                                    i17 = iG6;
                                    b9 = 1;
                                }
                                if (b8 == b9) {
                                    if (c1286f0.x()) {
                                        c1286f0.v(16);
                                    }
                                    b8 = 1;
                                }
                                if (c1286f0.x()) {
                                    if (i17 > 2) {
                                        c1286f0.v(2);
                                    }
                                    if ((i17 & 1) == 0 || i17 <= 2) {
                                        i22 = 6;
                                    } else {
                                        i22 = 6;
                                        c1286f0.v(6);
                                    }
                                    if ((i17 & 4) != 0) {
                                        c1286f0.v(i22);
                                    }
                                    if (zX && c1286f0.x()) {
                                        c1286f0.v(5);
                                    }
                                    if (b8 == 0) {
                                        if (c1286f0.x()) {
                                            i23 = 6;
                                            c1286f0.v(6);
                                        } else {
                                            i23 = 6;
                                        }
                                        if (i17 == 0 && c1286f0.x()) {
                                            c1286f0.v(i23);
                                        }
                                        if (c1286f0.x()) {
                                            c1286f0.v(i23);
                                        }
                                        int iG7 = c1286f0.g(2);
                                        if (iG7 == 1) {
                                            c1286f0.v(5);
                                        } else if (iG7 == 2) {
                                            c1286f0.v(12);
                                        } else {
                                            if (iG7 == 3) {
                                                int iG8 = c1286f0.g(5);
                                                if (c1286f0.x()) {
                                                    c1286f0.v(5);
                                                    if (c1286f0.x()) {
                                                        i25 = 4;
                                                        c1286f0.v(4);
                                                    } else {
                                                        i25 = 4;
                                                    }
                                                    if (c1286f0.x()) {
                                                        c1286f0.v(i25);
                                                    }
                                                    if (c1286f0.x()) {
                                                        c1286f0.v(i25);
                                                    }
                                                    if (c1286f0.x()) {
                                                        c1286f0.v(i25);
                                                    }
                                                    if (c1286f0.x()) {
                                                        c1286f0.v(i25);
                                                    }
                                                    if (c1286f0.x()) {
                                                        c1286f0.v(i25);
                                                    }
                                                    if (c1286f0.x()) {
                                                        c1286f0.v(i25);
                                                    }
                                                    if (c1286f0.x()) {
                                                        if (c1286f0.x()) {
                                                            c1286f0.v(i25);
                                                        }
                                                        if (c1286f0.x()) {
                                                            c1286f0.v(i25);
                                                        }
                                                    }
                                                }
                                                if (c1286f0.x()) {
                                                    c1286f0.v(5);
                                                    if (c1286f0.x()) {
                                                        c1286f0.v(7);
                                                        if (c1286f0.x()) {
                                                            c1286f0.v(8);
                                                        }
                                                    }
                                                }
                                                i24 = 2;
                                                c1286f0.v((iG8 + 2) * 8);
                                                c1286f0.l();
                                            }
                                            if (i17 < i24) {
                                                if (c1286f0.x()) {
                                                    c1286f0.v(14);
                                                }
                                                if (iG6 == 0 && c1286f0.x()) {
                                                    c1286f0.v(14);
                                                }
                                            }
                                            if (!c1286f0.x()) {
                                                i18 = iG;
                                            } else if (iG == 0) {
                                                c1286f0.v(5);
                                                i18 = 0;
                                            } else {
                                                for (i26 = 0; i26 < i16; i26++) {
                                                    if (c1286f0.x()) {
                                                        c1286f0.v(5);
                                                    }
                                                }
                                                i18 = iG;
                                            }
                                            b8 = 0;
                                        }
                                        i24 = 2;
                                        if (i17 < i24) {
                                            if (c1286f0.x()) {
                                                c1286f0.v(14);
                                            }
                                            if (iG6 == 0) {
                                                c1286f0.v(14);
                                            }
                                        }
                                        if (!c1286f0.x()) {
                                            i18 = iG;
                                        } else if (iG == 0) {
                                            c1286f0.v(5);
                                            i18 = 0;
                                        } else {
                                            while (i26 < i16) {
                                                if (c1286f0.x()) {
                                                    c1286f0.v(5);
                                                }
                                            }
                                            i18 = iG;
                                        }
                                        b8 = 0;
                                    } else {
                                        i18 = iG;
                                    }
                                } else {
                                    i18 = iG;
                                }
                                if (c1286f0.x()) {
                                    c1286f0.v(5);
                                    if (i17 == 2) {
                                        c1286f0.v(4);
                                        i17 = 2;
                                    }
                                    if (i17 >= 6) {
                                        c1286f0.v(2);
                                    }
                                    if (c1286f0.x()) {
                                        i21 = 8;
                                        c1286f0.v(8);
                                    } else {
                                        i21 = 8;
                                    }
                                    if (i17 == 0 && c1286f0.x()) {
                                        c1286f0.v(i21);
                                    }
                                    i19 = 3;
                                    if (iG5 < 3) {
                                        c1286f0.u();
                                    }
                                } else {
                                    i19 = 3;
                                }
                                if (b8 == 0 && i18 != i19) {
                                    c1286f0.u();
                                }
                                if (b8 == 2 && (i18 == i19 || c1286f0.x())) {
                                    i20 = 6;
                                    c1286f0.v(6);
                                } else {
                                    i20 = 6;
                                }
                                str = (c1286f0.x() && c1286f0.g(i20) == 1 && c1286f0.g(8) == 1) ? "audio/eac3-joc" : "audio/eac3";
                                i10 = i16 * 256;
                                i11 = i15;
                                i13 = i37;
                            } else {
                                c1286f0.v(32);
                                int iG9 = c1286f0.g(2);
                                str = iG9 == 3 ? null : "audio/ac3";
                                int iG10 = c1286f0.g(6);
                                int i38 = AbstractC1717nH.f20120g[iG10 / 2] * 1000;
                                int iN = AbstractC1717nH.n(iG9, iG10);
                                c1286f0.v(8);
                                int iG11 = c1286f0.g(3);
                                if ((iG11 & 1) == 0 || iG11 == 1) {
                                    i8 = 2;
                                } else {
                                    i8 = 2;
                                    c1286f0.v(2);
                                }
                                if ((iG11 & 4) != 0) {
                                    c1286f0.v(i8);
                                }
                                if (iG11 == i8) {
                                    c1286f0.v(i8);
                                }
                                int i39 = iG9 < 3 ? iArr2[iG9] : -1;
                                i9 = iArr[iG11] + (c1286f0.x() ? 1 : 0);
                                i10 = 1536;
                                i11 = i39;
                                i12 = iN;
                                i13 = i38;
                            }
                            C1804p0 c1804p0 = this.f11956l;
                            if (c1804p0 == null || i9 != c1804p0.f20362A || i11 != c1804p0.f20363B || !Objects.equals(str, c1804p0.f20383m)) {
                                K k8 = new K();
                                k8.f14260a = this.f11950f;
                                k8.f(str);
                                k8.f14285z = i9;
                                k8.f14253A = i11;
                                k8.f14263d = str2;
                                k8.f14265f = i28;
                                k8.f14267h = i13;
                                if ("audio/ac3".equals(str)) {
                                    k8.f14266g = i13;
                                }
                                C1804p0 c1804p1 = new C1804p0(k8);
                                this.f11956l = c1804p1;
                                this.f11951g.d(c1804p1);
                            }
                            this.f11957m = i12;
                            j8 = 1000000;
                            this.f11955k = (((long) i10) * 1000000) / ((long) this.f11956l.f20363B);
                            c1534jr2.j(0);
                            this.f11951g.f(128, c1534jr2);
                            this.f11952h = 2;
                        } else {
                            i30 = 0;
                        }
                    }
                    j9 = j8;
                    i29 = 16;
                    i30 = 0;
                    i31 = 2;
                }
                break;
            default:
                p113o3.r.x(this.f11951g);
                while (c1534jr.o() > 0) {
                    int i40 = this.f11952h;
                    if (i40 == 0) {
                        while (true) {
                            if (c1534jr.o() > 0) {
                                if (this.f11954j) {
                                    int iW2 = c1534jr.w();
                                    this.f11954j = iW2 == 172;
                                    if (iW2 != 64) {
                                        if (iW2 == 65) {
                                            iW2 = 65;
                                        }
                                    }
                                    this.f11952h = 1;
                                    byte[] bArr3 = c1534jr2.f19515a;
                                    bArr3[0] = -84;
                                    bArr3[1] = iW2 == 65 ? (byte) 65 : (byte) 64;
                                    this.f11953i = 2;
                                } else {
                                    this.f11954j = c1534jr.w() == 172;
                                }
                            }
                        }
                    } else if (i40 != i32) {
                        int iMin3 = Math.min(c1534jr.o(), this.f11957m - this.f11953i);
                        this.f11951g.f(iMin3, c1534jr);
                        int i41 = this.f11953i + iMin3;
                        this.f11953i = i41;
                        if (i41 == this.f11957m) {
                            p113o3.r.M(this.f11958n != j10);
                            this.f11951g.b(this.f11958n, 1, this.f11957m, 0, null);
                            this.f11958n += this.f11955k;
                            this.f11952h = 0;
                        }
                        i32 = 1;
                    } else {
                        byte[] bArr4 = c1534jr2.f19515a;
                        int iMin4 = Math.min(c1534jr.o(), 16 - this.f11953i);
                        c1534jr.f(this.f11953i, bArr4, iMin4);
                        int i42 = this.f11953i + iMin4;
                        this.f11953i = i42;
                        if (i42 == 16) {
                            c1286f0.t(0);
                            A2.i iVarA = AbstractC1717nH.a(c1286f0);
                            C1804p0 c1804p2 = this.f11956l;
                            if (c1804p2 == null || c1804p2.f20362A != 2 || iVarA.f630a != c1804p2.f20363B || !"audio/ac4".equals(c1804p2.f20383m)) {
                                K k9 = new K();
                                k9.f14260a = this.f11950f;
                                k9.f("audio/ac4");
                                k9.f14285z = 2;
                                k9.f14253A = iVarA.f630a;
                                k9.f14263d = str2;
                                k9.f14265f = i28;
                                C1804p0 c1804p3 = new C1804p0(k9);
                                this.f11956l = c1804p3;
                                this.f11951g.d(c1804p3);
                            }
                            this.f11957m = iVarA.f631b;
                            this.f11955k = (((long) iVarA.f632c) * 1000000) / ((long) this.f11956l.f20363B);
                            c1534jr2.j(0);
                            this.f11951g.f(16, c1534jr2);
                            this.f11952h = 2;
                        }
                    }
                    j10 = -9223372036854775807L;
                    i32 = 1;
                }
                break;
        }
    }

    @Override // com.google.android.gms.internal.ads.F2
    public final void c(N n7, A1.I i8) {
        switch (this.f11945a) {
            case 0:
                i8.c();
                i8.d();
                this.f11950f = i8.f310e;
                i8.d();
                this.f11951g = n7.h(i8.f309d, 1);
                break;
            default:
                i8.c();
                i8.d();
                this.f11950f = i8.f310e;
                i8.d();
                this.f11951g = n7.h(i8.f309d, 1);
                break;
        }
    }

    @Override // com.google.android.gms.internal.ads.F2
    public final void d(int i8, long j8) {
        switch (this.f11945a) {
            case 0:
                this.f11958n = j8;
                break;
            default:
                this.f11958n = j8;
                break;
        }
    }

    @Override // com.google.android.gms.internal.ads.F2
    public final void zzc(boolean z7) {
    }

    @Override // com.google.android.gms.internal.ads.F2
    public final void zze() {
        switch (this.f11945a) {
            case 0:
                this.f11952h = 0;
                this.f11953i = 0;
                this.f11954j = false;
                this.f11958n = -9223372036854775807L;
                break;
            default:
                this.f11952h = 0;
                this.f11953i = 0;
                this.f11954j = false;
                this.f11958n = -9223372036854775807L;
                break;
        }
    }
}
