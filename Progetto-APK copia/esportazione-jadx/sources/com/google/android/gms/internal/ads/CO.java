package com.google.android.gms.internal.ads;

import com.google.protobuf.AbstractC2961w;
import com.google.protobuf.C2902g2;
import com.google.protobuf.C2915k;
import com.google.protobuf.C2921l1;
import com.google.protobuf.C2963w1;
import com.google.protobuf.C2966x1;
import com.google.protobuf.InterfaceC2914j2;
import java.util.Arrays;
import java.util.List;
import java.util.NoSuchElementException;
import okhttp3.internal.http2.Settings;

/* JADX INFO: loaded from: classes.dex */
public final class CO {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f12628a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f12629b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f12630c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Object f12631d;

    public CO() {
        this.f12630c = 0;
        this.f12631d = new C2347zO[100];
    }

    public static void J(int i8) throws C2966x1 {
        if ((i8 & 3) != 0) {
            throw C2966x1.f();
        }
    }

    public static void K(int i8) throws C2966x1 {
        if ((i8 & 7) != 0) {
            throw C2966x1.f();
        }
    }

    public int A() throws C2963w1 {
        G(0);
        return ((AbstractC2961w) this.f12631d).G();
    }

    public void B(List list) throws C2966x1 {
        int iF;
        int iF2;
        if (!(list instanceof C2921l1)) {
            int i8 = this.f12628a & 7;
            if (i8 == 0) {
                do {
                    list.add(Integer.valueOf(((AbstractC2961w) this.f12631d).G()));
                    if (((AbstractC2961w) this.f12631d).g()) {
                        return;
                    } else {
                        iF = ((AbstractC2961w) this.f12631d).F();
                    }
                } while (iF == this.f12628a);
                this.f12630c = iF;
                return;
            }
            if (i8 != 2) {
                throw C2966x1.c();
            }
            int iF3 = ((AbstractC2961w) this.f12631d).f() + ((AbstractC2961w) this.f12631d).G();
            do {
                list.add(Integer.valueOf(((AbstractC2961w) this.f12631d).G()));
            } while (((AbstractC2961w) this.f12631d).f() < iF3);
            F(iF3);
            return;
        }
        C2921l1 c2921l1 = (C2921l1) list;
        int i9 = this.f12628a & 7;
        if (i9 == 0) {
            do {
                c2921l1.i(((AbstractC2961w) this.f12631d).G());
                if (((AbstractC2961w) this.f12631d).g()) {
                    return;
                } else {
                    iF2 = ((AbstractC2961w) this.f12631d).F();
                }
            } while (iF2 == this.f12628a);
            this.f12630c = iF2;
            return;
        }
        if (i9 != 2) {
            throw C2966x1.c();
        }
        int iF4 = ((AbstractC2961w) this.f12631d).f() + ((AbstractC2961w) this.f12631d).G();
        do {
            c2921l1.i(((AbstractC2961w) this.f12631d).G());
        } while (((AbstractC2961w) this.f12631d).f() < iF4);
        F(iF4);
    }

    public void C(List list) throws C2966x1 {
        int iF;
        int iF2;
        if (!(list instanceof com.google.protobuf.F1)) {
            int i8 = this.f12628a & 7;
            if (i8 == 0) {
                do {
                    list.add(Long.valueOf(((AbstractC2961w) this.f12631d).H()));
                    if (((AbstractC2961w) this.f12631d).g()) {
                        return;
                    } else {
                        iF = ((AbstractC2961w) this.f12631d).F();
                    }
                } while (iF == this.f12628a);
                this.f12630c = iF;
                return;
            }
            if (i8 != 2) {
                throw C2966x1.c();
            }
            int iF3 = ((AbstractC2961w) this.f12631d).f() + ((AbstractC2961w) this.f12631d).G();
            do {
                list.add(Long.valueOf(((AbstractC2961w) this.f12631d).H()));
            } while (((AbstractC2961w) this.f12631d).f() < iF3);
            F(iF3);
            return;
        }
        com.google.protobuf.F1 f8 = (com.google.protobuf.F1) list;
        int i9 = this.f12628a & 7;
        if (i9 == 0) {
            do {
                f8.i(((AbstractC2961w) this.f12631d).H());
                if (((AbstractC2961w) this.f12631d).g()) {
                    return;
                } else {
                    iF2 = ((AbstractC2961w) this.f12631d).F();
                }
            } while (iF2 == this.f12628a);
            this.f12630c = iF2;
            return;
        }
        if (i9 != 2) {
            throw C2966x1.c();
        }
        int iF4 = ((AbstractC2961w) this.f12631d).f() + ((AbstractC2961w) this.f12631d).G();
        do {
            f8.i(((AbstractC2961w) this.f12631d).H());
        } while (((AbstractC2961w) this.f12631d).f() < iF4);
        F(iF4);
    }

