package b7;

import android.util.Log;
import pe.hf.black20.CatchupPlayerActivity;

/* JADX INFO: renamed from: b7.j, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class RunnableC0526j implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f10322G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ CatchupPlayerActivity f10323H;

    public /* synthetic */ RunnableC0526j(CatchupPlayerActivity catchupPlayerActivity, int i8) {
        this.f10322G = i8;
        this.f10323H = catchupPlayerActivity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f10322G;
        CatchupPlayerActivity catchupPlayerActivity = this.f10323H;
        switch (i8) {
            case 0:
                Log.d("XCIPTV_TAG", "Disapear Volume Seekbar.....");
                catchupPlayerActivity.f28341R.setVisibility(8);
                break;
            default:
                Log.d("XCIPTV_TAG", "Disapear Media Conrol view.....");
                catchupPlayerActivity.f28340Q.setVisibility(8);
                catchupPlayerActivity.f28342S.requestFocus();
                break;
        }
    }
}
