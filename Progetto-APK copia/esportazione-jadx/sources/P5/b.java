package P5;

import android.hardware.Camera;
import android.os.Handler;
import android.util.Log;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class b {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final ArrayList f5918g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f5919a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f5920b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f5921c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Camera f5922d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Handler f5923e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final a f5924f;

    static {
        ArrayList arrayList = new ArrayList(2);
        f5918g = arrayList;
        arrayList.add("auto");
        arrayList.add("macro");
    }

    public b(Camera camera, i iVar) {
        H2.g gVar = new H2.g(this, 6);
        this.f5924f = new a(this);
        this.f5923e = new Handler(gVar);
        this.f5922d = camera;
        String focusMode = camera.getParameters().getFocusMode();
        iVar.getClass();
        boolean zContains = f5918g.contains(focusMode);
        this.f5921c = zContains;
        Log.i("b", "Current focus mode '" + focusMode + "'; use auto focus? " + zContains);
        this.f5919a = false;
        b();
    }

    public final synchronized void a() {
        if (!this.f5919a && !this.f5923e.hasMessages(1)) {
            Handler handler = this.f5923e;
            handler.sendMessageDelayed(handler.obtainMessage(1), 2000L);
        }
    }

    public final void b() {
        if (!this.f5921c || this.f5919a || this.f5920b) {
            return;
        }
        try {
            this.f5922d.autoFocus(this.f5924f);
            this.f5920b = true;
        } catch (RuntimeException e8) {
            Log.w("b", "Unexpected exception while focusing", e8);
            a();
        }
    }

    public final void c() {
        this.f5919a = true;
        this.f5920b = false;
        this.f5923e.removeMessages(1);
        if (this.f5921c) {
            try {
                this.f5922d.cancelAutoFocus();
            } catch (RuntimeException e8) {
                Log.w("b", "Unexpected exception while cancelling focusing", e8);
            }
        }
    }
}
