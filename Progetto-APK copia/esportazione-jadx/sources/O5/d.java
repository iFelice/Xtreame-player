package O5;

import android.util.Log;
import android.view.KeyEvent;
import android.view.SurfaceHolder;

/* JADX INFO: loaded from: classes2.dex */
public final class d implements SurfaceHolder.Callback {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f5573G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ KeyEvent.Callback f5574H;

    public /* synthetic */ d(KeyEvent.Callback callback, int i8) {
        this.f5573G = i8;
        this.f5574H = callback;
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceChanged(SurfaceHolder surfaceHolder, int i8, int i9, int i10) {
        switch (this.f5573G) {
            case 0:
                if (surfaceHolder != null) {
                    g gVar = (g) this.f5574H;
                    gVar.f5593V = new t(i9, i10);
                    gVar.f();
                } else {
                    int i11 = g.f5577i0;
                    Log.e("g", "*** WARNING *** surfaceChanged() gave us a null surface!");
                }
                break;
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        switch (this.f5573G) {
            case 0:
                ((g) this.f5574H).f5593V = null;
                break;
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceCreated(SurfaceHolder surfaceHolder) {
    }
}
