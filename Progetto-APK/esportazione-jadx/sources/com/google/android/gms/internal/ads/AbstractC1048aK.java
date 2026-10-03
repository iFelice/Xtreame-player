package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.aK, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC1048aK implements TK {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f17867b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public YK f17869d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f17870e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public C2344zL f17871f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public InterfaceC1840pl f17872g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f17873h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public UN f17874i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public C1804p0[] f17875j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long f17876k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public long f17877l;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f17879n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f17880o;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public XK f17882q;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f17866a = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C0871Om f17868c = new C0871Om(26, (Object) null);

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public long f17878m = Long.MIN_VALUE;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public AbstractC0774Ie f17881p = AbstractC0774Ie.f13891a;

    public AbstractC1048aK(int i8) {
        this.f17867b = i8;
    }

    public abstract void A(long j8, boolean z7);

    public abstract void c();

    public abstract void d();

    public abstract void e();

    public abstract void f();

    public abstract void g(C1804p0[] c1804p0Arr, long j8, long j9, C2190wN c2190wN);

    public final void h() {
        p113o3.r.M(this.f17873h == 0);
        c();
    }

    public final void i(C1804p0[] c1804p0Arr, UN un, long j8, long j9, C2190wN c2190wN) {
        p113o3.r.M(!this.f17879n);
        this.f17874i = un;
        if (this.f17878m == Long.MIN_VALUE) {
            this.f17878m = j8;
        }
        this.f17875j = c1804p0Arr;
        this.f17876k = j9;
        g(c1804p0Arr, j8, j9, c2190wN);
    }

    public final void j() {
        p113o3.r.M(this.f17873h == 0);
        C0871Om c0871Om = this.f17868c;
        c0871Om.f15197I = null;
        c0871Om.f15196H = null;
        d();
    }

    public abstract void k(float f8, float f9);

    public final boolean l() {
        return this.f17878m == Long.MIN_VALUE;
    }

    public abstract String m();

    public abstract void n(long j8, long j9);

    public abstract boolean o();

    public abstract boolean p();

    public abstract int q(C1804p0 c1804p0);

    public final int r(C0871Om c0871Om, VJ vj, int i8) {
        UN un = this.f17874i;
        un.getClass();
        int iB = un.b(c0871Om, vj, i8);
        if (iB == -4) {
            if (vj.b(4)) {
                this.f17878m = Long.MIN_VALUE;
                return this.f17879n ? -4 : -3;
            }
            long j8 = vj.f16995g + this.f17876k;
            vj.f16995g = j8;
            this.f17878m = Math.max(this.f17878m, j8);
        } else if (iB == -5) {
            C1804p0 c1804p0 = (C1804p0) c0871Om.f15196H;
            c1804p0.getClass();
            long j9 = c1804p0.f20388r;
            if (j9 != Long.MAX_VALUE) {
                K k8 = new K(c1804p0);
                k8.f14276q = j9 + this.f17876k;
                c0871Om.f15196H = new C1804p0(k8);
                return -5;
            }
        }
        return iB;
    }

    public final C1512jK s(int i8, C1804p0 c1804p0, Exception exc, boolean z7) {
        int iQ;
        if (c1804p0 == null || this.f17880o) {
            iQ = 4;
        } else {
            this.f17880o = true;
            try {
                iQ = q(c1804p0) & 7;
                this.f17880o = false;
            } catch (C1512jK unused) {
                this.f17880o = false;
                iQ = 4;
            } catch (Throwable th) {
                this.f17880o = false;
                throw th;
            }
        }
        return new C1512jK(1, exc, i8, m(), this.f17870e, c1804p0, c1804p0 == null ? 4 : iQ, z7);
    }

    public FK t() {
        return null;
    }

    public final void u() {
        this.f17869d.getClass();
    }

    public final UN v() {
        return this.f17874i;
    }

    public final void w() {
        synchronized (this.f17866a) {
            this.f17882q = null;
        }
    }

    public void x() {
    }

    public abstract void y();

    public abstract void z(boolean z7, boolean z8);
}