    public void D(int i8) {
        if (i8 <= 0) {
            return;
        }
        if (i8 > H()) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int i9 = this.f12629b;
        int i10 = i8 < i9 ? i9 - i8 : 0;
        for (int i11 = i10; i11 < i9; i11++) {
            ((Object[]) this.f12631d)[i11] = null;
        }
        int i12 = this.f12629b;
        int i13 = i12 - i10;
        int i14 = i8 - i13;
        this.f12629b = i12 - i13;
        if (i14 > 0) {
            int length = ((Object[]) this.f12631d).length;
            this.f12629b = length;
            int i15 = length - i14;
            for (int i16 = i15; i16 < length; i16++) {
                ((Object[]) this.f12631d)[i16] = null;
            }
            this.f12629b = i15;
        }
    }

    public void E(int i8) {
        if (i8 <= 0) {
            return;
        }
        if (i8 > H()) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int length = ((Object[]) this.f12631d).length;
        int i9 = this.f12628a;
        if (i8 < length - i9) {
            length = i9 + i8;
        }
        while (i9 < length) {
            ((Object[]) this.f12631d)[i9] = null;
            i9++;
        }
        int i10 = this.f12628a;
        int i11 = length - i10;
        int i12 = i8 - i11;
        this.f12628a = this.f12630c & (i10 + i11);
        if (i12 > 0) {
            for (int i13 = 0; i13 < i12; i13++) {
                ((Object[]) this.f12631d)[i13] = null;
            }
            this.f12628a = i12;
        }
    }

    public void F(int i8) throws C2966x1 {
        if (((AbstractC2961w) this.f12631d).f() != i8) {
            throw C2966x1.g();
        }
    }

    public void G(int i8) throws C2963w1 {
        if ((this.f12628a & 7) != i8) {
            throw C2966x1.c();
        }
    }

    public int H() {
        return (this.f12629b - this.f12628a) & this.f12630c;
    }

    public boolean I() {
        int i8;
        if (((AbstractC2961w) this.f12631d).g() || (i8 = this.f12628a) == this.f12629b) {
            return false;
        }
        return ((AbstractC2961w) this.f12631d).I(i8);
    }

    public long L() {
        int i8 = this.f12629b;
        if (i8 == 0) {
            throw new NoSuchElementException();
        }
        long[] jArr = (long[]) this.f12631d;
        int i9 = this.f12628a;
        long j8 = jArr[i9];
        this.f12628a = this.f12630c & (i9 + 1);
        this.f12629b = i8 - 1;
        return j8;
    }

    public synchronized void M(int i8) {
        int i9 = this.f12628a;
        this.f12628a = i8;
        if (i8 < i9) {
            N();
        }
    }

    public synchronized void N() {
        int i8 = this.f12628a;
        int i9 = Et.f13234a;
        int iMax = Math.max(0, ((i8 + Settings.DEFAULT_INITIAL_WINDOW_SIZE) / 65536) - this.f12629b);
        int i10 = this.f12630c;
        if (iMax >= i10) {
            return;
        }
        Arrays.fill((C2347zO[]) this.f12631d, iMax, i10, (Object) null);
        this.f12630c = iMax;
    }

    public void a() {
        Object[] objArr = (Object[]) this.f12631d;
        int length = objArr.length;
        int i8 = this.f12628a;
        int i9 = length - i8;
        int i10 = length << 1;
        if (i10 < 0) {
            throw new RuntimeException("Max array capacity exceeded");
        }
        Object[] objArr2 = new Object[i10];
        p162u6.j.M(objArr, 0, objArr2, i8, length);
        p162u6.j.M((Object[]) this.f12631d, i9, objArr2, 0, this.f12628a);
        this.f12631d = objArr2;
        this.f12628a = 0;
        this.f12629b = length;
        this.f12630c = i10 - 1;
    }

    public int b() {
        int i8 = this.f12630c;
        if (i8 != 0) {
            this.f12628a = i8;
            this.f12630c = 0;
        } else {
            this.f12628a = ((AbstractC2961w) this.f12631d).F();
        }
        int i9 = this.f12628a;
        return (i9 == 0 || i9 == this.f12629b) ? com.google.android.gms.common.api.d.API_PRIORITY_OTHER : i9 >>> 3;
    }

    public void c(Object obj, InterfaceC2914j2 interfaceC2914j2, com.google.protobuf.O0 o4) throws C2963w1 {
        G(3);
        d(obj, interfaceC2914j2, o4);
    }

