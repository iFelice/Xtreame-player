package com.google.android.gms.internal.ads;

import androidx.leanback.widget.C0484j;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class L2 implements F2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final p004a3.b f14454a;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f14458e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public String f14460g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public InterfaceC1234e0 f14461h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public K2 f14462i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f14463j;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f14465l;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean[] f14459f = new boolean[3];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final A1.x f14455b = new A1.x(7, 1);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final A1.x f14456c = new A1.x(8, 1);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final A1.x f14457d = new A1.x(6, 1);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long f14464k = -9223372036854775807L;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final C1534jr f14466m = new C1534jr();

    public L2(p004a3.b bVar) {
        this.f14454a = bVar;
    }

    /* JADX WARN: Code duplicated, block: B:39:0x01d4  */
    /* JADX WARN: Code duplicated, block: B:42:0x01fa  */
    /* JADX WARN: Code duplicated, block: B:43:0x01fc  */
    /* JADX WARN: Code duplicated, block: B:49:0x0215  */
    /* JADX WARN: Code duplicated, block: B:55:0x0245  */
    /* JADX WARN: Code duplicated, block: B:59:0x024e  */
    /* JADX WARN: Code duplicated, block: B:62:0x0256  */
    /* JADX WARN: Code duplicated, block: B:63:0x025f  */
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
        A1.x xVar;
        A1.x xVar2;
        A1.x xVar3;
        int i8;
        byte[] bArr;
        int i9;
        int i10;
        long j8;
        K2 k8;
        boolean z7;
        int i11;
        long j9;
        int i12;
        long j10;
        int i13;
        boolean z8;
        boolean z9;
        int i14;
        p113o3.r.x(this.f14461h);
        int i15 = Et.f13234a;
        int i16 = c1534jr.f19516b;
        int i17 = c1534jr.f19517c;
        byte[] bArr2 = c1534jr.f19515a;
        this.f14458e += (long) c1534jr.o();
        this.f14461h.f(c1534jr.o(), c1534jr);
        while (true) {
            int iA = AbstractC2008sy.a(bArr2, i16, i17, this.f14459f);
            xVar = this.f14457d;
            xVar2 = this.f14456c;
            xVar3 = this.f14455b;
            if (iA == i17) {
                break;
            }
            int i18 = iA + 3;
            int i19 = bArr2[i18] & 31;
            int i20 = iA - i16;
            if (i20 > 0) {
                if (!this.f14463j) {
                    xVar3.e(i16, bArr2, iA);
                    xVar2.e(i16, bArr2, iA);
                }
                xVar.e(i16, bArr2, iA);
            }
            int i21 = i17 - iA;
            long j11 = this.f14458e - ((long) i21);
            int i22 = i20 < 0 ? -i20 : 0;
            long j12 = this.f14464k;
            boolean z10 = this.f14463j;
            p004a3.b bVar = this.f14454a;
            if (z10) {
                i9 = i18;
            } else {
                xVar3.h(i22);
                xVar2.h(i22);
                i9 = i18;
                if (this.f14463j) {
                    i21 = i21;
                    j12 = j12;
                    i17 = i17;
                    bArr2 = bArr2;
                    i10 = i19;
                    j8 = j11;
                    if (xVar3.f596c) {
                        C1231dy c1231dyE = AbstractC2008sy.e(4, xVar3.f597d, xVar3.f598e);
                        W2 w7 = (W2) bVar.f8652J;
                        w7.getClass();
                        int i23 = c1231dyE.f18402m;
                        p113o3.r.M(i23 >= 0);
                        w7.f17150G = i23;
                        w7.d(i23);
                        this.f14462i.f14290b.append(c1231dyE.f18393d, c1231dyE);
                        xVar3.f();
                    } else if (xVar2.f596c) {
                        C1286f0 c1286f0 = new C1286f0(xVar2.f597d, 4, xVar2.f598e);
                        int iE = c1286f0.e();
                        c1286f0.e();
                        c1286f0.k();
                        c1286f0.p();
                        C0484j c0484j = new C0484j(iE, (p000a.r) null);
                        this.f14462i.f14291c.append(c0484j.f9298H, c0484j);
                        xVar2.f();
                    }
                } else if (xVar3.f596c && xVar2.f596c) {
                    ArrayList arrayList = new ArrayList();
                    i17 = i17;
                    arrayList.add(Arrays.copyOf(xVar3.f597d, xVar3.f598e));
                    arrayList.add(Arrays.copyOf(xVar2.f597d, xVar2.f598e));
                    bArr2 = bArr2;
                    C1231dy c1231dyE2 = AbstractC2008sy.e(4, xVar3.f597d, xVar3.f598e);
                    i10 = i19;
                    i21 = i21;
                    C1286f0 c1286f1 = new C1286f0(xVar2.f597d, 4, xVar2.f598e);
                    int iE2 = c1286f1.e();
                    c1286f1.e();
                    c1286f1.k();
                    c1286f1.p();
                    C0484j c0484j2 = new C0484j(iE2, (p000a.r) null);
                    j8 = j11;
                    String str = String.format("avc1.%02X%02X%02X", Integer.valueOf(c1231dyE2.f18390a), Integer.valueOf(c1231dyE2.f18391b), Integer.valueOf(c1231dyE2.f18392c));
                    InterfaceC1234e0 interfaceC1234e0 = this.f14461h;
                    K k9 = new K();
                    k9.f14260a = this.f14460g;
                    k9.f("video/avc");
                    k9.f14268i = str;
                    k9.f14277r = c1231dyE2.f18394e;
                    k9.f14278s = c1231dyE2.f18395f;
                    j12 = j12;
                    k9.f14284y = new C1928rL(c1231dyE2.f18399j, c1231dyE2.f18400k, c1231dyE2.f18401l, null, c1231dyE2.f18397h + 8, c1231dyE2.f18398i + 8);
                    k9.f14281v = c1231dyE2.f18396g;
                    k9.f14274o = arrayList;
                    k9.f14273n = c1231dyE2.f18402m;
                    interfaceC1234e0.d(new C1804p0(k9));
                    this.f14463j = true;
                    this.f14462i.f14290b.append(c1231dyE2.f18393d, c1231dyE2);
                    this.f14462i.f14291c.append(c0484j2.f9298H, c0484j2);
                    xVar3.f();
                    xVar2.f();
                }
                if (xVar.h(i22)) {
                    int iB = AbstractC2008sy.b(xVar.f597d, xVar.f598e);
                    byte[] bArr3 = xVar.f597d;
                    C1534jr c1534jr2 = this.f14466m;
                    c1534jr2.h(iB, bArr3);
                    c1534jr2.j(4);
                    ((W2) bVar.f8652J).c(j12, c1534jr2);
                }
                k8 = this.f14462i;
                z7 = this.f14463j;
                if (k8.f14292d != 9) {
                    i11 = 1;
                } else {
                    if (z7 && k8.f14295g) {
                        j9 = k8.f14293e;
                        i12 = i21 + ((int) (j8 - j9));
                        j10 = k8.f14297i;
                        if (j10 != -9223372036854775807L) {
                            k8.f14289a.b(j10, k8.f14298j ? 1 : 0, (int) (j9 - k8.f14296h), i12, null);
                        }
                    }
                    k8.f14296h = k8.f14293e;
                    k8.f14297i = k8.f14294f;
                    k8.f14298j = false;
                    i11 = 1;
                    k8.f14295g = true;
                }
                boolean z11 = k8.f14299k;
                boolean z12 = k8.f14298j;
                i13 = k8.f14292d;
                if (i13 != 5 || (z11 && i13 == i11)) {
                    z8 = true;
                } else {
                    z8 = false;
                }
                z9 = z8 | z12;
                k8.f14298j = z9;
                if (z9) {
                    this.f14465l = false;
                }
                long j13 = this.f14464k;
                if (this.f14463j) {
                    i14 = i10;
                } else {
                    i14 = i10;
                    xVar3.g(i14);
                    xVar2.g(i14);
                }
                xVar.g(i14);
                K2 k10 = this.f14462i;
                boolean z13 = this.f14465l;
                k10.f14292d = i14;
                k10.f14294f = j13;
                k10.f14293e = j8;
                k10.f14299k = z13;
                i16 = i9;
                i17 = i17;
                bArr2 = bArr2;
            }
            i10 = i19;
            j8 = j11;
            if (xVar.h(i22)) {
                int iB2 = AbstractC2008sy.b(xVar.f597d, xVar.f598e);
                byte[] bArr4 = xVar.f597d;
                C1534jr c1534jr3 = this.f14466m;
                c1534jr3.h(iB2, bArr4);
                c1534jr3.j(4);
                ((W2) bVar.f8652J).c(j12, c1534jr3);
            }
            k8 = this.f14462i;
            z7 = this.f14463j;
            if (k8.f14292d != 9) {
                i11 = 1;
            } else {
                if (z7) {
                    j9 = k8.f14293e;
                    i12 = i21 + ((int) (j8 - j9));
                    j10 = k8.f14297i;
                    if (j10 != -9223372036854775807L) {
                        k8.f14289a.b(j10, k8.f14298j ? 1 : 0, (int) (j9 - k8.f14296h), i12, null);
                    }
                }
                k8.f14296h = k8.f14293e;
                k8.f14297i = k8.f14294f;
                k8.f14298j = false;
                i11 = 1;
                k8.f14295g = true;
            }
            boolean z14 = k8.f14299k;
            boolean z15 = k8.f14298j;
            i13 = k8.f14292d;
            if (i13 != 5) {
                z8 = true;
            } else {
                z8 = true;
            }
            z9 = z8 | z15;
            k8.f14298j = z9;
            if (z9) {
                this.f14465l = false;
            }
            long j14 = this.f14464k;
            if (this.f14463j) {
                i14 = i10;
                xVar3.g(i14);
                xVar2.g(i14);
            } else {
                i14 = i10;
            }
            xVar.g(i14);
            K2 k11 = this.f14462i;
            boolean z16 = this.f14465l;
            k11.f14292d = i14;
            k11.f14294f = j14;
            k11.f14293e = j8;
            k11.f14299k = z16;
            i16 = i9;
            i17 = i17;
            bArr2 = bArr2;
        }
        int i24 = i17;
        byte[] bArr5 = bArr2;
        if (this.f14463j) {
            i8 = i24;
            bArr = bArr5;
        } else {
            i8 = i24;
            bArr = bArr5;
            xVar3.e(i16, bArr, i8);
            xVar2.e(i16, bArr, i8);
        }
        xVar.e(i16, bArr, i8);
    }

    @Override // com.google.android.gms.internal.ads.F2
    public final void c(N n7, A1.I i8) {
        i8.c();
        i8.d();
        this.f14460g = i8.f310e;
        i8.d();
        InterfaceC1234e0 interfaceC1234e0H = n7.h(i8.f309d, 2);
        this.f14461h = interfaceC1234e0H;
        this.f14462i = new K2(interfaceC1234e0H);
        this.f14454a.q(n7, i8);
    }

    @Override // com.google.android.gms.internal.ads.F2
    public final void d(int i8, long j8) {
        this.f14464k = j8;
        int i9 = i8 & 2;
        this.f14465l = (i9 != 0) | this.f14465l;
    }

    /* JADX WARN: Multi-variable type inference failed */
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
        p113o3.r.x(this.f14461h);
        int i8 = Et.f13234a;
        if (z7) {
            char c8 = 0;
            ((W2) this.f14454a.f8652J).d(0);
            K2 k8 = this.f14462i;
            long j8 = this.f14458e;
            boolean z8 = k8.f14299k;
            boolean z9 = k8.f14298j;
            int i9 = k8.f14292d;
            if (i9 == 5 || (z8 && i9 == 1)) {
                c8 = 1;
            }
            boolean z10 = (z9 ? 1 : 0) | c8;
            k8.f14298j = z10;
            k8.f14293e = j8;
            long j9 = k8.f14297i;
            if (j9 != -9223372036854775807L) {
                k8.f14289a.b(j9, z10 ? 1 : 0, (int) (j8 - k8.f14296h), 0, null);
            }
            k8.f14295g = false;
        }
    }

    @Override // com.google.android.gms.internal.ads.F2
    public final void zze() {
        this.f14458e = 0L;
        this.f14465l = false;
        this.f14464k = -9223372036854775807L;
        AbstractC2008sy.g(this.f14459f);
        this.f14455b.f();
        this.f14456c.f();
        this.f14457d.f();
        ((W2) this.f14454a.f8652J).d(0);
        K2 k8 = this.f14462i;
        if (k8 != null) {
            k8.f14295g = false;
        }
    }
}
