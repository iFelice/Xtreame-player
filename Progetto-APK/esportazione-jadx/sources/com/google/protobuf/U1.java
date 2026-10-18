package com.google.protobuf;

import Z3.C0433o;
import com.google.android.gms.internal.ads.CO;
import com.google.android.gms.internal.ads.SG;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class U1 implements InterfaceC2914j2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Q1 f24381a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final B2 f24382b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f24383c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final P0 f24384d;

    public U1(B2 b8, P0 p7, Q1 q7) {
        this.f24382b = b8;
        p7.getClass();
        this.f24383c = q7 instanceof GeneratedMessageLite$ExtendableMessage;
        this.f24384d = p7;
        this.f24381a = q7;
    }

    /* JADX WARN: Code duplicated, block: B:32:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:35:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:52:0x00ce A[EDGE_INSN: B:52:0x00ce->B:36:0x00ce BREAK  A[LOOP:1: B:18:0x0075->B:26:0x00a0], SYNTHETIC] */
    @Override // com.google.protobuf.InterfaceC2914j2
    public final void a(Object obj, byte[] bArr, int i8, int i9, SG sg) throws C2966x1 {
        U1 u7 = this;
        AbstractC2909i1 abstractC2909i1 = (AbstractC2909i1) obj;
        A2 a8 = abstractC2909i1.unknownFields;
        if (a8 == A2.f24234f) {
            a8 = new A2();
            abstractC2909i1.unknownFields = a8;
        }
        A2 a9 = a8;
        W0 w0EnsureExtensionsAreMutable = ((GeneratedMessageLite$ExtendableMessage) obj).ensureExtensionsAreMutable();
        int iK = i8;
        C2901g1 c2901g1A = null;
        while (iK < i9) {
            int iN = AbstractC2907i.N(bArr, iK, sg);
            int i10 = sg.f16417a;
            Q1 q7 = u7.f24381a;
            P0 p7 = u7.f24384d;
            int i11 = 2;
            Object obj2 = sg.f16421e;
            if (i10 == 11) {
                int i12 = 0;
                r rVar = null;
                while (iN < i9) {
                    iN = AbstractC2907i.N(bArr, iN, sg);
                    int i13 = sg.f16417a;
                    int i14 = i13 >>> 3;
                    int i15 = i13 & 7;
                    if (i14 != i11) {
                        if (i14 == 3) {
                            if (c2901g1A != null) {
                                iN = AbstractC2907i.t(C2902g2.f24439c.a(c2901g1A.f24437c.getClass()), bArr, iN, i9, sg);
                                w0EnsureExtensionsAreMutable.p(c2901g1A.f24438d, sg.f16419c);
                            } else if (i15 == 2) {
                                iN = AbstractC2907i.f(bArr, iN, sg);
                                rVar = (r) sg.f16419c;
                            } else if (i13 == 12) {
                                break;
                            } else {
                                iN = AbstractC2907i.W(i13, bArr, iN, i9, sg);
                            }
                        } else {
                            if (i13 == 12) {
                                break;
                                break;
                            }
                            iN = AbstractC2907i.W(i13, bArr, iN, i9, sg);
                        }
                    } else if (i15 == 0) {
                        iN = AbstractC2907i.N(bArr, iN, sg);
                        i12 = sg.f16417a;
                        p7.getClass();
                        c2901g1A = ((O0) obj2).a(i12, q7);
                    } else {
                        if (i13 == 12) {
                            break;
                            break;
                        }
                        iN = AbstractC2907i.W(i13, bArr, iN, i9, sg);
                    }
                    i11 = 2;
                }
                if (rVar != null) {
                    a9.f((i12 << 3) | 2, rVar);
                }
                u7 = this;
                iK = iN;
            } else if ((i10 & 7) == 2) {
                p7.getClass();
                C2901g1 c2901g1A2 = ((O0) obj2).a(i10 >>> 3, q7);
                if (c2901g1A2 != null) {
                    iK = AbstractC2907i.t(C2902g2.f24439c.a(c2901g1A2.f24437c.getClass()), bArr, iN, i9, sg);
                    w0EnsureExtensionsAreMutable.p(c2901g1A2.f24438d, sg.f16419c);
                } else {
                    iK = AbstractC2907i.K(i10, bArr, iN, i9, a9, sg);
                }
                c2901g1A = c2901g1A2;
            } else {
                iK = AbstractC2907i.W(i10, bArr, iN, i9, sg);
            }
        }
        if (iK != i9) {
            throw C2966x1.f();
        }
    }

    @Override // com.google.protobuf.InterfaceC2914j2
    public final void b(Object obj, Object obj2) {
        AbstractC2918k2.B(this.f24382b, obj, obj2);
        if (this.f24383c) {
            this.f24384d.getClass();
            W0 w7 = ((GeneratedMessageLite$ExtendableMessage) obj2).extensions;
            if (w7.f24386a.isEmpty()) {
                return;
            }
            ((GeneratedMessageLite$ExtendableMessage) obj).ensureExtensionsAreMutable().n(w7);
        }
    }

    @Override // com.google.protobuf.InterfaceC2914j2
    public final void c(Object obj, CO co, O0 o4) {
        this.f24382b.getClass();
        A2 a2A = B2.a(obj);
        P0 p7 = this.f24384d;
        p7.getClass();
        W0 w0EnsureExtensionsAreMutable = ((GeneratedMessageLite$ExtendableMessage) obj).ensureExtensionsAreMutable();
        while (co.b() != Integer.MAX_VALUE && k(co, o4, p7, w0EnsureExtensionsAreMutable, a2A)) {
            try {
            } finally {
                ((AbstractC2909i1) obj).unknownFields = a2A;
            }
        }
    }

    @Override // com.google.protobuf.InterfaceC2914j2
    public final void d(Object obj) {
        this.f24382b.getClass();
        B2.b(obj);
        this.f24384d.getClass();
        P0.c(obj);
    }

    @Override // com.google.protobuf.InterfaceC2914j2
    public final boolean e(Object obj) {
        this.f24384d.getClass();
        return ((GeneratedMessageLite$ExtendableMessage) obj).extensions.j();
    }

    @Override // com.google.protobuf.InterfaceC2914j2
    public final void f(Object obj, C0433o c0433o) {
        this.f24384d.getClass();
        Iterator itL = ((GeneratedMessageLite$ExtendableMessage) obj).extensions.l();
        while (itL.hasNext()) {
            Map.Entry entry = (Map.Entry) itL.next();
            C2897f1 c2897f1 = (C2897f1) entry.getKey();
            if (c2897f1.f24427I.f24308G != T2.MESSAGE || c2897f1.f24428J || c2897f1.f24429K) {
                throw new IllegalStateException("Found invalid MessageSet item.");
            }
            Object value = entry.getValue();
            c0433o.getClass();
            boolean z7 = value instanceof r;
            int i8 = c2897f1.f24426H;
            if (z7) {
                ((AbstractC2970z) c0433o.f8372H).L0(i8, (r) value);
            } else {
                ((AbstractC2970z) c0433o.f8372H).K0(i8, (Q1) value);
            }
        }
        this.f24382b.getClass();
        A2 a8 = ((AbstractC2909i1) obj).unknownFields;
        a8.getClass();
        c0433o.getClass();
        for (int i9 = 0; i9 < a8.f24235a; i9++) {
            int i10 = a8.f24236b[i9] >>> 3;
            Object obj2 = a8.f24237c[i9];
            if (obj2 instanceof r) {
                ((AbstractC2970z) c0433o.f8372H).L0(i10, (r) obj2);
            } else {
                ((AbstractC2970z) c0433o.f8372H).K0(i10, (Q1) obj2);
            }
        }
    }

    @Override // com.google.protobuf.InterfaceC2914j2
    public final boolean g(Object obj, Object obj2) {
        B2 b8 = this.f24382b;
        b8.getClass();
        A2 a8 = ((AbstractC2909i1) obj).unknownFields;
        b8.getClass();
        if (!a8.equals(((AbstractC2909i1) obj2).unknownFields)) {
            return false;
        }
        if (!this.f24383c) {
            return true;
        }
        P0 p7 = this.f24384d;
        p7.getClass();
        W0 w7 = ((GeneratedMessageLite$ExtendableMessage) obj).extensions;
        p7.getClass();
        return w7.equals(((GeneratedMessageLite$ExtendableMessage) obj2).extensions);
    }

    @Override // com.google.protobuf.InterfaceC2914j2
    public final int h(Object obj) {
        this.f24382b.getClass();
        A2 a8 = ((AbstractC2909i1) obj).unknownFields;
        int i8 = a8.f24238d;
        if (i8 == -1) {
            int iZ = 0;
            for (int i9 = 0; i9 < a8.f24235a; i9++) {
                int i10 = a8.f24236b[i9] >>> 3;
                r rVar = (r) a8.f24237c[i9];
                iZ += AbstractC2970z.Z(3, rVar) + AbstractC2970z.r0(2, i10) + (AbstractC2970z.q0(1) * 2);
            }
            a8.f24238d = iZ;
            i8 = iZ;
        }
        if (!this.f24383c) {
            return i8;
        }
        this.f24384d.getClass();
        return i8 + ((GeneratedMessageLite$ExtendableMessage) obj).extensions.f();
    }

    @Override // com.google.protobuf.InterfaceC2914j2
    public final Object i() {
        Q1 q7 = this.f24381a;
        return q7 instanceof AbstractC2909i1 ? ((AbstractC2909i1) q7).newMutableInstance() : q7.newBuilderForType().k();
    }

    @Override // com.google.protobuf.InterfaceC2914j2
    public final int j(Object obj) {
        this.f24382b.getClass();
        int iHashCode = ((AbstractC2909i1) obj).unknownFields.hashCode();
        if (!this.f24383c) {
            return iHashCode;
        }
        this.f24384d.getClass();
        return (iHashCode * 53) + ((GeneratedMessageLite$ExtendableMessage) obj).extensions.f24386a.hashCode();
    }

    public final boolean k(CO co, O0 o4, P0 p7, W0 w7, A2 a8) throws C2966x1 {
        int i8 = co.f12628a;
        Q1 q7 = this.f24381a;
        if (i8 != 11) {
            if ((i8 & 7) != 2) {
                return co.I();
            }
            C2901g1 c2901g1A = o4.a(i8 >>> 3, q7);
            if (c2901g1A == null) {
                return B2.c(0, co, a8);
            }
            w7.p(c2901g1A.f24438d, co.u(c2901g1A.f24437c.getClass(), o4));
            return true;
        }
        C2901g1 c2901g1A2 = null;
        r rVarG = null;
        int iA = 0;
        while (co.b() != Integer.MAX_VALUE) {
            int i9 = co.f12628a;
            if (i9 == 16) {
                iA = co.A();
                c2901g1A2 = o4.a(iA, q7);
            } else if (i9 == 26) {
                if (c2901g1A2 != null) {
                    w7.p(c2901g1A2.f24438d, co.u(c2901g1A2.f24437c.getClass(), o4));
                } else {
                    rVarG = co.g();
                }
            } else if (!co.I()) {
                break;
            }
        }
        if (co.f12628a != 12) {
            throw new C2966x1("Protocol message end-group tag did not match expected tag.");
        }
        if (rVarG != null) {
            if (c2901g1A2 != null) {
                P1 p1NewBuilderForType = c2901g1A2.f24437c.newBuilderForType();
                AbstractC2961w abstractC2961wP = rVarG.p();
                ((AbstractC2881b1) p1NewBuilderForType).f(abstractC2961wP, o4);
                w7.p(c2901g1A2.f24438d, p1NewBuilderForType.k());
                abstractC2961wP.a(0);
            } else {
                a8.f((iA << 3) | 2, rVarG);
            }
        }
        return true;
    }
}
