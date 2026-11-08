package A1;

import W0.C0380m;
import com.google.android.gms.internal.measurement.H1;
import java.io.EOFException;
import java.util.List;
import p094m0.P;
import z4.d0;

/* JADX INFO: renamed from: A1.e, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0030e implements W0.s {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final p117p0.E f351d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final p117p0.D f352e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public W0.u f353f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f354g;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f357j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f358k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f359l;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f348a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C0031f f349b = new C0031f(null, 0, "audio/mp4a-latm", true);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final p117p0.E f350c = new p117p0.E(2048);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f356i = -1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f355h = -1;

    public C0030e() {
        p117p0.E e8 = new p117p0.E(10);
        this.f351d = e8;
        this.f352e = new p117p0.D(e8.f28035a, 0, (Object) null);
    }

    public final int a(W0.t tVar) {
        int i8 = 0;
        while (true) {
            p117p0.E e8 = this.f351d;
            tVar.c(0, e8.f28035a, 10);
            e8.L(0);
            if (e8.C() != 4801587) {
                break;
            }
            e8.M(3);
            int iY = e8.y();
            i8 += iY + 10;
            tVar.g(iY);
        }
        tVar.m();
        tVar.g(i8);
        if (this.f355h == -1) {
            this.f355h = i8;
        }
        return i8;
    }

    @Override // W0.s
    public final void d(W0.u uVar) {
        this.f353f = uVar;
        this.f349b.c(uVar, new I(0, 1));
        uVar.j();
    }

    @Override // W0.s
    public final boolean g(W0.t tVar) {
        int iA = a(tVar);
        int i8 = iA;
        int i9 = 0;
        int i10 = 0;
        do {
            p117p0.E e8 = this.f351d;
            tVar.c(0, e8.f28035a, 2);
            e8.L(0);
            if ((e8.F() & 65526) == 65520) {
                i9++;
                if (i9 >= 4 && i10 > 188) {
                    return true;
                }
                tVar.c(0, e8.f28035a, 4);
                p117p0.D d6 = this.f352e;
                d6.r(14);
                int i11 = d6.i(13);
                if (i11 <= 6) {
                    i8++;
                    tVar.m();
                    tVar.g(i8);
                } else {
                    tVar.g(i11 - 6);
                    i10 += i11;
                }
            } else {
                i8++;
                tVar.m();
                tVar.g(i8);
            }
            i9 = 0;
            i10 = 0;
        } while (i8 - iA < 8192);
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:69:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:9:0x0021  */
    @Override // W0.s
    public final int h(W0.t tVar, W0.w wVar) throws P {
        int i8;
        H1.j(this.f353f);
        long j8 = tVar.j();
        int i9 = this.f348a;
        int i10 = i9 & 2;
        if (i10 == 0 && ((i9 & 1) == 0 || j8 == -1)) {
            i8 = -1;
        } else {
            p117p0.D d6 = this.f352e;
            p117p0.E e8 = this.f351d;
            if (this.f357j) {
                i8 = -1;
            } else {
                this.f356i = -1;
                tVar.m();
                long j9 = 0;
                if (tVar.r() == 0) {
                    a(tVar);
                }
                int i11 = 0;
                for (int i12 = 0; tVar.e(e8.f28035a, i12, 2, true); i12 = 0) {
                    try {
                        e8.L(i12);
                        if ((e8.F() & 65526) != 65520) {
                            i11 = 0;
                            break;
                        }
                        if (!tVar.e(e8.f28035a, i12, 4, true)) {
                            break;
                        }
                        d6.r(14);
                        int i13 = d6.i(13);
                        if (i13 <= 6) {
                            this.f357j = true;
                            throw P.a("Malformed ADTS stream", null);
                        }
                        j9 += (long) i13;
                        i11++;
                        if (i11 == 1000 || !tVar.o(i13 - 6, true)) {
                            break;
                            break;
                        }
                    } catch (EOFException unused) {
                    }
                }
                tVar.m();
                if (i11 > 0) {
                    this.f356i = (int) (j9 / ((long) i11));
                    i8 = -1;
                } else {
                    i8 = -1;
                    this.f356i = -1;
                }
                this.f357j = true;
            }
        }
        p117p0.E e9 = this.f350c;
        int iQ = tVar.q(e9.f28035a, 0, 2048);
        boolean z7 = iQ == i8;
        boolean z8 = this.f359l;
        C0031f c0031f = this.f349b;
        if (!z8) {
            boolean z9 = (i9 & 1) != 0 && this.f356i > 0;
            if (!z9 || c0031f.f379s != -9223372036854775807L || z7) {
                if (z9) {
                    long j10 = c0031f.f379s;
                    if (j10 != -9223372036854775807L) {
                        W0.u uVar = this.f353f;
                        boolean z10 = i10 != 0;
                        int i14 = this.f356i;
                        uVar.r(new C0380m((int) ((((long) i14) * 8000000) / j10), i14, j8, this.f355h, z10));
                    } else {
                        this.f353f.r(new W0.x(-9223372036854775807L));
                    }
                } else {
                    this.f353f.r(new W0.x(-9223372036854775807L));
                }
                this.f359l = true;
            }
        }
        if (z7) {
            return -1;
        }
        e9.L(0);
        e9.K(iQ);
        if (!this.f358k) {
            c0031f.f381u = this.f354g;
            this.f358k = true;
        }
        c0031f.b(e9);
        return 0;
    }

    @Override // W0.s
    public final void i(long j8, long j9) {
        this.f358k = false;
        this.f349b.a();
        this.f354g = j9;
    }

    @Override // W0.s
    public final List j() {
        z4.F f8 = z4.H.f31804H;
        return d0.f31844K;
    }

    @Override // W0.s
    public final W0.s b() {
        return this;
    }

    @Override // W0.s
    public final void release() {
    }
}
