package b7;

import android.app.Activity;
import android.util.Log;
import android.view.GestureDetector;
import android.view.MotionEvent;
import com.google.protobuf.U2;
import pe.hf.black20.CatchupPlayerActivity;
import pe.hf.black20.MultiScreenActivityEXO;
import pe.hf.black20.PlayStreamEPGActivity;

/* JADX INFO: renamed from: b7.l, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C0532l extends GestureDetector.SimpleOnGestureListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f10341G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ Activity f10342H;

    public /* synthetic */ C0532l(Activity activity, int i8) {
        this.f10341G = i8;
        this.f10342H = activity;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
    public final boolean onDoubleTap(MotionEvent motionEvent) {
        switch (this.f10341G) {
            case 0:
                Log.i("XCIPTV_TAG", "onDoubleTap: ");
                break;
            case 1:
                Log.i("XCIPTV_TAG", "onDoubleTap: ");
                break;
        }
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public final boolean onDown(MotionEvent motionEvent) {
        switch (this.f10341G) {
            case 0:
                Log.d("XCIPTV_TAG", "onDown: ");
                break;
            case 1:
                Log.d("XCIPTV_TAG", "onDown: ");
                break;
        }
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public final boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f8, float f9) {
        switch (this.f10341G) {
            case 0:
                Log.d("XCIPTV_TAG", "onFling: ");
                break;
            case 1:
                Log.d("XCIPTV_TAG", "onFling: ");
                break;
        }
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public final void onLongPress(MotionEvent motionEvent) {
        switch (this.f10341G) {
            case 0:
                Log.i("XCIPTV_TAG", "onLongPress-----: ");
                break;
            case 1:
                Log.i("XCIPTV_TAG", "onLongPress-----: ");
                break;
        }
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public final boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f8, float f9) {
        switch (this.f10341G) {
            case 0:
                Log.i("XCIPTV_TAG", "onScroll: ");
                break;
            case 1:
                Log.i("XCIPTV_TAG", "onScroll: ");
                break;
        }
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
    public final boolean onSingleTapConfirmed(MotionEvent motionEvent) {
        int i8 = this.f10341G;
        Activity activity = this.f10342H;
        switch (i8) {
            case 0:
                Log.i("XCIPTV_TAG", "onSingleTapConfirmed: ");
                CatchupPlayerActivity catchupPlayerActivity = (CatchupPlayerActivity) activity;
                if (!catchupPlayerActivity.f28340Q.isShown()) {
                    if (catchupPlayerActivity.f28340Q.isShown()) {
                        catchupPlayerActivity.f28340Q.setVisibility(8);
                    } else {
                        catchupPlayerActivity.f28340Q.setVisibility(0);
                    }
                    catchupPlayerActivity.f28347X.requestFocus();
                    catchupPlayerActivity.a();
                }
                break;
            case 1:
                Log.i("XCIPTV_TAG", "onSingleTapConfirmed: ");
                MultiScreenActivityEXO multiScreenActivityEXO = (MultiScreenActivityEXO) activity;
                if (multiScreenActivityEXO.f28690N0.equals("p1")) {
                    multiScreenActivityEXO.f28722b0.setVisibility(0);
                    multiScreenActivityEXO.f28724c0.setVisibility(8);
                    multiScreenActivityEXO.f28726d0.setVisibility(8);
                    multiScreenActivityEXO.f28728e0.setVisibility(8);
                } else if (multiScreenActivityEXO.f28690N0.equals("p2")) {
                    multiScreenActivityEXO.f28722b0.setVisibility(8);
                    multiScreenActivityEXO.f28724c0.setVisibility(0);
                    multiScreenActivityEXO.f28726d0.setVisibility(8);
                    multiScreenActivityEXO.f28728e0.setVisibility(8);
                } else if (multiScreenActivityEXO.f28690N0.equals("p3")) {
                    multiScreenActivityEXO.f28722b0.setVisibility(8);
                    multiScreenActivityEXO.f28724c0.setVisibility(8);
                    multiScreenActivityEXO.f28726d0.setVisibility(0);
                    multiScreenActivityEXO.f28728e0.setVisibility(8);
                } else if (!multiScreenActivityEXO.f28690N0.equals("p4")) {
                    multiScreenActivityEXO.f28722b0.setVisibility(0);
                    multiScreenActivityEXO.f28724c0.setVisibility(8);
                    multiScreenActivityEXO.f28726d0.setVisibility(8);
                    multiScreenActivityEXO.f28728e0.setVisibility(8);
                } else {
                    multiScreenActivityEXO.f28722b0.setVisibility(8);
                    multiScreenActivityEXO.f28724c0.setVisibility(8);
                    multiScreenActivityEXO.f28726d0.setVisibility(8);
                    multiScreenActivityEXO.f28728e0.setVisibility(0);
                }
                break;
            default:
                if (U2.z("ORT_WHICH_CAT", "TV", "VOD") || U2.z("ORT_WHICH_CAT", "TV", "SERIES")) {
                    PlayStreamEPGActivity playStreamEPGActivity = (PlayStreamEPGActivity) activity;
                    if (!playStreamEPGActivity.f28921j0.equals("1")) {
                        playStreamEPGActivity.B();
                    } else {
                        playStreamEPGActivity.Z();
                    }
                } else if (!U2.z("ORT_LIVE_TV_EPG_MODE", "yes", "yes")) {
                    String str = PlayStreamEPGActivity.THEME;
                    ((PlayStreamEPGActivity) activity).Z();
                } else {
                    PlayStreamEPGActivity playStreamEPGActivity2 = (PlayStreamEPGActivity) activity;
                    if (!playStreamEPGActivity2.f28921j0.equals("1")) {
                        playStreamEPGActivity2.B();
                    } else {
                        playStreamEPGActivity2.Z();
                    }
                }
                break;
        }
        return true;
    }
}
