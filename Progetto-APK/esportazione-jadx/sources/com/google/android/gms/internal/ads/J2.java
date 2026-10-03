package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Collections;

/* JADX INFO: loaded from: classes.dex */
public final class J2 implements F2 {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final float[] f14108l = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 1.0f};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C1083b3 f14109a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C1534jr f14110b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean[] f14111c = new boolean[4];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final I2 f14112d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final A1.x f14113e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public A1.n f14114f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f14115g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public String f14116h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public InterfaceC1234e0 f14117i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f14118j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long f14119k;

    public J2(C1083b3 c1083b3) {
        this.f14109a = c1083b3;
        I2 i8 = new I2();
        i8.f13851e = new byte[128];
        this.f14112d = i8;
        this.f14119k = -9223372036854775807L;
        this.f14113e = new A1.x(178, 1);
        this.f14110b = new C1534jr();
    }

    /* JADX WARN: Code duplicated, block: B:95:0x022d  */
    @Override // com.google.android.gms.internal.ads.F2
    public final void b(C1534jr c1534jr) {
        I2 i8;
        A1.x xVar;
        int i9;
        int i10;
        int i11;
        boolean z7;
        int i12;
        float f8;
        p113o3.r.x(this.f14114f);
        p113o3.r.x(this.f14117i);
        int i13 = c1534jr.f19516b;
        int i14 = c1534jr.f19517c;
        byte[] bArr = c1534jr.f19515a;
        this.f14115g += (long) c1534jr.o();
        this.f14117i.f(c1534jr.o(), c1534jr);
        while (true) {
            int iA = AbstractC2008sy.a(bArr, i13, i14, this.f14111c);
            i8 = this.f14112d;
            xVar = this.f14113e;
            if (iA == i14) {
                break;
            }
            int i15 = iA + 3;
            byte b8 = c1534jr.f19515a[i15];
            int i16 = b8 & 255;
            int i17 = iA - i13;
            if (this.f14118j) {
                i9 = i14;
                i10 = i15;
            } else {
                if (i17 > 0) {
                    i8.a(i13, bArr, iA);
                }
                int i18 = i17 < 0 ? -i17 : 0;
                int i19 = i8.f13848b;
                if (i19 != 0) {
                    i10 = i15;
                    if (i19 == 1) {
                        i9 = i14;
                        if (i16 != 181) {
                            Zo.f("H263Reader", "Unexpected start code value");
                            i8.f13847a = false;
                            i8.f13849c = 0;
                            i8.f13848b = 0;
                        } else {
                            i8.f13848b = 2;
                        }
                    } else if (i19 == 2) {
                        i9 = i14;
                        if (i16 > 31) {
                            Zo.f("H263Reader", "Unexpected start code value");
                            i8.f13847a = false;
                            i8.f13849c = 0;
                            i8.f13848b = 0;
                        } else {
                            i8.f13848b = 3;
                        }
                    } else if (i19 == 3) {
                        i9 = i14;
                        if ((b8 & 240) != 32) {
                            Zo.f("H263Reader", "Unexpected start code value");
                            i8.f13847a = false;
                            i8.f13849c = 0;
                            i8.f13848b = 0;
                        } else {
                            i8.f13850d = i8.f13849c;
                            i8.f13848b = 4;
                        }
                    } else if (i16 == 179 || i16 == 181) {
                        i8.f13849c -= i18;
                        i8.f13847a = false;
                        InterfaceC1234e0 interfaceC1234e0 = this.f14117i;
                        int i20 = i8.f13850d;
                        String str = this.f14116h;
                        str.getClass();
                        byte[] bArrCopyOf = Arrays.copyOf(i8.f13851e, i8.f13849c);
                        C1286f0 c1286f0 = new C1286f0(bArrCopyOf, bArrCopyOf.length);
                        c1286f0.w(i20);
                        c1286f0.w(4);
                        c1286f0.u();
                        c1286f0.v(8);
                        if (c1286f0.x()) {
                            c1286f0.v(4);
                            c1286f0.v(3);
                        }
                        int iG = c1286f0.g(4);
                        i9 = i14;
                        if (iG == 15) {
                            int iG2 = c1286f0.g(8);
                            int iG3 = c1286f0.g(8);
                            if (iG3 == 0) {
                                Zo.f("H263Reader", "Invalid aspect ratio");
                                f8 = 1.0f;
                            } else {
                                f8 = iG2 / iG3;
                            }
                        } else if (iG < 7) {
                            f8 = f14108l[iG];
                        } else {
                            Zo.f("H263Reader", "Invalid aspect ratio");
                            f8 = 1.0f;
                        }
                        if (c1286f0.x()) {
                            c1286f0.v(2);
                            c1286f0.v(1);
                            if (c1286f0.x()) {
                                c1286f0.v(15);
                                c1286f0.u();
                                c1286f0.v(15);
                                c1286f0.u();
                                c1286f0.v(15);
                                c1286f0.u();
                                c1286f0.v(3);
                                c1286f0.v(11);
                                c1286f0.u();
                                c1286f0.v(15);
                                c1286f0.u();
                            }
                        }
                        if (c1286f0.g(2) != 0) {
                            Zo.f("H263Reader", "Unhandled video object layer shape");
                        }
                        c1286f0.u();
                        int iG4 = c1286f0.g(16);
                        c1286f0.u();
                        if (c1286f0.x()) {
                            if (iG4 == 0) {
                                Zo.f("H263Reader", "Invalid vop_increment_time_resolution");
                            } else {
                                int i21 = iG4 - 1;
                                int i22 = 0;
                                while (i21 > 0) {
                                    i21 >>= 1;
                                    i22++;
                                }
                                c1286f0.v(i22);
                            }
                        }
                        c1286f0.u();
                        int iG5 = c1286f0.g(13);
                        c1286f0.u();
                        int iG6 = c1286f0.g(13);
                        c1286f0.u();
                        c1286f0.u();
                        K k8 = new K();
                        k8.f14260a = str;
                        k8.f("video/mp4v-es");
                        k8.f14277r = iG5;
                        k8.f14278s = iG6;
                        k8.f14281v = f8;
                        k8.f14274o = Collections.singletonList(bArrCopyOf);
                        interfaceC1234e0.d(new C1804p0(k8));
                        this.f14118j = true;
                    } else {
                        i9 = i14;
                    }
                } else {
                    i9 = i14;
                    i10 = i15;
                    if (i16 == 176) {
                        i8.f13848b = 1;
                        i8.f13847a = true;
                    }
                }
                i8.a(0, I2.f13846f, 3);
            }
            this.f14114f.c(i13, bArr, iA);
            if (xVar != null) {
                if (i17 > 0) {
                    xVar.e(i13, bArr, iA);
                    i12 = 0;
                } else {
                    i12 = -i17;
                }
                if (xVar.h(i12)) {
                    int iB = AbstractC2008sy.b(xVar.f597d, xVar.f598e);
                    int i23 = Et.f13234a;
                    byte[] bArr2 = xVar.f597d;
                    C1534jr c1534jr2 = this.f14110b;
                    c1534jr2.h(iB, bArr2);
                    this.f14109a.a(this.f14119k, c1534jr2);
                }
                if (i16 == 178) {
                    if (c1534jr.f19515a[iA + 2] == 1) {
                        xVar.g(178);
                    }
                    i16 = 178;
                }
            }
            int i24 = i9 - iA;
            this.f14114f.d(i24, this.f14115g - ((long) i24), this.f14118j);
            A1.n nVar = this.f14114f;
            long j8 = this.f14119k;
            nVar.f443d = i16;
            nVar.f442c = false;
            if (i16 == 182) {
                i11 = i16;
                z7 = true;
            } else if (i16 == 179) {
                z7 = true;
                i11 = 179;
            } else {
                i11 = i16;
                z7 = false;
            }
            nVar.f440a = z7;
            nVar.f441b = i11 == 182;
            nVar.f444e = 0;
            nVar.f446g = j8;
            i13 = i10;
            i14 = i9;
        }
        if (!this.f14118j) {
            i8.a(i13, bArr, i14);
        }
        this.f14114f.c(i13, bArr, i14);
        if (xVar != null) {
            xVar.e(i13, bArr, i14);
        }
    }

    @Override // com.google.android.gms.internal.ads.F2
    public final void c(N n7, A1.I i8) {
        i8.c();
        i8.d();
        this.f14116h = i8.f310e;
        i8.d();
        InterfaceC1234e0 interfaceC1234e0H = n7.h(i8.f309d, 2);
        this.f14117i = interfaceC1234e0H;
        this.f14114f = new A1.n(interfaceC1234e0H);
        C1083b3 c1083b3 = this.f14109a;
        if (c1083b3 != null) {
            c1083b3.b(n7, i8);
        }
    }

    @Override // com.google.android.gms.internal.ads.F2
    public final void d(int i8, long j8) {
        this.f14119k = j8;
    }

    @Override // com.google.android.gms.internal.ads.F2
    public final void zzc(boolean z7) {
        p113o3.r.x(this.f14114f);
        if (z7) {
            this.f14114f.d(0, this.f14115g, this.f14118j);
            A1.n nVar = this.f14114f;
            nVar.f440a = false;
            nVar.f441b = false;
            nVar.f442c = false;
            nVar.f443d = -1;
        }
    }

    @Override // com.google.android.gms.internal.ads.F2
    public final void zze() {
        AbstractC2008sy.g(this.f14111c);
        I2 i8 = this.f14112d;
        i8.f13847a = false;
        i8.f13849c = 0;
        i8.f13848b = 0;
        A1.n nVar = this.f14114f;
        if (nVar != null) {
            nVar.f440a = false;
            nVar.f441b = false;
            nVar.f442c = false;
            nVar.f443d = -1;
        }
        A1.x xVar = this.f14113e;
        if (xVar != null) {
            xVar.f();
        }
        this.f14115g = 0L;
        this.f14119k = -9223372036854775807L;
    }
}
