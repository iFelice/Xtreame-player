package p018c1;

import O0.a0;
import W0.C0372e;
import W0.L;
import p000a.r;
import p094m0.C3135s;
import p094m0.C3136t;
import p094m0.O;
import p117p0.E;
import p125q0.p;

/* JADX INFO: loaded from: classes.dex */
public final class e extends d {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final E f10617H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final E f10618I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public int f10619J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public boolean f10620K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public boolean f10621L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public int f10622M;

    public e(L l4) {
        super(l4);
        this.f10617H = new E(p.f29508a);
        this.f10618I = new E(4);
    }

    public final boolean n(E e8) throws a0 {
        int iZ = e8.z();
        int i8 = (iZ >> 4) & 15;
        int i9 = iZ & 15;
        if (i9 != 7) {
            throw new a0(r.f("Video format not supported: ", i9));
        }
        this.f10622M = i8;
        return i8 != 5;
    }

    public final boolean o(long j8, E e8) {
        int iZ = e8.z();
        byte[] bArr = e8.f28035a;
        int i8 = e8.f28036b;
        int i9 = ((bArr[i8 + 1] & 255) << 8) | (((bArr[i8] & 255) << 24) >> 8);
        e8.f28036b = i8 + 3;
        long j9 = (((long) ((bArr[i8 + 2] & 255) | i9)) * 1000) + j8;
        if (iZ == 0 && !this.f10620K) {
            byte[] bArr2 = new byte[e8.a()];
            E e9 = new E(bArr2);
            e8.j(0, bArr2, e8.a());
            C0372e c0372eA = C0372e.a(e9);
            this.f10619J = c0372eA.f7394b;
            C3135s c3135s = new C3135s();
            c3135s.f26995m = O.p("video/x-flv");
            c3135s.f26996n = O.p("video/avc");
            c3135s.f26992j = c0372eA.f7404l;
            c3135s.f27003u = c0372eA.f7395c;
            c3135s.f27004v = c0372eA.f7396d;
            c3135s.f26968A = c0372eA.f7403k;
            c3135s.f26999q = c0372eA.f7393a;
            ((L) this.f10616G).b(new C3136t(c3135s));
            this.f10620K = true;
            return false;
        }
        if (iZ != 1 || !this.f10620K) {
            return false;
        }
        int i10 = this.f10622M == 1 ? 1 : 0;
        if (!this.f10621L && i10 == 0) {
            return false;
        }
        E e10 = this.f10618I;
        byte[] bArr3 = e10.f28035a;
        bArr3[0] = 0;
        bArr3[1] = 0;
        bArr3[2] = 0;
        int i11 = 4 - this.f10619J;
        int i12 = 0;
        while (e8.a() > 0) {
            e8.j(i11, e10.f28035a, this.f10619J);
            e10.L(0);
            int iD = e10.D();
            E e11 = this.f10617H;
            e11.L(0);
            ((L) this.f10616G).e(4, e11);
            ((L) this.f10616G).e(iD, e8);
            i12 = i12 + 4 + iD;
        }
        ((L) this.f10616G).d(j9, i10, i12, 0, null);
        this.f10621L = true;
        return true;
    }
}
