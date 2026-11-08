package com.google.android.gms.internal.ads;

import android.util.Pair;
import java.util.Arrays;
import java.util.Collections;

/* JADX INFO: loaded from: classes.dex */
public final class H2 implements F2 {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final double[] f13679q = {23.976023976023978d, 24.0d, 25.0d, 29.97002997002997d, 30.0d, 50.0d, 59.94005994005994d, 60.0d};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f13680a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public InterfaceC1234e0 f13681b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C1083b3 f13682c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final C1534jr f13683d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final A1.x f13684e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean[] f13685f = new boolean[4];

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final G2 f13686g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f13687h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f13688i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f13689j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long f13690k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public long f13691l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public long f13692m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public long f13693n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f13694o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f13695p;

    public H2(C1083b3 c1083b3) {
        C1534jr c1534jr;
        this.f13682c = c1083b3;
        G2 g8 = new G2();
        g8.f13474d = new byte[128];
        this.f13686g = g8;
        if (c1083b3 != null) {
            this.f13684e = new A1.x(178, 1);
            c1534jr = new C1534jr();
        } else {
            c1534jr = null;
            this.f13684e = null;
        }
        this.f13683d = c1534jr;
        this.f13691l = -9223372036854775807L;
        this.f13693n = -9223372036854775807L;
    }

    /* JADX WARN: Code duplicated, block: B:43:0x0111  */
    /* JADX WARN: Code duplicated, block: B:63:0x0187  */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // com.google.android.gms.internal.ads.F2
    public final void b(C1534jr c1534jr) {
        G2 g8;
        A1.x xVar;
        int i8;
        int i9;
        C1534jr c1534jr2;
        int i10;
        int i11;
        int i12;
        float f8;
        int i13;
        C1534jr c1534jr3 = c1534jr;
        p113o3.r.x(this.f13681b);
        int i14 = c1534jr3.f19516b;
        int i15 = c1534jr3.f19517c;
        byte[] bArr = c1534jr3.f19515a;
        this.f13687h += (long) c1534jr.o();
        this.f13681b.f(c1534jr.o(), c1534jr3);
        while (true) {
            int iA = AbstractC2008sy.a(bArr, i14, i15, this.f13685f);
            g8 = this.f13686g;
            xVar = this.f13684e;
            if (iA == i15) {
                break;
            }
            int i16 = iA + 3;
            int i17 = c1534jr3.f19515a[i16] & 255;
            int i18 = iA - i14;
            if (this.f13689j) {
                i8 = i15;
                i9 = i16;
                i14 = i14;
            } else {
                if (i18 > 0) {
                    g8.a(i14, bArr, iA);
                }
                int i19 = i18 < 0 ? -i18 : 0;
                if (g8.f13471a) {
                    int i20 = g8.f13472b - i19;
                    g8.f13472b = i20;
                    if (g8.f13473c == 0 && i17 == 181) {
                        g8.f13473c = i20;
                        i8 = i15;
                        i9 = i16;
                        i14 = i14;
                    } else {
                        g8.f13471a = false;
                        String str = this.f13680a;
                        str.getClass();
                        byte[] bArrCopyOf = Arrays.copyOf(g8.f13474d, g8.f13472b);
                        int i21 = bArrCopyOf[4] & 255;
                        byte b8 = bArrCopyOf[5];
                        i9 = i16;
                        int i22 = bArrCopyOf[6] & 255;
                        i8 = i15;
                        int i23 = (i21 << 4) | ((b8 & 255) >> 4);
                        int i24 = (bArrCopyOf[7] & 240) >> 4;
                        int i25 = i22 | ((b8 & 15) << 8);
                        if (i24 == 2) {
                            i11 = i25 * 4;
                            i12 = i23 * 3;
                        } else if (i24 != 3) {
                            if (i24 != 4) {
                                f8 = 1.0f;
                            } else {
                                i11 = i25 * 121;
                                i12 = i23 * 100;
                            }
                            K k8 = new K();
                            k8.f14260a = str;
                            k8.f("video/mpeg2");
                            k8.f14277r = i23;
                            k8.f14278s = i25;
                            k8.f14281v = f8;
                            k8.f14274o = Collections.singletonList(bArrCopyOf);
                            C1804p0 c1804p0 = new C1804p0(k8);
                            i13 = (bArrCopyOf[7] & 15) - 1;
                            long j8 = 0;
                            if (i13 >= 0 || i13 >= 8) {
                                i14 = i14;
                            } else {
                                double d6 = f13679q[i13];
                                byte b9 = bArrCopyOf[g8.f13473c + 9];
                                int i26 = (b9 & 96) >> 5;
                                int i27 = b9 & 31;
                                if (i26 != i27) {
                                    d6 *= (((double) i26) + 1.0d) / ((double) (i27 + 1));
                                }
                                j8 = (long) (1000000.0d / d6);
                            }
                            Pair pairCreate = Pair.create(c1804p0, Long.valueOf(j8));
                            this.f13681b.d((C1804p0) pairCreate.first);
                            this.f13690k = ((Long) pairCreate.second).longValue();
                            this.f13689j = true;
                        } else {
                            i11 = i25 * 16;
                            i12 = i23 * 9;
                        }
                        f8 = i11 / i12;
                        K k9 = new K();
                        k9.f14260a = str;
                        k9.f("video/mpeg2");
                        k9.f14277r = i23;
                        k9.f14278s = i25;
                        k9.f14281v = f8;
                        k9.f14274o = Collections.singletonList(bArrCopyOf);
                        C1804p0 c1804p1 = new C1804p0(k9);
                        i13 = (bArrCopyOf[7] & 15) - 1;
                        long j9 = 0;
                        if (i13 >= 0) {
                            i14 = i14;
                        } else {
                            i14 = i14;
                        }
                        Pair pairCreate2 = Pair.create(c1804p1, Long.valueOf(j9));
                        this.f13681b.d((C1804p0) pairCreate2.first);
                        this.f13690k = ((Long) pairCreate2.second).longValue();
                        this.f13689j = true;
                    }
                } else {
                    i8 = i15;
                    i9 = i16;
                    i14 = i14;
                    if (i17 == 179) {
                        g8.f13471a = true;
                    }
                }
                g8.a(0, G2.f13470e, 3);
            }
            if (xVar == null) {
                c1534jr2 = c1534jr;
            } else {
                if (i18 > 0) {
                    xVar.e(i14, bArr, iA);
                    i10 = 0;
                } else {
                    i10 = -i18;
                }
                if (xVar.h(i10)) {
                    int iB = AbstractC2008sy.b(xVar.f597d, xVar.f598e);
                    int i28 = Et.f13234a;
                    byte[] bArr2 = xVar.f597d;
                    C1534jr c1534jr4 = this.f13683d;
                    c1534jr4.h(iB, bArr2);
                    this.f13682c.a(this.f13693n, c1534jr4);
                }
                if (i17 == 178) {
                    c1534jr2 = c1534jr;
                    if (c1534jr2.f19515a[iA + 2] == 1) {
                        xVar.g(178);
                    }
                    i17 = 178;
                } else {
                    c1534jr2 = c1534jr;
                }
            }
            if (i17 == 0 || i17 == 179) {
                int i29 = i8 - iA;
                if (this.f13695p && this.f13689j) {
                    long j10 = this.f13693n;
                    if (j10 != -9223372036854775807L) {
                        this.f13681b.b(j10, this.f13694o ? 1 : 0, ((int) (this.f13687h - this.f13692m)) - i29, i29, null);
                    }
                }
                if (!this.f13688i || this.f13695p) {
                    this.f13692m = this.f13687h - ((long) i29);
                    long j11 = this.f13691l;
                    if (j11 == -9223372036854775807L) {
                        long j12 = this.f13693n;
                        j11 = j12 != -9223372036854775807L ? j12 + this.f13690k : -9223372036854775807L;
                    }
                    this.f13693n = j11;
                    this.f13694o = false;
                    this.f13691l = -9223372036854775807L;
                    this.f13688i = true;
                }
                this.f13695p = i17 == 0;
            } else if (i17 == 184) {
                this.f13694o = true;
            }
            c1534jr3 = c1534jr2;
            i14 = i9;
            i15 = i8;
        }
        if (!this.f13689j) {
            g8.a(i14, bArr, i15);
        }
        if (xVar != null) {
            xVar.e(i14, bArr, i15);
        }
    }

