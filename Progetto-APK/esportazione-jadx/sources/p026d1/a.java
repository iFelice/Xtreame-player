package p026d1;

import W0.L;
import W0.s;
import W0.t;
import W0.u;
import W0.w;
import W0.x;
import java.util.List;
import org.xmlpull.v1.XmlPullParserException;
import p046f6.c;
import p094m0.C3135s;
import p094m0.C3136t;
import p094m0.N;
import p094m0.O;
import p094m0.P;
import p111o1.l;
import p117p0.E;
import p126q1.k;
import z4.F;
import z4.H;
import z4.d0;

/* JADX INFO: loaded from: classes.dex */
public final class a implements s {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public u f24586b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f24587c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f24588d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f24589e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public p073j1.a f24591g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public t f24592h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public c f24593i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public l f24594j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final E f24585a = new E(2);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f24590f = -1;

    public final void a() {
        u uVar = this.f24586b;
        uVar.getClass();
        uVar.j();
        this.f24586b.r(new x(-9223372036854775807L));
        this.f24587c = 6;
    }

    @Override // W0.s
    public final void d(u uVar) {
        this.f24586b = uVar;
    }

    @Override // W0.s
    public final boolean g(t tVar) {
        E e8 = this.f24585a;
        e8.I(2);
        tVar.c(0, e8.f28035a, 2);
        if (e8.F() != 65496) {
            return false;
        }
        e8.I(2);
        tVar.c(0, e8.f28035a, 2);
        int iF = e8.F();
        this.f24588d = iF;
        if (iF == 65504) {
            e8.I(2);
            tVar.c(0, e8.f28035a, 2);
            tVar.g(e8.F() - 2);
            e8.I(2);
            tVar.c(0, e8.f28035a, 2);
            this.f24588d = e8.F();
        }
        return this.f24588d == 65505;
    }

    /* JADX WARN: Code duplicated, block: B:48:0x0105  */
    @Override // W0.s
    public final int h(t tVar, w wVar) throws P {
        String strU;
        c cVarA;
        p073j1.a aVar;
        long j8;
        int i8 = this.f24587c;
        E e8 = this.f24585a;
        if (i8 == 0) {
            e8.I(2);
            tVar.readFully(e8.f28035a, 0, 2);
            int iF = e8.F();
            this.f24588d = iF;
            if (iF == 65498) {
                if (this.f24590f != -1) {
                    this.f24587c = 4;
                    return 0;
                }
                a();
                return 0;
            }
            if ((iF >= 65488 && iF <= 65497) || iF == 65281) {
                return 0;
            }
            this.f24587c = 1;
            return 0;
        }
        if (i8 == 1) {
            e8.I(2);
            tVar.readFully(e8.f28035a, 0, 2);
            this.f24589e = e8.F() - 2;
            this.f24587c = 2;
            return 0;
        }
        if (i8 != 2) {
            if (i8 != 4) {
                if (i8 != 5) {
                    if (i8 == 6) {
                        return -1;
                    }
                    throw new IllegalStateException();
                }
                if (this.f24593i == null || tVar != this.f24592h) {
                    this.f24592h = tVar;
                    this.f24593i = new c(tVar, this.f24590f);
                }
                l lVar = this.f24594j;
                lVar.getClass();
                int iH = lVar.h(this.f24593i, wVar);
                if (iH == 1) {
                    wVar.f7458a += this.f24590f;
                }
                return iH;
            }
            long jR = tVar.r();
            long j9 = this.f24590f;
            if (jR != j9) {
                wVar.f7458a = j9;
                return 1;
            }
            if (tVar.e(e8.f28035a, 0, 1, true)) {
                tVar.m();
                if (this.f24594j == null) {
                    this.f24594j = new l(8, k.f29555E);
                }
                c cVar = new c(tVar, this.f24590f);
                this.f24593i = cVar;
                if (this.f24594j.g(cVar)) {
                    l lVar2 = this.f24594j;
                    long j10 = this.f24590f;
                    u uVar = this.f24586b;
                    uVar.getClass();
                    lVar2.d(new e(j10, uVar));
                    p073j1.a aVar2 = this.f24591g;
                    aVar2.getClass();
                    u uVar2 = this.f24586b;
                    uVar2.getClass();
                    L lT = uVar2.t(1024, 4);
                    C3135s c3135s = new C3135s();
                    c3135s.f26995m = O.p("image/jpeg");
                    c3135s.f26993k = new N(aVar2);
                    lT.b(new C3136t(c3135s));
                    this.f24587c = 5;
                } else {
                    a();
                }
            } else {
                a();
            }
            return 0;
        }
        if (this.f24588d == 65505) {
            E e9 = new E(this.f24589e);
            tVar.readFully(e9.f28035a, 0, this.f24589e);
            if (this.f24591g == null && "http://ns.adobe.com/xap/1.0/".equals(e9.u()) && (strU = e9.u()) != null) {
                long j11 = tVar.j();
                if (j11 == -1) {
                    aVar = null;
                } else {
                    try {
                        cVarA = f.a(strU);
                    } catch (NumberFormatException | P | XmlPullParserException unused) {
                        p117p0.x.f("MotionPhotoXmpParser", "Ignoring unexpected XMP metadata");
                        cVarA = null;
                    }
                    if (cVarA != null && ((List) cVarA.f25223I).size() >= 2) {
                        int size = ((List) cVarA.f25223I).size() - 1;
                        long j12 = -1;
                        long j13 = -1;
                        long j14 = -1;
                        long j15 = -1;
                        boolean z7 = false;
                        while (size >= 0) {
                            b bVar = (b) ((List) cVarA.f25223I).get(size);
                            boolean zEquals = "video/mp4".equals(bVar.f24595a) | z7;
                            if (size == 0) {
                                j11 -= bVar.f24597c;
                                j8 = 0;
                            } else {
                                j8 = j11 - bVar.f24596b;
                            }
                            long j16 = j8;
                            long j17 = j11;
                            j11 = j16;
                            if (zEquals && j11 != j17) {
                                j15 = j17 - j11;
                                j14 = j11;
                                zEquals = false;
                            }
                            if (size == 0) {
                                j13 = j17;
                                j12 = j11;
                            }
                            size--;
                            z7 = zEquals;
                        }
                        if (j14 == -1 || j15 == -1 || j12 == -1 || j13 == -1) {
                            aVar = null;
                        } else {
                            aVar = new p073j1.a(j12, j13, cVarA.f25222H, j14, j15);
                        }
                    } else {
                        aVar = null;
                    }
                }
                this.f24591g = aVar;
                if (aVar != null) {
                    this.f24590f = aVar.f25679d;
                }
            }
        } else {
            tVar.n(this.f24589e);
        }
        this.f24587c = 0;
        return 0;
    }

    @Override // W0.s
    public final void i(long j8, long j9) {
        if (j8 == 0) {
            this.f24587c = 0;
            this.f24594j = null;
        } else if (this.f24587c == 5) {
            l lVar = this.f24594j;
            lVar.getClass();
            lVar.i(j8, j9);
        }
    }

    @Override // W0.s
    public final List j() {
        F f8 = H.f31804H;
        return d0.f31844K;
    }

    @Override // W0.s
    public final void release() {
        l lVar = this.f24594j;
        if (lVar != null) {
            lVar.getClass();
        }
    }

    @Override // W0.s
    public final s b() {
        return this;
    }
}
