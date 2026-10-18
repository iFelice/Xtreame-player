package P5;

import O5.t;
import android.graphics.SurfaceTexture;
import android.hardware.Camera;
import android.os.Handler;
import android.util.Log;
import android.view.SurfaceHolder;
import com.google.android.gms.internal.atv_ads_framework.x0;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes2.dex */
public final class e implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f5929G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ f f5930H;

    public /* synthetic */ e(f fVar, int i8) {
        this.f5929G = i8;
        this.f5930H = fVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        t tVar = null;
        switch (this.f5929G) {
            case 0:
                f fVar = this.f5930H;
                try {
                    Log.d("f", "Opening camera");
                    fVar.f5934c.c();
                    return;
                } catch (Exception e8) {
                    Handler handler = fVar.f5935d;
                    if (handler != null) {
                        handler.obtainMessage(R.id.zxing_camera_error, e8).sendToTarget();
                    }
                    Log.e("f", "Failed to open camera", e8);
                    return;
                }
            case 1:
                f fVar2 = this.f5930H;
                try {
                    Log.d("f", "Configuring camera");
                    fVar2.f5934c.b();
                    Handler handler2 = fVar2.f5935d;
                    if (handler2 != null) {
                        h hVar = fVar2.f5934c;
                        t tVar2 = hVar.f5957j;
                        if (tVar2 != null) {
                            int i8 = hVar.f5958k;
                            if (i8 == -1) {
                                throw new IllegalStateException("Rotation not calculated yet. Call configure() first.");
                            }
                            tVar = i8 % 180 != 0 ? new t(tVar2.f5639H, tVar2.f5638G) : tVar2;
                        }
                        handler2.obtainMessage(R.id.zxing_prewiew_size_ready, tVar).sendToTarget();
                        return;
                    }
                    return;
                } catch (Exception e9) {
                    Handler handler3 = fVar2.f5935d;
                    if (handler3 != null) {
                        handler3.obtainMessage(R.id.zxing_camera_error, e9).sendToTarget();
                    }
                    Log.e("f", "Failed to configure camera", e9);
                    return;
                }
            case 2:
                f fVar3 = this.f5930H;
                try {
                    Log.d("f", "Starting preview");
                    h hVar2 = fVar3.f5934c;
                    x0 x0Var = fVar3.f5933b;
                    Camera camera = hVar2.f5948a;
                    SurfaceHolder surfaceHolder = (SurfaceHolder) x0Var.f22390H;
                    if (surfaceHolder != null) {
                        camera.setPreviewDisplay(surfaceHolder);
                    } else {
                        camera.setPreviewTexture((SurfaceTexture) x0Var.f22391I);
                    }
                    fVar3.f5934c.f();
                    return;
                } catch (Exception e10) {
                    Handler handler4 = fVar3.f5935d;
                    if (handler4 != null) {
                        handler4.obtainMessage(R.id.zxing_camera_error, e10).sendToTarget();
                    }
                    Log.e("f", "Failed to start preview", e10);
                    return;
                }
            default:
                try {
                    Log.d("f", "Closing camera");
                    h hVar3 = this.f5930H.f5934c;
                    b bVar = hVar3.f5950c;
                    if (bVar != null) {
                        bVar.c();
                        hVar3.f5950c = null;
                    }
                    if (hVar3.f5951d != null) {
                        hVar3.f5951d = null;
                    }
                    Camera camera2 = hVar3.f5948a;
                    if (camera2 != null && hVar3.f5952e) {
                        camera2.stopPreview();
                        hVar3.f5959l.f5944a = null;
                        hVar3.f5952e = false;
                    }
                    h hVar4 = this.f5930H.f5934c;
                    Camera camera3 = hVar4.f5948a;
                    if (camera3 != null) {
                        camera3.release();
                        hVar4.f5948a = null;
                    }
                    break;
                } catch (Exception e11) {
                    Log.e("f", "Failed to close camera", e11);
                }
                f fVar4 = this.f5930H;
                fVar4.f5938g = true;
                fVar4.f5935d.sendEmptyMessage(R.id.zxing_camera_closed);
                j jVar = this.f5930H.f5932a;
                synchronized (jVar.f5965d) {
                    try {
                        int i9 = jVar.f5964c - 1;
                        jVar.f5964c = i9;
                        if (i9 == 0) {
                            jVar.c();
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                    break;
                }
                return;
        }
    }
}
