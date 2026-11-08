package A1;

import com.google.android.gms.internal.measurement.H1;
import com.google.protobuf.U2;

/* JADX INFO: loaded from: classes.dex */
public final class y implements J {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InterfaceC0035j f599a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final p117p0.D f600b = new p117p0.D(new byte[10], 0, (Object) null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f601c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f602d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public p117p0.J f603e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f604f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f605g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f606h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f607i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f608j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f609k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public long f610l;

    public y(InterfaceC0035j interfaceC0035j) {
        this.f599a = interfaceC0035j;
    }

    @Override // A1.J
    public final void a() {
        this.f601c = 0;
        this.f602d = 0;
        this.f606h = false;
        this.f599a.a();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r8v2 */
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
    @Override // A1.J
    public final void b(int i8, p117p0.E e8) {
        H1.j(this.f603e);
        int i9 = i8 & 1;
        int i10 = -1;
        int i11 = 2;
        InterfaceC0035j interfaceC0035j = this.f599a;
        ?? r8 = 0;
        if (i9 != 0) {
            int i12 = this.f601c;
            if (i12 != 0 && i12 != 1) {
                if (i12 == 2) {
                    p117p0.x.f("PesReader", "Unexpected start indicator reading extended header");
                } else {
                    if (i12 != 3) {
                        throw new IllegalStateException();
                    }
                    if (this.f608j != -1) {
                        p117p0.x.f("PesReader", "Unexpected start indicator: expected " + this.f608j + " more bytes");
                    }
                    interfaceC0035j.d(e8.f28037c == 0);
                }
            }
            this.f601c = 1;
            this.f602d = 0;
        }
        int i13 = i8;
        while (e8.a() > 0) {
            int i14 = this.f601c;
            if (i14 != 0) {
                p117p0.D d6 = this.f600b;
                if (i14 != 1) {
                    if (i14 != i11) {
                        if (i14 != 3) {
                            throw new IllegalStateException();
                        }
                        int iA = e8.a();
                        int i15 = this.f608j;
                        int i16 = i15 == i10 ? 0 : iA - i15;
                        if (i16 > 0) {
                            iA -= i16;
                            e8.K(e8.f28036b + iA);
                        }
                        interfaceC0035j.b(e8);
                        int i17 = this.f608j;
                        if (i17 != i10) {
                            int i18 = i17 - iA;
                            this.f608j = i18;
                            if (i18 == 0) {
                                interfaceC0035j.d(r8);
                                this.f601c = 1;
                                this.f602d = r8;
                            }
                        }
                    } else if (c(Math.min(10, this.f607i), e8, d6.f28028b) && c(this.f607i, e8, null)) {
                        d6.r(r8);
                        this.f610l = -9223372036854775807L;
                        if (this.f604f) {
                            d6.u(4);
                            long jI = ((long) d6.i(3)) << 30;
                            d6.u(1);
                            long jI2 = ((long) (d6.i(15) << 15)) | jI;
                            d6.u(1);
                            long jI3 = jI2 | ((long) d6.i(15));
                            d6.u(1);
                            if (!this.f606h && this.f605g) {
                                d6.u(4);
                                long jI4 = ((long) d6.i(3)) << 30;
                                d6.u(1);
                                long jI5 = ((long) (d6.i(15) << 15)) | jI4;
                                d6.u(1);
                                long jI6 = jI5 | ((long) d6.i(15));
                                d6.u(1);
                                this.f603e.b(jI6);
                                this.f606h = true;
                            }
                            this.f610l = this.f603e.b(jI3);
                        }
                        i13 |= this.f609k ? 4 : 0;
                        interfaceC0035j.e(i13, this.f610l);
                        this.f601c = 3;
                        this.f602d = 0;
                    }
                } else if (c(9, e8, d6.f28028b)) {
                    this.f601c = e() ? 2 : 0;
                    this.f602d = 0;
                }
            } else {
                e8.M(e8.a());
            }
            i10 = -1;
            i11 = 2;
            r8 = 0;
        }
    }

    public final boolean c(int i8, p117p0.E e8, byte[] bArr) {
        int iMin = Math.min(e8.a(), i8 - this.f602d);
        if (iMin <= 0) {
            return true;
        }
        if (bArr == null) {
            e8.M(iMin);
        } else {
            e8.j(this.f602d, bArr, iMin);
        }
        int i9 = this.f602d + iMin;
        this.f602d = i9;
        return i9 == i8;
    }

    @Override // A1.J
    public final void d(p117p0.J j8, W0.u uVar, I i8) {
        this.f603e = j8;
        this.f599a.c(uVar, i8);
    }

    public final boolean e() {
        p117p0.D d6 = this.f600b;
        d6.r(0);
        int i8 = d6.i(24);
        if (i8 != 1) {
            U2.v("Unexpected start code prefix: ", i8, "PesReader");
            this.f608j = -1;
            return false;
        }
        d6.u(8);
        int i9 = d6.i(16);
        d6.u(5);
        this.f609k = d6.h();
        d6.u(2);
        this.f604f = d6.h();
        this.f605g = d6.h();
        d6.u(6);
        int i10 = d6.i(8);
        this.f607i = i10;
        if (i9 == 0) {
            this.f608j = -1;
        } else {
            int i11 = (i9 - 3) - i10;
            this.f608j = i11;
            if (i11 < 0) {
                p117p0.x.f("PesReader", "Found negative packet payload size: " + this.f608j);
                this.f608j = -1;
            }
        }
        return true;
    }
}
