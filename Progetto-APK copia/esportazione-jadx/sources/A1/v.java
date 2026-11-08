package A1;

import W0.C0369b;
import W0.L;
import com.google.android.gms.internal.measurement.H1;
import p094m0.C3135s;
import p094m0.C3136t;
import p094m0.O;

/* JADX INFO: loaded from: classes.dex */
public final class v implements InterfaceC0035j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final p117p0.E f559a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C0369b f560b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f561c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f562d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f563e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public L f564f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public String f565g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f566h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f567i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f568j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f569k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public long f570l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f571m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public long f572n;

    public v(String str, int i8, String str2) {
        p117p0.E e8 = new p117p0.E(4);
        this.f559a = e8;
        e8.f28035a[0] = -1;
        this.f560b = new C0369b();
        this.f572n = -9223372036854775807L;
        this.f561c = str;
        this.f562d = i8;
        this.f563e = str2;
    }

    @Override // A1.InterfaceC0035j
    public final void a() {
        this.f566h = 0;
        this.f567i = 0;
        this.f569k = false;
        this.f572n = -9223372036854775807L;
    }

    @Override // A1.InterfaceC0035j
    public final void b(p117p0.E e8) {
        H1.j(this.f564f);
        while (e8.a() > 0) {
            int i8 = this.f566h;
            p117p0.E e9 = this.f559a;
            if (i8 == 0) {
                byte[] bArr = e8.f28035a;
                int i9 = e8.f28036b;
                int i10 = e8.f28037c;
                while (true) {
                    if (i9 >= i10) {
                        e8.L(i10);
                        break;
                    }
                    byte b8 = bArr[i9];
                    boolean z7 = (b8 & 255) == 255;
                    boolean z8 = this.f569k && (b8 & 224) == 224;
                    this.f569k = z7;
                    if (z8) {
                        e8.L(i9 + 1);
                        this.f569k = false;
                        e9.f28035a[1] = bArr[i9];
                        this.f567i = 2;
                        this.f566h = 1;
                        break;
                    }
                    i9++;
                }
            } else if (i8 == 1) {
                int iMin = Math.min(e8.a(), 4 - this.f567i);
                e8.j(this.f567i, e9.f28035a, iMin);
                int i11 = this.f567i + iMin;
                this.f567i = i11;
                if (i11 >= 4) {
                    e9.L(0);
                    int iL = e9.l();
                    C0369b c0369b = this.f560b;
                    if (c0369b.a(iL)) {
                        this.f571m = c0369b.f7375c;
                        if (!this.f568j) {
                            this.f570l = (((long) c0369b.f7379g) * 1000000) / ((long) c0369b.f7376d);
                            C3135s c3135s = new C3135s();
                            c3135s.f26983a = this.f565g;
                            c3135s.f26995m = O.p(this.f563e);
                            c3135s.f26996n = O.p(c0369b.f7374b);
                            c3135s.f26997o = 4096;
                            c3135s.f26973F = c0369b.f7377e;
                            c3135s.f26974G = c0369b.f7376d;
                            c3135s.f26986d = this.f561c;
                            c3135s.f26988f = this.f562d;
                            this.f564f.b(new C3136t(c3135s));
                            this.f568j = true;
                        }
                        e9.L(0);
                        this.f564f.e(4, e9);
                        this.f566h = 2;
                    } else {
                        this.f567i = 0;
                        this.f566h = 1;
                    }
                }
            } else {
                if (i8 != 2) {
                    throw new IllegalStateException();
                }
                int iMin2 = Math.min(e8.a(), this.f571m - this.f567i);
                this.f564f.e(iMin2, e8);
                int i12 = this.f567i + iMin2;
                this.f567i = i12;
                if (i12 >= this.f571m) {
                    H1.i(this.f572n != -9223372036854775807L);
                    this.f564f.d(this.f572n, 1, this.f571m, 0, null);
                    this.f572n += this.f570l;
                    this.f567i = 0;
                    this.f566h = 0;
                }
            }
        }
    }

    @Override // A1.InterfaceC0035j
    public final void c(W0.u uVar, I i8) {
        i8.a();
        i8.b();
        this.f565g = i8.f310e;
        i8.b();
        this.f564f = uVar.t(i8.f309d, 1);
    }

    @Override // A1.InterfaceC0035j
    public final void e(int i8, long j8) {
        this.f572n = j8;
    }

    @Override // A1.InterfaceC0035j
    public final void d(boolean z7) {
    }
}