    @Override // com.google.android.gms.internal.ads.F2
    public final void c(N n7, A1.I i8) {
        i8.c();
        i8.d();
        this.f13680a = i8.f310e;
        i8.d();
        this.f13681b = n7.h(i8.f309d, 2);
        C1083b3 c1083b3 = this.f13682c;
        if (c1083b3 != null) {
            c1083b3.b(n7, i8);
        }
    }

    @Override // com.google.android.gms.internal.ads.F2
    public final void d(int i8, long j8) {
        this.f13691l = j8;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // com.google.android.gms.internal.ads.F2
    public final void zzc(boolean z7) {
        p113o3.r.x(this.f13681b);
        if (z7) {
            boolean z8 = this.f13694o;
            long j8 = this.f13687h - this.f13692m;
            this.f13681b.b(this.f13693n, z8 ? 1 : 0, (int) j8, 0, null);
        }
    }

    @Override // com.google.android.gms.internal.ads.F2
    public final void zze() {
        AbstractC2008sy.g(this.f13685f);
        G2 g8 = this.f13686g;
        g8.f13471a = false;
        g8.f13472b = 0;
        g8.f13473c = 0;
        A1.x xVar = this.f13684e;
        if (xVar != null) {
            xVar.f();
        }
        this.f13687h = 0L;
        this.f13688i = false;
        this.f13691l = -9223372036854775807L;
        this.f13693n = -9223372036854775807L;
    }
}
