package A1;

import java.util.List;
import okhttp3.internal.http2.Http2;
import z4.d0;

/* JADX INFO: renamed from: A1.c, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0028c implements W0.s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C0029d f331a = new C0029d(null, 0, "audio/ac4");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final p117p0.E f332b = new p117p0.E(Http2.INITIAL_MAX_FRAME_SIZE);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f333c;

    @Override // W0.s
    public final void d(W0.u uVar) {
        this.f331a.c(uVar, new I(0, 1));
        uVar.j();
        uVar.r(new W0.x(-9223372036854775807L));
    }

    @Override // W0.s
    public final boolean g(W0.t tVar) {
        int i8;
        p117p0.E e8 = new p117p0.E(10);
        int i9 = 0;
        while (true) {
            tVar.c(0, e8.f28035a, 10);
            e8.L(0);
            if (e8.C() != 4801587) {
                break;
            }
            e8.M(3);
            int iY = e8.y();
            i9 += iY + 10;
            tVar.g(iY);
        }
        tVar.m();
        tVar.g(i9);
        int i10 = i9;
        while (true) {
            int i11 = 0;
            while (true) {
                int i12 = 7;
                tVar.c(0, e8.f28035a, 7);
                e8.L(0);
                int iF = e8.F();
                if (iF == 44096 || iF == 44097) {
                    i11++;
                    if (i11 >= 4) {
                        return true;
                    }
                    byte[] bArr = e8.f28035a;
                    if (bArr.length < 7) {
                        i8 = -1;
                    } else {
                        int i13 = ((bArr[2] & 255) << 8) | (bArr[3] & 255);
                        if (i13 == 65535) {
                            i13 = ((bArr[4] & 255) << 16) | ((bArr[5] & 255) << 8) | (bArr[6] & 255);
                        } else {
                            i12 = 4;
                        }
                        if (iF == 44097) {
                            i12 += 2;
                        }
                        i8 = i13 + i12;
                    }
                    if (i8 == -1) {
                        return false;
                    }
                    tVar.g(i8 - 7);
                }
            }
            tVar.m();
            i10++;
            if (i10 - i9 >= 8192) {
                return false;
            }
            tVar.g(i10);
        }
    }

    @Override // W0.s
    public final int h(W0.t tVar, W0.w wVar) {
        p117p0.E e8 = this.f332b;
        int iQ = tVar.q(e8.f28035a, 0, Http2.INITIAL_MAX_FRAME_SIZE);
        if (iQ == -1) {
            return -1;
        }
        e8.L(0);
        e8.K(iQ);
        boolean z7 = this.f333c;
        C0029d c0029d = this.f331a;
        if (!z7) {
            c0029d.f347n = 0L;
            this.f333c = true;
        }
        c0029d.b(e8);
        return 0;
    }

    @Override // W0.s
    public final void i(long j8, long j9) {
        this.f333c = false;
        this.f331a.a();
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
