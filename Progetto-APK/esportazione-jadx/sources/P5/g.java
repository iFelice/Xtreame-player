package P5;

import O5.t;
import O5.u;
import Z3.C0433o;
import android.hardware.Camera;
import android.util.Log;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes2.dex */
public final class g implements Camera.PreviewCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public C0433o f5944a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public t f5945b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ h f5946c;

    public g(h hVar) {
        this.f5946c = hVar;
    }

    @Override // android.hardware.Camera.PreviewCallback
    public final void onPreviewFrame(byte[] bArr, Camera camera) {
        t tVar = this.f5945b;
        C0433o c0433o = this.f5944a;
        if (tVar == null || c0433o == null) {
            Log.d("h", "Got preview callback, but no handler or resolution available");
            if (c0433o != null) {
                new Exception("No resolution available");
                c0433o.g();
                return;
            }
            return;
        }
        try {
            if (bArr == null) {
                throw new NullPointerException("No preview data received");
            }
            u uVar = new u(bArr, tVar.f5638G, tVar.f5639H, camera.getParameters().getPreviewFormat(), this.f5946c.f5958k);
            if (this.f5946c.f5949b.facing == 1) {
                uVar.f5644e = true;
            }
            synchronized (((O5.o) c0433o.f8372H).f5633h) {
                try {
                    Object obj = c0433o.f8372H;
                    if (((O5.o) obj).f5632g) {
                        ((O5.o) obj).f5628c.obtainMessage(R.id.zxing_decode, uVar).sendToTarget();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (RuntimeException e8) {
            Log.e("h", "Camera preview failed", e8);
            c0433o.g();
        }
    }
}
