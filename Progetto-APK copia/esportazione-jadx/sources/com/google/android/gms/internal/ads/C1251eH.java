package com.google.android.gms.internal.ads;

import java.nio.charset.Charset;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.eH, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1251eH {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AbstractC1200dH f18497a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f18498b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f18499c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f18500d = 0;

    public C1251eH(AbstractC1200dH abstractC1200dH) {
        Charset charset = AbstractC2288yH.f22010a;
        if (abstractC1200dH == null) {
            throw new NullPointerException("input");
        }
        this.f18497a = abstractC1200dH;
        abstractC1200dH.f18313b = this;
    }

    public static final void r(int i8) throws AH {
        if ((i8 & 3) != 0) {
            throw new AH("Failed to parse the message.");
        }
    }

    public static final void s(int i8) throws AH {
        if ((i8 & 7) != 0) {
            throw new AH("Failed to parse the message.");
        }
    }

    public final void a(InterfaceC2236xH interfaceC2236xH) throws AH {
        int iO;
        int iO2;
        boolean z7 = interfaceC2236xH instanceof FH;
        AbstractC1200dH abstractC1200dH = this.f18497a;
        if (z7) {
            FH fh = (FH) interfaceC2236xH;
            int i8 = this.f18498b & 7;
            if (i8 != 1) {
                if (i8 != 2) {
                    throw new C2340zH();
                }
                int iP = abstractC1200dH.p();
                s(iP);
                int iH = abstractC1200dH.h() + iP;
                do {
                    fh.i(abstractC1200dH.q());
                } while (abstractC1200dH.h() < iH);
                return;
            }
            do {
                fh.i(abstractC1200dH.q());
                if (abstractC1200dH.a()) {
                    return;
                } else {
                    iO2 = abstractC1200dH.o();
                }
            } while (iO2 == this.f18498b);
        } else {
            int i9 = this.f18498b & 7;
            if (i9 != 1) {
                if (i9 != 2) {
                    throw new C2340zH();
                }
                int iP2 = abstractC1200dH.p();
                s(iP2);
                int iH2 = abstractC1200dH.h() + iP2;
                do {
                    interfaceC2236xH.add(Long.valueOf(abstractC1200dH.q()));
                } while (abstractC1200dH.h() < iH2);
                return;
            }
            do {
                interfaceC2236xH.add(Long.valueOf(abstractC1200dH.q()));
                if (abstractC1200dH.a()) {
                    return;
                } else {
                    iO = abstractC1200dH.o();
                }
            } while (iO == this.f18498b);
            iO2 = iO;
        }
        this.f18500d = iO2;
    }

    public final void b(InterfaceC2236xH interfaceC2236xH) throws AH {
        int iO;
        int i8 = this.f18498b & 7;
        AbstractC1200dH abstractC1200dH = this.f18497a;
        if (i8 == 2) {
            int iP = abstractC1200dH.p();
            r(iP);
            int iH = abstractC1200dH.h() + iP;
            do {
                interfaceC2236xH.add(Float.valueOf(abstractC1200dH.g()));
            } while (abstractC1200dH.h() < iH);
            return;
        }
        if (i8 != 5) {
            throw new C2340zH();
        }
        do {
            interfaceC2236xH.add(Float.valueOf(abstractC1200dH.g()));
            if (abstractC1200dH.a()) {
                return;
            } else {
                iO = abstractC1200dH.o();
            }
        } while (iO == this.f18498b);
        this.f18500d = iO;
    }

    public final void c(InterfaceC2236xH interfaceC2236xH, InterfaceC1098bI interfaceC1098bI, C1509jH c1509jH) throws C2340zH {
        int iO;
        int i8 = this.f18498b;
        if ((i8 & 7) != 3) {
            throw new C2340zH();
        }
        do {
            AbstractC1873qH abstractC1873qHZze = interfaceC1098bI.zze();
            n(abstractC1873qHZze, interfaceC1098bI, c1509jH);
            interfaceC1098bI.zzf(abstractC1873qHZze);
            interfaceC2236xH.add(abstractC1873qHZze);
            AbstractC1200dH abstractC1200dH = this.f18497a;
            if (abstractC1200dH.a() || this.f18500d != 0) {
                return;
            } else {
                iO = abstractC1200dH.o();
            }
        } while (iO == i8);
        this.f18500d = iO;
    }

    public final void d(InterfaceC2236xH interfaceC2236xH) throws AH {
        int iO;
        int iO2;
        boolean z7 = interfaceC2236xH instanceof C1924rH;
        AbstractC1200dH abstractC1200dH = this.f18497a;
        if (z7) {
            C1924rH c1924rH = (C1924rH) interfaceC2236xH;
            int i8 = this.f18498b & 7;
            if (i8 != 0) {
                if (i8 != 2) {
                    throw new C2340zH();
                }
                int iH = abstractC1200dH.h() + abstractC1200dH.p();
                do {
                    c1924rH.i(abstractC1200dH.l());
                } while (abstractC1200dH.h() < iH);
                p(iH);
                return;
            }
            do {
                c1924rH.i(abstractC1200dH.l());
                if (abstractC1200dH.a()) {
                    return;
                } else {
                    iO2 = abstractC1200dH.o();
                }
            } while (iO2 == this.f18498b);
        } else {
            int i9 = this.f18498b & 7;
            if (i9 != 0) {
                if (i9 != 2) {
                    throw new C2340zH();
                }
                int iH2 = abstractC1200dH.h() + abstractC1200dH.p();
                do {
                    interfaceC2236xH.add(Integer.valueOf(abstractC1200dH.l()));
                } while (abstractC1200dH.h() < iH2);
                p(iH2);
                return;
            }
            do {
                interfaceC2236xH.add(Integer.valueOf(abstractC1200dH.l()));
                if (abstractC1200dH.a()) {
                    return;
                } else {
                    iO = abstractC1200dH.o();
                }
            } while (iO == this.f18498b);
            iO2 = iO;
        }
        this.f18500d = iO2;
    }

    public final void e(InterfaceC2236xH interfaceC2236xH) throws AH {
        int iO;
        int iO2;
        boolean z7 = interfaceC2236xH instanceof FH;
        AbstractC1200dH abstractC1200dH = this.f18497a;
        if (z7) {
            FH fh = (FH) interfaceC2236xH;
            int i8 = this.f18498b & 7;
            if (i8 != 0) {
                if (i8 != 2) {
                    throw new C2340zH();
                }
                int iH = abstractC1200dH.h() + abstractC1200dH.p();
                do {
                    fh.i(abstractC1200dH.r());
                } while (abstractC1200dH.h() < iH);
                p(iH);
                return;
            }
            do {
                fh.i(abstractC1200dH.r());
                if (abstractC1200dH.a()) {
                    return;
                } else {
                    iO2 = abstractC1200dH.o();
                }
            } while (iO2 == this.f18498b);
        } else {
            int i9 = this.f18498b & 7;
            if (i9 != 0) {
                if (i9 != 2) {
                    throw new C2340zH();
                }
                int iH2 = abstractC1200dH.h() + abstractC1200dH.p();
                do {
                    interfaceC2236xH.add(Long.valueOf(abstractC1200dH.r()));
                } while (abstractC1200dH.h() < iH2);
                p(iH2);
                return;
            }
            do {
                interfaceC2236xH.add(Long.valueOf(abstractC1200dH.r()));
                if (abstractC1200dH.a()) {
                    return;
                } else {
                    iO = abstractC1200dH.o();
                }
            } while (iO == this.f18498b);
            iO2 = iO;
        }
        this.f18500d = iO2;
    }

    public final void f(InterfaceC2236xH interfaceC2236xH, InterfaceC1098bI interfaceC1098bI, C1509jH c1509jH) throws AH {
        int iO;
        int i8 = this.f18498b;
        if ((i8 & 7) != 2) {
            throw new C2340zH();
        }
        do {
            AbstractC1873qH abstractC1873qHZze = interfaceC1098bI.zze();
            o(abstractC1873qHZze, interfaceC1098bI, c1509jH);
            interfaceC1098bI.zzf(abstractC1873qHZze);
            interfaceC2236xH.add(abstractC1873qHZze);
            AbstractC1200dH abstractC1200dH = this.f18497a;
            if (abstractC1200dH.a() || this.f18500d != 0) {
                return;
            } else {
                iO = abstractC1200dH.o();
            }
        } while (iO == i8);
        this.f18500d = iO;
    }

    public final void g(InterfaceC2236xH interfaceC2236xH) throws AH {
        int iO;
        int iO2;
        boolean z7 = interfaceC2236xH instanceof C1924rH;
        AbstractC1200dH abstractC1200dH = this.f18497a;
        if (z7) {
            C1924rH c1924rH = (C1924rH) interfaceC2236xH;
            int i8 = this.f18498b & 7;
            if (i8 == 2) {
                int iP = abstractC1200dH.p();
                r(iP);
                int iH = abstractC1200dH.h() + iP;
                do {
                    c1924rH.i(abstractC1200dH.m());
                } while (abstractC1200dH.h() < iH);
                return;
            }
            if (i8 != 5) {
                throw new C2340zH();
            }
            do {
                c1924rH.i(abstractC1200dH.m());
                if (abstractC1200dH.a()) {
                    return;
                } else {
                    iO2 = abstractC1200dH.o();
                }
            } while (iO2 == this.f18498b);
        } else {
            int i9 = this.f18498b & 7;
            if (i9 == 2) {
                int iP2 = abstractC1200dH.p();
                r(iP2);
                int iH2 = abstractC1200dH.h() + iP2;
                do {
                    interfaceC2236xH.add(Integer.valueOf(abstractC1200dH.m()));
                } while (abstractC1200dH.h() < iH2);
                return;
            }
            if (i9 != 5) {
                throw new C2340zH();
            }
            do {
                interfaceC2236xH.add(Integer.valueOf(abstractC1200dH.m()));
                if (abstractC1200dH.a()) {
                    return;
                } else {
                    iO = abstractC1200dH.o();
                }
            } while (iO == this.f18498b);
            iO2 = iO;
        }
        this.f18500d = iO2;
    }

    public final void h(InterfaceC2236xH interfaceC2236xH) throws AH {
        int iO;
        int iO2;
        boolean z7 = interfaceC2236xH instanceof FH;
        AbstractC1200dH abstractC1200dH = this.f18497a;
        if (z7) {
            FH fh = (FH) interfaceC2236xH;
            int i8 = this.f18498b & 7;
            if (i8 != 1) {
                if (i8 != 2) {
                    throw new C2340zH();
                }
                int iP = abstractC1200dH.p();
                s(iP);
                int iH = abstractC1200dH.h() + iP;
                do {
                    fh.i(abstractC1200dH.s());
                } while (abstractC1200dH.h() < iH);
                return;
            }
            do {
                fh.i(abstractC1200dH.s());
                if (abstractC1200dH.a()) {
                    return;
                } else {
                    iO2 = abstractC1200dH.o();
                }
            } while (iO2 == this.f18498b);
        } else {
            int i9 = this.f18498b & 7;
            if (i9 != 1) {
                if (i9 != 2) {
                    throw new C2340zH();
                }
                int iP2 = abstractC1200dH.p();
                s(iP2);
                int iH2 = abstractC1200dH.h() + iP2;
                do {
                    interfaceC2236xH.add(Long.valueOf(abstractC1200dH.s()));
                } while (abstractC1200dH.h() < iH2);
                return;
            }
            do {
                interfaceC2236xH.add(Long.valueOf(abstractC1200dH.s()));
                if (abstractC1200dH.a()) {
                    return;
                } else {
                    iO = abstractC1200dH.o();
                }
            } while (iO == this.f18498b);
            iO2 = iO;
        }
        this.f18500d = iO2;
    }

    public final void i(InterfaceC2236xH interfaceC2236xH) throws AH {
        int iO;
        int iO2;
        boolean z7 = interfaceC2236xH instanceof C1924rH;
        AbstractC1200dH abstractC1200dH = this.f18497a;
        if (z7) {
            C1924rH c1924rH = (C1924rH) interfaceC2236xH;
            int i8 = this.f18498b & 7;
            if (i8 != 0) {
                if (i8 != 2) {
                    throw new C2340zH();
                }
                int iH = abstractC1200dH.h() + abstractC1200dH.p();
                do {
                    c1924rH.i(abstractC1200dH.n());
                } while (abstractC1200dH.h() < iH);
                p(iH);
                return;
            }
            do {
                c1924rH.i(abstractC1200dH.n());
                if (abstractC1200dH.a()) {
                    return;
                } else {
                    iO2 = abstractC1200dH.o();
                }
            } while (iO2 == this.f18498b);
        } else {
            int i9 = this.f18498b & 7;
            if (i9 != 0) {
                if (i9 != 2) {
                    throw new C2340zH();
                }
                int iH2 = abstractC1200dH.h() + abstractC1200dH.p();
                do {
                    interfaceC2236xH.add(Integer.valueOf(abstractC1200dH.n()));
                } while (abstractC1200dH.h() < iH2);
                p(iH2);
                return;
            }
            do {
                interfaceC2236xH.add(Integer.valueOf(abstractC1200dH.n()));
                if (abstractC1200dH.a()) {
                    return;
                } else {
                    iO = abstractC1200dH.o();
                }
            } while (iO == this.f18498b);
            iO2 = iO;
        }
        this.f18500d = iO2;
    }

    public final void j(InterfaceC2236xH interfaceC2236xH) throws AH {
        int iO;
        int iO2;
        boolean z7 = interfaceC2236xH instanceof FH;
        AbstractC1200dH abstractC1200dH = this.f18497a;
        if (z7) {
            FH fh = (FH) interfaceC2236xH;
            int i8 = this.f18498b & 7;
            if (i8 != 0) {
                if (i8 != 2) {
                    throw new C2340zH();
                }
                int iH = abstractC1200dH.h() + abstractC1200dH.p();
                do {
                    fh.i(abstractC1200dH.t());
                } while (abstractC1200dH.h() < iH);
                p(iH);
                return;
            }
            do {
                fh.i(abstractC1200dH.t());
                if (abstractC1200dH.a()) {
                    return;
                } else {
                    iO2 = abstractC1200dH.o();
                }
            } while (iO2 == this.f18498b);
        } else {
            int i9 = this.f18498b & 7;
            if (i9 != 0) {
                if (i9 != 2) {
                    throw new C2340zH();
                }
                int iH2 = abstractC1200dH.h() + abstractC1200dH.p();
                do {
                    interfaceC2236xH.add(Long.valueOf(abstractC1200dH.t()));
                } while (abstractC1200dH.h() < iH2);
                p(iH2);
                return;
            }
            do {
                interfaceC2236xH.add(Long.valueOf(abstractC1200dH.t()));
                if (abstractC1200dH.a()) {
                    return;
                } else {
                    iO = abstractC1200dH.o();
                }
            } while (iO == this.f18498b);
            iO2 = iO;
        }
        this.f18500d = iO2;
    }

    public final void k(InterfaceC2236xH interfaceC2236xH, boolean z7) throws C2340zH {
        String strW;
        int iO;
        if ((this.f18498b & 7) != 2) {
            throw new C2340zH();
        }
        do {
            AbstractC1200dH abstractC1200dH = this.f18497a;
            if (z7) {
                q(2);
                strW = abstractC1200dH.x();
            } else {
                q(2);
                strW = abstractC1200dH.w();
            }
            interfaceC2236xH.add(strW);
            if (abstractC1200dH.a()) {
                return;
            } else {
                iO = abstractC1200dH.o();
            }
        } while (iO == this.f18498b);
        this.f18500d = iO;
    }

    public final void l(InterfaceC2236xH interfaceC2236xH) throws AH {
        int iO;
        int iO2;
        boolean z7 = interfaceC2236xH instanceof C1924rH;
        AbstractC1200dH abstractC1200dH = this.f18497a;
        if (z7) {
            C1924rH c1924rH = (C1924rH) interfaceC2236xH;
            int i8 = this.f18498b & 7;
            if (i8 != 0) {
                if (i8 != 2) {
                    throw new C2340zH();
                }
                int iH = abstractC1200dH.h() + abstractC1200dH.p();
                do {
                    c1924rH.i(abstractC1200dH.p());
                } while (abstractC1200dH.h() < iH);
                p(iH);
                return;
            }
            do {
                c1924rH.i(abstractC1200dH.p());
                if (abstractC1200dH.a()) {
                    return;
                } else {
                    iO2 = abstractC1200dH.o();
                }
            } while (iO2 == this.f18498b);
        } else {
            int i9 = this.f18498b & 7;
            if (i9 != 0) {
                if (i9 != 2) {
                    throw new C2340zH();
                }
                int iH2 = abstractC1200dH.h() + abstractC1200dH.p();
                do {
                    interfaceC2236xH.add(Integer.valueOf(abstractC1200dH.p()));
                } while (abstractC1200dH.h() < iH2);
                p(iH2);
                return;
            }
            do {
                interfaceC2236xH.add(Integer.valueOf(abstractC1200dH.p()));
                if (abstractC1200dH.a()) {
                    return;
                } else {
                    iO = abstractC1200dH.o();
                }
            } while (iO == this.f18498b);
            iO2 = iO;
        }
        this.f18500d = iO2;
    }

    public final void m(InterfaceC2236xH interfaceC2236xH) throws AH {
        int iO;
        int iO2;
        boolean z7 = interfaceC2236xH instanceof FH;
        AbstractC1200dH abstractC1200dH = this.f18497a;
        if (z7) {
            FH fh = (FH) interfaceC2236xH;
            int i8 = this.f18498b & 7;
            if (i8 != 0) {
                if (i8 != 2) {
                    throw new C2340zH();
                }
                int iH = abstractC1200dH.h() + abstractC1200dH.p();
                do {
                    fh.i(abstractC1200dH.u());
                } while (abstractC1200dH.h() < iH);
                p(iH);
                return;
            }
            do {
                fh.i(abstractC1200dH.u());
                if (abstractC1200dH.a()) {
                    return;
                } else {
                    iO2 = abstractC1200dH.o();
                }
            } while (iO2 == this.f18498b);
        } else {
            int i9 = this.f18498b & 7;
            if (i9 != 0) {
                if (i9 != 2) {
                    throw new C2340zH();
                }
                int iH2 = abstractC1200dH.h() + abstractC1200dH.p();
                do {
                    interfaceC2236xH.add(Long.valueOf(abstractC1200dH.u()));
                } while (abstractC1200dH.h() < iH2);
                p(iH2);
                return;
            }
            do {
                interfaceC2236xH.add(Long.valueOf(abstractC1200dH.u()));
                if (abstractC1200dH.a()) {
                    return;
                } else {
                    iO = abstractC1200dH.o();
                }
            } while (iO == this.f18498b);
            iO2 = iO;
        }
        this.f18500d = iO2;
    }

    public final void n(Object obj, InterfaceC1098bI interfaceC1098bI, C1509jH c1509jH) {
        int i8 = this.f18499c;
        this.f18499c = ((this.f18498b >>> 3) << 3) | 4;
        try {
            interfaceC1098bI.a(obj, this, c1509jH);
            if (this.f18498b != this.f18499c) {
                throw new AH("Failed to parse the message.");
            }
            this.f18499c = i8;
        } catch (Throwable th) {
            this.f18499c = i8;
            throw th;
        }
    }

    public final void o(Object obj, InterfaceC1098bI interfaceC1098bI, C1509jH c1509jH) throws AH {
        AbstractC1200dH abstractC1200dH = this.f18497a;
        int iP = abstractC1200dH.p();
        if (abstractC1200dH.f18312a >= 100) {
            throw new AH("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
        }
        int i8 = abstractC1200dH.i(iP);
        abstractC1200dH.f18312a++;
        interfaceC1098bI.a(obj, this, c1509jH);
        abstractC1200dH.y();
        abstractC1200dH.f18312a--;
        abstractC1200dH.z(i8);
    }

    public final void p(int i8) throws AH {
        if (this.f18497a.h() != i8) {
            throw new AH("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
    }

    public final void q(int i8) {
        if ((this.f18498b & 7) != i8) {
            throw new C2340zH();
        }
    }

    public final int t() {
        int iO = this.f18500d;
        if (iO != 0) {
            this.f18498b = iO;
            this.f18500d = 0;
        } else {
            iO = this.f18497a.o();
            this.f18498b = iO;
        }
        return (iO == 0 || iO == this.f18499c) ? com.google.android.gms.common.api.d.API_PRIORITY_OTHER : iO >>> 3;
    }

    public final void u(InterfaceC2236xH interfaceC2236xH) throws AH {
        int iO;
        int i8 = this.f18498b & 7;
        AbstractC1200dH abstractC1200dH = this.f18497a;
        if (i8 == 0) {
            do {
                interfaceC2236xH.add(Boolean.valueOf(abstractC1200dH.b()));
                if (abstractC1200dH.a()) {
                    return;
                } else {
                    iO = abstractC1200dH.o();
                }
            } while (iO == this.f18498b);
            this.f18500d = iO;
            return;
        }
        if (i8 != 2) {
            throw new C2340zH();
        }
        int iH = abstractC1200dH.h() + abstractC1200dH.p();
        do {
            interfaceC2236xH.add(Boolean.valueOf(abstractC1200dH.b()));
        } while (abstractC1200dH.h() < iH);
        p(iH);
    }

    public final void v(InterfaceC2236xH interfaceC2236xH) throws C2340zH {
        int iO;
        if ((this.f18498b & 7) != 2) {
            throw new C2340zH();
        }
        do {
            q(2);
            AbstractC1200dH abstractC1200dH = this.f18497a;
            interfaceC2236xH.add(abstractC1200dH.v());
            if (abstractC1200dH.a()) {
                return;
            } else {
                iO = abstractC1200dH.o();
            }
        } while (iO == this.f18498b);
        this.f18500d = iO;
    }

    public final void w(InterfaceC2236xH interfaceC2236xH) throws AH {
        int iO;
        int i8 = this.f18498b & 7;
        AbstractC1200dH abstractC1200dH = this.f18497a;
        if (i8 == 1) {
            do {
                interfaceC2236xH.add(Double.valueOf(abstractC1200dH.f()));
                if (abstractC1200dH.a()) {
                    return;
                } else {
                    iO = abstractC1200dH.o();
                }
            } while (iO == this.f18498b);
            this.f18500d = iO;
            return;
        }
        if (i8 != 2) {
            throw new C2340zH();
        }
        int iP = abstractC1200dH.p();
        s(iP);
        int iH = abstractC1200dH.h() + iP;
        do {
            interfaceC2236xH.add(Double.valueOf(abstractC1200dH.f()));
        } while (abstractC1200dH.h() < iH);
    }

    public final void x(InterfaceC2236xH interfaceC2236xH) throws AH {
        int iO;
        int iO2;
        boolean z7 = interfaceC2236xH instanceof C1924rH;
        AbstractC1200dH abstractC1200dH = this.f18497a;
        if (z7) {
            C1924rH c1924rH = (C1924rH) interfaceC2236xH;
            int i8 = this.f18498b & 7;
            if (i8 != 0) {
                if (i8 != 2) {
                    throw new C2340zH();
                }
                int iH = abstractC1200dH.h() + abstractC1200dH.p();
                do {
                    c1924rH.i(abstractC1200dH.j());
                } while (abstractC1200dH.h() < iH);
                p(iH);
                return;
            }
            do {
                c1924rH.i(abstractC1200dH.j());
                if (abstractC1200dH.a()) {
                    return;
                } else {
                    iO2 = abstractC1200dH.o();
                }
            } while (iO2 == this.f18498b);
        } else {
            int i9 = this.f18498b & 7;
            if (i9 != 0) {
                if (i9 != 2) {
                    throw new C2340zH();
                }
                int iH2 = abstractC1200dH.h() + abstractC1200dH.p();
                do {
                    interfaceC2236xH.add(Integer.valueOf(abstractC1200dH.j()));
                } while (abstractC1200dH.h() < iH2);
                p(iH2);
                return;
            }
            do {
                interfaceC2236xH.add(Integer.valueOf(abstractC1200dH.j()));
                if (abstractC1200dH.a()) {
                    return;
                } else {
                    iO = abstractC1200dH.o();
                }
            } while (iO == this.f18498b);
            iO2 = iO;
        }
        this.f18500d = iO2;
    }

    public final void y(InterfaceC2236xH interfaceC2236xH) throws AH {
        int iO;
        int iO2;
        boolean z7 = interfaceC2236xH instanceof C1924rH;
        AbstractC1200dH abstractC1200dH = this.f18497a;
        if (z7) {
            C1924rH c1924rH = (C1924rH) interfaceC2236xH;
            int i8 = this.f18498b & 7;
            if (i8 == 2) {
                int iP = abstractC1200dH.p();
                r(iP);
                int iH = abstractC1200dH.h() + iP;
                do {
                    c1924rH.i(abstractC1200dH.k());
                } while (abstractC1200dH.h() < iH);
                return;
            }
            if (i8 != 5) {
                throw new C2340zH();
            }
            do {
                c1924rH.i(abstractC1200dH.k());
                if (abstractC1200dH.a()) {
                    return;
                } else {
                    iO2 = abstractC1200dH.o();
                }
            } while (iO2 == this.f18498b);
        } else {
            int i9 = this.f18498b & 7;
            if (i9 == 2) {
                int iP2 = abstractC1200dH.p();
                r(iP2);
                int iH2 = abstractC1200dH.h() + iP2;
                do {
                    interfaceC2236xH.add(Integer.valueOf(abstractC1200dH.k()));
                } while (abstractC1200dH.h() < iH2);
                return;
            }
            if (i9 != 5) {
                throw new C2340zH();
            }
            do {
                interfaceC2236xH.add(Integer.valueOf(abstractC1200dH.k()));
                if (abstractC1200dH.a()) {
                    return;
                } else {
                    iO = abstractC1200dH.o();
                }
            } while (iO == this.f18498b);
            iO2 = iO;
        }
        this.f18500d = iO2;
    }
}
