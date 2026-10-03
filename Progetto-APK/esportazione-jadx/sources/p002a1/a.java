package p002a1;

import W0.H;
import W0.s;
import W0.t;
import W0.u;
import W0.w;
import java.util.List;
import z4.F;
import z4.d0;

/* JADX INFO: loaded from: classes.dex */
public final class a implements s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f8630a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final s f8631b;

    public a(int i8, int i9) {
        this.f8630a = i8;
        if (i8 != 1) {
            this.f8631b = new H(16973, 2, "image/bmp");
        } else {
            this.f8631b = new H(35152, 2, "image/png");
        }
    }

    @Override // W0.s
    public final void d(u uVar) {
        int i8 = this.f8630a;
        s sVar = this.f8631b;
        switch (i8) {
            case 0:
                ((H) sVar).d(uVar);
                break;
            case 1:
                ((H) sVar).d(uVar);
                break;
            default:
                sVar.d(uVar);
                break;
        }
    }

    @Override // W0.s
    public final boolean g(t tVar) {
        int i8 = this.f8630a;
        s sVar = this.f8631b;
        switch (i8) {
            case 0:
                return ((H) sVar).g(tVar);
            case 1:
                return ((H) sVar).g(tVar);
            default:
                return sVar.g(tVar);
        }
    }

    @Override // W0.s
    public final int h(t tVar, w wVar) {
        int i8 = this.f8630a;
        s sVar = this.f8631b;
        switch (i8) {
            case 0:
                return ((H) sVar).h(tVar, wVar);
            case 1:
                return ((H) sVar).h(tVar, wVar);
            default:
                return sVar.h(tVar, wVar);
        }
    }

    @Override // W0.s
    public final void i(long j8, long j9) {
        int i8 = this.f8630a;
        s sVar = this.f8631b;
        switch (i8) {
            case 0:
                ((H) sVar).i(j8, j9);
                break;
            case 1:
                ((H) sVar).i(j8, j9);
                break;
            default:
                sVar.i(j8, j9);
                break;
        }
    }

    @Override // W0.s
    public final List j() {
        switch (this.f8630a) {
            case 0:
                F f8 = z4.H.f31804H;
                break;
            case 1:
                F f9 = z4.H.f31804H;
                break;
            default:
                F f10 = z4.H.f31804H;
                break;
        }
        return d0.f31844K;
    }

    @Override // W0.s
    public final void release() {
        switch (this.f8630a) {
            case 0:
            case 1:
                break;
            default:
                this.f8631b.release();
                break;
        }
    }

    public a(int i8) {
        this.f8630a = 2;
        if ((i8 & 1) != 0) {
            this.f8631b = new H(65496, 2, "image/jpeg");
        } else {
            this.f8631b = new p026d1.a();
        }
    }

    @Override // W0.s
    public final s b() {
        return this;
    }
}
