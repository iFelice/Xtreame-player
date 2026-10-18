package b7;

import android.view.MotionEvent;
import android.view.View;
import pe.hf.black20.MultiScreenActivityEXO;

/* JADX INFO: loaded from: classes2.dex */
public final class W implements View.OnTouchListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f10243G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ MultiScreenActivityEXO f10244H;

    public /* synthetic */ W(MultiScreenActivityEXO multiScreenActivityEXO, int i8) {
        this.f10243G = i8;
        this.f10244H = multiScreenActivityEXO;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        int i8 = this.f10243G;
        MultiScreenActivityEXO multiScreenActivityEXO = this.f10244H;
        switch (i8) {
            case 0:
                multiScreenActivityEXO.f28690N0 = "p1";
                break;
            case 1:
                multiScreenActivityEXO.f28690N0 = "p2";
                break;
            case 2:
                multiScreenActivityEXO.f28690N0 = "p3";
                break;
            default:
                multiScreenActivityEXO.f28690N0 = "p4";
                break;
        }
        return multiScreenActivityEXO.f28723b1.onTouchEvent(motionEvent);
    }
}
