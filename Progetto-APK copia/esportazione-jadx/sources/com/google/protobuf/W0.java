package com.google.protobuf;

import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes2.dex */
public final class W0 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final W0 f24385d = new W0(0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C2922l2 f24386a = new C2922l2(16);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f24387b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f24388c;

    public W0() {
    }

    public static int c(S2 s7, int i8, Object obj) {
        int iQ0 = AbstractC2970z.q0(i8);
        if (s7 == S2.f24304K) {
            iQ0 *= 2;
        }
        return d(s7, obj) + iQ0;
    }

    public static int d(S2 s7, Object obj) {
        switch (s7.ordinal()) {
            case 0:
                ((Double) obj).getClass();
                Logger logger = AbstractC2970z.f24550d;
                return 8;
            case 1:
                ((Float) obj).getClass();
                Logger logger2 = AbstractC2970z.f24550d;
                return 4;
            case 2:
                return AbstractC2970z.u0(((Long) obj).longValue());
            case 3:
                return AbstractC2970z.u0(((Long) obj).longValue());
            case 4:
                return AbstractC2970z.i0(((Integer) obj).intValue());
            case 5:
                ((Long) obj).getClass();
                Logger logger3 = AbstractC2970z.f24550d;
                return 8;
            case 6:
                ((Integer) obj).getClass();
                Logger logger4 = AbstractC2970z.f24550d;
                return 4;
            case 7:
                ((Boolean) obj).getClass();
                Logger logger5 = AbstractC2970z.f24550d;
                return 1;
            case 8:
                return obj instanceof r ? AbstractC2970z.a0((r) obj) : AbstractC2970z.p0((String) obj);
            case 9:
                Logger logger6 = AbstractC2970z.f24550d;
                return ((Q1) obj).getSerializedSize();
            case 10:
                Logger logger7 = AbstractC2970z.f24550d;
                int serializedSize = ((Q1) obj).getSerializedSize();
                return AbstractC2970z.s0(serializedSize) + serializedSize;
            case 11:
                if (obj instanceof r) {
                    return AbstractC2970z.a0((r) obj);
                }
                Logger logger8 = AbstractC2970z.f24550d;
                int length = ((byte[]) obj).length;
                return AbstractC2970z.s0(length) + length;
            case 12:
                return AbstractC2970z.s0(((Integer) obj).intValue());
            case 13:
                return obj instanceof InterfaceC2933o1 ? AbstractC2970z.i0(((InterfaceC2933o1) obj).a()) : AbstractC2970z.i0(((Integer) obj).intValue());
            case 14:
                ((Integer) obj).getClass();
                Logger logger9 = AbstractC2970z.f24550d;
                return 4;
            case 15:
                ((Long) obj).getClass();
                Logger logger10 = AbstractC2970z.f24550d;
                return 8;
            case 16:
                int iIntValue = ((Integer) obj).intValue();
                return AbstractC2970z.s0((iIntValue >> 31) ^ (iIntValue << 1));
            case 17:
                long jLongValue = ((Long) obj).longValue();
                return AbstractC2970z.u0((jLongValue >> 63) ^ (jLongValue << 1));
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    public static int e(C2897f1 c2897f1, Object obj) {
        S2 s7 = c2897f1.f24427I;
        boolean z7 = c2897f1.f24428J;
        int i8 = c2897f1.f24426H;
        if (!z7) {
            return c(s7, i8, obj);
        }
        List list = (List) obj;
        int iC = 0;
        if (!c2897f1.f24429K) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                iC += c(s7, i8, it.next());
            }
            return iC;
        }
        if (list.isEmpty()) {
            return 0;
        }
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            iC += d(s7, it2.next());
        }
        return AbstractC2970z.s0(iC) + AbstractC2970z.q0(i8) + iC;
    }

    public static int g(Map.Entry entry) {
        C2897f1 c2897f1 = (C2897f1) entry.getKey();
        Object value = entry.getValue();
        if (c2897f1.f24427I.f24308G != T2.MESSAGE || c2897f1.f24428J || c2897f1.f24429K) {
            return e(c2897f1, value);
        }
        int i8 = ((C2897f1) entry.getKey()).f24426H;
        int iR0 = AbstractC2970z.r0(2, i8) + (AbstractC2970z.q0(1) * 2);
        int iQ0 = AbstractC2970z.q0(3);
        int serializedSize = ((Q1) value).getSerializedSize();
        return AbstractC2970z.s0(serializedSize) + serializedSize + iQ0 + iR0;
    }

    public static boolean k(Map.Entry entry) {
        C2897f1 c2897f1 = (C2897f1) entry.getKey();
        if (c2897f1.f24427I.f24308G != T2.MESSAGE) {
            return true;
        }
        if (!c2897f1.f24428J) {
            Object value = entry.getValue();
            if (value instanceof R1) {
                return ((R1) value).isInitialized();
            }
            throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
        }
        for (Object obj : (List) entry.getValue()) {
            if (!(obj instanceof R1)) {
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
            if (!((R1) obj).isInitialized()) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:27:? A[RETURN, SYNTHETIC] */
    public static void q(C2897f1 c2897f1, Object obj) {
        boolean z7;
        S2 s7 = c2897f1.f24427I;
        Charset charset = AbstractC2960v1.f24524a;
        obj.getClass();
        switch (s7.f24308G) {
            case INT:
                z7 = obj instanceof Integer;
                if (z7) {
                    return;
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(c2897f1.f24426H), c2897f1.f24427I.f24308G, obj.getClass().getName()));
            case LONG:
                z7 = obj instanceof Long;
                if (z7) {
                    return;
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(c2897f1.f24426H), c2897f1.f24427I.f24308G, obj.getClass().getName()));
            case FLOAT:
                z7 = obj instanceof Float;
                if (z7) {
                    return;
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(c2897f1.f24426H), c2897f1.f24427I.f24308G, obj.getClass().getName()));
            case DOUBLE:
                z7 = obj instanceof Double;
                if (z7) {
                    return;
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(c2897f1.f24426H), c2897f1.f24427I.f24308G, obj.getClass().getName()));
            case BOOLEAN:
                z7 = obj instanceof Boolean;
                if (z7) {
                    return;
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(c2897f1.f24426H), c2897f1.f24427I.f24308G, obj.getClass().getName()));
            case STRING:
                z7 = obj instanceof String;
                if (z7) {
                    return;
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(c2897f1.f24426H), c2897f1.f24427I.f24308G, obj.getClass().getName()));
            case BYTE_STRING:
                if ((obj instanceof r) || (obj instanceof byte[])) {
                    return;
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(c2897f1.f24426H), c2897f1.f24427I.f24308G, obj.getClass().getName()));
            case ENUM:
                if ((obj instanceof Integer) || (obj instanceof InterfaceC2933o1)) {
                    return;
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(c2897f1.f24426H), c2897f1.f24427I.f24308G, obj.getClass().getName()));
            case MESSAGE:
                z7 = obj instanceof Q1;
                if (z7) {
                    return;
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(c2897f1.f24426H), c2897f1.f24427I.f24308G, obj.getClass().getName()));
            default:
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(c2897f1.f24426H), c2897f1.f24427I.f24308G, obj.getClass().getName()));
        }
    }

    public static void r(AbstractC2970z abstractC2970z, S2 s7, int i8, Object obj) {
        if (s7 == S2.f24304K) {
            abstractC2970z.O0(i8, 3);
            ((Q1) obj).writeTo(abstractC2970z);
            abstractC2970z.O0(i8, 4);
            return;
        }
        abstractC2970z.O0(i8, s7.f24309H);
        switch (s7.ordinal()) {
            case 0:
                abstractC2970z.F0(Double.doubleToRawLongBits(((Double) obj).doubleValue()));
                break;
            case 1:
                abstractC2970z.D0(Float.floatToRawIntBits(((Float) obj).floatValue()));
                break;
            case 2:
                abstractC2970z.S0(((Long) obj).longValue());
                break;
            case 3:
                abstractC2970z.S0(((Long) obj).longValue());
                break;
            case 4:
                abstractC2970z.H0(((Integer) obj).intValue());
                break;
            case 5:
                abstractC2970z.F0(((Long) obj).longValue());
                break;
            case 6:
                abstractC2970z.D0(((Integer) obj).intValue());
                break;
            case 7:
                abstractC2970z.x0(((Boolean) obj).booleanValue() ? (byte) 1 : (byte) 0);
                break;
            case 8:
                if (!(obj instanceof r)) {
                    abstractC2970z.N0((String) obj);
                } else {
                    abstractC2970z.B0((r) obj);
                }
                break;
            case 9:
                ((Q1) obj).writeTo(abstractC2970z);
                break;
            case 10:
                abstractC2970z.J0((Q1) obj);
                break;
            case 11:
                if (!(obj instanceof r)) {
                    byte[] bArr = (byte[]) obj;
                    abstractC2970z.z0(bArr, bArr.length);
                } else {
                    abstractC2970z.B0((r) obj);
                }
                break;
            case 12:
                abstractC2970z.Q0(((Integer) obj).intValue());
                break;
            case 13:
                if (!(obj instanceof InterfaceC2933o1)) {
                    abstractC2970z.H0(((Integer) obj).intValue());
                } else {
                    abstractC2970z.H0(((InterfaceC2933o1) obj).a());
                }
                break;
            case 14:
                abstractC2970z.D0(((Integer) obj).intValue());
                break;
            case 15:
                abstractC2970z.F0(((Long) obj).longValue());
                break;
            case 16:
                int iIntValue = ((Integer) obj).intValue();
                abstractC2970z.Q0((iIntValue >> 31) ^ (iIntValue << 1));
                break;
            case 17:
                long jLongValue = ((Long) obj).longValue();
                abstractC2970z.S0((jLongValue >> 63) ^ (jLongValue << 1));
                break;
        }
    }

    public final void a(C2897f1 c2897f1, Object obj) {
        List arrayList;
        if (!c2897f1.f24428J) {
            throw new IllegalArgumentException("addRepeatedField() can only be called on repeated fields.");
        }
        q(c2897f1, obj);
        C2922l2 c2922l2 = this.f24386a;
        Object obj2 = c2922l2.get(c2897f1);
        if (obj2 == null) {
            arrayList = new ArrayList();
            c2922l2.put(c2897f1, arrayList);
        } else {
            arrayList = (List) obj2;
        }
        arrayList.add(obj);
    }

    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final W0 clone() {
        C2922l2 c2922l2;
        W0 w7 = new W0();
        int i8 = 0;
        while (true) {
            c2922l2 = this.f24386a;
            if (i8 >= c2922l2.f24473H.size()) {
                break;
            }
            Map.Entry entryH = c2922l2.h(i8);
            w7.p((C2897f1) entryH.getKey(), entryH.getValue());
            i8++;
        }
        for (Map.Entry entry : c2922l2.i()) {
            w7.p((C2897f1) entry.getKey(), entry.getValue());
        }
        w7.f24388c = this.f24388c;
        return w7;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof W0)) {
            return false;
        }
        return this.f24386a.equals(((W0) obj).f24386a);
    }

    public final int f() {
        C2922l2 c2922l2;
        int i8 = 0;
        int iG = 0;
        while (true) {
            c2922l2 = this.f24386a;
            if (i8 >= c2922l2.f24473H.size()) {
                break;
            }
            iG += g(c2922l2.h(i8));
            i8++;
        }
        Iterator it = c2922l2.i().iterator();
        while (it.hasNext()) {
            iG += g((Map.Entry) it.next());
        }
        return iG;
    }

    public final int h() {
        C2922l2 c2922l2;
        int i8 = 0;
        int iE = 0;
        while (true) {
            c2922l2 = this.f24386a;
            if (i8 >= c2922l2.f24473H.size()) {
                break;
            }
            Map.Entry entryH = c2922l2.h(i8);
            iE += e((C2897f1) entryH.getKey(), entryH.getValue());
            i8++;
        }
        for (Map.Entry entry : c2922l2.i()) {
            iE += e((C2897f1) entry.getKey(), entry.getValue());
        }
        return iE;
    }

    public final int hashCode() {
        return this.f24386a.hashCode();
    }

    public final boolean i() {
        return this.f24386a.isEmpty();
    }

    public final boolean j() {
        int i8 = 0;
        while (true) {
            C2922l2 c2922l2 = this.f24386a;
            if (i8 >= c2922l2.f24473H.size()) {
                Iterator it = c2922l2.i().iterator();
                while (it.hasNext()) {
                    if (!k((Map.Entry) it.next())) {
                        return false;
                    }
                }
                return true;
            }
            if (!k(c2922l2.h(i8))) {
                return false;
            }
            i8++;
        }
    }

    public final Iterator l() {
        boolean z7 = this.f24388c;
        C2922l2 c2922l2 = this.f24386a;
        return z7 ? new com.google.android.gms.internal.measurement.D2(c2922l2.entrySet().iterator(), 1) : c2922l2.entrySet().iterator();
    }

    public final void m() {
        C2922l2 c2922l2;
        if (this.f24387b) {
            return;
        }
        int i8 = 0;
        while (true) {
            c2922l2 = this.f24386a;
            if (i8 >= c2922l2.f24473H.size()) {
                break;
            }
            Map.Entry entryH = c2922l2.h(i8);
            if (entryH.getValue() instanceof AbstractC2909i1) {
                ((AbstractC2909i1) entryH.getValue()).makeImmutable();
            }
            i8++;
        }
        if (!c2922l2.f24475J) {
            for (int i9 = 0; i9 < c2922l2.f24473H.size(); i9++) {
                Map.Entry entryH2 = c2922l2.h(i9);
                if (((C2897f1) entryH2.getKey()).f24428J) {
                    entryH2.setValue(Collections.unmodifiableList((List) entryH2.getValue()));
                }
            }
            for (Map.Entry entry : c2922l2.i()) {
                if (((C2897f1) entry.getKey()).f24428J) {
                    entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                }
            }
        }
        if (!c2922l2.f24475J) {
            c2922l2.f24474I = c2922l2.f24474I.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(c2922l2.f24474I);
            c2922l2.f24477L = c2922l2.f24477L.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(c2922l2.f24477L);
            c2922l2.f24475J = true;
        }
        this.f24387b = true;
    }

    public final void n(W0 w7) {
        C2922l2 c2922l2;
        int i8 = 0;
        while (true) {
            int size = w7.f24386a.f24473H.size();
            c2922l2 = w7.f24386a;
            if (i8 >= size) {
                break;
            }
            o(c2922l2.h(i8));
            i8++;
        }
        Iterator it = c2922l2.i().iterator();
        while (it.hasNext()) {
            o((Map.Entry) it.next());
        }
    }

    public final void o(Map.Entry entry) {
        C2897f1 c2897f1 = (C2897f1) entry.getKey();
        Object value = entry.getValue();
        boolean z7 = c2897f1.f24428J;
        C2922l2 c2922l2 = this.f24386a;
        if (z7) {
            Object arrayList = c2922l2.get(c2897f1);
            if (arrayList == null) {
                arrayList = new ArrayList();
            }
            for (Object obj : (List) value) {
                List list = (List) arrayList;
                if (obj instanceof byte[]) {
                    byte[] bArr = (byte[]) obj;
                    byte[] bArr2 = new byte[bArr.length];
                    System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
                    obj = bArr2;
                }
                list.add(obj);
            }
            c2922l2.put(c2897f1, arrayList);
            return;
        }
        if (c2897f1.f24427I.f24308G != T2.MESSAGE) {
            if (value instanceof byte[]) {
                byte[] bArr3 = (byte[]) value;
                byte[] bArr4 = new byte[bArr3.length];
                System.arraycopy(bArr3, 0, bArr4, 0, bArr3.length);
                value = bArr4;
            }
            c2922l2.put(c2897f1, value);
            return;
        }
        Object obj2 = c2922l2.get(c2897f1);
        if (obj2 != null) {
            AbstractC2881b1 abstractC2881b1 = (AbstractC2881b1) ((Q1) obj2).toBuilder();
            abstractC2881b1.g((AbstractC2909i1) ((Q1) value));
            c2922l2.put(c2897f1, abstractC2881b1.b());
        } else {
            if (value instanceof byte[]) {
                byte[] bArr5 = (byte[]) value;
                byte[] bArr6 = new byte[bArr5.length];
                System.arraycopy(bArr5, 0, bArr6, 0, bArr5.length);
                value = bArr6;
            }
            c2922l2.put(c2897f1, value);
        }
    }

    public final void p(C2897f1 c2897f1, Object obj) {
        if (!c2897f1.f24428J) {
            q(c2897f1, obj);
        } else {
            if (!(obj instanceof List)) {
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
            ArrayList arrayList = new ArrayList();
            arrayList.addAll((List) obj);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                q(c2897f1, it.next());
            }
            obj = arrayList;
        }
        this.f24386a.put(c2897f1, obj);
    }

    public W0(int i8) {
        m();
        m();
    }
}
