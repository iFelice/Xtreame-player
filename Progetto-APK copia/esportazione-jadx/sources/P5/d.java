package P5;

import Z3.C0433o;
import android.hardware.Camera;
import android.util.Log;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class d implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f5926G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ f f5927H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ C0433o f5928I;

    public /* synthetic */ d(f fVar, C0433o c0433o, int i8) {
        this.f5926G = i8;
        this.f5927H = fVar;
        this.f5928I = c0433o;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f5926G;
        C0433o c0433o = this.f5928I;
        f fVar = this.f5927H;
        switch (i8) {
            case 0:
                if (!fVar.f5937f) {
                    Log.d("f", "Camera is closed, not requesting preview");
                } else {
                    fVar.f5932a.b(new d(fVar, c0433o, 1));
                }
                break;
            default:
                h hVar = fVar.f5934c;
                Camera camera = hVar.f5948a;
                if (camera != null && hVar.f5952e) {
                    g gVar = hVar.f5959l;
                    gVar.f5944a = c0433o;
                    camera.setOneShotPreviewCallback(gVar);
                    break;
                }
                break;
        }
    }
}
