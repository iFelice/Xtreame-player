package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Collections;
import org.videolan.libvlc.interfaces.IMediaList;

/* JADX INFO: loaded from: classes.dex */
public final class C2 implements F2 {

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final byte[] f12538w = {73, 68, 51};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f12539a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f12542d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f12543e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f12544f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public InterfaceC1234e0 f12545g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public InterfaceC1234e0 f12546h;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f12550l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f12551m;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f12554p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f12555q;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f12557s;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public InterfaceC1234e0 f12559u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public long f12560v;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C1286f0 f12540b = new C1286f0(new byte[7], 7);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C1534jr f12541c = new C1534jr(Arrays.copyOf(f12538w, 10));

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f12547i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f12548j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f12549k = 256;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f12552n = -1;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f12553o = -1;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public long f12556r = -9223372036854775807L;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public long f12558t = -9223372036854775807L;

    public C2(int i8, String str, boolean z7) {
        this.f12539a = z7;
        this.f12542d = str;
        this.f12543e = i8;
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0287  */
    /* JADX WARN: Code duplicated, block: B:103:0x028e  */
    /* JADX WARN: Code duplicated, block: B:104:0x0294  */
    /* JADX WARN: Code duplicated, block: B:109:0x02a9  */
    /* JADX WARN: Code duplicated, block: B:111:0x02ad  */
    /* JADX WARN: Code duplicated, block: B:113:0x02b1  */
    /* JADX WARN: Code duplicated, block: B:115:0x02b5  */
    /* JADX WARN: Code duplicated, block: B:117:0x02b9  */
    /* JADX WARN: Code duplicated, block: B:119:0x02c8  */
    /* JADX WARN: Code duplicated, block: B:121:0x02dc  */
    /* JADX WARN: Code duplicated, block: B:123:0x02e6  */
    /* JADX WARN: Code duplicated, block: B:124:0x02ee  */
    /* JADX WARN: Code duplicated, block: B:165:0x02cc A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:58:0x01e9  */
    /* JADX WARN: Code duplicated, block: B:99:0x0285  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r21v0, types: [com.google.android.gms.internal.ads.jr] */
    /* JADX WARN: Type inference failed for: r2v3, types: [int] */
    /* JADX WARN: Type inference failed for: r2v40 */
    /* JADX WARN: Type inference failed for: r2v8 */
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
    @Override // com.google.android.gms.internal.ads.F2
    public final void b(C1534jr c1534jr) throws C0800Ka {
        byte[] bArr;
        int i8;
        int i9;
        int i10;
        boolean z7;
        int i11;
        int i12;
        int i13;
        boolean z8 = false;
        int i14 = 2;
        this.f12545g.getClass();
        int i15 = Et.f13234a;
        while (c1534jr.o() > 0) {
            int i16 = this.f12547i;
            int i17 = 4;
            C1534jr c1534jr2 = this.f12541c;
            C1286f0 c1286f0 = this.f12540b;
            if (i16 == 0) {
                byte[] bArr2 = c1534jr.f19515a;
                int i18 = c1534jr.f19516b;
                int i19 = c1534jr.f19517c;
                ?? r7 = z8;
                while (true) {
                    if (i18 < i19) {
                        int i20 = i18 + 1;
                        byte b8 = bArr2[i18];
                        int i21 = b8 & 255;
                        if (this.f12549k == 512 && (((((byte) i21) & 255) | 65280) & 65526) == 65520) {
                            if (!this.f12551m) {
                                int i22 = i18 - 1;
                                c1534jr.j(i18);
                                byte[] bArr3 = c1286f0.f18645b;
                                if (c1534jr.o() < 1) {
                                    bArr = bArr2;
                                } else {
                                    c1534jr.f(r7, bArr3, 1);
                                    c1286f0.t(i17);
                                    int iG = c1286f0.g(1);
                                    int i23 = this.f12552n;
                                    if (i23 == -1 || iG == i23) {
                                        if (this.f12553o != -1) {
                                            byte[] bArr4 = c1286f0.f18645b;
                                            if (c1534jr.o() >= 1) {
                                                c1534jr.f(r7, bArr4, 1);
                                                c1286f0.t(i14);
                                                i11 = 4;
                                                if (c1286f0.g(4) == this.f12553o) {
                                                    c1534jr.j(i20);
                                                } else {
                                                    bArr = bArr2;
                                                }
                                            }
                                        } else {
                                            i11 = 4;
                                        }
                                        byte[] bArr5 = c1286f0.f18645b;
                                        if (c1534jr.o() >= i11) {
                                            c1534jr.f(r7, bArr5, i11);
                                            c1286f0.t(14);
                                            int iG2 = c1286f0.g(13);
                                            if (iG2 >= 7) {
                                                byte[] bArr6 = c1534jr.f19515a;
                                                int i24 = c1534jr.f19517c;
                                                int i25 = i22 + iG2;
                                                if (i25 < i24) {
                                                    byte b9 = bArr6[i25];
                                                    bArr = bArr2;
                                                    if (b9 == -1) {
                                                        int i26 = i25 + 1;
                                                        if (i26 != i24) {
                                                            byte b10 = bArr6[i26];
                                                            if ((((b10 & 255) | 65280) & 65526) != 65520 || ((b10 & 8) >> 3) != iG) {
                                                            }
                                                        }
                                                    } else if (b9 != 73 || ((i12 = i25 + 1) != i24 && (bArr6[i12] != 68 || ((i13 = i25 + 2) != i24 && bArr6[i13] != 51)))) {
                                                    }
                                                }
                                                this.f12554p = (b8 & 8) >> 3;
                                                if (1 != ((b8 & 1) ^ 1)) {
                                                    z7 = false;
                                                } else {
                                                    z7 = true;
                                                }
                                                this.f12550l = z7;
                                                if (this.f12551m) {
                                                    this.f12547i = 3;
                                                    this.f12548j = 0;
                                                } else {
                                                    this.f12547i = 1;
                                                    this.f12548j = 0;
                                                }
                                                c1534jr.j(i20);
                                            } else {
                                                bArr = bArr2;
                                            }
                                        }
                                    } else {
                                        bArr = bArr2;
                                    }
                                }
                                i8 = this.f12549k;
                                i9 = i8 | i21;
                                if (i9 != 329) {
                                    i10 = 768;
                                } else if (i9 != 511) {
                                    if (i9 != 836) {
                                        i10 = 1024;
                                    } else if (i9 != 1075) {
                                        this.f12547i = 2;
                                        this.f12548j = 3;
                                        this.f12557s = 0;
                                        c1534jr2.j(0);
                                        c1534jr.j(i20);
                                    } else if (i8 != 256) {
                                        this.f12549k = 256;
                                    } else {
                                        i18 = i20;
                                    }
                                    bArr2 = bArr;
                                    r7 = 0;
                                    i14 = 2;
                                    i17 = 4;
                                } else {
                                    i10 = IMediaList.Event.ItemAdded;
                                }
                                this.f12549k = i10;
                                i18 = i20;
                                bArr2 = bArr;
                                r7 = 0;
                                i14 = 2;
                                i17 = 4;
                            }
                            this.f12554p = (b8 & 8) >> 3;
                            if (1 != ((b8 & 1) ^ 1)) {
                                z7 = false;
                            } else {
                                z7 = true;
                            }
                            this.f12550l = z7;
                            if (this.f12551m) {
                                this.f12547i = 1;
                                this.f12548j = 0;
                            } else {
                                this.f12547i = 3;
                                this.f12548j = 0;
                            }
                            c1534jr.j(i20);
                        } else {
                            bArr = bArr2;
                            i8 = this.f12549k;
                            i9 = i8 | i21;
                            if (i9 != 329) {
                                i10 = 768;
                            } else if (i9 != 511) {
                                if (i9 != 836) {
                                    i10 = 1024;
                                } else if (i9 != 1075) {
                                    this.f12547i = 2;
                                    this.f12548j = 3;
                                    this.f12557s = 0;
                                    c1534jr2.j(0);
                                    c1534jr.j(i20);
                                } else if (i8 != 256) {
                                    this.f12549k = 256;
                                } else {
                                    i18 = i20;
                                }
                                bArr2 = bArr;
                                r7 = 0;
                                i14 = 2;
                                i17 = 4;
                            } else {
                                i10 = IMediaList.Event.ItemAdded;
                            }
                            this.f12549k = i10;
                            i18 = i20;
                            bArr2 = bArr;
                            r7 = 0;
                            i14 = 2;
                            i17 = 4;
                        }
                    } else {
                        c1534jr.j(i18);
                    }
                    z8 = false;
                    i14 = 2;
                }
            } else if (i16 != 1) {
                if (i16 == i14) {
                    byte[] bArr7 = c1534jr2.f19515a;
                    int iMin = Math.min(c1534jr.o(), 10 - this.f12548j);
                    c1534jr.f(this.f12548j, bArr7, iMin);
                    int i27 = this.f12548j + iMin;
                    this.f12548j = i27;
                    if (i27 == 10) {
                        this.f12546h.f(10, c1534jr2);
                        c1534jr2.j(6);
                        InterfaceC1234e0 interfaceC1234e0 = this.f12546h;
                        int iV = c1534jr2.v() + 10;
                        this.f12547i = 4;
                        this.f12548j = 10;
                        this.f12559u = interfaceC1234e0;
                        this.f12560v = 0L;
                        this.f12557s = iV;
                    }
                } else if (i16 != 3) {
                    int iMin2 = Math.min(c1534jr.o(), this.f12557s - this.f12548j);
                    this.f12559u.f(iMin2, c1534jr);
                    int i28 = this.f12548j + iMin2;
                    this.f12548j = i28;
                    if (i28 == this.f12557s) {
                        p113o3.r.M(this.f12558t != -9223372036854775807L);
                        this.f12559u.b(this.f12558t, 1, this.f12557s, 0, null);
                        this.f12558t += this.f12560v;
                        this.f12547i = z8 ? 1 : 0;
                        this.f12548j = z8 ? 1 : 0;
                        this.f12549k = 256;
                    }
                } else {
                    int i29 = true != this.f12550l ? 5 : 7;
                    byte[] bArr8 = c1286f0.f18645b;
                    int iMin3 = Math.min(c1534jr.o(), i29 - this.f12548j);
                    c1534jr.f(this.f12548j, bArr8, iMin3);
                    int i30 = this.f12548j + iMin3;
                    this.f12548j = i30;
                    if (i30 == i29) {
                        c1286f0.t(z8 ? 1 : 0);
                        if (this.f12555q) {
                            c1286f0.v(10);
                        } else {
                            int iG3 = c1286f0.g(i14) + 1;
                            if (iG3 != i14) {
                                Zo.f("AdtsReader", "Detected audio object type: " + iG3 + ", but assuming AAC LC.");
                            }
                            c1286f0.v(5);
                            int iG4 = c1286f0.g(3);
                            int i31 = this.f12553o;
                            byte b11 = (byte) (((i31 >> 1) & 7) | 16);
                            byte b12 = (byte) (((iG4 << 3) & 120) | ((i31 << 7) & 128));
                            byte[] bArr9 = new byte[i14];
                            bArr9[z8 ? 1 : 0] = b11;
                            bArr9[1] = b12;
                            W0.r rVarC = AbstractC1717nH.c(new C1286f0(bArr9, i14), z8);
                            K k8 = new K();
                            k8.f14260a = this.f12544f;
                            k8.f("audio/mp4a-latm");
                            k8.f14268i = rVarC.f7454a;
                            k8.f14285z = rVarC.f7456c;
                            k8.f14253A = rVarC.f7455b;
                            k8.f14274o = Collections.singletonList(bArr9);
                            k8.f14263d = this.f12542d;
                            k8.f14265f = this.f12543e;
                            C1804p0 c1804p0 = new C1804p0(k8);
                            this.f12556r = 1024000000 / ((long) c1804p0.f20363B);
                            this.f12545g.d(c1804p0);
                            this.f12555q = true;
                        }
                        c1286f0.v(4);
                        int iG5 = c1286f0.g(13);
                        int i32 = iG5 - 7;
                        if (this.f12550l) {
                            i32 = iG5 - 9;
                        }
                        InterfaceC1234e0 interfaceC1234e1 = this.f12545g;
                        long j8 = this.f12556r;
                        this.f12547i = 4;
                        this.f12548j = z8 ? 1 : 0;
                        this.f12559u = interfaceC1234e1;
                        this.f12560v = j8;
                        this.f12557s = i32;
                    }
                }
            } else if (c1534jr.o() != 0) {
                c1286f0.f18645b[z8 ? 1 : 0] = c1534jr.f19515a[c1534jr.f19516b];
                c1286f0.t(i14);
                int iG6 = c1286f0.g(4);
                int i33 = this.f12553o;
                if (i33 == -1 || iG6 == i33) {
                    if (!this.f12551m) {
                        this.f12551m = true;
                        this.f12552n = this.f12554p;
                        this.f12553o = iG6;
                    }
                    this.f12547i = 3;
                    this.f12548j = z8 ? 1 : 0;
                } else {
                    this.f12551m = z8;
                    this.f12547i = z8 ? 1 : 0;
                    this.f12548j = z8 ? 1 : 0;
                    this.f12549k = 256;
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.F2
    public final void c(N n7, A1.I i8) {
        i8.c();
        i8.d();
        this.f12544f = i8.f310e;
        i8.d();
        InterfaceC1234e0 interfaceC1234e0H = n7.h(i8.f309d, 1);
        this.f12545g = interfaceC1234e0H;
        this.f12559u = interfaceC1234e0H;
        if (!this.f12539a) {
            this.f12546h = new I();
            return;
        }
        i8.c();
        i8.d();
        InterfaceC1234e0 interfaceC1234e0H2 = n7.h(i8.f309d, 5);
        this.f12546h = interfaceC1234e0H2;
        K k8 = new K();
        i8.d();
        k8.f14260a = i8.f310e;
        k8.f("application/id3");
        interfaceC1234e0H2.d(new C1804p0(k8));
    }

    @Override // com.google.android.gms.internal.ads.F2
    public final void d(int i8, long j8) {
        this.f12558t = j8;
    }

    @Override // com.google.android.gms.internal.ads.F2
    public final void zzc(boolean z7) {
    }

    @Override // com.google.android.gms.internal.ads.F2
    public final void zze() {
        this.f12558t = -9223372036854775807L;
        this.f12551m = false;
        this.f12547i = 0;
        this.f12548j = 0;
        this.f12549k = 256;
    }
}
