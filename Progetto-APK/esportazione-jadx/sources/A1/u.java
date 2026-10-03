package A1;

import W0.AbstractC0368a;
import W0.L;
import com.google.android.gms.internal.measurement.H1;
import java.util.Collections;
import p094m0.C3135s;
import p094m0.C3136t;
import p094m0.O;
import p094m0.P;

/* JADX INFO: loaded from: classes.dex */
public final class u implements InterfaceC0035j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f537a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f538b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final p117p0.E f539c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final p117p0.D f540d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public L f541e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f542f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public C3136t f543g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f544h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f545i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f546j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f547k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public long f548l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f549m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f550n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f551o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f552p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f553q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public long f554r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f555s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public long f556t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f557u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public String f558v;

    public u(String str, int i8) {
        this.f537a = str;
        this.f538b = i8;
        p117p0.E e8 = new p117p0.E(1024);
        this.f539c = e8;
        this.f540d = new p117p0.D(e8.f28035a, 0, (Object) null);
        this.f548l = -9223372036854775807L;
    }

    @Override // A1.InterfaceC0035j
    public final void a() {
        this.f544h = 0;
        this.f548l = -9223372036854775807L;
        this.f549m = false;
    }

    @Override // A1.InterfaceC0035j
    public final void b(p117p0.E e8) throws P {
        int i8;
        boolean zH;
        H1.j(this.f541e);
        while (e8.a() > 0) {
            int i9 = this.f544h;
            if (i9 != 0) {
                if (i9 != 1) {
                    p117p0.E e9 = this.f539c;
                    p117p0.D d6 = this.f540d;
                    if (i9 == 2) {
                        int iZ = ((this.f547k & (-225)) << 8) | e8.z();
                        this.f546j = iZ;
                        if (iZ > e9.f28035a.length) {
                            e9.I(iZ);
                            byte[] bArr = e9.f28035a;
                            d6.getClass();
                            d6.p(bArr.length, bArr);
                        }
                        this.f545i = 0;
                        this.f544h = 3;
                    } else {
                        if (i9 != 3) {
                            throw new IllegalStateException();
                        }
                        int iMin = Math.min(e8.a(), this.f546j - this.f545i);
                        e8.j(this.f545i, d6.f28028b, iMin);
                        int i10 = this.f545i + iMin;
                        this.f545i = i10;
                        if (i10 == this.f546j) {
                            d6.r(0);
                            if (d6.h()) {
                                if (this.f549m) {
                                }
                                this.f544h = 0;
                            } else {
                                this.f549m = true;
                                int i11 = d6.i(1);
                                int i12 = i11 == 1 ? d6.i(1) : 0;
                                this.f550n = i12;
                                if (i12 != 0) {
                                    throw P.a(null, null);
                                }
                                if (i11 == 1) {
                                    d6.i((d6.i(2) + 1) * 8);
                                }
                                if (!d6.h()) {
                                    throw P.a(null, null);
                                }
                                this.f551o = d6.i(6);
                                int i13 = d6.i(4);
                                int i14 = d6.i(3);
                                if (i13 != 0 || i14 != 0) {
                                    throw P.a(null, null);
                                }
                                if (i11 == 0) {
                                    int iG = d6.g();
                                    int iB = d6.b();
                                    W0.r rVarG = AbstractC0368a.g(d6, true);
                                    this.f558v = rVarG.f7454a;
                                    this.f555s = rVarG.f7455b;
                                    this.f557u = rVarG.f7456c;
                                    int iB2 = iB - d6.b();
                                    d6.r(iG);
                                    byte[] bArr2 = new byte[(iB2 + 7) / 8];
                                    d6.j(bArr2, iB2);
                                    C3135s c3135s = new C3135s();
                                    c3135s.f26983a = this.f542f;
                                    c3135s.f26995m = O.p("video/mp2t");
                                    c3135s.f26996n = O.p("audio/mp4a-latm");
                                    c3135s.f26992j = this.f558v;
                                    c3135s.f26973F = this.f557u;
                                    c3135s.f26974G = this.f555s;
                                    c3135s.f26999q = Collections.singletonList(bArr2);
                                    c3135s.f26986d = this.f537a;
                                    c3135s.f26988f = this.f538b;
                                    C3136t c3136t = new C3136t(c3135s);
                                    if (!c3136t.equals(this.f543g)) {
                                        this.f543g = c3136t;
                                        this.f556t = 1024000000 / ((long) c3136t.f27017H);
                                        this.f541e.b(c3136t);
                                    }
                                } else {
                                    int i15 = d6.i((d6.i(2) + 1) * 8);
                                    int iB3 = d6.b();
                                    W0.r rVarG2 = AbstractC0368a.g(d6, true);
                                    this.f558v = rVarG2.f7454a;
                                    this.f555s = rVarG2.f7455b;
                                    this.f557u = rVarG2.f7456c;
                                    d6.u(i15 - (iB3 - d6.b()));
                                }
                                int i16 = d6.i(3);
                                this.f552p = i16;
                                if (i16 == 0) {
                                    d6.u(8);
                                } else if (i16 == 1) {
                                    d6.u(9);
                                } else if (i16 == 3 || i16 == 4 || i16 == 5) {
                                    d6.u(6);
                                } else {
                                    if (i16 != 6 && i16 != 7) {
                                        throw new IllegalStateException();
                                    }
                                    d6.u(1);
                                }
                                boolean zH2 = d6.h();
                                this.f553q = zH2;
                                this.f554r = 0L;
                                if (zH2) {
                                    if (i11 == 1) {
                                        this.f554r = d6.i((d6.i(2) + 1) * 8);
                                    } else {
                                        do {
                                            zH = d6.h();
                                            this.f554r = (this.f554r << 8) + ((long) d6.i(8));
                                        } while (zH);
                                    }
                                }
                                if (d6.h()) {
                                    d6.u(8);
                                }
                            }
                            if (this.f550n != 0) {
                                throw P.a(null, null);
                            }
                            if (this.f551o != 0) {
                                throw P.a(null, null);
                            }
                            if (this.f552p != 0) {
                                throw P.a(null, null);
                            }
                            int i17 = 0;
                            do {
                                i8 = d6.i(8);
                                i17 += i8;
                            } while (i8 == 255);
                            int iG2 = d6.g();
                            if ((iG2 & 7) == 0) {
                                e9.L(iG2 >> 3);
                            } else {
                                d6.j(e9.f28035a, i17 * 8);
                                e9.L(0);
                            }
                            this.f541e.e(i17, e9);
                            H1.i(this.f548l != -9223372036854775807L);
                            this.f541e.d(this.f548l, 1, i17, 0, null);
                            this.f548l += this.f556t;
                            if (this.f553q) {
                                d6.u((int) this.f554r);
                            }
                            this.f544h = 0;
                        } else {
                            continue;
                        }
                    }
                } else {
                    int iZ2 = e8.z();
                    if ((iZ2 & 224) == 224) {
                        this.f547k = iZ2;
                        this.f544h = 2;
                    } else if (iZ2 != 86) {
                        this.f544h = 0;
                    }
                }
            } else if (e8.z() == 86) {
                this.f544h = 1;
            }
        }
    }

    @Override // A1.InterfaceC0035j
    public final void c(W0.u uVar, I i8) {
        i8.a();
        i8.b();
        this.f541e = uVar.t(i8.f309d, 1);
        i8.b();
        this.f542f = i8.f310e;
    }

    @Override // A1.InterfaceC0035j
    public final void e(int i8, long j8) {
        this.f548l = j8;
    }

    @Override // A1.InterfaceC0035j
    public final void d(boolean z7) {
    }
}
