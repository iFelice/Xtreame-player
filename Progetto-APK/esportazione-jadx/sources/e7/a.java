package e7;

import G0.j;
import O0.C0287k;
import O0.C0288l;
import W0.p;
import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.os.Build;
import android.os.ext.SdkExtensions;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.TextView;
import java.io.File;
import java.net.CookieHandler;
import java.net.CookieManager;
import java.net.CookiePolicy;
import java.util.concurrent.Executors;
import org.chromium.net.CronetEngine;
import p141s0.C;
import p141s0.C3189n;
import p141s0.C3191p;
import p141s0.InterfaceC3183h;
import p141s0.t;
import p141s0.x;
import p149t0.f;
import p149t0.s;
import p149t0.v;
import p157u0.g;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static v f24872a;

    public static C0288l a(Activity activity, InterfaceC3183h interfaceC3183h, String str) {
        j jVar = new j();
        jVar.f3367d = j(activity, str);
        C3189n c3189n = new C3189n(activity);
        new p();
        C0288l c0288l = new C0288l(c3189n);
        C0287k c0287k = c0288l.f5220a;
        if (interfaceC3183h != c0287k.f5219c) {
            c0287k.f5219c = interfaceC3183h;
            c0287k.f5217a.clear();
            c0287k.f5218b.clear();
        }
        c0288l.b(jVar);
        return c0288l;
    }

    public static AccessibilityNodeInfo.AccessibilityAction b() {
        return AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_IN_DIRECTION;
    }

    public static float c(VelocityTracker velocityTracker, int i8) {
        return velocityTracker.getAxisVelocity(i8);
    }

    public static void d(AccessibilityNodeInfo accessibilityNodeInfo, Rect rect) {
        accessibilityNodeInfo.getBoundsInWindow(rect);
    }

    public static CharSequence e(AccessibilityNodeInfo accessibilityNodeInfo) {
        return accessibilityNodeInfo.getContainerTitle();
    }

    public static synchronized InterfaceC3183h f(Activity activity, InterfaceC3183h interfaceC3183h, String str) {
        if (interfaceC3183h == null) {
            Context applicationContext = activity.getApplicationContext();
            C3189n c3189n = new C3189n(applicationContext, j(applicationContext, str));
            p149t0.b bVarH = h(applicationContext);
            f fVar = new f();
            fVar.f30181b = new t();
            fVar.f30180a = bVarH;
            fVar.f30184e = c3189n;
            fVar.f30182c = null;
            fVar.f30183d = true;
            fVar.f30185f = 2;
            interfaceC3183h = fVar;
        }
        return interfaceC3183h;
    }

    public static synchronized p133r0.b g(Context context) {
        return new p133r0.b(context, 0);
    }

    public static synchronized p149t0.b h(Context context) {
        try {
            if (f24872a == null) {
                f24872a = new v(new File(i(context), "downloads"), new s(), g(context));
            }
        } catch (Throwable th) {
            throw th;
        }
        return f24872a;
    }

    public static synchronized File i(Context context) {
        File externalFilesDir;
        externalFilesDir = context.getExternalFilesDir(null);
        if (externalFilesDir == null) {
            externalFilesDir = context.getFilesDir();
        }
        return externalFilesDir;
    }

    public static synchronized x j(Context context, String str) {
        if (Build.VERSION.SDK_INT >= 30 && SdkExtensions.getExtensionVersion(31) >= 7) {
            L1.d.t();
            return new C(L1.d.i(context).build(), Executors.newSingleThreadExecutor());
        }
        CronetEngine cronetEngineA = g.a(context);
        if (cronetEngineA != null) {
            return new p157u0.c(cronetEngineA, Executors.newSingleThreadExecutor());
        }
        CookieManager cookieManager = new CookieManager();
        cookieManager.setCookiePolicy(CookiePolicy.ACCEPT_ORIGINAL_SERVER);
        CookieHandler.setDefault(cookieManager);
        C3191p c3191p = new C3191p();
        c3191p.f29987b = str;
        c3191p.f29990e = true;
        return c3191p;
    }

    public static int k(ViewConfiguration viewConfiguration, int i8, int i9, int i10) {
        return viewConfiguration.getScaledMaximumFlingVelocity(i8, i9, i10);
    }

    public static int l(ViewConfiguration viewConfiguration, int i8, int i9, int i10) {
        return viewConfiguration.getScaledMinimumFlingVelocity(i8, i9, i10);
    }

    public static boolean m(AccessibilityNodeInfo accessibilityNodeInfo) {
        return accessibilityNodeInfo.isAccessibilityDataSensitive();
    }

    public static void n(TextView textView, int i8, float f8) {
        textView.setLineHeight(i8, f8);
    }
}