    public void d(Object obj, InterfaceC2914j2 interfaceC2914j2, com.google.protobuf.O0 o4) {
        int i8 = this.f12629b;
        this.f12629b = ((this.f12628a >>> 3) << 3) | 4;
        try {
            interfaceC2914j2.c(obj, this, o4);
            if (this.f12628a != this.f12629b) {
                throw C2966x1.f();
            }
            this.f12629b = i8;
        } catch (Throwable th) {
            this.f12629b = i8;
            throw th;
        }
    }

    public void e(Object obj, InterfaceC2914j2 interfaceC2914j2, com.google.protobuf.O0 o4) throws C2966x1 {
        int iG = ((AbstractC2961w) this.f12631d).G();
        AbstractC2961w abstractC2961w = (AbstractC2961w) this.f12631d;
        if (abstractC2961w.f24526a >= abstractC2961w.f24527b) {
            throw new C2966x1("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
        }
        int iL = abstractC2961w.l(iG);
        ((AbstractC2961w) this.f12631d).f24526a++;
        interfaceC2914j2.c(obj, this, o4);
        ((AbstractC2961w) this.f12631d).a(0);
        AbstractC2961w abstractC2961w2 = (AbstractC2961w) this.f12631d;
        abstractC2961w2.f24526a--;
        abstractC2961w2.k(iL);
    }

    public void f(List list) throws C2966x1 {
        int iF;
        int iF2;
        if (!(list instanceof C2915k)) {
            int i8 = this.f12628a & 7;
            if (i8 == 0) {
                do {
                    list.add(Boolean.valueOf(((AbstractC2961w) this.f12631d).m()));
                    if (((AbstractC2961w) this.f12631d).g()) {
                        return;
                    } else {
                        iF = ((AbstractC2961w) this.f12631d).F();
                    }
                } while (iF == this.f12628a);
                this.f12630c = iF;
                return;
            }
            if (i8 != 2) {
                throw C2966x1.c();
            }
            int iF3 = ((AbstractC2961w) this.f12631d).f() + ((AbstractC2961w) this.f12631d).G();
            do {
                list.add(Boolean.valueOf(((AbstractC2961w) this.f12631d).m()));
            } while (((AbstractC2961w) this.f12631d).f() < iF3);
            F(iF3);
            return;
        }
        C2915k c2915k = (C2915k) list;
        int i9 = this.f12628a & 7;
        if (i9 == 0) {
            do {
                c2915k.i(((AbstractC2961w) this.f12631d).m());
                if (((AbstractC2961w) this.f12631d).g()) {
                    return;
                } else {
                    iF2 = ((AbstractC2961w) this.f12631d).F();
                }
            } while (iF2 == this.f12628a);
            this.f12630c = iF2;
            return;
        }
        if (i9 != 2) {
            throw C2966x1.c();
        }
        int iF4 = ((AbstractC2961w) this.f12631d).f() + ((AbstractC2961w) this.f12631d).G();
        do {
            c2915k.i(((AbstractC2961w) this.f12631d).m());
        } while (((AbstractC2961w) this.f12631d).f() < iF4);
        F(iF4);
    }

    public com.google.protobuf.r g() throws C2963w1 {
        G(2);
        return ((AbstractC2961w) this.f12631d).n();
    }

    public void h(List list) throws C2963w1 {
        int iF;
        if ((this.f12628a & 7) != 2) {
            throw C2966x1.c();
        }
        do {
            list.add(g());
            if (((AbstractC2961w) this.f12631d).g()) {
                return;
            } else {
                iF = ((AbstractC2961w) this.f12631d).F();
            }
        } while (iF == this.f12628a);
        this.f12630c = iF;
    }

    public void i(List list) throws C2966x1 {
        int iF;
        int iF2;
        if (!(list instanceof com.google.protobuf.D0)) {
            int i8 = this.f12628a & 7;
            if (i8 == 1) {
                do {
                    list.add(Double.valueOf(((AbstractC2961w) this.f12631d).o()));
                    if (((AbstractC2961w) this.f12631d).g()) {
                        return;
                    } else {
                        iF = ((AbstractC2961w) this.f12631d).F();
                    }
                } while (iF == this.f12628a);
                this.f12630c = iF;
                return;
            }
            if (i8 != 2) {
                throw C2966x1.c();
            }
            int iG = ((AbstractC2961w) this.f12631d).G();
            K(iG);
            int iF3 = ((AbstractC2961w) this.f12631d).f() + iG;
            do {
                list.add(Double.valueOf(((AbstractC2961w) this.f12631d).o()));
            } while (((AbstractC2961w) this.f12631d).f() < iF3);
            return;
        }
        com.google.protobuf.D0 d6 = (com.google.protobuf.D0) list;
        int i9 = this.f12628a & 7;
        if (i9 == 1) {
            do {
                d6.i(((AbstractC2961w) this.f12631d).o());
                if (((AbstractC2961w) this.f12631d).g()) {
                    return;
                } else {
                    iF2 = ((AbstractC2961w) this.f12631d).F();
                }
            } while (iF2 == this.f12628a);
            this.f12630c = iF2;
            return;
        }
        if (i9 != 2) {
            throw C2966x1.c();
        }
        int iG2 = ((AbstractC2961w) this.f12631d).G();
        K(iG2);
        int iF4 = ((AbstractC2961w) this.f12631d).f() + iG2;
        do {
            d6.i(((AbstractC2961w) this.f12631d).o());
        } while (((AbstractC2961w) this.f12631d).f() < iF4);
    }

    public void j(List list) throws C2966x1 {
        int iF;
        int iF2;
        if (!(list instanceof C2921l1)) {
            int i8 = this.f12628a & 7;
            if (i8 == 0) {
                do {
                    list.add(Integer.valueOf(((AbstractC2961w) this.f12631d).p()));
                    if (((AbstractC2961w) this.f12631d).g()) {
                        return;
                    } else {
                        iF = ((AbstractC2961w) this.f12631d).F();
                    }
                } while (iF == this.f12628a);
                this.f12630c = iF;
                return;
            }
            if (i8 != 2) {
                throw C2966x1.c();
            }
            int iF3 = ((AbstractC2961w) this.f12631d).f() + ((AbstractC2961w) this.f12631d).G();
            do {
                list.add(Integer.valueOf(((AbstractC2961w) this.f12631d).p()));
            } while (((AbstractC2961w) this.f12631d).f() < iF3);
            F(iF3);
            return;
        }
        C2921l1 c2921l1 = (C2921l1) list;
        int i9 = this.f12628a & 7;
        if (i9 == 0) {
            do {
                c2921l1.i(((AbstractC2961w) this.f12631d).p());
                if (((AbstractC2961w) this.f12631d).g()) {
                    return;
                } else {
                    iF2 = ((AbstractC2961w) this.f12631d).F();
                }
            } while (iF2 == this.f12628a);
            this.f12630c = iF2;
            return;
        }
        if (i9 != 2) {
            throw C2966x1.c();
        }
        int iF4 = ((AbstractC2961w) this.f12631d).f() + ((AbstractC2961w) this.f12631d).G();
        do {
            c2921l1.i(((AbstractC2961w) this.f12631d).p());
        } while (((AbstractC2961w) this.f12631d).f() < iF4);
        F(iF4);
    }

    public Object k(com.google.protobuf.S2 s7, Class cls, com.google.protobuf.O0 o4) throws C2963w1 {
        switch (s7.ordinal()) {
            case 0:
                G(1);
                return Double.valueOf(((AbstractC2961w) this.f12631d).o());
            case 1:
                G(5);
                return Float.valueOf(((AbstractC2961w) this.f12631d).s());
            case 2:
                return Long.valueOf(s());
            case 3:
                G(0);
                return Long.valueOf(((AbstractC2961w) this.f12631d).H());
            case 4:
                return Integer.valueOf(q());
            case 5:
                return Long.valueOf(n());
            case 6:
                return Integer.valueOf(l());
            case 7:
                G(0);
                return Boolean.valueOf(((AbstractC2961w) this.f12631d).m());
            case 8:
                G(2);
                return ((AbstractC2961w) this.f12631d).E();
            case 9:
            default:
                throw new IllegalArgumentException("unsupported field type.");
            case 10:
                return u(cls, o4);
            case 11:
                return g();
            case 12:
                return Integer.valueOf(A());
            case 13:
                G(0);
                return Integer.valueOf(((AbstractC2961w) this.f12631d).p());
            case 14:
                G(5);
                return Integer.valueOf(((AbstractC2961w) this.f12631d).z());
            case 15:
                G(1);
                return Long.valueOf(((AbstractC2961w) this.f12631d).A());
            case 16:
                G(0);
                return Integer.valueOf(((AbstractC2961w) this.f12631d).B());
            case 17:
                G(0);
                return Long.valueOf(((AbstractC2961w) this.f12631d).C());
        }
    }

    public int l() throws C2963w1 {
        G(5);
        return ((AbstractC2961w) this.f12631d).q();
    }

    public void m(List list) throws C2966x1 {
        int iF;
        int iF2;
        if (!(list instanceof C2921l1)) {
            int i8 = this.f12628a & 7;
            if (i8 == 2) {
                int iG = ((AbstractC2961w) this.f12631d).G();
                J(iG);
                int iF3 = ((AbstractC2961w) this.f12631d).f() + iG;
                do {
                    list.add(Integer.valueOf(((AbstractC2961w) this.f12631d).q()));
                } while (((AbstractC2961w) this.f12631d).f() < iF3);
                return;
            }
            if (i8 != 5) {
                throw C2966x1.c();
            }
            do {
                list.add(Integer.valueOf(((AbstractC2961w) this.f12631d).q()));
                if (((AbstractC2961w) this.f12631d).g()) {
                    return;
                } else {
                    iF = ((AbstractC2961w) this.f12631d).F();
                }
            } while (iF == this.f12628a);
            this.f12630c = iF;
            return;
        }
        C2921l1 c2921l1 = (C2921l1) list;
        int i9 = this.f12628a & 7;
        if (i9 == 2) {
            int iG2 = ((AbstractC2961w) this.f12631d).G();
            J(iG2);
            int iF4 = ((AbstractC2961w) this.f12631d).f() + iG2;
            do {
                c2921l1.i(((AbstractC2961w) this.f12631d).q());
            } while (((AbstractC2961w) this.f12631d).f() < iF4);
            return;
        }
        if (i9 != 5) {
            throw C2966x1.c();
        }
        do {
            c2921l1.i(((AbstractC2961w) this.f12631d).q());
            if (((AbstractC2961w) this.f12631d).g()) {
                return;
            } else {
                iF2 = ((AbstractC2961w) this.f12631d).F();
            }
        } while (iF2 == this.f12628a);
        this.f12630c = iF2;
    }

    public long n() throws C2963w1 {
        G(1);
        return ((AbstractC2961w) this.f12631d).r();
    }

    public void o(List list) throws C2966x1 {
        int iF;
        int iF2;
        if (!(list instanceof com.google.protobuf.F1)) {
            int i8 = this.f12628a & 7;
            if (i8 == 1) {
                do {
                    list.add(Long.valueOf(((AbstractC2961w) this.f12631d).r()));
                    if (((AbstractC2961w) this.f12631d).g()) {
                        return;
                    } else {
                        iF = ((AbstractC2961w) this.f12631d).F();
                    }
                } while (iF == this.f12628a);
                this.f12630c = iF;
                return;
            }
            if (i8 != 2) {
                throw C2966x1.c();
            }
            int iG = ((AbstractC2961w) this.f12631d).G();
            K(iG);
            int iF3 = ((AbstractC2961w) this.f12631d).f() + iG;
            do {
                list.add(Long.valueOf(((AbstractC2961w) this.f12631d).r()));
            } while (((AbstractC2961w) this.f12631d).f() < iF3);
            return;
        }
        com.google.protobuf.F1 f8 = (com.google.protobuf.F1) list;
        int i9 = this.f12628a & 7;
        if (i9 == 1) {
            do {
                f8.i(((AbstractC2961w) this.f12631d).r());
                if (((AbstractC2961w) this.f12631d).g()) {
                    return;
                } else {
                    iF2 = ((AbstractC2961w) this.f12631d).F();
                }
            } while (iF2 == this.f12628a);
            this.f12630c = iF2;
            return;
        }
        if (i9 != 2) {
            throw C2966x1.c();
        }
        int iG2 = ((AbstractC2961w) this.f12631d).G();
        K(iG2);
        int iF4 = ((AbstractC2961w) this.f12631d).f() + iG2;
        do {
            f8.i(((AbstractC2961w) this.f12631d).r());
        } while (((AbstractC2961w) this.f12631d).f() < iF4);
    }

    public void p(List list) throws C2966x1 {
        int iF;
        int iF2;
        if (!(list instanceof com.google.protobuf.Y0)) {
            int i8 = this.f12628a & 7;
            if (i8 == 2) {
                int iG = ((AbstractC2961w) this.f12631d).G();
                J(iG);
                int iF3 = ((AbstractC2961w) this.f12631d).f() + iG;
                do {
                    list.add(Float.valueOf(((AbstractC2961w) this.f12631d).s()));
                } while (((AbstractC2961w) this.f12631d).f() < iF3);
                return;
            }
            if (i8 != 5) {
                throw C2966x1.c();
            }
            do {
                list.add(Float.valueOf(((AbstractC2961w) this.f12631d).s()));
                if (((AbstractC2961w) this.f12631d).g()) {
                    return;
                } else {
                    iF = ((AbstractC2961w) this.f12631d).F();
                }
            } while (iF == this.f12628a);
            this.f12630c = iF;
            return;
        }
        com.google.protobuf.Y0 y7 = (com.google.protobuf.Y0) list;
        int i9 = this.f12628a & 7;
        if (i9 == 2) {
            int iG2 = ((AbstractC2961w) this.f12631d).G();
            J(iG2);
            int iF4 = ((AbstractC2961w) this.f12631d).f() + iG2;
            do {
                y7.i(((AbstractC2961w) this.f12631d).s());
            } while (((AbstractC2961w) this.f12631d).f() < iF4);
            return;
        }
        if (i9 != 5) {
            throw C2966x1.c();
        }
        do {
            y7.i(((AbstractC2961w) this.f12631d).s());
            if (((AbstractC2961w) this.f12631d).g()) {
                return;
            } else {
                iF2 = ((AbstractC2961w) this.f12631d).F();
            }
        } while (iF2 == this.f12628a);
        this.f12630c = iF2;
    }

    public int q() throws C2963w1 {
        G(0);
        return ((AbstractC2961w) this.f12631d).u();
    }

    public void r(List list) throws C2966x1 {
        int iF;
        int iF2;
        if (!(list instanceof C2921l1)) {
            int i8 = this.f12628a & 7;
            if (i8 == 0) {
                do {
                    list.add(Integer.valueOf(((AbstractC2961w) this.f12631d).u()));
                    if (((AbstractC2961w) this.f12631d).g()) {
                        return;
                    } else {
                        iF = ((AbstractC2961w) this.f12631d).F();
                    }
                } while (iF == this.f12628a);
                this.f12630c = iF;
                return;
            }
            if (i8 != 2) {
                throw C2966x1.c();
            }
            int iF3 = ((AbstractC2961w) this.f12631d).f() + ((AbstractC2961w) this.f12631d).G();
            do {
                list.add(Integer.valueOf(((AbstractC2961w) this.f12631d).u()));
            } while (((AbstractC2961w) this.f12631d).f() < iF3);
            F(iF3);
            return;
        }
        C2921l1 c2921l1 = (C2921l1) list;
        int i9 = this.f12628a & 7;
        if (i9 == 0) {
            do {
                c2921l1.i(((AbstractC2961w) this.f12631d).u());
                if (((AbstractC2961w) this.f12631d).g()) {
                    return;
                } else {
                    iF2 = ((AbstractC2961w) this.f12631d).F();
                }
            } while (iF2 == this.f12628a);
            this.f12630c = iF2;
            return;
        }
        if (i9 != 2) {
            throw C2966x1.c();
        }
        int iF4 = ((AbstractC2961w) this.f12631d).f() + ((AbstractC2961w) this.f12631d).G();
        do {
            c2921l1.i(((AbstractC2961w) this.f12631d).u());
        } while (((AbstractC2961w) this.f12631d).f() < iF4);
        F(iF4);
    }

    public long s() throws C2963w1 {
        G(0);
        return ((AbstractC2961w) this.f12631d).v();
    }

    public void t(List list) throws C2966x1 {
        int iF;
        int iF2;
        if (!(list instanceof com.google.protobuf.F1)) {
            int i8 = this.f12628a & 7;
            if (i8 == 0) {
                do {
                    list.add(Long.valueOf(((AbstractC2961w) this.f12631d).v()));
                    if (((AbstractC2961w) this.f12631d).g()) {
                        return;
                    } else {
                        iF = ((AbstractC2961w) this.f12631d).F();
                    }
                } while (iF == this.f12628a);
                this.f12630c = iF;
                return;
            }
            if (i8 != 2) {
                throw C2966x1.c();
            }
            int iF3 = ((AbstractC2961w) this.f12631d).f() + ((AbstractC2961w) this.f12631d).G();
            do {
                list.add(Long.valueOf(((AbstractC2961w) this.f12631d).v()));
            } while (((AbstractC2961w) this.f12631d).f() < iF3);
            F(iF3);
            return;
        }
        com.google.protobuf.F1 f8 = (com.google.protobuf.F1) list;
        int i9 = this.f12628a & 7;
        if (i9 == 0) {
            do {
                f8.i(((AbstractC2961w) this.f12631d).v());
                if (((AbstractC2961w) this.f12631d).g()) {
                    return;
                } else {
                    iF2 = ((AbstractC2961w) this.f12631d).F();
                }
            } while (iF2 == this.f12628a);
            this.f12630c = iF2;
            return;
        }
        if (i9 != 2) {
            throw C2966x1.c();
        }
        int iF4 = ((AbstractC2961w) this.f12631d).f() + ((AbstractC2961w) this.f12631d).G();
        do {
            f8.i(((AbstractC2961w) this.f12631d).v());
        } while (((AbstractC2961w) this.f12631d).f() < iF4);
        F(iF4);
    }

    public Object u(Class cls, com.google.protobuf.O0 o4) throws C2966x1 {
        G(2);
        InterfaceC2914j2 interfaceC2914j2A = C2902g2.f24439c.a(cls);
        Object objI = interfaceC2914j2A.i();
        e(objI, interfaceC2914j2A, o4);
        interfaceC2914j2A.d(objI);
        return objI;
    }

    public void v(List list) throws C2966x1 {
        int iF;
        int iF2;
        if (!(list instanceof C2921l1)) {
            int i8 = this.f12628a & 7;
            if (i8 == 2) {
                int iG = ((AbstractC2961w) this.f12631d).G();
                J(iG);
                int iF3 = ((AbstractC2961w) this.f12631d).f() + iG;
                do {
                    list.add(Integer.valueOf(((AbstractC2961w) this.f12631d).z()));
                } while (((AbstractC2961w) this.f12631d).f() < iF3);
                return;
            }
            if (i8 != 5) {
                throw C2966x1.c();
            }
            do {
                list.add(Integer.valueOf(((AbstractC2961w) this.f12631d).z()));
                if (((AbstractC2961w) this.f12631d).g()) {
                    return;
                } else {
                    iF = ((AbstractC2961w) this.f12631d).F();
                }
            } while (iF == this.f12628a);
            this.f12630c = iF;
            return;
        }
        C2921l1 c2921l1 = (C2921l1) list;
        int i9 = this.f12628a & 7;
        if (i9 == 2) {
            int iG2 = ((AbstractC2961w) this.f12631d).G();
            J(iG2);
            int iF4 = ((AbstractC2961w) this.f12631d).f() + iG2;
            do {
                c2921l1.i(((AbstractC2961w) this.f12631d).z());
            } while (((AbstractC2961w) this.f12631d).f() < iF4);
            return;
        }
        if (i9 != 5) {
            throw C2966x1.c();
        }
        do {
            c2921l1.i(((AbstractC2961w) this.f12631d).z());
            if (((AbstractC2961w) this.f12631d).g()) {
                return;
            } else {
                iF2 = ((AbstractC2961w) this.f12631d).F();
            }
        } while (iF2 == this.f12628a);
        this.f12630c = iF2;
    }

    public void w(List list) throws C2966x1 {
        int iF;
        int iF2;
        if (!(list instanceof com.google.protobuf.F1)) {
            int i8 = this.f12628a & 7;
            if (i8 == 1) {
                do {
                    list.add(Long.valueOf(((AbstractC2961w) this.f12631d).A()));
                    if (((AbstractC2961w) this.f12631d).g()) {
                        return;
                    } else {
                        iF = ((AbstractC2961w) this.f12631d).F();
                    }
                } while (iF == this.f12628a);
                this.f12630c = iF;
                return;
            }
            if (i8 != 2) {
                throw C2966x1.c();
            }
            int iG = ((AbstractC2961w) this.f12631d).G();
            K(iG);
            int iF3 = ((AbstractC2961w) this.f12631d).f() + iG;
            do {
                list.add(Long.valueOf(((AbstractC2961w) this.f12631d).A()));
            } while (((AbstractC2961w) this.f12631d).f() < iF3);
            return;
        }
        com.google.protobuf.F1 f8 = (com.google.protobuf.F1) list;
        int i9 = this.f12628a & 7;
        if (i9 == 1) {
            do {
                f8.i(((AbstractC2961w) this.f12631d).A());
                if (((AbstractC2961w) this.f12631d).g()) {
                    return;
                } else {
                    iF2 = ((AbstractC2961w) this.f12631d).F();
                }
            } while (iF2 == this.f12628a);
            this.f12630c = iF2;
            return;
        }
        if (i9 != 2) {
            throw C2966x1.c();
        }
        int iG2 = ((AbstractC2961w) this.f12631d).G();
        K(iG2);
        int iF4 = ((AbstractC2961w) this.f12631d).f() + iG2;
        do {
            f8.i(((AbstractC2961w) this.f12631d).A());
        } while (((AbstractC2961w) this.f12631d).f() < iF4);
    }

    public void x(List list) throws C2966x1 {
        int iF;
        int iF2;
        if (!(list instanceof C2921l1)) {
            int i8 = this.f12628a & 7;
            if (i8 == 0) {
                do {
                    list.add(Integer.valueOf(((AbstractC2961w) this.f12631d).B()));
                    if (((AbstractC2961w) this.f12631d).g()) {
                        return;
                    } else {
                        iF = ((AbstractC2961w) this.f12631d).F();
                    }
                } while (iF == this.f12628a);
                this.f12630c = iF;
                return;
            }
            if (i8 != 2) {
                throw C2966x1.c();
            }
            int iF3 = ((AbstractC2961w) this.f12631d).f() + ((AbstractC2961w) this.f12631d).G();
            do {
                list.add(Integer.valueOf(((AbstractC2961w) this.f12631d).B()));
            } while (((AbstractC2961w) this.f12631d).f() < iF3);
            F(iF3);
            return;
        }
        C2921l1 c2921l1 = (C2921l1) list;
        int i9 = this.f12628a & 7;
        if (i9 == 0) {
            do {
                c2921l1.i(((AbstractC2961w) this.f12631d).B());
                if (((AbstractC2961w) this.f12631d).g()) {
                    return;
                } else {
                    iF2 = ((AbstractC2961w) this.f12631d).F();
                }
            } while (iF2 == this.f12628a);
            this.f12630c = iF2;
            return;
        }
        if (i9 != 2) {
            throw C2966x1.c();
        }
        int iF4 = ((AbstractC2961w) this.f12631d).f() + ((AbstractC2961w) this.f12631d).G();
        do {
            c2921l1.i(((AbstractC2961w) this.f12631d).B());
        } while (((AbstractC2961w) this.f12631d).f() < iF4);
        F(iF4);
    }

    public void y(List list) throws C2966x1 {
        int iF;
        int iF2;
        if (!(list instanceof com.google.protobuf.F1)) {
            int i8 = this.f12628a & 7;
            if (i8 == 0) {
                do {
                    list.add(Long.valueOf(((AbstractC2961w) this.f12631d).C()));
                    if (((AbstractC2961w) this.f12631d).g()) {
                        return;
                    } else {
                        iF = ((AbstractC2961w) this.f12631d).F();
                    }
                } while (iF == this.f12628a);
                this.f12630c = iF;
                return;
            }
            if (i8 != 2) {
                throw C2966x1.c();
            }
            int iF3 = ((AbstractC2961w) this.f12631d).f() + ((AbstractC2961w) this.f12631d).G();
            do {
                list.add(Long.valueOf(((AbstractC2961w) this.f12631d).C()));
            } while (((AbstractC2961w) this.f12631d).f() < iF3);
            F(iF3);
            return;
        }
        com.google.protobuf.F1 f8 = (com.google.protobuf.F1) list;
        int i9 = this.f12628a & 7;
        if (i9 == 0) {
            do {
                f8.i(((AbstractC2961w) this.f12631d).C());
                if (((AbstractC2961w) this.f12631d).g()) {
                    return;
                } else {
                    iF2 = ((AbstractC2961w) this.f12631d).F();
                }
            } while (iF2 == this.f12628a);
            this.f12630c = iF2;
            return;
        }
        if (i9 != 2) {
            throw C2966x1.c();
        }
        int iF4 = ((AbstractC2961w) this.f12631d).f() + ((AbstractC2961w) this.f12631d).G();
        do {
            f8.i(((AbstractC2961w) this.f12631d).C());
        } while (((AbstractC2961w) this.f12631d).f() < iF4);
        F(iF4);
    }

    public void z(List list, boolean z7) throws C2963w1 {
        String strD;
        int iF;
        int iF2;
        if ((this.f12628a & 7) != 2) {
            throw C2966x1.c();
        }
        if ((list instanceof com.google.protobuf.A1) && !z7) {
            com.google.protobuf.A1 a8 = (com.google.protobuf.A1) list;
            do {
                a8.g(g());
                if (((AbstractC2961w) this.f12631d).g()) {
                    return;
                } else {
                    iF2 = ((AbstractC2961w) this.f12631d).F();
                }
            } while (iF2 == this.f12628a);
            this.f12630c = iF2;
            return;
        }
        do {
            if (z7) {
                G(2);
                strD = ((AbstractC2961w) this.f12631d).E();
            } else {
                G(2);
                strD = ((AbstractC2961w) this.f12631d).D();
            }
            list.add(strD);
            if (((AbstractC2961w) this.f12631d).g()) {
                return;
            } else {
                iF = ((AbstractC2961w) this.f12631d).F();
            }
        } while (iF == this.f12628a);
        this.f12630c = iF;
    }

    public CO(int i8, int i9) {
        if (i9 == 1) {
            this.f12628a = i8;
            return;
        }
        if (!(i8 >= 1)) {
            p102n0.c.p("capacity must be >= 1");
            throw null;
        }
        if (i8 > 1073741824) {
            p102n0.c.p("capacity must be <= 2^30");
            throw null;
        }
        i8 = Integer.bitCount(i8) != 1 ? Integer.highestOneBit(i8 - 1) << 1 : i8;
        this.f12630c = i8 - 1;
        this.f12631d = new Object[i8];
    }
}
