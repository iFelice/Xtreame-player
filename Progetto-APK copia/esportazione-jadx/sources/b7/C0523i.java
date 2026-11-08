package b7;

import android.os.Handler;
import android.util.Log;
import android.widget.SeekBar;
import pe.hf.black20.CatchupPlayerActivity;
import pe.hf.black20.util.Methods;

/* JADX INFO: renamed from: b7.i, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C0523i implements SeekBar.OnSeekBarChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10311a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f10312b;

    public /* synthetic */ C0523i(Object obj, int i8) {
        this.f10311a = i8;
        this.f10312b = obj;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onProgressChanged(SeekBar seekBar, int i8, boolean z7) {
        int i9 = this.f10311a;
        Object obj = this.f10312b;
        switch (i9) {
            case 0:
                CatchupPlayerActivity catchupPlayerActivity = (CatchupPlayerActivity) obj;
                int i10 = (catchupPlayerActivity.f28354e0 * i8) + catchupPlayerActivity.f28356g0;
                catchupPlayerActivity.f28357h0 = i10;
                catchupPlayerActivity.f28344U.setText(Methods.a(i10));
                int i11 = catchupPlayerActivity.f28356g0;
                if (i8 < i11) {
                    seekBar.setProgress(i11);
                }
                break;
            default:
                Log.d("XCIPTV_TAG", "----onStopTrackingTouch-onProgressChanged");
                CatchupPlayerActivity catchupPlayerActivity2 = (CatchupPlayerActivity) obj;
                RunnableC0526j runnableC0526j = catchupPlayerActivity2.f28364o0;
                if (runnableC0526j != null) {
                    catchupPlayerActivity2.f28362m0.removeCallbacks(runnableC0526j);
                }
                Handler handler = new Handler();
                catchupPlayerActivity2.f28362m0 = handler;
                RunnableC0526j runnableC0526j2 = new RunnableC0526j(catchupPlayerActivity2, 0);
                catchupPlayerActivity2.f28364o0 = runnableC0526j2;
                handler.postDelayed(runnableC0526j2, 3000L);
                break;
        }
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStartTrackingTouch(SeekBar seekBar) {
        int i8 = this.f10311a;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStopTrackingTouch(SeekBar seekBar) {
        int i8 = this.f10311a;
        Object obj = this.f10312b;
        switch (i8) {
            case 0:
                CatchupPlayerActivity catchupPlayerActivity = (CatchupPlayerActivity) obj;
                catchupPlayerActivity.d(catchupPlayerActivity.f28335L);
                break;
            default:
                Log.d("XCIPTV_TAG", "----onStopTrackingTouch");
                ((CatchupPlayerActivity) obj).f28341R.setVisibility(8);
                break;
        }
    }
}
