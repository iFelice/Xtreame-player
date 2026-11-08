package A1;

import W0.L;
import android.util.Pair;
import com.google.android.gms.internal.measurement.H1;
import java.util.Arrays;
import java.util.Collections;
import p094m0.C3135s;
import p094m0.C3136t;
import p094m0.O;
import p117p0.M;

/* JADX INFO: loaded from: classes.dex */
public final class l implements InterfaceC0035j {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final double[] f416r = {23.976023976023978d, 24.0d, 25.0d, 29.97002997002997d, 30.0d, 50.0d, 59.94005994005994d, 60.0d};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f417a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public L f418b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final K f419c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f420d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final p117p0.E f421e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final x f422f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final boolean[] f423g = new boolean[4];

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final C0036k f424h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f425i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f426j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f427k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public long f428l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public long f429m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public long f430n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public long f431o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f432p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f433q;

    public l(K k8, String str) {
        this.f419c = k8;
        this.f420d = str;
        C0036k c0036k = new C0036k();
        c0036k.f415d = new byte[128];
        this.f424h = c0036k;
        if (k8 != null) {
            this.f422f = new x(178, 0);
            this.f421e = new p117p0.E();
        } else {
            this.f422f = null;
            this.f421e = null;
        }
        this.f429m = -9223372036854775807L;
        this.f431o = -9223372036854775807L;
    }

    @Override // A1.InterfaceC0035j
    public final void a() {
        p125q0.p.a(this.f423g);
        C0036k c0036k = this.f424h;
        c0036k.f412a = false;
        c0036k.f413b = 0;
        c0036k.f414c = 0;
        x xVar = this.f422f;
        if (xVar != null) {
            xVar.c();
        }
        this.f425i = 0L;
        this.f426j = false;
        this.f429m = -9223372036854775807L;
        this.f431o = -9223372036854775807L;
    }

