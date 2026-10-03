package A1;

import W0.AbstractC0368a;
import java.util.List;
import z4.d0;

/* JADX INFO: renamed from: A1.a, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0026a implements W0.s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C0027b f314a = new C0027b("audio/ac3");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final p117p0.E f315b = new p117p0.E(2786);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f316c;

    @Override // W0.s
    public final void d(W0.u uVar) {
        this.f314a.c(uVar, new I(0, 1));
        uVar.j();
        uVar.r(new W0.x(-9223372036854775807L));
    }

    @Override // W0.s
    public final boolean g(W0.t tVar) {
        int iA;
        p117p0.E e8 = new p117p0.E(10);
        int i8 = 0;
        while (true) {
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
        int i9 = i8;
        while (true) {
            int i10 = 0;
            while (true) {
                tVar.c(0, e8.f28035a, 6);
                e8.L(0);
                if (e8.F() != 2935) {
                    break;
                }
                i10++;
                if (i10 >= 4) {
                    return true;
                }
                byte[] bArr = e8.f28035a;
                if (bArr.length < 6) {
                    iA = -1;
                } else if (((bArr[5] & 248) >> 3) > 10) {
                    iA = ((((bArr[2] & 7) << 8) | (bArr[3] & 255)) + 1) * 2;
                } else {
                    byte b8 = bArr[4];
                    iA = AbstractC0368a.a((b8 & 192) >> 6, b8 & 63);
                }
                if (iA == -1) {
                    return false;
                }
                tVar.g(iA - 6);
            }
            tVar.m();
            i9++;
            if (i9 - i8 >= 8192) {
                return false;
            }
            tVar.g(i9);
        }
    }

    @Override // W0.s
    public final int h(W0.t tVar, W0.w wVar) {
        p117p0.E e8 = this.f315b;
        int iQ = tVar.q(e8.f28035a, 0, 2786);
        if (iQ == -1) {
            return -1;
        }
        e8.L(0);
        e8.K(iQ);
        boolean z7 = this.f316c;
        C0027b c0027b = this.f314a;
        if (!z7) {
            c0027b.f330n = 0L;
            this.f316c = true;
        }
        c0027b.b(e8);
        return 0;
    }

    @Override // W0.s
    public final void i(long j8, long j9) {
        this.f316c = false;
        this.f314a.a();
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
