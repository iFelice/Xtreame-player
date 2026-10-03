package D1;

import B0.C0072w;
import android.view.View;
import android.widget.ImageView;
import android.widget.PopupWindow;
import java.util.List;
import p094m0.AbstractC3123f;
import p094m0.C3121d;
import p094m0.C3129l;
import p094m0.W;
import p094m0.X;
import p094m0.Y;
import p094m0.k0;
import p094m0.m0;
import p094m0.w0;

/* JADX INFO: renamed from: D1.k, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class ViewOnClickListenerC0146k implements W, View.OnClickListener, PopupWindow.OnDismissListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ C0156v f2190G;

    public ViewOnClickListenerC0146k(C0156v c0156v) {
        this.f2190G = c0156v;
    }

    @Override // p094m0.W
    public final void D(p094m0.V v5) {
        boolean zA = v5.a(4, 5, 13);
        C0156v c0156v = this.f2190G;
        if (zA) {
            c0156v.q();
        }
        if (v5.a(4, 5, 7, 13)) {
            c0156v.s();
        }
        if (v5.a(8, 13)) {
            c0156v.t();
        }
        if (v5.a(9, 13)) {
            c0156v.v();
        }
        if (v5.a(8, 9, 11, 0, 16, 17, 13)) {
            c0156v.p();
        }
        if (v5.a(11, 0, 13)) {
            c0156v.w();
        }
        if (v5.a(12, 13)) {
            c0156v.r();
        }
        if (v5.a(2, 13)) {
            c0156v.x();
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        C0156v c0156v = this.f2190G;
        Y y7 = c0156v.f2252V0;
        if (y7 == null) {
            return;
        }
        B b8 = c0156v.f2221G;
        b8.h();
        if (c0156v.f2262c0 == view) {
            AbstractC3123f abstractC3123f = (AbstractC3123f) y7;
            if (abstractC3123f.c(9)) {
                abstractC3123f.k();
                return;
            }
            return;
        }
        if (c0156v.f2260b0 == view) {
            AbstractC3123f abstractC3123f2 = (AbstractC3123f) y7;
            if (abstractC3123f2.c(7)) {
                abstractC3123f2.m();
                return;
            }
            return;
        }
        if (c0156v.f2266e0 == view) {
            if (((B0.O) y7).C() != 4) {
                AbstractC3123f abstractC3123f3 = (AbstractC3123f) y7;
                if (abstractC3123f3.c(12)) {
                    B0.O o4 = (B0.O) abstractC3123f3;
                    o4.c0();
                    abstractC3123f3.l(12, o4.f794b0);
                    return;
                }
                return;
            }
            return;
        }
        if (c0156v.f2268f0 == view) {
            AbstractC3123f abstractC3123f4 = (AbstractC3123f) y7;
            if (abstractC3123f4.c(11)) {
                B0.O o7 = (B0.O) abstractC3123f4;
                o7.c0();
                abstractC3123f4.l(11, -o7.f793a0);
                return;
            }
            return;
        }
        if (c0156v.f2264d0 == view) {
            if (p117p0.M.b0(y7, c0156v.f2259a1)) {
                p117p0.M.H(y7);
                return;
            }
            AbstractC3123f abstractC3123f5 = (AbstractC3123f) y7;
            if (abstractC3123f5.c(1)) {
                ((B0.O) abstractC3123f5).S(false);
                return;
            }
            return;
        }
        if (c0156v.f2274i0 == view) {
            if (((AbstractC3123f) y7).c(15)) {
                B0.O o8 = (B0.O) y7;
                o8.c0();
                int i8 = o8.f803k0;
                int i9 = c0156v.f2271g1;
                for (int i10 = 1; i10 <= 2; i10++) {
                    int i11 = (i8 + i10) % 3;
                    if (i11 != 0) {
                        if (i11 != 1) {
                            if (i11 != 2 || (i9 & 2) == 0) {
                            }
                        } else if ((i9 & 1) == 0) {
                        }
                    }
                    i8 = i11;
                }
                o8.T(i8);
                return;
            }
            return;
        }
        if (c0156v.f2276j0 == view) {
            if (((AbstractC3123f) y7).c(14)) {
                B0.O o9 = (B0.O) y7;
                o9.c0();
                boolean z7 = !o9.f804l0;
                o9.c0();
                if (o9.f804l0 != z7) {
                    o9.f804l0 = z7;
                    p117p0.I i12 = o9.f784R.f864N;
                    i12.getClass();
                    p117p0.H hB = p117p0.I.b();
                    hB.f28041a = i12.f28043a.obtainMessage(12, z7 ? 1 : 0, 0);
                    hB.b();
                    B0.I i13 = new B0.I(z7, 0);
                    p178x.e eVar = o9.f785S;
                    eVar.j(9, i13);
                    o9.Y();
                    eVar.g();
                    return;
                }
                return;
            }
            return;
        }
        View view2 = c0156v.f2285o0;
        if (view2 == view) {
            b8.g();
            c0156v.e(c0156v.f2243R, view2);
            return;
        }
        View view3 = c0156v.f2286p0;
        if (view3 == view) {
            b8.g();
            c0156v.e(c0156v.f2245S, view3);
            return;
        }
        View view4 = c0156v.f2287q0;
        if (view4 == view) {
            b8.g();
            c0156v.e(c0156v.f2249U, view4);
            return;
        }
        ImageView imageView = c0156v.f2280l0;
        if (imageView == view) {
            b8.g();
            c0156v.e(c0156v.f2247T, imageView);
        }
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        C0156v c0156v = this.f2190G;
        if (c0156v.f2283m1) {
            c0156v.f2221G.h();
        }
    }

    @Override // p094m0.W
    public final /* synthetic */ void x() {
    }

    @Override // p094m0.W
    public final /* synthetic */ void A(m0 m0Var) {
    }

    @Override // p094m0.W
    public final /* synthetic */ void B(p094m0.L l4) {
    }

    @Override // p094m0.W
    public final /* synthetic */ void J(C3129l c3129l) {
    }

    @Override // p094m0.W
    public final /* synthetic */ void K(C3121d c3121d) {
    }

    @Override // p094m0.W
    public final /* synthetic */ void L(k0 k0Var) {
    }

    @Override // p094m0.W
    public final /* synthetic */ void O(boolean z7) {
    }

    @Override // p094m0.W
    public final /* synthetic */ void a(int i8) {
    }

    @Override // p094m0.W
    public final /* synthetic */ void b(p110o0.c cVar) {
    }

    @Override // p094m0.W
    public final /* synthetic */ void c(int i8) {
    }

    @Override // p094m0.W
    public final /* synthetic */ void d(p094m0.U u7) {
    }

    @Override // p094m0.W
    public final /* synthetic */ void f(boolean z7) {
    }

    @Override // p094m0.W
    public final /* synthetic */ void g(w0 w0Var) {
    }

    @Override // p094m0.W
    public final /* synthetic */ void i(boolean z7) {
    }

    @Override // p094m0.W
    public final /* synthetic */ void k(float f8) {
    }

    @Override // p094m0.W
    public final /* synthetic */ void m(int i8) {
    }

    @Override // p094m0.W
    public final /* synthetic */ void n(p094m0.S s7) {
    }

    @Override // p094m0.W
    public final /* synthetic */ void o(boolean z7) {
    }

    @Override // p094m0.W
    public final /* synthetic */ void onRepeatModeChanged(int i8) {
    }

    @Override // p094m0.W
    public final /* synthetic */ void p(C0072w c0072w) {
    }

    @Override // p094m0.W
    public final /* synthetic */ void q(p094m0.N n7) {
    }

    @Override // p094m0.W
    public final /* synthetic */ void u(int i8) {
    }

    @Override // p094m0.W
    public final /* synthetic */ void v(C0072w c0072w) {
    }

    @Override // p094m0.W
    public final /* synthetic */ void y(List list) {
    }

    @Override // p094m0.W
    public final /* synthetic */ void G(int i8, int i9) {
    }

    @Override // p094m0.W
    public final /* synthetic */ void j(int i8, boolean z7) {
    }

    @Override // p094m0.W
    public final /* synthetic */ void t(p094m0.I i8, int i9) {
    }

    @Override // p094m0.W
    public final /* synthetic */ void z(int i8, boolean z7) {
    }

    @Override // p094m0.W
    public final /* synthetic */ void e(int i8, X x7, X x8) {
    }
}
