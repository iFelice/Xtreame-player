package com.google.android.gms.internal.ads;

import U0.HandlerThreadC0346l;
import android.content.Context;
import android.graphics.SurfaceTexture;
import android.opengl.EGL14;
import android.os.Handler;
import android.view.Surface;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.l, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1595l extends Surface {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static int f19679J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static boolean f19680K;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final boolean f19681G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final HandlerThreadC0346l f19682H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public boolean f19683I;

    public /* synthetic */ C1595l(HandlerThreadC0346l handlerThreadC0346l, SurfaceTexture surfaceTexture, boolean z7) {
        super(surfaceTexture);
        this.f19682H = handlerThreadC0346l;
        this.f19681G = z7;
    }

    public static synchronized boolean a(Context context) {
        String strEglQueryString;
        int i8;
        try {
            if (!f19680K) {
                int i9 = Et.f13234a;
                if (i9 >= 24 && ((i9 >= 26 || !("samsung".equals(Et.f13236c) || "XT1650".equals(Et.f13237d))) && ((i9 >= 26 || context.getPackageManager().hasSystemFeature("android.hardware.vr.high_performance")) && (strEglQueryString = EGL14.eglQueryString(EGL14.eglGetDisplay(0), 12373)) != null && strEglQueryString.contains("EGL_EXT_protected_content")))) {
                    String strEglQueryString2 = EGL14.eglQueryString(EGL14.eglGetDisplay(0), 12373);
                    i8 = (strEglQueryString2 == null || !strEglQueryString2.contains("EGL_KHR_surfaceless_context")) ? 2 : 1;
                } else {
                    i8 = 0;
                }
                f19679J = i8;
                f19680K = true;
            }
        } catch (Throwable th) {
            throw th;
        }
        return f19679J != 0;
    }

    @Override // android.view.Surface
    public final void release() {
        super.release();
        synchronized (this.f19682H) {
            try {
                if (!this.f19683I) {
                    Handler handler = this.f19682H.f6814H;
                    handler.getClass();
                    handler.sendEmptyMessage(2);
                    this.f19683I = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