    /* JADX WARN: Code duplicated, block: B:44:0x011e  */
    /* JADX WARN: Code duplicated, block: B:63:0x0194  */
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
    @Override // A1.InterfaceC0035j
    public final void b(p117p0.E e8) {
        C0036k c0036k;
        x xVar;
        int i8;
        int i9;
        boolean z7;
        int i10;
        float f8;
        int i11;
        float f9;
        int i12;
        long j8;
        p117p0.E e9 = e8;
        H1.j(this.f418b);
        int i13 = e9.f28036b;
        int i14 = e9.f28037c;
        byte[] bArr = e9.f28035a;
        this.f425i += (long) e8.a();
        this.f418b.e(e8.a(), e9);
        while (true) {
            int iB = p125q0.p.b(bArr, i13, i14, this.f423g);
            c0036k = this.f424h;
            xVar = this.f422f;
            if (iB == i14) {
                break;
            }
            int i15 = iB + 3;
            int i16 = e9.f28035a[i15] & 255;
            int i17 = iB - i13;
            if (this.f427k) {
                i8 = i14;
                i9 = i15;
                i13 = i13;
            } else {
                if (i17 > 0) {
                    c0036k.a(i13, bArr, iB);
                }
                int i18 = i17 < 0 ? -i17 : 0;
                if (c0036k.f412a) {
                    int i19 = c0036k.f413b - i18;
                    c0036k.f413b = i19;
                    if (c0036k.f414c == 0 && i16 == 181) {
                        c0036k.f414c = i19;
                        i8 = i14;
                        i9 = i15;
                        i13 = i13;
                    } else {
                        c0036k.f412a = false;
                        String str = this.f417a;
                        str.getClass();
                        byte[] bArrCopyOf = Arrays.copyOf(c0036k.f415d, c0036k.f413b);
                        int i20 = bArrCopyOf[4] & 255;
                        byte b8 = bArrCopyOf[5];
                        i9 = i15;
                        i8 = i14;
                        int i21 = (i20 << 4) | ((b8 & 255) >> 4);
                        int i22 = (bArrCopyOf[6] & 255) | ((b8 & 15) << 8);
                        int i23 = (bArrCopyOf[7] & 240) >> 4;
                        if (i23 == 2) {
                            f8 = i22 * 4;
                            i11 = i21 * 3;
                        } else if (i23 != 3) {
                            if (i23 != 4) {
                                f9 = 1.0f;
                            } else {
                                f8 = i22 * 121;
                                i11 = i21 * 100;
                            }
                            C3135s c3135s = new C3135s();
                            c3135s.f26983a = str;
                            c3135s.f26995m = O.p(this.f420d);
                            c3135s.f26996n = O.p("video/mpeg2");
                            c3135s.f27003u = i21;
                            c3135s.f27004v = i22;
                            c3135s.f26968A = f9;
                            c3135s.f26999q = Collections.singletonList(bArrCopyOf);
                            C3136t c3136t = new C3136t(c3135s);
                            i12 = (bArrCopyOf[7] & 15) - 1;
                            if (i12 >= 0 || i12 >= 8) {
                                i13 = i13;
                                j8 = 0;
                            } else {
                                double d6 = f416r[i12];
                                byte b9 = bArrCopyOf[c0036k.f414c + 9];
                                int i24 = (b9 & 96) >> 5;
                                int i25 = b9 & 31;
                                if (i24 != i25) {
                                    d6 *= (((double) i24) + 1.0d) / ((double) (i25 + 1));
                                }
                                j8 = (long) (1000000.0d / d6);
                            }
                            Pair pairCreate = Pair.create(c3136t, Long.valueOf(j8));
                            this.f418b.b((C3136t) pairCreate.first);
                            this.f428l = ((Long) pairCreate.second).longValue();
                            this.f427k = true;
                        } else {
                            f8 = i22 * 16;
                            i11 = i21 * 9;
                        }
                        f9 = f8 / i11;
                        C3135s c3135s2 = new C3135s();
                        c3135s2.f26983a = str;
                        c3135s2.f26995m = O.p(this.f420d);
                        c3135s2.f26996n = O.p("video/mpeg2");
                        c3135s2.f27003u = i21;
                        c3135s2.f27004v = i22;
                        c3135s2.f26968A = f9;
                        c3135s2.f26999q = Collections.singletonList(bArrCopyOf);
                        C3136t c3136t2 = new C3136t(c3135s2);
                        i12 = (bArrCopyOf[7] & 15) - 1;
                        if (i12 >= 0) {
                            i13 = i13;
                            j8 = 0;
                        } else {
                            i13 = i13;
                            j8 = 0;
                        }
                        Pair pairCreate2 = Pair.create(c3136t2, Long.valueOf(j8));
                        this.f418b.b((C3136t) pairCreate2.first);
                        this.f428l = ((Long) pairCreate2.second).longValue();
                        this.f427k = true;
                    }
                } else {
                    i8 = i14;
                    i9 = i15;
                    i13 = i13;
                    if (i16 == 179) {
                        c0036k.f412a = true;
                    }
                }
                c0036k.a(0, C0036k.f411e, 3);
            }
            if (xVar == null) {
                e9 = e8;
                z7 = true;
            } else {
                if (i17 > 0) {
                    xVar.a(i13, bArr, iB);
                    i10 = 0;
                } else {
                    i10 = -i17;
                }
                if (xVar.b(i10)) {
                    int iM = p125q0.p.m(xVar.f598e, xVar.f597d);
                    String str2 = M.f28050a;
                    byte[] bArr2 = xVar.f597d;
                    p117p0.E e10 = this.f421e;
                    e10.J(iM, bArr2);
                    this.f419c.a(this.f431o, e10);
                }
                if (i16 == 178) {
                    e9 = e8;
                    z7 = true;
                    if (e9.f28035a[iB + 2] == 1) {
                        xVar.d(i16);
                    }
                } else {
                    e9 = e8;
                    z7 = true;
                }
            }
            if (i16 == 0 || i16 == 179) {
                int i26 = i8 - iB;
                if (this.f433q && this.f427k) {
                    long j9 = this.f431o;
                    if (j9 != -9223372036854775807L) {
                        this.f418b.d(j9, this.f432p ? 1 : 0, ((int) (this.f425i - this.f430n)) - i26, i26, null);
                    }
                }
                if (!this.f426j || this.f433q) {
                    this.f430n = this.f425i - ((long) i26);
                    long j10 = this.f429m;
                    if (j10 == -9223372036854775807L) {
                        long j11 = this.f431o;
                        j10 = j11 != -9223372036854775807L ? j11 + this.f428l : -9223372036854775807L;
                    }
                    this.f431o = j10;
                    this.f432p = false;
                    this.f429m = -9223372036854775807L;
                    this.f426j = true;
                }
                this.f433q = i16 == 0;
            } else if (i16 == 184) {
                this.f432p = z7;
            }
            i14 = i8;
            i13 = i9;
        }
        if (!this.f427k) {
            c0036k.a(i13, bArr, i14);
        }
        if (xVar != null) {
            xVar.a(i13, bArr, i14);
        }
    }

    @Override // A1.InterfaceC0035j
    public final void c(W0.u uVar, I i8) {
        i8.a();
        i8.b();
        this.f417a = i8.f310e;
        i8.b();
        this.f418b = uVar.t(i8.f309d, 2);
        K k8 = this.f419c;
        if (k8 != null) {
            k8.b(uVar, i8);
        }
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
    @Override // A1.InterfaceC0035j
    public final void d(boolean z7) {
        H1.j(this.f418b);
        if (z7) {
            boolean z8 = this.f432p;
            this.f418b.d(this.f431o, z8 ? 1 : 0, (int) (this.f425i - this.f430n), 0, null);
        }
    }

    @Override // A1.InterfaceC0035j
    public final void e(int i8, long j8) {
        this.f429m = j8;
    }
}
