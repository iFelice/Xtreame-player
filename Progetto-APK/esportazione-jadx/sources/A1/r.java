package A1;

import W0.L;
import android.util.SparseArray;
import com.google.android.gms.internal.measurement.H1;
import java.util.ArrayList;
import java.util.Arrays;
import p086l.C3051s;
import p094m0.C3126i;
import p094m0.C3135s;
import p094m0.C3136t;
import p094m0.O;
import p117p0.AbstractC3169g;
import p117p0.M;

/* JADX INFO: loaded from: classes.dex */
public final class r implements InterfaceC0035j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final p096m2.o f495a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f496b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f497c;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f501g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f503i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public L f504j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public q f505k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f506l;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f508n;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean[] f502h = new boolean[3];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final x f498d = new x(7, 0);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final x f499e = new x(8, 0);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final x f500f = new x(6, 0);

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public long f507m = -9223372036854775807L;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final p117p0.E f509o = new p117p0.E();

    public r(p096m2.o oVar, boolean z7, boolean z8) {
        this.f495a = oVar;
        this.f496b = z7;
        this.f497c = z8;
    }

    @Override // A1.InterfaceC0035j
    public final void a() {
        this.f501g = 0L;
        this.f508n = false;
        this.f507m = -9223372036854775807L;
        p125q0.p.a(this.f502h);
        this.f498d.c();
        this.f499e.c();
        this.f500f.c();
        ((C3051s) this.f495a.f27239J).c(0);
        q qVar = this.f505k;
        if (qVar != null) {
            qVar.f486k = false;
            qVar.f490o = false;
            p pVar = qVar.f489n;
            pVar.f461b = false;
            pVar.f460a = false;
        }
    }

    @Override // A1.InterfaceC0035j
    public final void b(p117p0.E e8) {
        int i8;
        int i9;
        H1.j(this.f504j);
        String str = M.f28050a;
        int i10 = e8.f28036b;
        int i11 = e8.f28037c;
        byte[] bArr = e8.f28035a;
        this.f501g += (long) e8.a();
        this.f504j.e(e8.a(), e8);
        while (true) {
            int iB = p125q0.p.b(bArr, i10, i11, this.f502h);
            if (iB == i11) {
                g(i10, bArr, i11);
                return;
            }
            int i12 = bArr[iB + 3] & 31;
            if (iB <= 0 || bArr[iB - 1] != 0) {
                i8 = iB;
                i9 = 3;
            } else {
                i8 = iB - 1;
                i9 = 4;
            }
            int i13 = i8 - i10;
            if (i13 > 0) {
                g(i10, bArr, i8);
            }
            int i14 = i11 - i8;
            long j8 = this.f501g - ((long) i14);
            f(i14, i13 < 0 ? -i13 : 0, j8, this.f507m);
            h(i12, j8, this.f507m);
            i10 = i8 + i9;
        }
    }

    @Override // A1.InterfaceC0035j
    public final void c(W0.u uVar, I i8) {
        i8.a();
        i8.b();
        this.f503i = i8.f310e;
        i8.b();
        L lT = uVar.t(i8.f309d, 2);
        this.f504j = lT;
        this.f505k = new q(lT, this.f496b, this.f497c);
        this.f495a.f(uVar, i8);
    }

    @Override // A1.InterfaceC0035j
    public final void d(boolean z7) {
        H1.j(this.f504j);
        String str = M.f28050a;
        if (z7) {
            ((C3051s) this.f495a.f27239J).c(0);
            f(0, 0, this.f501g, this.f507m);
            h(9, this.f501g, this.f507m);
            f(0, 0, this.f501g, this.f507m);
        }
    }

    @Override // A1.InterfaceC0035j
    public final void e(int i8, long j8) {
        this.f507m = j8;
        this.f508n = ((i8 & 2) != 0) | this.f508n;
    }

    /* JADX WARN: Code duplicated, block: B:66:0x01fa  */
    /* JADX WARN: Code duplicated, block: B:67:0x01fc  */
    /* JADX WARN: Code duplicated, block: B:71:0x0212  */
    /* JADX WARN: Code duplicated, block: B:74:0x0219  */
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
    public final void f(int i8, int i9, long j8, long j9) {
        long j10;
        int i10;
        long j11;
        long j12;
        boolean z7;
        int i11;
        int i12;
        int i13;
        boolean z8;
        boolean z9 = this.f506l;
        boolean z10 = true;
        p096m2.o oVar = this.f495a;
        if (!z9 || this.f505k.f478c) {
            x xVar = this.f498d;
            xVar.b(i9);
            x xVar2 = this.f499e;
            xVar2.b(i9);
            if (this.f506l) {
                if (xVar.f596c) {
                    p125q0.o oVarK = p125q0.p.k(3, xVar.f597d, xVar.f598e);
                    ((C3051s) oVar.f27239J).j(oVarK.f29507s);
                    this.f505k.f479d.append(oVarK.f29492d, oVarK);
                    xVar.c();
                } else if (xVar2.f596c) {
                    byte[] bArr = xVar2.f597d;
                    int i14 = xVar2.f598e;
                    byte[] bArr2 = p125q0.p.f29508a;
                    p117p0.D d6 = new p117p0.D(bArr, 4, i14);
                    int iM = d6.m();
                    int iM2 = d6.m();
                    d6.t();
                    this.f505k.f480e.append(iM, new p125q0.n(d6.h(), iM, iM2));
                    xVar2.c();
                }
            } else if (xVar.f596c && xVar2.f596c) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(Arrays.copyOf(xVar.f597d, xVar.f598e));
                arrayList.add(Arrays.copyOf(xVar2.f597d, xVar2.f598e));
                p125q0.o oVarK2 = p125q0.p.k(3, xVar.f597d, xVar.f598e);
                p117p0.D d8 = new p117p0.D(xVar2.f597d, 4, xVar2.f598e);
                int iM3 = d8.m();
                int iM4 = d8.m();
                d8.t();
                p125q0.n nVar = new p125q0.n(d8.h(), iM3, iM4);
                byte[] bArr3 = AbstractC3169g.f28081a;
                String str = String.format("avc1.%02X%02X%02X", Integer.valueOf(oVarK2.f29489a), Integer.valueOf(oVarK2.f29490b), Integer.valueOf(oVarK2.f29491c));
                L l4 = this.f504j;
                C3135s c3135s = new C3135s();
                c3135s.f26983a = this.f503i;
                c3135s.f26995m = O.p("video/mp2t");
                c3135s.f26996n = O.p("video/avc");
                c3135s.f26992j = str;
                c3135s.f27003u = oVarK2.f29493e;
                c3135s.f27004v = oVarK2.f29494f;
                c3135s.f26971D = new C3126i(oVarK2.f29504p, oVarK2.f29505q, oVarK2.f29506r, null, oVarK2.f29496h + 8, oVarK2.f29497i + 8);
                c3135s.f26968A = oVarK2.f29495g;
                c3135s.f26999q = arrayList;
                int i15 = oVarK2.f29507s;
                c3135s.f26998p = i15;
                l4.b(new C3136t(c3135s));
                this.f506l = true;
                ((C3051s) oVar.f27239J).j(i15);
                this.f505k.f479d.append(oVarK2.f29492d, oVarK2);
                this.f505k.f480e.append(iM3, nVar);
                xVar.c();
                xVar2.c();
            }
        }
        x xVar3 = this.f500f;
        if (xVar3.b(i9)) {
            int iM5 = p125q0.p.m(xVar3.f598e, xVar3.f597d);
            byte[] bArr4 = xVar3.f597d;
            p117p0.E e8 = this.f509o;
            e8.J(iM5, bArr4);
            e8.L(4);
            ((C3051s) oVar.f27239J).a(j9, e8);
        }
        q qVar = this.f505k;
        boolean z11 = this.f506l;
        if (qVar.f484i == 9) {
            if (z11 && qVar.f490o) {
                j10 = qVar.f485j;
                i10 = i8 + ((int) (j8 - j10));
                j11 = qVar.f492q;
                if (j11 != -9223372036854775807L) {
                    j12 = qVar.f491p;
                    if (j10 != j12) {
                        qVar.f476a.d(j11, qVar.f493r ? 1 : 0, (int) (j10 - j12), i10, null);
                    }
                }
            }
            qVar.f491p = qVar.f485j;
            qVar.f492q = qVar.f487l;
            qVar.f493r = false;
            qVar.f490o = true;
        } else if (qVar.f478c) {
            p pVar = qVar.f489n;
            p pVar2 = qVar.f488m;
            if (pVar.f460a) {
                if (pVar2.f460a) {
                    p125q0.o oVar2 = pVar.f462c;
                    H1.j(oVar2);
                    p125q0.o oVar3 = pVar2.f462c;
                    H1.j(oVar3);
                    if (pVar.f465f == pVar2.f465f && pVar.f466g == pVar2.f466g && pVar.f467h == pVar2.f467h && ((!pVar.f468i || !pVar2.f468i || pVar.f469j == pVar2.f469j) && ((i12 = pVar.f463d) == (i13 = pVar2.f463d) || (i12 != 0 && i13 != 0)))) {
                        int i16 = oVar3.f29501m;
                        int i17 = oVar2.f29501m;
                        if ((i17 == 0 && i16 == 0 && (pVar.f472m != pVar2.f472m || pVar.f473n != pVar2.f473n)) || ((i17 == 1 && i16 == 1 && (pVar.f474o != pVar2.f474o || pVar.f475p != pVar2.f475p)) || (z8 = pVar.f470k) != pVar2.f470k || (z8 && pVar.f471l != pVar2.f471l))) {
                            if (z11) {
                                j10 = qVar.f485j;
                                i10 = i8 + ((int) (j8 - j10));
                                j11 = qVar.f492q;
                                if (j11 != -9223372036854775807L) {
                                    j12 = qVar.f491p;
                                    if (j10 != j12) {
                                        qVar.f476a.d(j11, qVar.f493r ? 1 : 0, (int) (j10 - j12), i10, null);
                                    }
                                }
                            }
                            qVar.f491p = qVar.f485j;
                            qVar.f492q = qVar.f487l;
                            qVar.f493r = false;
                            qVar.f490o = true;
                        }
                    } else {
                        if (z11) {
                            j10 = qVar.f485j;
                            i10 = i8 + ((int) (j8 - j10));
                            j11 = qVar.f492q;
                            if (j11 != -9223372036854775807L) {
                                j12 = qVar.f491p;
                                if (j10 != j12) {
                                    qVar.f476a.d(j11, qVar.f493r ? 1 : 0, (int) (j10 - j12), i10, null);
                                }
                            }
                        }
                        qVar.f491p = qVar.f485j;
                        qVar.f492q = qVar.f487l;
                        qVar.f493r = false;
                        qVar.f490o = true;
                    }
                } else {
                    if (z11) {
                        j10 = qVar.f485j;
                        i10 = i8 + ((int) (j8 - j10));
                        j11 = qVar.f492q;
                        if (j11 != -9223372036854775807L) {
                            j12 = qVar.f491p;
                            if (j10 != j12) {
                                qVar.f476a.d(j11, qVar.f493r ? 1 : 0, (int) (j10 - j12), i10, null);
                            }
                        }
                    }
                    qVar.f491p = qVar.f485j;
                    qVar.f492q = qVar.f487l;
                    qVar.f493r = false;
                    qVar.f490o = true;
                }
            }
        }
        if (qVar.f477b) {
            p pVar3 = qVar.f489n;
            z7 = pVar3.f461b && ((i11 = pVar3.f464e) == 7 || i11 == 2);
        } else {
            z7 = qVar.f494s;
        }
        boolean z12 = qVar.f493r;
        int i18 = qVar.f484i;
        if (i18 != 5 && (!z7 || i18 != 1)) {
            z10 = false;
        }
        boolean z13 = z12 | z10;
        qVar.f493r = z13;
        qVar.f484i = 24;
        if (z13) {
            this.f508n = false;
        }
    }

    /* JADX WARN: Code duplicated, block: B:105:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:106:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:55:0x0100  */
    /* JADX WARN: Code duplicated, block: B:56:0x0102  */
    /* JADX WARN: Code duplicated, block: B:58:0x0105  */
    /* JADX WARN: Code duplicated, block: B:61:0x010d  */
    /* JADX WARN: Code duplicated, block: B:62:0x0112  */
    /* JADX WARN: Code duplicated, block: B:65:0x0119  */
    /* JADX WARN: Code duplicated, block: B:68:0x0123  */
    /* JADX WARN: Code duplicated, block: B:77:0x013e  */
    public final void g(int i8, byte[] bArr, int i9) {
        boolean zH;
        boolean zH2;
        boolean z7;
        boolean z8;
        int iM;
        boolean z9;
        int i10;
        int i11;
        int i12;
        int iN;
        int iN2;
        int i13;
        if (!this.f506l || this.f505k.f478c) {
            this.f498d.a(i8, bArr, i9);
            this.f499e.a(i8, bArr, i9);
        }
        this.f500f.a(i8, bArr, i9);
        q qVar = this.f505k;
        if (qVar.f486k) {
            int i14 = i9 - i8;
            byte[] bArr2 = qVar.f482g;
            int length = bArr2.length;
            int i15 = qVar.f483h + i14;
            if (length < i15) {
                qVar.f482g = Arrays.copyOf(bArr2, i15 * 2);
            }
            System.arraycopy(bArr, i8, qVar.f482g, qVar.f483h, i14);
            int i16 = qVar.f483h + i14;
            qVar.f483h = i16;
            byte[] bArr3 = qVar.f482g;
            p117p0.D d6 = qVar.f481f;
            d6.f28028b = bArr3;
            d6.f28030d = 0;
            d6.f28029c = i16;
            d6.f28031e = 0;
            d6.a();
            if (d6.d(8)) {
                d6.t();
                int i17 = d6.i(2);
                d6.u(5);
                if (d6.e()) {
                    d6.m();
                    if (d6.e()) {
                        int iM2 = d6.m();
                        if (!qVar.f478c) {
                            qVar.f486k = false;
                            p pVar = qVar.f489n;
                            pVar.f464e = iM2;
                            pVar.f461b = true;
                            return;
                        }
                        if (d6.e()) {
                            int iM3 = d6.m();
                            SparseArray sparseArray = qVar.f480e;
                            if (sparseArray.indexOfKey(iM3) < 0) {
                                qVar.f486k = false;
                                return;
                            }
                            p125q0.n nVar = (p125q0.n) sparseArray.get(iM3);
                            p125q0.o oVar = (p125q0.o) qVar.f479d.get(nVar.f29487a);
                            if (oVar.f29498j) {
                                if (!d6.d(2)) {
                                    return;
                                } else {
                                    d6.u(2);
                                }
                            }
                            int i18 = oVar.f29500l;
                            if (d6.d(i18)) {
                                int i19 = d6.i(i18);
                                if (!oVar.f29499k) {
                                    if (d6.d(1)) {
                                        zH = d6.h();
                                        if (zH) {
                                            if (!d6.d(1)) {
                                                return;
                                            }
                                            zH2 = d6.h();
                                            z7 = true;
                                        }
                                        if (qVar.f484i == 5) {
                                            z8 = true;
                                        } else {
                                            z8 = false;
                                        }
                                        if (z8) {
                                            iM = 0;
                                        } else if (!d6.e()) {
                                            return;
                                        } else {
                                            iM = d6.m();
                                        }
                                        z9 = nVar.f29488b;
                                        i10 = oVar.f29501m;
                                        if (i10 == 0) {
                                            i13 = oVar.f29502n;
                                            if (!d6.d(i13)) {
                                                return;
                                            }
                                            i11 = d6.i(i13);
                                            if (z9 || zH) {
                                                i12 = 0;
                                                iN = 0;
                                                iN2 = 0;
                                            } else {
                                                if (!d6.e()) {
                                                    return;
                                                }
                                                iN2 = d6.n();
                                                i12 = 0;
                                                iN = 0;
                                            }
                                        } else if (i10 == 1 || oVar.f29503o) {
                                            i11 = 0;
                                            i12 = 0;
                                            iN = 0;
                                            iN2 = 0;
                                        } else {
                                            if (!d6.e()) {
                                                return;
                                            }
                                            int iN3 = d6.n();
                                            if (!z9 || zH) {
                                                i12 = iN3;
                                                i11 = 0;
                                                iN = 0;
                                                iN2 = 0;
                                            } else {
                                                if (!d6.e()) {
                                                    return;
                                                }
                                                iN = d6.n();
                                                iN2 = 0;
                                                i12 = iN3;
                                                i11 = 0;
                                            }
                                        }
                                        p pVar2 = qVar.f489n;
                                        pVar2.f462c = oVar;
                                        pVar2.f463d = i17;
                                        pVar2.f464e = iM2;
                                        pVar2.f465f = i19;
                                        pVar2.f466g = iM3;
                                        pVar2.f467h = zH;
                                        pVar2.f468i = z7;
                                        pVar2.f469j = zH2;
                                        pVar2.f470k = z8;
                                        pVar2.f471l = iM;
                                        pVar2.f472m = i11;
                                        pVar2.f473n = iN2;
                                        pVar2.f474o = i12;
                                        pVar2.f475p = iN;
                                        pVar2.f460a = true;
                                        pVar2.f461b = true;
                                        qVar.f486k = false;
                                    }
                                    return;
                                }
                                zH = false;
                                zH2 = false;
                                z7 = false;
                                if (qVar.f484i == 5) {
                                    z8 = true;
                                } else {
                                    z8 = false;
                                }
                                if (z8) {
                                    iM = 0;
                                } else if (!d6.e()) {
                                    return;
                                } else {
                                    iM = d6.m();
                                }
                                z9 = nVar.f29488b;
                                i10 = oVar.f29501m;
                                if (i10 == 0) {
                                    i13 = oVar.f29502n;
                                    if (!d6.d(i13)) {
                                        return;
                                    }
                                    i11 = d6.i(i13);
                                    if (z9) {
                                    }
                                    i12 = 0;
                                    iN = 0;
                                    iN2 = 0;
                                } else {
                                    if (i10 == 1) {
                                    }
                                    i11 = 0;
                                    i12 = 0;
                                    iN = 0;
                                    iN2 = 0;
                                }
                                p pVar3 = qVar.f489n;
                                pVar3.f462c = oVar;
                                pVar3.f463d = i17;
                                pVar3.f464e = iM2;
                                pVar3.f465f = i19;
                                pVar3.f466g = iM3;
                                pVar3.f467h = zH;
                                pVar3.f468i = z7;
                                pVar3.f469j = zH2;
                                pVar3.f470k = z8;
                                pVar3.f471l = iM;
                                pVar3.f472m = i11;
                                pVar3.f473n = iN2;
                                pVar3.f474o = i12;
                                pVar3.f475p = iN;
                                pVar3.f460a = true;
                                pVar3.f461b = true;
                                qVar.f486k = false;
                            }
                        }
                    }
                }
            }
        }
    }

    public final void h(int i8, long j8, long j9) {
        if (!this.f506l || this.f505k.f478c) {
            this.f498d.d(i8);
            this.f499e.d(i8);
        }
        this.f500f.d(i8);
        q qVar = this.f505k;
        boolean z7 = this.f508n;
        qVar.f484i = i8;
        qVar.f487l = j9;
        qVar.f485j = j8;
        qVar.f494s = z7;
        if (!qVar.f477b || i8 != 1) {
            if (!qVar.f478c) {
                return;
            }
            if (i8 != 5 && i8 != 1 && i8 != 2) {
                return;
            }
        }
        p pVar = qVar.f488m;
        qVar.f488m = qVar.f489n;
        qVar.f489n = pVar;
        pVar.f461b = false;
        pVar.f460a = false;
        qVar.f483h = 0;
        qVar.f486k = true;
    }
}
