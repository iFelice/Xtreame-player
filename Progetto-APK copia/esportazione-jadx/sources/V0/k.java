package V0;

import U0.B;
import android.content.Context;
import android.graphics.SurfaceTexture;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.opengl.GLSurfaceView;
import android.os.Handler;
import android.os.Looper;
import android.view.Surface;
import android.view.View;
import android.view.WindowManager;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class k extends GLSurfaceView {

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public static final /* synthetic */ int f7064R = 0;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final CopyOnWriteArrayList f7065G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final SensorManager f7066H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Sensor f7067I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final d f7068J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final Handler f7069K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final i f7070L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public SurfaceTexture f7071M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public Surface f7072N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public boolean f7073O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public boolean f7074P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public boolean f7075Q;

    public k(Context context) {
        super(context, null);
        this.f7065G = new CopyOnWriteArrayList();
        this.f7069K = new Handler(Looper.getMainLooper());
        Object systemService = context.getSystemService("sensor");
        systemService.getClass();
        SensorManager sensorManager = (SensorManager) systemService;
        this.f7066H = sensorManager;
        Sensor defaultSensor = sensorManager.getDefaultSensor(15);
        this.f7067I = defaultSensor == null ? sensorManager.getDefaultSensor(11) : defaultSensor;
        i iVar = new i();
        this.f7070L = iVar;
        j jVar = new j(this, iVar);
        View.OnTouchListener lVar = new l(context, jVar);
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        windowManager.getClass();
        this.f7068J = new d(windowManager.getDefaultDisplay(), lVar, jVar);
        this.f7073O = true;
        setEGLContextClientVersion(2);
        setRenderer(jVar);
        setOnTouchListener(lVar);
    }

    public final void a() {
        boolean z7 = this.f7073O && this.f7074P;
        Sensor sensor = this.f7067I;
        if (sensor == null || z7 == this.f7075Q) {
            return;
        }
        d dVar = this.f7068J;
        SensorManager sensorManager = this.f7066H;
        if (z7) {
            sensorManager.registerListener(dVar, sensor, 0);
        } else {
            sensorManager.unregisterListener(dVar);
        }
        this.f7075Q = z7;
    }

    public a getCameraMotionListener() {
        return this.f7070L;
    }

    public B getVideoFrameMetadataListener() {
        return this.f7070L;
    }

    public Surface getVideoSurface() {
        return this.f7072N;
    }

    @Override // android.opengl.GLSurfaceView, android.view.SurfaceView, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f7069K.post(new p000a.b(this, 21));
    }

    @Override // android.opengl.GLSurfaceView
    public final void onPause() {
        this.f7074P = false;
        a();
        super.onPause();
    }

    @Override // android.opengl.GLSurfaceView
    public final void onResume() {
        super.onResume();
        this.f7074P = true;
        a();
    }

    public void setDefaultStereoMode(int i8) {
        this.f7070L.f7050Q = i8;
    }

    public void setUseSensorRotation(boolean z7) {
        this.f7073O = z7;
        a();
    }
}
