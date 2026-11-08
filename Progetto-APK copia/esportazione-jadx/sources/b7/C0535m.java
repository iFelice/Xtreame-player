package b7;

import B0.C0072w;
import android.app.Activity;
import android.net.Uri;
import android.util.Log;
import com.google.protobuf.U2;
import java.util.List;
import p094m0.C3121d;
import p094m0.C3129l;
import pe.hf.black20.CatchupPlayerActivity;
import pe.hf.black20.PlayStreamEPGActivity;

/* JADX INFO: renamed from: b7.m, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C0535m implements p094m0.W {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f10347G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ Activity f10348H;

    public /* synthetic */ C0535m(Activity activity, int i8) {
        this.f10347G = i8;
        this.f10348H = activity;
    }

    @Override // p094m0.W
    public final void m(int i8) {
        int i9 = this.f10347G;
        Activity activity = this.f10348H;
        switch (i9) {
            case 0:
                if (i8 != 2) {
                    ((CatchupPlayerActivity) activity).f28338O.setVisibility(4);
                } else {
                    CatchupPlayerActivity catchupPlayerActivity = (CatchupPlayerActivity) activity;
                    if (catchupPlayerActivity.f28328C0) {
                        catchupPlayerActivity.f28338O.setVisibility(0);
                    }
                }
                break;
            default:
                if (i8 != 2) {
                    PlayStreamEPGActivity playStreamEPGActivity = (PlayStreamEPGActivity) activity;
                    playStreamEPGActivity.f28833B0.setVisibility(4);
                    playStreamEPGActivity.f28910f1 = "playing";
                } else {
                    PlayStreamEPGActivity playStreamEPGActivity2 = (PlayStreamEPGActivity) activity;
                    if (playStreamEPGActivity2.f28844E2) {
                        playStreamEPGActivity2.f28833B0.setVisibility(0);
                    }
                    playStreamEPGActivity2.f28910f1 = "buffering";
                }
                break;
        }
    }

    @Override // p094m0.W
    public final void onRepeatModeChanged(int i8) {
        switch (this.f10347G) {
            case 0:
                Log.d("XCIPTV_TAG", "-------------onRepeatModeChanged-------------");
                break;
            default:
                Log.d("XCIPTV_TAG", "-------------onRepeatModeChanged-------------");
                break;
        }
    }

    @Override // p094m0.W
    public final void p(C0072w c0072w) {
        int i8 = this.f10347G;
        Activity activity = this.f10348H;
        switch (i8) {
            case 0:
                Log.d("XCIPTV_TAG", "-------------onPlayerError-------------");
                CatchupPlayerActivity catchupPlayerActivity = (CatchupPlayerActivity) activity;
                String str = catchupPlayerActivity.f28327B0;
                str.getClass();
                str.hashCode();
                switch (str) {
                    case "":
                        catchupPlayerActivity.f28327B0 = "hls";
                        break;
                    case "hls":
                        catchupPlayerActivity.f28327B0 = "other";
                        break;
                    case "other":
                        catchupPlayerActivity.f28327B0 = "hls";
                        break;
                }
                B0.O o4 = catchupPlayerActivity.f28375z0;
                o4.c0();
                o4.X(null);
                z4.d0 d0Var = z4.d0.f31844K;
                long j8 = o4.f778N0.f1110s;
                o4.f764G0 = new p110o0.c(d0Var);
                catchupPlayerActivity.f28375z0.Q(catchupPlayerActivity.c(Uri.parse(catchupPlayerActivity.f28334K)));
                if (z4.q0.q().c("ORT_WHICH_CAT", "TV").equals("TV") || U2.z("ORT_WHICH_CAT", "TV", "FAV")) {
                    catchupPlayerActivity.f28375z0.T(2);
                }
                catchupPlayerActivity.f28375z0.K();
                catchupPlayerActivity.f28375z0.S(true);
                break;
            default:
                Log.d("XCIPTV_TAG", "-------------onPlayerError-------------");
                PlayStreamEPGActivity playStreamEPGActivity = (PlayStreamEPGActivity) activity;
                String str2 = playStreamEPGActivity.f28929l2;
                str2.getClass();
                str2.hashCode();
                switch (str2) {
                    case "":
                        playStreamEPGActivity.f28929l2 = "hls";
                        break;
                    case "hls":
                        playStreamEPGActivity.f28929l2 = "other";
                        break;
                    case "other":
                        playStreamEPGActivity.f28929l2 = "hls";
                        break;
                }
                B0.O o7 = playStreamEPGActivity.f28859J2;
                o7.c0();
                o7.X(null);
                z4.d0 d0Var2 = z4.d0.f31844K;
                long j9 = o7.f778N0.f1110s;
                o7.f764G0 = new p110o0.c(d0Var2);
                playStreamEPGActivity.f28859J2.Q(playStreamEPGActivity.H(Uri.parse(PlayStreamEPGActivity.f28828Q2)));
                if (z4.q0.q().c("ORT_WHICH_CAT", "TV").equals("TV") || U2.z("ORT_WHICH_CAT", "TV", "FAV")) {
                    playStreamEPGActivity.f28859J2.T(2);
                }
                playStreamEPGActivity.f28859J2.K();
                playStreamEPGActivity.f28859J2.S(true);
                break;
        }
    }

    @Override // p094m0.W
    public final void v(C0072w c0072w) {
        switch (this.f10347G) {
            case 0:
                Log.d("XCIPTV_TAG", "-------------onPlayerErrorChanged-------------");
                break;
            default:
                Log.d("XCIPTV_TAG", "-------------onPlayerErrorChanged-------------");
                break;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0535m(CatchupPlayerActivity catchupPlayerActivity) {
        this(catchupPlayerActivity, 0);
        this.f10347G = 0;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0535m(PlayStreamEPGActivity playStreamEPGActivity) {
        this(playStreamEPGActivity, 1);
        this.f10347G = 1;
    }

    @Override // p094m0.W
    public final /* synthetic */ void x() {
    }

    @Override // p094m0.W
    public final void A(p094m0.m0 m0Var) {
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
    public final /* synthetic */ void L(p094m0.k0 k0Var) {
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
    public final /* synthetic */ void g(p094m0.w0 w0Var) {
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
    public final void o(boolean z7) {
    }

    @Override // p094m0.W
    public final /* synthetic */ void q(p094m0.N n7) {
    }

    @Override // p094m0.W
    public final /* synthetic */ void u(int i8) {
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
    public final /* synthetic */ void e(int i8, p094m0.X x7, p094m0.X x8) {
    }
}
