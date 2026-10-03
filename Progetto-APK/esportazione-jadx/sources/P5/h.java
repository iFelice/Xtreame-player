package P5;

import O5.t;
import android.content.Context;
import android.hardware.Camera;
import android.os.Build;
import android.os.Handler;
import android.util.Log;
import com.google.android.gms.internal.measurement.C2638u;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import okhttp3.HttpUrl;
import org.videolan.libvlc.MediaPlayer;

/* JADX INFO: loaded from: classes2.dex */
public final class h {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final /* synthetic */ int f5947m = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Camera f5948a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Camera.CameraInfo f5949b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public b f5950c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public p161u5.a f5951d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f5952e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f5953f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public l f5955h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public t f5956i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public t f5957j;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public i f5954g = new i();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f5958k = -1;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final g f5959l = new g(this);

    public h(Context context) {
    }

    public final int a() {
        int i8 = this.f5955h.f5967b;
        int i9 = 0;
        if (i8 != 0) {
            if (i8 == 1) {
                i9 = 90;
            } else if (i8 == 2) {
                i9 = 180;
            } else if (i8 == 3) {
                i9 = MediaPlayer.Event.PausableChanged;
            }
        }
        Camera.CameraInfo cameraInfo = this.f5949b;
        int i10 = cameraInfo.facing == 1 ? (360 - ((cameraInfo.orientation + i9) % 360)) % 360 : ((cameraInfo.orientation - i9) + 360) % 360;
        Log.i("h", "Camera Display Orientation: " + i10);
        return i10;
    }

    public final void b() {
        if (this.f5948a == null) {
            throw new RuntimeException("Camera not open");
        }
        try {
            int iA = a();
            this.f5958k = iA;
            this.f5948a.setDisplayOrientation(iA);
        } catch (Exception unused) {
            Log.w("h", "Failed to set rotation.");
        }
        try {
            d(false);
        } catch (Exception unused2) {
            try {
                d(true);
            } catch (Exception unused3) {
                Log.w("h", "Camera rejected even safe-mode parameters! No configuration");
            }
        }
        Camera.Size previewSize = this.f5948a.getParameters().getPreviewSize();
        if (previewSize == null) {
            this.f5957j = this.f5956i;
        } else {
            this.f5957j = new t(previewSize.width, previewSize.height);
        }
        this.f5959l.f5945b = this.f5957j;
    }

    public final void c() {
        int iB = p096m2.f.b(this.f5954g.f5960a);
        Camera cameraOpen = iB == -1 ? null : Camera.open(iB);
        this.f5948a = cameraOpen;
        if (cameraOpen == null) {
            throw new RuntimeException("Failed to open camera");
        }
        int iB2 = p096m2.f.b(this.f5954g.f5960a);
        Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
        this.f5949b = cameraInfo;
        Camera.getCameraInfo(iB2, cameraInfo);
    }

