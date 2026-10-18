package com.google.android.gms.internal.pal;

import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.List;
import okhttp3.HttpUrl;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.u, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2827u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C2819t f24016a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f24017b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f24018c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f24019d = 0;

    public C2827u(C2819t c2819t) {
        Charset charset = J.f23560a;
        this.f24016a = c2819t;
        c2819t.f24003b = this;
    }

    public final void a(List list) throws L {
        int iD;
        int i8 = this.f24017b & 7;
        C2819t c2819t = this.f24016a;
        if (i8 == 1) {
            do {
                list.add(Long.valueOf(c2819t.e()));
                if (c2819t.h()) {
                    return;
                } else {
                    iD = c2819t.d();
                }
            } while (iD == this.f24017b);
            this.f24019d = iD;
            return;
        }
        if (i8 != 2) {
            throw L.a();
        }
        int iC = c2819t.c();
        if ((iC & 7) != 0) {
            throw L.d();
        }
        int i9 = c2819t.f24007f + iC;
        do {
            list.add(Long.valueOf(c2819t.e()));
        } while (c2819t.f24007f < i9);
    }

    public final void b(List list) throws L {
        int iD;
        int i8 = this.f24017b & 7;
        C2819t c2819t = this.f24016a;
        if (i8 == 2) {
            int iC = c2819t.c();
            if ((iC & 3) != 0) {
                throw L.d();
            }
            int i9 = c2819t.f24007f + iC;
            do {
                list.add(Float.valueOf(Float.intBitsToFloat(c2819t.b())));
            } while (c2819t.f24007f < i9);
            return;
        }
        if (i8 != 5) {
            throw L.a();
        }
        do {
            list.add(Float.valueOf(Float.intBitsToFloat(c2819t.b())));
            if (c2819t.h()) {
                return;
            } else {
                iD = c2819t.d();
            }
        } while (iD == this.f24017b);
        this.f24019d = iD;
    }

    public final void c(List list, InterfaceC2749k0 interfaceC2749k0, C2851x c2851x) throws L {
        int iD;
        int i8 = this.f24017b;
        if ((i8 & 7) != 3) {
            throw L.a();
        }
        do {
            list.add(n(interfaceC2749k0, c2851x));
            C2819t c2819t = this.f24016a;
            if (c2819t.h() || this.f24019d != 0) {
                return;
            } else {
                iD = c2819t.d();
            }
        } while (iD == i8);
        this.f24019d = iD;
    }

    public final void d(List list) throws L {
        int iD;
        int iD2;
        boolean z7 = list instanceof F;
        C2819t c2819t = this.f24016a;
        if (!z7) {
            int i8 = this.f24017b & 7;
            if (i8 == 0) {
                do {
                    list.add(Integer.valueOf(c2819t.c()));
                    if (c2819t.h()) {
                        return;
                    } else {
                        iD = c2819t.d();
                    }
                } while (iD == this.f24017b);
                this.f24019d = iD;
                return;
            }
            if (i8 != 2) {
                throw L.a();
            }
            int iC = c2819t.f24007f + c2819t.c();
            do {
                list.add(Integer.valueOf(c2819t.c()));
            } while (c2819t.f24007f < iC);
            p(iC);
            return;
        }
        F f8 = (F) list;
        int i9 = this.f24017b & 7;
        if (i9 == 0) {
            do {
                f8.b(c2819t.c());
                if (c2819t.h()) {
                    return;
                } else {
                    iD2 = c2819t.d();
                }
            } while (iD2 == this.f24017b);
            this.f24019d = iD2;
            return;
        }
        if (i9 != 2) {
            throw L.a();
        }
        int iC2 = c2819t.f24007f + c2819t.c();
        do {
            f8.b(c2819t.c());
        } while (c2819t.f24007f < iC2);
        p(iC2);
    }

    public final void e(List list) throws L {
        int iD;
        int i8 = this.f24017b & 7;
        C2819t c2819t = this.f24016a;
        if (i8 == 0) {
            do {
                list.add(Long.valueOf(c2819t.f()));
                if (c2819t.h()) {
                    return;
                } else {
                    iD = c2819t.d();
                }
            } while (iD == this.f24017b);
            this.f24019d = iD;
            return;
        }
        if (i8 != 2) {
            throw L.a();
        }
        int iC = c2819t.f24007f + c2819t.c();
        do {
            list.add(Long.valueOf(c2819t.f()));
        } while (c2819t.f24007f < iC);
        p(iC);
    }

    public final void f(List list, InterfaceC2749k0 interfaceC2749k0, C2851x c2851x) throws L {
        int iD;
        int i8 = this.f24017b;
        if ((i8 & 7) != 2) {
            throw L.a();
        }
        do {
            list.add(o(interfaceC2749k0, c2851x));
            C2819t c2819t = this.f24016a;
            if (c2819t.h() || this.f24019d != 0) {
                return;
            } else {
                iD = c2819t.d();
            }
        } while (iD == i8);
        this.f24019d = iD;
    }

    public final void g(List list) throws L {
        int iD;
        int iD2;
        boolean z7 = list instanceof F;
        C2819t c2819t = this.f24016a;
        if (!z7) {
            int i8 = this.f24017b & 7;
            if (i8 == 2) {
                int iC = c2819t.c();
                if ((iC & 3) != 0) {
                    throw L.d();
                }
                int i9 = c2819t.f24007f + iC;
                do {
                    list.add(Integer.valueOf(c2819t.b()));
                } while (c2819t.f24007f < i9);
                return;
            }
            if (i8 != 5) {
                throw L.a();
            }
            do {
                list.add(Integer.valueOf(c2819t.b()));
                if (c2819t.h()) {
                    return;
                } else {
                    iD = c2819t.d();
                }
            } while (iD == this.f24017b);
            this.f24019d = iD;
            return;
        }
        F f8 = (F) list;
        int i10 = this.f24017b & 7;
        if (i10 == 2) {
            int iC2 = c2819t.c();
            if ((iC2 & 3) != 0) {
                throw L.d();
            }
            int i11 = c2819t.f24007f + iC2;
            do {
                f8.b(c2819t.b());
            } while (c2819t.f24007f < i11);
            return;
        }
        if (i10 != 5) {
            throw L.a();
        }
        do {
            f8.b(c2819t.b());
            if (c2819t.h()) {
                return;
            } else {
                iD2 = c2819t.d();
            }
        } while (iD2 == this.f24017b);
        this.f24019d = iD2;
    }

    public final void h(List list) throws L {
        int iD;
        int i8 = this.f24017b & 7;
        C2819t c2819t = this.f24016a;
        if (i8 == 1) {
            do {
                list.add(Long.valueOf(c2819t.e()));
                if (c2819t.h()) {
                    return;
                } else {
                    iD = c2819t.d();
                }
            } while (iD == this.f24017b);
            this.f24019d = iD;
            return;
        }
        if (i8 != 2) {
            throw L.a();
        }
        int iC = c2819t.c();
        if ((iC & 7) != 0) {
            throw L.d();
        }
        int i9 = c2819t.f24007f + iC;
        do {
            list.add(Long.valueOf(c2819t.e()));
        } while (c2819t.f24007f < i9);
    }

    public final void i(List list) throws L {
        int iD;
        int iD2;
        boolean z7 = list instanceof F;
        C2819t c2819t = this.f24016a;
        if (!z7) {
            int i8 = this.f24017b & 7;
            if (i8 == 0) {
                do {
                    list.add(Integer.valueOf(C2819t.i(c2819t.c())));
                    if (c2819t.h()) {
                        return;
                    } else {
                        iD = c2819t.d();
                    }
                } while (iD == this.f24017b);
                this.f24019d = iD;
                return;
            }
            if (i8 != 2) {
                throw L.a();
            }
            int iC = c2819t.f24007f + c2819t.c();
            do {
                list.add(Integer.valueOf(C2819t.i(c2819t.c())));
            } while (c2819t.f24007f < iC);
            p(iC);
            return;
        }
        F f8 = (F) list;
        int i9 = this.f24017b & 7;
        if (i9 == 0) {
            do {
                f8.b(C2819t.i(c2819t.c()));
                if (c2819t.h()) {
                    return;
                } else {
                    iD2 = c2819t.d();
                }
            } while (iD2 == this.f24017b);
            this.f24019d = iD2;
            return;
        }
        if (i9 != 2) {
            throw L.a();
        }
        int iC2 = c2819t.f24007f + c2819t.c();
        do {
            f8.b(C2819t.i(c2819t.c()));
        } while (c2819t.f24007f < iC2);
        p(iC2);
    }

    public final void j(List list) throws L {
        int iD;
        int i8 = this.f24017b & 7;
        C2819t c2819t = this.f24016a;
        if (i8 == 0) {
            do {
                list.add(Long.valueOf(C2819t.j(c2819t.f())));
                if (c2819t.h()) {
                    return;
                } else {
                    iD = c2819t.d();
                }
            } while (iD == this.f24017b);
            this.f24019d = iD;
            return;
        }
        if (i8 != 2) {
            throw L.a();
        }
        int iC = c2819t.f24007f + c2819t.c();
        do {
            list.add(Long.valueOf(C2819t.j(c2819t.f())));
        } while (c2819t.f24007f < iC);
        p(iC);
    }

    public final void k(List list, boolean z7) throws L {
        int iD;
        int iD2;
        if ((this.f24017b & 7) != 2) {
            throw L.a();
        }
        boolean z8 = list instanceof O;
        C2819t c2819t = this.f24016a;
        if (!z8 || z7) {
            do {
                list.add(z7 ? u() : t());
                if (c2819t.h()) {
                    return;
                } else {
                    iD = c2819t.d();
                }
            } while (iD == this.f24017b);
            this.f24019d = iD;
            return;
        }
        O o4 = (O) list;
        do {
            o4.h(s());
            if (c2819t.h()) {
                return;
            } else {
                iD2 = c2819t.d();
            }
        } while (iD2 == this.f24017b);
        this.f24019d = iD2;
    }

    public final void l(List list) throws L {
        int iD;
        int iD2;
        boolean z7 = list instanceof F;
        C2819t c2819t = this.f24016a;
        if (!z7) {
            int i8 = this.f24017b & 7;
            if (i8 == 0) {
                do {
                    list.add(Integer.valueOf(c2819t.c()));
                    if (c2819t.h()) {
                        return;
                    } else {
                        iD = c2819t.d();
                    }
                } while (iD == this.f24017b);
                this.f24019d = iD;
                return;
            }
            if (i8 != 2) {
                throw L.a();
            }
            int iC = c2819t.f24007f + c2819t.c();
            do {
                list.add(Integer.valueOf(c2819t.c()));
            } while (c2819t.f24007f < iC);
            p(iC);
            return;
        }
        F f8 = (F) list;
        int i9 = this.f24017b & 7;
        if (i9 == 0) {
            do {
                f8.b(c2819t.c());
                if (c2819t.h()) {
                    return;
                } else {
                    iD2 = c2819t.d();
                }
            } while (iD2 == this.f24017b);
            this.f24019d = iD2;
            return;
        }
        if (i9 != 2) {
            throw L.a();
        }
        int iC2 = c2819t.f24007f + c2819t.c();
        do {
            f8.b(c2819t.c());
        } while (c2819t.f24007f < iC2);
        p(iC2);
    }

    public final void m(List list) throws L {
        int iD;
        int i8 = this.f24017b & 7;
        C2819t c2819t = this.f24016a;
        if (i8 == 0) {
            do {
                list.add(Long.valueOf(c2819t.f()));
                if (c2819t.h()) {
                    return;
                } else {
                    iD = c2819t.d();
                }
            } while (iD == this.f24017b);
            this.f24019d = iD;
            return;
        }
        if (i8 != 2) {
            throw L.a();
        }
        int iC = c2819t.f24007f + c2819t.c();
        do {
            list.add(Long.valueOf(c2819t.f()));
        } while (c2819t.f24007f < iC);
        p(iC);
    }

    public final Object n(InterfaceC2749k0 interfaceC2749k0, C2851x c2851x) {
        int i8 = this.f24018c;
        this.f24018c = ((this.f24017b >>> 3) << 3) | 4;
        try {
            Object objZze = interfaceC2749k0.zze();
            interfaceC2749k0.c(objZze, this, c2851x);
            interfaceC2749k0.zzf(objZze);
            if (this.f24017b != this.f24018c) {
                throw L.d();
            }
            this.f24018c = i8;
            return objZze;
        } catch (Throwable th) {
            this.f24018c = i8;
            throw th;
        }
    }

    public final Object o(InterfaceC2749k0 interfaceC2749k0, C2851x c2851x) throws L {
        C2819t c2819t = this.f24016a;
        int iC = c2819t.c();
        if (c2819t.f24002a >= 100) {
            throw new L("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
        }
        int iA = c2819t.a(iC);
        Object objZze = interfaceC2749k0.zze();
        c2819t.f24002a++;
        interfaceC2749k0.c(objZze, this, c2851x);
        interfaceC2749k0.zzf(objZze);
        if (c2819t.f24008g != 0) {
            throw new L("Protocol message end-group tag did not match expected tag.");
        }
        c2819t.f24002a--;
        c2819t.f24009h = iA;
        int i8 = c2819t.f24005d + c2819t.f24006e;
        c2819t.f24005d = i8;
        if (i8 > iA) {
            int i9 = i8 - iA;
            c2819t.f24006e = i9;
            c2819t.f24005d = i8 - i9;
        } else {
            c2819t.f24006e = 0;
        }
        return objZze;
    }

    public final void p(int i8) throws L {
        if (this.f24016a.f24007f != i8) {
            throw L.e();
        }
    }

    public final void q(int i8) throws K {
        if ((this.f24017b & 7) != i8) {
            throw L.a();
        }
    }

    public final int r() throws L {
        int iD = this.f24019d;
        if (iD != 0) {
            this.f24017b = iD;
            this.f24019d = 0;
        } else {
            iD = this.f24016a.d();
            this.f24017b = iD;
        }
        return (iD == 0 || iD == this.f24018c) ? com.google.android.gms.common.api.d.API_PRIORITY_OTHER : iD >>> 3;
    }

    public final C2796q s() throws L {
        q(2);
        C2819t c2819t = this.f24016a;
        int iC = c2819t.c();
        byte[] bArr = c2819t.f24004c;
        if (iC > 0) {
            int i8 = c2819t.f24005d;
            int i9 = c2819t.f24007f;
            if (iC <= i8 - i9) {
                C2796q c2796qO = r.o(i9, bArr, iC);
                c2819t.f24007f += iC;
                return c2796qO;
            }
        }
        if (iC == 0) {
            return r.f23990H;
        }
        if (iC > 0) {
            int i10 = c2819t.f24005d;
            int i11 = c2819t.f24007f;
            if (iC <= i10 - i11) {
                int i12 = iC + i11;
                c2819t.f24007f = i12;
                byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, i11, i12);
                C2796q c2796q = r.f23990H;
                return new C2796q(bArrCopyOfRange);
            }
        }
        if (iC <= 0) {
            throw L.c();
        }
        throw L.e();
    }

    public final String t() throws L {
        q(2);
        C2819t c2819t = this.f24016a;
        int iC = c2819t.c();
        if (iC > 0) {
            int i8 = c2819t.f24005d;
            int i9 = c2819t.f24007f;
            if (iC <= i8 - i9) {
                String str = new String(c2819t.f24004c, i9, iC, J.f23560a);
                c2819t.f24007f += iC;
                return str;
            }
        }
        if (iC == 0) {
            return HttpUrl.FRAGMENT_ENCODE_SET;
        }
        if (iC < 0) {
            throw L.c();
        }
        throw L.e();
    }

    public final String u() throws L {
        q(2);
        C2819t c2819t = this.f24016a;
        int iC = c2819t.c();
        if (iC > 0) {
            int i8 = c2819t.f24005d;
            int i9 = c2819t.f24007f;
            if (iC <= i8 - i9) {
                String strD = AbstractC2852x0.d(c2819t.f24004c, i9, iC);
                c2819t.f24007f += iC;
                return strD;
            }
        }
        if (iC == 0) {
            return HttpUrl.FRAGMENT_ENCODE_SET;
        }
        if (iC <= 0) {
            throw L.c();
        }
        throw L.e();
    }

    public final void v(List list) throws L {
        int iD;
        int i8 = this.f24017b & 7;
        C2819t c2819t = this.f24016a;
        if (i8 != 0) {
            if (i8 != 2) {
                throw L.a();
            }
            int iC = c2819t.f24007f + c2819t.c();
            do {
                list.add(Boolean.valueOf(c2819t.f() != 0));
            } while (c2819t.f24007f < iC);
            p(iC);
            return;
        }
        do {
            list.add(Boolean.valueOf(c2819t.f() != 0));
            if (c2819t.h()) {
                return;
            } else {
                iD = c2819t.d();
            }
        } while (iD == this.f24017b);
        this.f24019d = iD;
    }

    public final void w(List list) throws L {
        int iD;
        if ((this.f24017b & 7) != 2) {
            throw L.a();
        }
        do {
            list.add(s());
            C2819t c2819t = this.f24016a;
            if (c2819t.h()) {
                return;
            } else {
                iD = c2819t.d();
            }
        } while (iD == this.f24017b);
        this.f24019d = iD;
    }

    public final void x(List list) throws L {
        int iD;
        int i8 = this.f24017b & 7;
        C2819t c2819t = this.f24016a;
        if (i8 == 1) {
            do {
                list.add(Double.valueOf(Double.longBitsToDouble(c2819t.e())));
                if (c2819t.h()) {
                    return;
                } else {
                    iD = c2819t.d();
                }
            } while (iD == this.f24017b);
            this.f24019d = iD;
            return;
        }
        if (i8 != 2) {
            throw L.a();
        }
        int iC = c2819t.c();
        if ((iC & 7) != 0) {
            throw L.d();
        }
        int i9 = c2819t.f24007f + iC;
        do {
            list.add(Double.valueOf(Double.longBitsToDouble(c2819t.e())));
        } while (c2819t.f24007f < i9);
    }

    public final void y(List list) throws L {
        int iD;
        int iD2;
        boolean z7 = list instanceof F;
        C2819t c2819t = this.f24016a;
        if (!z7) {
            int i8 = this.f24017b & 7;
            if (i8 == 0) {
                do {
                    list.add(Integer.valueOf(c2819t.c()));
                    if (c2819t.h()) {
                        return;
                    } else {
                        iD = c2819t.d();
                    }
                } while (iD == this.f24017b);
                this.f24019d = iD;
                return;
            }
            if (i8 != 2) {
                throw L.a();
            }
            int iC = c2819t.f24007f + c2819t.c();
            do {
                list.add(Integer.valueOf(c2819t.c()));
            } while (c2819t.f24007f < iC);
            p(iC);
            return;
        }
        F f8 = (F) list;
        int i9 = this.f24017b & 7;
        if (i9 == 0) {
            do {
                f8.b(c2819t.c());
                if (c2819t.h()) {
                    return;
                } else {
                    iD2 = c2819t.d();
                }
            } while (iD2 == this.f24017b);
            this.f24019d = iD2;
            return;
        }
        if (i9 != 2) {
            throw L.a();
        }
        int iC2 = c2819t.f24007f + c2819t.c();
        do {
            f8.b(c2819t.c());
        } while (c2819t.f24007f < iC2);
        p(iC2);
    }

    public final void z(List list) throws L {
        int iD;
        int iD2;
        boolean z7 = list instanceof F;
        C2819t c2819t = this.f24016a;
        if (!z7) {
            int i8 = this.f24017b & 7;
            if (i8 == 2) {
                int iC = c2819t.c();
                if ((iC & 3) != 0) {
                    throw L.d();
                }
                int i9 = c2819t.f24007f + iC;
                do {
                    list.add(Integer.valueOf(c2819t.b()));
                } while (c2819t.f24007f < i9);
                return;
            }
            if (i8 != 5) {
                throw L.a();
            }
            do {
                list.add(Integer.valueOf(c2819t.b()));
                if (c2819t.h()) {
                    return;
                } else {
                    iD = c2819t.d();
                }
            } while (iD == this.f24017b);
            this.f24019d = iD;
            return;
        }
        F f8 = (F) list;
        int i10 = this.f24017b & 7;
        if (i10 == 2) {
            int iC2 = c2819t.c();
            if ((iC2 & 3) != 0) {
                throw L.d();
            }
            int i11 = c2819t.f24007f + iC2;
            do {
                f8.b(c2819t.b());
            } while (c2819t.f24007f < i11);
            return;
        }
        if (i10 != 5) {
            throw L.a();
        }
        do {
            f8.b(c2819t.b());
            if (c2819t.h()) {
                return;
            } else {
                iD2 = c2819t.d();
            }
        } while (iD2 == this.f24017b);
        this.f24019d = iD2;
    }
}
