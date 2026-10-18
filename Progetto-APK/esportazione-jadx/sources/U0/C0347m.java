package U0;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.os.Build;
import android.view.Surface;
import p117p0.AbstractC3164b;

/* JADX INFO: renamed from: U0.m, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0347m extends Surface {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static int f6819J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static boolean f6820K;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final boolean f6821G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final HandlerThreadC0346l f6822H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public boolean f6823I;

    public C0347m(HandlerThreadC0346l handlerThreadC0346l, SurfaceTexture surfaceTexture, boolean z7) {
        super(surfaceTexture);
        this.f6822H = handlerThreadC0346l;
        this.f6821G = z7;
    }

    public static int a(Context context) {
        try {
            int i8 = Build.VERSION.SDK_INT;
            if (i8 >= 24 && ((i8 >= 26 || (!"samsung".equals(Build.MANUFACTURER) && !"XT1650".equals(Build.MODEL))) && ((i8 >= 26 || context.getPackageManager().hasSystemFeature("android.hardware.vr.high_performance")) && AbstractC3164b.x("EGL_EXT_protected_content")))) {
                return AbstractC3164b.x("EGL_KHR_surfaceless_context") ? 1 : 2;
            }
            return 0;
        } catch (p117p0.p e8) {
            p117p0.x.c("PlaceholderSurface", "Failed to determine secure mode due to GL error: " + e8.getMessage());
            return 0;
        }
    }

    public static synchronized boolean c(Context context) {
        try {
            if (!f6820K) {
                f6819J = a(context);
                f6820K = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return f6819J != 0;
    }

    @Override // android.view.Surface
    public final void release() {
        super.release();
        synchronized (this.f6822H) {
            try {
                if (!this.f6823I) {
                    HandlerThreadC0346l handlerThreadC0346l = this.f6822H;
                    handlerThreadC0346l.f6814H.getClass();
                    handlerThreadC0346l.f6814H.sendEmptyMessage(2);
                    this.f6823I = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
