package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.ads.Cw;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: renamed from: com.google.android.gms.internal.measurement.s, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2628s extends AbstractC2633t {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f23251b;

    public C2628s(int i8) {
        this.f23251b = i8;
        switch (i8) {
            case 1:
                ArrayList arrayList = this.f23254a;
                arrayList.add(EnumC2648w.EQUALS);
                arrayList.add(EnumC2648w.GREATER_THAN);
                arrayList.add(EnumC2648w.GREATER_THAN_EQUALS);
                arrayList.add(EnumC2648w.IDENTITY_EQUALS);
                arrayList.add(EnumC2648w.IDENTITY_NOT_EQUALS);
                arrayList.add(EnumC2648w.LESS_THAN);
                arrayList.add(EnumC2648w.LESS_THAN_EQUALS);
                arrayList.add(EnumC2648w.NOT_EQUALS);
                break;
            case 2:
                ArrayList arrayList2 = this.f23254a;
                arrayList2.add(EnumC2648w.APPLY);
                arrayList2.add(EnumC2648w.BLOCK);
                arrayList2.add(EnumC2648w.BREAK);
                arrayList2.add(EnumC2648w.CASE);
                arrayList2.add(EnumC2648w.DEFAULT);
                arrayList2.add(EnumC2648w.CONTINUE);
                arrayList2.add(EnumC2648w.DEFINE_FUNCTION);
                arrayList2.add(EnumC2648w.FN);
                arrayList2.add(EnumC2648w.IF);
                arrayList2.add(EnumC2648w.QUOTE);
                arrayList2.add(EnumC2648w.RETURN);
                arrayList2.add(EnumC2648w.SWITCH);
                arrayList2.add(EnumC2648w.TERNARY);
                break;
            case 3:
                ArrayList arrayList3 = this.f23254a;
                arrayList3.add(EnumC2648w.AND);
                arrayList3.add(EnumC2648w.NOT);
                arrayList3.add(EnumC2648w.OR);
                break;
            case 4:
                ArrayList arrayList4 = this.f23254a;
                arrayList4.add(EnumC2648w.FOR_IN);
                arrayList4.add(EnumC2648w.FOR_IN_CONST);
                arrayList4.add(EnumC2648w.FOR_IN_LET);
                arrayList4.add(EnumC2648w.FOR_LET);
                arrayList4.add(EnumC2648w.FOR_OF);
                arrayList4.add(EnumC2648w.FOR_OF_CONST);
                arrayList4.add(EnumC2648w.FOR_OF_LET);
                arrayList4.add(EnumC2648w.WHILE);
                break;
            case 5:
                ArrayList arrayList5 = this.f23254a;
                arrayList5.add(EnumC2648w.ADD);
                arrayList5.add(EnumC2648w.DIVIDE);
                arrayList5.add(EnumC2648w.MODULUS);
                arrayList5.add(EnumC2648w.MULTIPLY);
                arrayList5.add(EnumC2648w.NEGATE);
                arrayList5.add(EnumC2648w.POST_DECREMENT);
                arrayList5.add(EnumC2648w.POST_INCREMENT);
                arrayList5.add(EnumC2648w.PRE_DECREMENT);
                arrayList5.add(EnumC2648w.PRE_INCREMENT);
                arrayList5.add(EnumC2648w.SUBTRACT);
                break;
            case 6:
                break;
            case 7:
                ArrayList arrayList6 = this.f23254a;
                arrayList6.add(EnumC2648w.ASSIGN);
                arrayList6.add(EnumC2648w.CONST);
                arrayList6.add(EnumC2648w.CREATE_ARRAY);
                arrayList6.add(EnumC2648w.CREATE_OBJECT);
                arrayList6.add(EnumC2648w.EXPRESSION_LIST);
                arrayList6.add(EnumC2648w.GET);
                arrayList6.add(EnumC2648w.GET_INDEX);
                arrayList6.add(EnumC2648w.GET_PROPERTY);
                arrayList6.add(EnumC2648w.NULL);
                arrayList6.add(EnumC2648w.SET_PROPERTY);
                arrayList6.add(EnumC2648w.TYPEOF);
                arrayList6.add(EnumC2648w.UNDEFINED);
                arrayList6.add(EnumC2648w.VAR);
                break;
            default:
                ArrayList arrayList7 = this.f23254a;
                arrayList7.add(EnumC2648w.BITWISE_AND);
                arrayList7.add(EnumC2648w.BITWISE_LEFT_SHIFT);
                arrayList7.add(EnumC2648w.BITWISE_NOT);
                arrayList7.add(EnumC2648w.BITWISE_OR);
                arrayList7.add(EnumC2648w.BITWISE_RIGHT_SHIFT);
                arrayList7.add(EnumC2648w.BITWISE_UNSIGNED_RIGHT_SHIFT);
                arrayList7.add(EnumC2648w.BITWISE_XOR);
                break;
        }
    }

    public static C2597m b(p096m2.i iVar, ArrayList arrayList) {
        EnumC2648w enumC2648w = EnumC2648w.ADD;
        Cw.R1("FN", 2, arrayList);
        InterfaceC2603n interfaceC2603nT = iVar.t((InterfaceC2603n) arrayList.get(0));
        InterfaceC2603n interfaceC2603nT2 = iVar.t((InterfaceC2603n) arrayList.get(1));
        if (!(interfaceC2603nT2 instanceof C2543d)) {
            throw new IllegalArgumentException(p148t.a.c("FN requires an ArrayValue of parameter names found ", interfaceC2603nT2.getClass().getCanonicalName()));
        }
        ArrayList arrayListR = ((C2543d) interfaceC2603nT2).r();
        List arrayList2 = new ArrayList();
        if (arrayList.size() > 2) {
            arrayList2 = arrayList.subList(2, arrayList.size());
        }
        return new C2597m(interfaceC2603nT.zzi(), arrayListR, arrayList2, iVar);
    }

    public static InterfaceC2603n c(InterfaceC2643v interfaceC2643v, Iterator it, InterfaceC2603n interfaceC2603n) {
        if (it != null) {
            while (it.hasNext()) {
                InterfaceC2603n interfaceC2603nV = interfaceC2643v.e((InterfaceC2603n) it.next()).v((C2543d) interfaceC2603n);
                if (interfaceC2603nV instanceof C2555f) {
                    C2555f c2555f = (C2555f) interfaceC2603nV;
                    if ("break".equals(c2555f.f23122H)) {
                        return InterfaceC2603n.f23213s;
                    }
                    if ("return".equals(c2555f.f23122H)) {
                        return c2555f;
                    }
                }
            }
        }
        return InterfaceC2603n.f23213s;
    }

    public static boolean d(InterfaceC2603n interfaceC2603n, InterfaceC2603n interfaceC2603n2) {
        if (interfaceC2603n.getClass().equals(interfaceC2603n2.getClass())) {
            if ((interfaceC2603n instanceof r) || (interfaceC2603n instanceof C2591l)) {
                return true;
            }
            if (interfaceC2603n instanceof C2561g) {
                return (Double.isNaN(interfaceC2603n.zzh().doubleValue()) || Double.isNaN(interfaceC2603n2.zzh().doubleValue()) || interfaceC2603n.zzh().doubleValue() != interfaceC2603n2.zzh().doubleValue()) ? false : true;
            }
            if (interfaceC2603n instanceof C2619q) {
                return interfaceC2603n.zzi().equals(interfaceC2603n2.zzi());
            }
            if (interfaceC2603n instanceof C2549e) {
                return interfaceC2603n.zzg().equals(interfaceC2603n2.zzg());
            }
            return interfaceC2603n == interfaceC2603n2;
        }
        if (((interfaceC2603n instanceof r) || (interfaceC2603n instanceof C2591l)) && ((interfaceC2603n2 instanceof r) || (interfaceC2603n2 instanceof C2591l))) {
            return true;
        }
        boolean z7 = interfaceC2603n instanceof C2561g;
        if (z7 && (interfaceC2603n2 instanceof C2619q)) {
            return d(interfaceC2603n, new C2561g(interfaceC2603n2.zzh()));
        }
        boolean z8 = interfaceC2603n instanceof C2619q;
        if (z8 && (interfaceC2603n2 instanceof C2561g)) {
            return d(new C2561g(interfaceC2603n.zzh()), interfaceC2603n2);
        }
        if (interfaceC2603n instanceof C2549e) {
            return d(new C2561g(interfaceC2603n.zzh()), interfaceC2603n2);
        }
        if (interfaceC2603n2 instanceof C2549e) {
            return d(interfaceC2603n, new C2561g(interfaceC2603n2.zzh()));
        }
        if ((z8 || z7) && (interfaceC2603n2 instanceof InterfaceC2579j)) {
            return d(interfaceC2603n, new C2619q(interfaceC2603n2.zzi()));
        }
        if ((interfaceC2603n instanceof InterfaceC2579j) && ((interfaceC2603n2 instanceof C2619q) || (interfaceC2603n2 instanceof C2561g))) {
            return d(new C2619q(interfaceC2603n.zzi()), interfaceC2603n2);
        }
        return false;
    }

    public static boolean e(InterfaceC2603n interfaceC2603n, InterfaceC2603n interfaceC2603n2) {
        if (interfaceC2603n instanceof InterfaceC2579j) {
            interfaceC2603n = new C2619q(interfaceC2603n.zzi());
        }
        if (interfaceC2603n2 instanceof InterfaceC2579j) {
            interfaceC2603n2 = new C2619q(interfaceC2603n2.zzi());
        }
        if ((interfaceC2603n instanceof C2619q) && (interfaceC2603n2 instanceof C2619q)) {
            return interfaceC2603n.zzi().compareTo(interfaceC2603n2.zzi()) < 0;
        }
        double dDoubleValue = interfaceC2603n.zzh().doubleValue();
        double dDoubleValue2 = interfaceC2603n2.zzh().doubleValue();
        return (Double.isNaN(dDoubleValue) || Double.isNaN(dDoubleValue2) || (dDoubleValue == 0.0d && dDoubleValue2 == 0.0d) || ((dDoubleValue == 0.0d && dDoubleValue2 == 0.0d) || Double.compare(dDoubleValue, dDoubleValue2) >= 0)) ? false : true;
    }

    public static InterfaceC2603n f(InterfaceC2643v interfaceC2643v, InterfaceC2603n interfaceC2603n, InterfaceC2603n interfaceC2603n2) {
        if (interfaceC2603n instanceof Iterable) {
            return c(interfaceC2643v, ((Iterable) interfaceC2603n).iterator(), interfaceC2603n2);
        }
        throw new IllegalArgumentException("Non-iterable type in for...of loop.");
    }

    public static boolean g(InterfaceC2603n interfaceC2603n, InterfaceC2603n interfaceC2603n2) {
        if (interfaceC2603n instanceof InterfaceC2579j) {
            interfaceC2603n = new C2619q(interfaceC2603n.zzi());
        }
        if (interfaceC2603n2 instanceof InterfaceC2579j) {
            interfaceC2603n2 = new C2619q(interfaceC2603n2.zzi());
        }
        return (((interfaceC2603n instanceof C2619q) && (interfaceC2603n2 instanceof C2619q)) || !(Double.isNaN(interfaceC2603n.zzh().doubleValue()) || Double.isNaN(interfaceC2603n2.zzh().doubleValue()))) && !e(interfaceC2603n2, interfaceC2603n);
    }
}
