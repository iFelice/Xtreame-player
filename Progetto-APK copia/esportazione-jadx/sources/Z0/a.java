package Z0;

import W0.H;
import W0.s;
import W0.t;
import W0.u;
import W0.w;
import java.util.List;
import p117p0.E;
import z4.F;
import z4.d0;

/* JADX INFO: loaded from: classes.dex */
public final class a implements s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f8211a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final E f8212b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final H f8213c;

    public a(int i8) {
        this.f8211a = i8;
        if (i8 == 1) {
            this.f8212b = new E(4);
            this.f8213c = new H(-1, -1, "image/heif");
        } else if (i8 != 2) {
            this.f8212b = new E(4);
            this.f8213c = new H(-1, -1, "image/avif");
        } else {
            this.f8212b = new E(4);
            this.f8213c = new H(-1, -1, "image/webp");
        }
    }

    @Override // W0.s
    public final void d(u uVar) {
        int i8 = this.f8211a;
        H h8 = this.f8213c;
        switch (i8) {
            case 0:
                h8.d(uVar);
                break;
            case 1:
                h8.d(uVar);
                break;
            default:
                h8.d(uVar);
                break;
        }
    }

    @Override // W0.s
    public final boolean g(t tVar) {
        E e8 = this.f8212b;
        switch (this.f8211a) {
            case 0:
                tVar.g(4);
                e8.I(4);
                tVar.c(0, e8.f28035a, 4);
                if (e8.B() == 1718909296) {
                    e8.I(4);
                    tVar.c(0, e8.f28035a, 4);
                    if (e8.B() == 1635150182) {
                        return true;
                    }
                }
                return false;
            case 1:
                tVar.g(4);
                e8.I(4);
                tVar.c(0, e8.f28035a, 4);
                if (e8.B() == 1718909296) {
                    e8.I(4);
                    tVar.c(0, e8.f28035a, 4);
                    if (e8.B() == 1751476579) {
                        return true;
                    }
                }
                return false;
            default:
                e8.I(4);
                tVar.c(0, e8.f28035a, 4);
                if (e8.B() != 1380533830) {
                    return false;
                }
                tVar.g(4);
                e8.I(4);
                tVar.c(0, e8.f28035a, 4);
                return e8.B() == 1464156752;
        }
    }

    @Override // W0.s
    public final int h(t tVar, w wVar) {
        int i8 = this.f8211a;
        H h8 = this.f8213c;
        switch (i8) {
            case 0:
                break;
            case 1:
                break;
        }
        return h8.h(tVar, wVar);
    }

    @Override // W0.s
    public final void i(long j8, long j9) {
        int i8 = this.f8211a;
        H h8 = this.f8213c;
        switch (i8) {
            case 0:
                h8.i(j8, j9);
                break;
            case 1:
                h8.i(j8, j9);
                break;
            default:
                h8.i(j8, j9);
                break;
        }
    }

    @Override // W0.s
    public final List j() {
        switch (this.f8211a) {
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
    public final s b() {
        return this;
    }

    @Override // W0.s
    public final void release() {
    }
}
