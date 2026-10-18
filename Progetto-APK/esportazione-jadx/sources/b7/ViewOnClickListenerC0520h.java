package b7;

import android.view.View;
import com.google.protobuf.U2;
import pe.hf.black20.CatchupPlayerActivity;
import pe.hf.black20.R;

/* JADX INFO: renamed from: b7.h, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class ViewOnClickListenerC0520h implements View.OnClickListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f10306G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ CatchupPlayerActivity f10307H;

    public /* synthetic */ ViewOnClickListenerC0520h(CatchupPlayerActivity catchupPlayerActivity, int i8) {
        this.f10306G = i8;
        this.f10307H = catchupPlayerActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i8 = this.f10306G;
        CatchupPlayerActivity catchupPlayerActivity = this.f10307H;
        switch (i8) {
            case 0:
                if (!catchupPlayerActivity.f28359j0.equals("paused")) {
                    if (U2.z("ORT_WHICH_PLAYER", "EXO", "EXO")) {
                        B0.O o4 = catchupPlayerActivity.f28375z0;
                        if (o4 != null) {
                            o4.S(false);
                            catchupPlayerActivity.f28375z0.C();
                        }
                    } else if (U2.z("ORT_WHICH_PLAYER", "EXO", "VLC") && catchupPlayerActivity.f28369t0.isPlaying()) {
                        catchupPlayerActivity.f28369t0.pause();
                    }
                    catchupPlayerActivity.f28359j0 = "paused";
                    catchupPlayerActivity.f28347X.setBackgroundResource(R.drawable.btn_player_play);
                    catchupPlayerActivity.a();
                } else {
                    if (U2.z("ORT_WHICH_PLAYER", "EXO", "EXO")) {
                        catchupPlayerActivity.f28375z0.S(false);
                        catchupPlayerActivity.f28375z0.C();
                    } else if (U2.z("ORT_WHICH_PLAYER", "EXO", "VLC") && !catchupPlayerActivity.f28369t0.isPlaying()) {
                        catchupPlayerActivity.f28369t0.play();
                    }
                    catchupPlayerActivity.f28359j0 = "playing";
                    catchupPlayerActivity.f28347X.setBackgroundResource(R.drawable.btn_player_pause);
                    RunnableC0526j runnableC0526j = catchupPlayerActivity.f28365p0;
                    if (runnableC0526j != null) {
                        catchupPlayerActivity.f28363n0.removeCallbacks(runnableC0526j);
                    }
                }
                break;
            case 1:
                int i9 = catchupPlayerActivity.f28357h0 + 60;
                catchupPlayerActivity.f28357h0 = i9;
                catchupPlayerActivity.f28350a0.setProgress(i9);
                catchupPlayerActivity.d(catchupPlayerActivity.f28335L);
                catchupPlayerActivity.a();
                break;
            default:
                int i10 = catchupPlayerActivity.f28357h0 - 60;
                catchupPlayerActivity.f28357h0 = i10;
                catchupPlayerActivity.f28350a0.setProgress(i10);
                catchupPlayerActivity.d(catchupPlayerActivity.f28335L);
                catchupPlayerActivity.a();
                break;
        }
    }
}
