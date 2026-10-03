package A1;

import W0.AbstractC0368a;
import W0.C0371d;
import W0.L;
import com.google.android.gms.internal.measurement.H1;
import p094m0.C3135s;
import p094m0.C3136t;
import p094m0.O;

/* JADX INFO: renamed from: A1.d, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0029d implements InterfaceC0035j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final p117p0.D f334a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final p117p0.E f335b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f336c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f337d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f338e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f339f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public L f340g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f341h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f342i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f343j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long f344k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public C3136t f345l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f346m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public long f347n;

    public C0029d(String str, int i8, String str2) {
        p117p0.D d6 = new p117p0.D(new byte[16], 0, (Object) null);
        this.f334a = d6;
        this.f335b = new p117p0.E(d6.f28028b);
        this.f341h = 0;
        this.f342i = 0;
        this.f343j = false;
        this.f347n = -9223372036854775807L;
        this.f336c = str;
        this.f337d = i8;
        this.f338e = str2;
    }

    @Override // A1.InterfaceC0035j
    public final void a() {
        this.f341h = 0;
        this.f342i = 0;
        this.f343j = false;
        this.f347n = -9223372036854775807L;
    }

    @Override // A1.InterfaceC0035j
    public final void b(p117p0.E e8) {
        H1.j(this.f340g);
        while (e8.a() > 0) {
            int i8 = this.f341h;
            p117p0.E e9 = this.f335b;
            if (i8 == 0) {
                while (e8.a() > 0) {
                    if (this.f343j) {
                        int iZ = e8.z();
                        this.f343j = iZ == 172;
                        if (iZ == 64 || iZ == 65) {
                            boolean z7 = iZ == 65;
                            this.f341h = 1;
                            byte[] bArr = e9.f28035a;
                            bArr[0] = -84;
                            bArr[1] = (byte) (z7 ? 65 : 64);
                            this.f342i = 2;
                            break;
                        }
                    } else {
                        this.f343j = e8.z() == 172;
                    }
                }
            } else if (i8 == 1) {
                byte[] bArr2 = e9.f28035a;
                int iMin = Math.min(e8.a(), 16 - this.f342i);
                e8.j(this.f342i, bArr2, iMin);
                int i9 = this.f342i + iMin;
                this.f342i = i9;
                if (i9 == 16) {
                    p117p0.D d6 = this.f334a;
                    d6.r(0);
                    C0371d c0371dF = AbstractC0368a.f(d6);
                    C3136t c3136t = this.f345l;
                    if (c3136t == null || c0371dF.f7390d != c3136t.f27016G || c0371dF.f7389c != c3136t.f27017H || !"audio/ac4".equals(c3136t.f27041o)) {
                        C3135s c3135s = new C3135s();
                        c3135s.f26983a = this.f339f;
                        c3135s.f26995m = O.p(this.f338e);
                        c3135s.f26996n = O.p("audio/ac4");
                        c3135s.f26973F = c0371dF.f7390d;
                        c3135s.f26974G = c0371dF.f7389c;
                        c3135s.f26986d = this.f336c;
                        c3135s.f26988f = this.f337d;
                        C3136t c3136t2 = new C3136t(c3135s);
                        this.f345l = c3136t2;
                        this.f340g.b(c3136t2);
                    }
                    this.f346m = c0371dF.f7391e;
                    this.f344k = (((long) c0371dF.f7392f) * 1000000) / ((long) this.f345l.f27017H);
                    e9.L(0);
                    this.f340g.e(16, e9);
                    this.f341h = 2;
                }
            } else if (i8 == 2) {
                int iMin2 = Math.min(e8.a(), this.f346m - this.f342i);
                this.f340g.e(iMin2, e8);
                int i10 = this.f342i + iMin2;
                this.f342i = i10;
                if (i10 == this.f346m) {
                    H1.i(this.f347n != -9223372036854775807L);
                    this.f340g.d(this.f347n, 1, this.f346m, 0, null);
                    this.f347n += this.f344k;
                    this.f341h = 0;
                }
            }
        }
    }

    @Override // A1.InterfaceC0035j
    public final void c(W0.u uVar, I i8) {
        i8.a();
        i8.b();
        this.f339f = i8.f310e;
        i8.b();
        this.f340g = uVar.t(i8.f309d, 1);
    }

    @Override // A1.InterfaceC0035j
    public final void e(int i8, long j8) {
        this.f347n = j8;
    }

    @Override // A1.InterfaceC0035j
    public final void d(boolean z7) {
    }
}
