package p018c1;

import W0.D;
import W0.q;
import W0.s;
import W0.t;
import W0.u;
import W0.w;
import W0.x;
import com.google.android.gms.internal.measurement.H1;
import java.util.List;
import p094m0.P;
import p117p0.E;
import z4.F;
import z4.H;
import z4.d0;

/* JADX INFO: loaded from: classes.dex */
public final class b implements s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final E f10597a = new E(4);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final E f10598b = new E(9);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final E f10599c = new E(11);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final E f10600d = new E();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final c f10601e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public u f10602f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f10603g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f10604h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f10605i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f10606j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f10607k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f10608l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public long f10609m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f10610n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public a f10611o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public e f10612p;

    public b() {
        c cVar = new c(new q());
        cVar.f10613H = -9223372036854775807L;
        cVar.f10614I = new long[0];
        cVar.f10615J = new long[0];
        this.f10601e = cVar;
        this.f10603g = 1;
    }

    public final E a(t tVar) {
        int i8 = this.f10608l;
        E e8 = this.f10600d;
        byte[] bArr = e8.f28035a;
        if (i8 > bArr.length) {
            e8.J(0, new byte[Math.max(bArr.length * 2, i8)]);
        } else {
            e8.L(0);
        }
        e8.K(this.f10608l);
        tVar.readFully(e8.f28035a, 0, this.f10608l);
        return e8;
    }

    @Override // W0.s
    public final void d(u uVar) {
        this.f10602f = uVar;
    }

    @Override // W0.s
    public final boolean g(t tVar) {
        E e8 = this.f10597a;
        tVar.c(0, e8.f28035a, 3);
        e8.L(0);
        if (e8.C() != 4607062) {
            return false;
        }
        tVar.c(0, e8.f28035a, 2);
        e8.L(0);
        if ((e8.F() & 250) != 0) {
            return false;
        }
        tVar.c(0, e8.f28035a, 4);
        e8.L(0);
        int iL = e8.l();
        tVar.m();
        tVar.g(iL);
        tVar.c(0, e8.f28035a, 4);
        e8.L(0);
        return e8.l() == 0;
    }

    /* JADX WARN: Code duplicated, block: B:50:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:51:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:86:0x00d7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:96:0x0009 A[SYNTHETIC] */
    @Override // W0.s
    public final int h(t tVar, w wVar) throws P {
        long j8;
        boolean zO;
        boolean z7;
        long j9;
        H1.j(this.f10602f);
        while (true) {
            int i8 = this.f10603g;
            if (i8 == 1) {
                E e8 = this.f10598b;
                if (!tVar.b(e8.f28035a, 0, 9, true)) {
                    return -1;
                }
                e8.L(0);
                e8.M(4);
                int iZ = e8.z();
                boolean z8 = (iZ & 4) != 0;
                boolean z9 = (iZ & 1) != 0;
                if (z8 && this.f10611o == null) {
                    this.f10611o = new a(this.f10602f.t(8, 1));
                }
                if (z9 && this.f10612p == null) {
                    this.f10612p = new e(this.f10602f.t(9, 2));
                }
                this.f10602f.j();
                this.f10606j = e8.l() - 5;
                this.f10603g = 2;
            } else if (i8 == 2) {
                tVar.n(this.f10606j);
                this.f10606j = 0;
                this.f10603g = 3;
            } else if (i8 == 3) {
                E e9 = this.f10599c;
                if (!tVar.b(e9.f28035a, 0, 11, true)) {
                    return -1;
                }
                e9.L(0);
                this.f10607k = e9.z();
                this.f10608l = e9.C();
                this.f10609m = e9.C();
                this.f10609m = (((long) (e9.z() << 24)) | this.f10609m) * 1000;
                e9.M(3);
                this.f10603g = 4;
            } else {
                if (i8 != 4) {
                    throw new IllegalStateException();
                }
                boolean z10 = this.f10604h;
                c cVar = this.f10601e;
                if (z10) {
                    j8 = this.f10605i + this.f10609m;
                } else {
                    j8 = cVar.f10613H == -9223372036854775807L ? 0L : this.f10609m;
                }
                int i9 = this.f10607k;
                if (i9 != 8 || this.f10611o == null) {
                    if (i9 != 9 || this.f10612p == null) {
                        if (i9 != 18 || this.f10610n) {
                            tVar.n(this.f10608l);
                            zO = false;
                            z7 = false;
                        } else {
                            E eA = a(tVar);
                            cVar.getClass();
                            cVar.n(j8, eA);
                            long j10 = cVar.f10613H;
                            if (j10 != -9223372036854775807L) {
                                this.f10602f.r(new D(j10, cVar.f10615J, cVar.f10614I));
                                this.f10610n = true;
                            }
                        }
                        if (!this.f10604h && zO) {
                            this.f10604h = true;
                            if (cVar.f10613H == -9223372036854775807L) {
                                j9 = -this.f10609m;
                            } else {
                                j9 = 0;
                            }
                            this.f10605i = j9;
                        }
                        this.f10606j = 4;
                        this.f10603g = 2;
                        if (z7) {
                            return 0;
                        }
                    } else {
                        if (!this.f10610n) {
                            this.f10602f.r(new x(-9223372036854775807L));
                            this.f10610n = true;
                        }
                        e eVar = this.f10612p;
                        E eA2 = a(tVar);
                        if (eVar.n(eA2) && eVar.o(j8, eA2)) {
                            zO = true;
                        }
                    }
                    zO = false;
                } else {
                    if (!this.f10610n) {
                        this.f10602f.r(new x(-9223372036854775807L));
                        this.f10610n = true;
                    }
                    a aVar = this.f10611o;
                    E eA3 = a(tVar);
                    aVar.n(eA3);
                    zO = aVar.o(j8, eA3);
                }
                z7 = true;
                if (!this.f10604h) {
                    this.f10604h = true;
                    if (cVar.f10613H == -9223372036854775807L) {
                        j9 = -this.f10609m;
                    } else {
                        j9 = 0;
                    }
                    this.f10605i = j9;
                }
                this.f10606j = 4;
                this.f10603g = 2;
                if (z7) {
                    return 0;
                }
            }
        }
    }

    @Override // W0.s
    public final void i(long j8, long j9) {
        if (j8 == 0) {
            this.f10603g = 1;
            this.f10604h = false;
        } else {
            this.f10603g = 3;
        }
        this.f10606j = 0;
    }

    @Override // W0.s
    public final List j() {
        F f8 = H.f31804H;
        return d0.f31844K;
    }

    @Override // W0.s
    public final s b() {
        return this;
    }

    @Override // W0.s
    public final void release() {
    }
}