    public final void d(boolean z7) {
        String string;
        Camera.Parameters parameters = this.f5948a.getParameters();
        String str = this.f5953f;
        if (str == null) {
            this.f5953f = parameters.flatten();
        } else {
            parameters.unflatten(str);
        }
        if (parameters == null) {
            Log.w("h", "Device error: no camera parameters are available. Proceeding without configuration.");
            return;
        }
        Log.i("h", "Initial camera parameters: " + parameters.flatten());
        if (z7) {
            Log.w("h", "In camera config safe mode -- most settings will not be honored");
        }
        this.f5954g.getClass();
        int i8 = c.f5925a;
        List<String> supportedFocusModes = parameters.getSupportedFocusModes();
        String strA = c.a("focus mode", supportedFocusModes, "auto");
        if (!z7 && strA == null) {
            strA = c.a("focus mode", supportedFocusModes, "macro", "edof");
        }
        if (strA != null) {
            if (strA.equals(parameters.getFocusMode())) {
                Log.i("CameraConfiguration", "Focus mode already set to ".concat(strA));
            } else {
                parameters.setFocusMode(strA);
            }
        }
        if (!z7) {
            c.b(parameters, false);
            this.f5954g.getClass();
            this.f5954g.getClass();
            this.f5954g.getClass();
        }
        List<Camera.Size> supportedPreviewSizes = parameters.getSupportedPreviewSizes();
        ArrayList arrayList = new ArrayList();
        if (supportedPreviewSizes == null) {
            Camera.Size previewSize = parameters.getPreviewSize();
            if (previewSize != null) {
                arrayList.add(new t(previewSize.width, previewSize.height));
            }
        } else {
            for (Camera.Size size : supportedPreviewSizes) {
                arrayList.add(new t(size.width, size.height));
            }
        }
        int[] iArr = null;
        if (arrayList.size() == 0) {
            this.f5956i = null;
        } else {
            l lVar = this.f5955h;
            int i9 = this.f5958k;
            if (i9 == -1) {
                throw new IllegalStateException("Rotation not calculated yet. Call configure() first.");
            }
            boolean z8 = i9 % 180 != 0;
            t tVar = lVar.f5966a;
            if (tVar == null) {
                tVar = null;
            } else if (z8) {
                tVar = new t(tVar.f5639H, tVar.f5638G);
            }
            o oVar = lVar.f5968c;
            oVar.getClass();
            if (tVar != null) {
                Collections.sort(arrayList, new C2638u(oVar, tVar));
            }
            Log.i("o", "Viewfinder size: " + tVar);
            Log.i("o", "Preview in order of preference: " + arrayList);
            t tVar2 = (t) arrayList.get(0);
            this.f5956i = tVar2;
            parameters.setPreviewSize(tVar2.f5638G, tVar2.f5639H);
        }
        if (Build.DEVICE.equals("glass-1")) {
            List<int[]> supportedPreviewFpsRange = parameters.getSupportedPreviewFpsRange();
            StringBuilder sb = new StringBuilder("Supported FPS ranges: ");
            if (supportedPreviewFpsRange == null || supportedPreviewFpsRange.isEmpty()) {
                string = HttpUrl.PATH_SEGMENT_ENCODE_SET_URI;
            } else {
                StringBuilder sb2 = new StringBuilder("[");
                Iterator<int[]> it = supportedPreviewFpsRange.iterator();
                while (it.hasNext()) {
                    sb2.append(Arrays.toString(it.next()));
                    if (it.hasNext()) {
                        sb2.append(", ");
                    }
                }
                sb2.append(']');
                string = sb2.toString();
            }
            sb.append(string);
            Log.i("CameraConfiguration", sb.toString());
            if (supportedPreviewFpsRange != null && !supportedPreviewFpsRange.isEmpty()) {
                for (int[] iArr2 : supportedPreviewFpsRange) {
                    int i10 = iArr2[0];
                    int i11 = iArr2[1];
                    if (i10 >= 10000 && i11 <= 20000) {
                        iArr = iArr2;
                        break;
                    }
                }
                if (iArr == null) {
                    Log.i("CameraConfiguration", "No suitable FPS range?");
                } else {
                    int[] iArr3 = new int[2];
                    parameters.getPreviewFpsRange(iArr3);
                    if (Arrays.equals(iArr3, iArr)) {
                        Log.i("CameraConfiguration", "FPS range already set to " + Arrays.toString(iArr));
                    } else {
                        Log.i("CameraConfiguration", "Setting FPS range to " + Arrays.toString(iArr));
                        parameters.setPreviewFpsRange(iArr[0], iArr[1]);
                    }
                }
            }
        }
        Log.i("h", "Final camera parameters: " + parameters.flatten());
        this.f5948a.setParameters(parameters);
    }

    public final void e(boolean z7) {
        String flashMode;
        Camera camera = this.f5948a;
        if (camera != null) {
            try {
                Camera.Parameters parameters = camera.getParameters();
                if (z7 != ((parameters == null || (flashMode = parameters.getFlashMode()) == null || (!"on".equals(flashMode) && !"torch".equals(flashMode))) ? false : true)) {
                    b bVar = this.f5950c;
                    if (bVar != null) {
                        bVar.c();
                    }
                    Camera.Parameters parameters2 = this.f5948a.getParameters();
                    c.b(parameters2, z7);
                    this.f5954g.getClass();
                    this.f5948a.setParameters(parameters2);
                    b bVar2 = this.f5950c;
                    if (bVar2 != null) {
                        bVar2.f5919a = false;
                        bVar2.b();
                    }
                }
            } catch (RuntimeException e8) {
                Log.e("h", "Failed to set torch", e8);
            }
        }
    }

    public final void f() {
        Camera camera = this.f5948a;
        if (camera == null || this.f5952e) {
            return;
        }
        camera.startPreview();
        this.f5952e = true;
        this.f5950c = new b(this.f5948a, this.f5954g);
        i iVar = this.f5954g;
        p161u5.a aVar = new p161u5.a();
        aVar.f30511a = this;
        aVar.f30512b = new Handler();
        this.f5951d = aVar;
        iVar.getClass();
    }
}
