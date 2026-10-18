package D1;

import B0.C0072w;
import B0.RunnableC0052h0;
import android.os.Build;
import android.view.SurfaceView;
import android.view.View;
import android.widget.ImageView;
import androidx.media3.ui.PlayerView;
import androidx.media3.ui.SubtitleView;
import java.util.List;
import p094m0.AbstractC3123f;
import p094m0.C3121d;
import p094m0.C3129l;
import p094m0.W;
import p094m0.X;
import p094m0.Y;
import p094m0.d0;
import p094m0.f0;
import p094m0.k0;
import p094m0.m0;
import p094m0.w0;

/* JADX INFO: loaded from: classes.dex */
public final class D implements W, View.OnClickListener, InterfaceC0155u, InterfaceC0147l {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final d0 f2060G = new d0();

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public Object f2061H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ PlayerView f2062I;

    public D(PlayerView playerView) {
        this.f2062I = playerView;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x004e  */
    /* JADX WARN: Code duplicated, block: B:16:0x0052  */
    /* JADX WARN: Code duplicated, block: B:18:0x0059  */
    /* JADX WARN: Code duplicated, block: B:20:0x0067 A[RETURN] */
    @Override // p094m0.W
    public final void A(m0 m0Var) {
        Object obj;
        int iB;
        PlayerView playerView = this.f2062I;
        Y y7 = playerView.f9497b0;
        y7.getClass();
        AbstractC3123f abstractC3123f = (AbstractC3123f) y7;
        f0 f0VarX = abstractC3123f.c(17) ? ((B0.O) y7).x() : f0.f26851a;
        if (f0VarX.q()) {
            this.f2061H = null;
        } else {
            boolean zC = abstractC3123f.c(30);
            d0 d0Var = this.f2060G;
            if (zC) {
                B0.O o4 = (B0.O) y7;
                if (o4.y().f26959a.isEmpty()) {
                    obj = this.f2061H;
                    if (obj != null) {
                        iB = f0VarX.b(obj);
                        if (iB != -1) {
                            if (((B0.O) y7).t() == f0VarX.g(iB, d0Var, false).f26827c) {
                                return;
                            }
                        }
                        this.f2061H = null;
                    }
                } else {
                    this.f2061H = f0VarX.g(o4.u(), d0Var, true).f26826b;
                }
            } else {
                obj = this.f2061H;
                if (obj != null) {
                    iB = f0VarX.b(obj);
                    if (iB != -1) {
                        if (((B0.O) y7).t() == f0VarX.g(iB, d0Var, false).f26827c) {
                            return;
                        }
                    }
                    this.f2061H = null;
                }
            }
        }
        playerView.o(false);
    }

    @Override // p094m0.W
    public final void G(int i8, int i9) {
        if (Build.VERSION.SDK_INT == 34) {
            PlayerView playerView = this.f2062I;
            if ((playerView.f9482J instanceof SurfaceView) && playerView.f9510o0) {
                H h8 = playerView.f9484L;
                h8.getClass();
                playerView.f9493U.post(new RunnableC0052h0(h8, (SurfaceView) playerView.f9482J, new p000a.b(playerView, 24), 6));
            }
        }
    }

    @Override // p094m0.W
    public final void b(p110o0.c cVar) {
        SubtitleView subtitleView = this.f2062I.f9487O;
        if (subtitleView != null) {
            subtitleView.setCues(cVar.f27655a);
        }
    }

    @Override // p094m0.W
    public final void e(int i8, X x7, X x8) {
        C0156v c0156v;
        int i9 = PlayerView.f9478p0;
        PlayerView playerView = this.f2062I;
        if (playerView.e() && playerView.f9508m0 && (c0156v = playerView.f9490R) != null) {
            c0156v.g();
        }
    }

    @Override // p094m0.W
    public final void g(w0 w0Var) {
        PlayerView playerView;
        Y y7;
        if (w0Var.equals(w0.f27062d) || (y7 = (playerView = this.f2062I).f9497b0) == null || ((B0.O) y7).C() == 1) {
            return;
        }
        playerView.k();
    }

    @Override // p094m0.W
    public final void j(int i8, boolean z7) {
        int i9 = PlayerView.f9478p0;
        PlayerView playerView = this.f2062I;
        playerView.l();
        if (!playerView.e() || !playerView.f9508m0) {
            playerView.f(false);
            return;
        }
        C0156v c0156v = playerView.f9490R;
        if (c0156v != null) {
            c0156v.g();
        }
    }

    @Override // p094m0.W
    public final void m(int i8) {
        int i9 = PlayerView.f9478p0;
        PlayerView playerView = this.f2062I;
        playerView.l();
        playerView.n();
        if (!playerView.e() || !playerView.f9508m0) {
            playerView.f(false);
            return;
        }
        C0156v c0156v = playerView.f9490R;
        if (c0156v != null) {
            c0156v.g();
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i8 = PlayerView.f9478p0;
        this.f2062I.j();
    }

    @Override // p094m0.W
    public final void x() {
        PlayerView playerView = this.f2062I;
        View view = playerView.f9481I;
        if (view != null) {
            view.setVisibility(4);
            if (!playerView.b()) {
                playerView.d();
                return;
            }
            ImageView imageView = playerView.f9485M;
            if (imageView != null) {
                imageView.setVisibility(4);
            }
        }
    }

    @Override // p094m0.W
    public final /* synthetic */ void B(p094m0.L l4) {
    }

    @Override // p094m0.W
    public final /* synthetic */ void D(p094m0.V v5) {
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
    public final /* synthetic */ void c(int i8) {
    }

    @Override // p094m0.W
    public final /* synthetic */ void d(p094m0.U u7) {
    }

    @Override // p094m0.W
    public final /* synthetic */ void f(boolean z7) {
    }

    @Override // p094m0.W
    public final /* synthetic */ void i(boolean z7) {
    }

    @Override // p094m0.W
    public final /* synthetic */ void k(float f8) {
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
    public final /* synthetic */ void t(p094m0.I i8, int i9) {
    }

    @Override // p094m0.W
    public final /* synthetic */ void z(int i8, boolean z7) {
    }
}
