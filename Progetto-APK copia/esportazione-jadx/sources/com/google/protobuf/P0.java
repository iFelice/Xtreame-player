package com.google.protobuf;

import Z3.C0433o;
import com.google.android.gms.internal.ads.CO;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class P0 {
    public static int a(Map.Entry entry) {
        return ((C2897f1) entry.getKey()).f24426H;
    }

    public static W0 b(Object obj) {
        return ((GeneratedMessageLite$ExtendableMessage) obj).extensions;
    }

    public static void c(Object obj) {
        ((GeneratedMessageLite$ExtendableMessage) obj).extensions.m();
    }

    public static Object d(Object obj, CO co, C2901g1 c2901g1, O0 o4, W0 w7, Object obj2, B2 b8) throws C2966x1 {
        Object objValueOf;
        Object obj3;
        List arrayList;
        C2897f1 c2897f1 = c2901g1.f24438d;
        int i8 = c2897f1.f24426H;
        S2 s7 = c2897f1.f24427I;
        if (c2897f1.f24428J && c2897f1.f24429K) {
            switch (s7.ordinal()) {
                case 0:
                    arrayList = new ArrayList();
                    co.i(arrayList);
                    break;
                case 1:
                    arrayList = new ArrayList();
                    co.p(arrayList);
                    break;
                case 2:
                    arrayList = new ArrayList();
                    co.t(arrayList);
                    break;
                case 3:
                    arrayList = new ArrayList();
                    co.C(arrayList);
                    break;
                case 4:
                    arrayList = new ArrayList();
                    co.r(arrayList);
                    break;
                case 5:
                    arrayList = new ArrayList();
                    co.o(arrayList);
                    break;
                case 6:
                    arrayList = new ArrayList();
                    co.m(arrayList);
                    break;
                case 7:
                    arrayList = new ArrayList();
                    co.f(arrayList);
                    break;
                case 8:
                case 9:
                case 10:
                case 11:
                default:
                    throw new IllegalStateException("Type cannot be packed: " + c2897f1.f24427I);
                case 12:
                    arrayList = new ArrayList();
                    co.B(arrayList);
                    break;
                case 13:
                    ArrayList arrayList2 = new ArrayList();
                    co.j(arrayList2);
                    obj2 = AbstractC2918k2.z(obj, i8, arrayList2, c2897f1.f24425G, obj2, b8);
                    arrayList = arrayList2;
                    break;
                case 14:
                    arrayList = new ArrayList();
                    co.v(arrayList);
                    break;
                case 15:
                    arrayList = new ArrayList();
                    co.w(arrayList);
                    break;
                case 16:
                    arrayList = new ArrayList();
                    co.x(arrayList);
                    break;
                case 17:
                    arrayList = new ArrayList();
                    co.y(arrayList);
                    break;
            }
            w7.p(c2897f1, arrayList);
        } else {
            if (s7 != S2.f24306M) {
                int iOrdinal = s7.ordinal();
                Q1 q7 = c2901g1.f24437c;
                switch (iOrdinal) {
                    case 0:
                        co.G(1);
                        objValueOf = Double.valueOf(((AbstractC2961w) co.f12631d).o());
                        break;
                    case 1:
                        co.G(5);
                        objValueOf = Float.valueOf(((AbstractC2961w) co.f12631d).s());
                        break;
                    case 2:
                        objValueOf = Long.valueOf(co.s());
                        break;
                    case 3:
                        co.G(0);
                        objValueOf = Long.valueOf(((AbstractC2961w) co.f12631d).H());
                        break;
                    case 4:
                        objValueOf = Integer.valueOf(co.q());
                        break;
                    case 5:
                        objValueOf = Long.valueOf(co.n());
                        break;
                    case 6:
                        objValueOf = Integer.valueOf(co.l());
                        break;
                    case 7:
                        co.G(0);
                        objValueOf = Boolean.valueOf(((AbstractC2961w) co.f12631d).m());
                        break;
                    case 8:
                        co.G(2);
                        objValueOf = ((AbstractC2961w) co.f12631d).D();
                        break;
                    case 9:
                        if (!c2897f1.f24428J) {
                            Object obj4 = w7.f24386a.get(c2897f1);
                            if (obj4 instanceof AbstractC2909i1) {
                                InterfaceC2914j2 interfaceC2914j2B = C2902g2.f24439c.b(obj4);
                                if (!((AbstractC2909i1) obj4).isMutable()) {
                                    Object objI = interfaceC2914j2B.i();
                                    interfaceC2914j2B.b(objI, obj4);
                                    w7.p(c2897f1, objI);
                                    obj4 = objI;
                                }
                                co.c(obj4, interfaceC2914j2B, o4);
                                return obj2;
                            }
                        }
                        Class<?> cls = q7.getClass();
                        co.G(3);
                        InterfaceC2914j2 interfaceC2914j2A = C2902g2.f24439c.a(cls);
                        Object objI2 = interfaceC2914j2A.i();
                        co.d(objI2, interfaceC2914j2A, o4);
                        interfaceC2914j2A.d(objI2);
                        objValueOf = objI2;
                        break;
                    case 10:
                        if (!c2897f1.f24428J) {
                            Object obj5 = w7.f24386a.get(c2897f1);
                            if (obj5 instanceof AbstractC2909i1) {
                                InterfaceC2914j2 interfaceC2914j2B2 = C2902g2.f24439c.b(obj5);
                                if (!((AbstractC2909i1) obj5).isMutable()) {
                                    Object objI3 = interfaceC2914j2B2.i();
                                    interfaceC2914j2B2.b(objI3, obj5);
                                    w7.p(c2897f1, objI3);
                                    obj5 = objI3;
                                }
                                co.G(2);
                                co.e(obj5, interfaceC2914j2B2, o4);
                                return obj2;
                            }
                        }
                        objValueOf = co.u(q7.getClass(), o4);
                        break;
                    case 11:
                        objValueOf = co.g();
                        break;
                    case 12:
                        objValueOf = Integer.valueOf(co.A());
                        break;
                    case 13:
                        throw new IllegalStateException("Shouldn't reach here.");
                    case 14:
                        co.G(5);
                        objValueOf = Integer.valueOf(((AbstractC2961w) co.f12631d).z());
                        break;
                    case 15:
                        co.G(1);
                        objValueOf = Long.valueOf(((AbstractC2961w) co.f12631d).A());
                        break;
                    case 16:
                        co.G(0);
                        objValueOf = Integer.valueOf(((AbstractC2961w) co.f12631d).B());
                        break;
                    case 17:
                        co.G(0);
                        objValueOf = Long.valueOf(((AbstractC2961w) co.f12631d).C());
                        break;
                    default:
                        objValueOf = null;
                        break;
                }
            } else {
                int iQ = co.q();
                if (c2897f1.f24425G.b(iQ) == null) {
                    return AbstractC2918k2.D(obj, i8, iQ, obj2, b8);
                }
                objValueOf = Integer.valueOf(iQ);
            }
            if (c2897f1.f24428J) {
                w7.a(c2897f1, objValueOf);
            } else {
                int iOrdinal2 = c2897f1.f24427I.ordinal();
                if ((iOrdinal2 == 9 || iOrdinal2 == 10) && (obj3 = w7.f24386a.get(c2897f1)) != null) {
                    Q1 q8 = (Q1) objValueOf;
                    AbstractC2875a abstractC2875a = (AbstractC2875a) ((Q1) obj3).toBuilder();
                    abstractC2875a.getClass();
                    AbstractC2881b1 abstractC2881b1 = (AbstractC2881b1) abstractC2875a;
                    if (!abstractC2881b1.f24412G.getClass().isInstance(q8)) {
                        throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
                    }
                    abstractC2881b1.g((AbstractC2909i1) ((AbstractC2879b) q8));
                    objValueOf = abstractC2881b1.k();
                }
                w7.p(c2897f1, objValueOf);
            }
        }
        return obj2;
    }

    public static void e(C0433o c0433o, Map.Entry entry) {
        C2897f1 c2897f1 = (C2897f1) entry.getKey();
        boolean z7 = c2897f1.f24428J;
        S2 s7 = c2897f1.f24427I;
        int i8 = c2897f1.f24426H;
        if (!z7) {
            switch (s7.ordinal()) {
                case 0:
                    c0433o.j(i8, ((Double) entry.getValue()).doubleValue());
                    break;
                case 1:
                    c0433o.n(i8, ((Float) entry.getValue()).floatValue());
                    break;
                case 2:
                    c0433o.q(i8, ((Long) entry.getValue()).longValue());
                    break;
                case 3:
                    c0433o.x(i8, ((Long) entry.getValue()).longValue());
                    break;
                case 4:
                    c0433o.p(i8, ((Integer) entry.getValue()).intValue());
                    break;
                case 5:
                    c0433o.m(i8, ((Long) entry.getValue()).longValue());
                    break;
                case 6:
                    c0433o.l(i8, ((Integer) entry.getValue()).intValue());
                    break;
                case 7:
                    c0433o.h(i8, ((Boolean) entry.getValue()).booleanValue());
                    break;
                case 8:
                    ((AbstractC2970z) c0433o.f8372H).M0(i8, (String) entry.getValue());
                    break;
                case 9:
                    c0433o.o(i8, C2902g2.f24439c.a(entry.getValue().getClass()), entry.getValue());
                    break;
                case 10:
                    c0433o.r(i8, C2902g2.f24439c.a(entry.getValue().getClass()), entry.getValue());
                    break;
                case 11:
                    c0433o.i(i8, (r) entry.getValue());
                    break;
                case 12:
                    c0433o.w(i8, ((Integer) entry.getValue()).intValue());
                    break;
                case 13:
                    c0433o.p(i8, ((Integer) entry.getValue()).intValue());
                    break;
                case 14:
                    c0433o.s(i8, ((Integer) entry.getValue()).intValue());
                    break;
                case 15:
                    c0433o.t(i8, ((Long) entry.getValue()).longValue());
                    break;
                case 16:
                    c0433o.u(i8, ((Integer) entry.getValue()).intValue());
                    break;
                case 17:
                    c0433o.v(i8, ((Long) entry.getValue()).longValue());
                    break;
            }
        }
        int iOrdinal = s7.ordinal();
        boolean z8 = c2897f1.f24429K;
        switch (iOrdinal) {
            case 0:
                AbstractC2918k2.G(i8, (List) entry.getValue(), c0433o, z8);
                break;
            case 1:
                AbstractC2918k2.K(i8, (List) entry.getValue(), c0433o, z8);
                break;
            case 2:
                AbstractC2918k2.N(i8, (List) entry.getValue(), c0433o, z8);
                break;
            case 3:
                AbstractC2918k2.V(i8, (List) entry.getValue(), c0433o, z8);
                break;
            case 4:
                AbstractC2918k2.M(i8, (List) entry.getValue(), c0433o, z8);
                break;
            case 5:
                AbstractC2918k2.J(i8, (List) entry.getValue(), c0433o, z8);
                break;
            case 6:
                AbstractC2918k2.I(i8, (List) entry.getValue(), c0433o, z8);
                break;
            case 7:
                AbstractC2918k2.E(i8, (List) entry.getValue(), c0433o, z8);
                break;
            case 8:
                AbstractC2918k2.T(i8, (List) entry.getValue(), c0433o);
                break;
            case 9:
                List list = (List) entry.getValue();
                if (list != null && !list.isEmpty()) {
                    AbstractC2918k2.L(i8, (List) entry.getValue(), c0433o, C2902g2.f24439c.a(list.get(0).getClass()));
                    break;
                }
                break;
            case 10:
                List list2 = (List) entry.getValue();
                if (list2 != null && !list2.isEmpty()) {
                    AbstractC2918k2.O(i8, (List) entry.getValue(), c0433o, C2902g2.f24439c.a(list2.get(0).getClass()));
                    break;
                }
                break;
            case 11:
                AbstractC2918k2.F(i8, (List) entry.getValue(), c0433o);
                break;
            case 12:
                AbstractC2918k2.U(i8, (List) entry.getValue(), c0433o, z8);
                break;
            case 13:
                AbstractC2918k2.M(i8, (List) entry.getValue(), c0433o, z8);
                break;
            case 14:
                AbstractC2918k2.P(i8, (List) entry.getValue(), c0433o, z8);
                break;
            case 15:
                AbstractC2918k2.Q(i8, (List) entry.getValue(), c0433o, z8);
                break;
            case 16:
                AbstractC2918k2.R(i8, (List) entry.getValue(), c0433o, z8);
                break;
            case 17:
                AbstractC2918k2.S(i8, (List) entry.getValue(), c0433o, z8);
                break;
        }
    }
}
