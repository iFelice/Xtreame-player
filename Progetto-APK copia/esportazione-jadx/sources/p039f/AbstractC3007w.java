package p039f;

import J.g;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import java.lang.ref.WeakReference;
import p132r.b;

/* JADX INFO: renamed from: f.w, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC3007w {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public static final ExecutorC3005u f25117G = new ExecutorC3005u(new ExecutorC3006v(0));

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final int f25118H = -100;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public static g f25119I = null;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static g f25120J = null;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static Boolean f25121K = null;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public static boolean f25122L = false;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public static final p132r.g f25123M = new p132r.g(0);

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public static final Object f25124N = new Object();

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public static final Object f25125O = new Object();

    public static boolean b(Context context) {
        if (f25121K == null) {
            try {
                int i8 = Q.f24986G;
                Bundle bundle = context.getPackageManager().getServiceInfo(new ComponentName(context, (Class<?>) Q.class), Build.VERSION.SDK_INT >= 24 ? P.a() | 128 : 640).metaData;
                if (bundle != null) {
                    f25121K = Boolean.valueOf(bundle.getBoolean("autoStoreLocales"));
                }
            } catch (PackageManager.NameNotFoundException unused) {
                Log.d("AppCompatDelegate", "Checking for metadata for AppLocalesMetadataHolderService : Service not found");
                f25121K = Boolean.FALSE;
            }
        }
        return f25121K.booleanValue();
    }

    public static void e(AbstractC3007w abstractC3007w) {
        synchronized (f25124N) {
            try {
                p132r.g gVar = f25123M;
                gVar.getClass();
                b bVar = new b(gVar);
                while (bVar.hasNext()) {
                    AbstractC3007w abstractC3007w2 = (AbstractC3007w) ((WeakReference) bVar.next()).get();
                    if (abstractC3007w2 == abstractC3007w || abstractC3007w2 == null) {
                        bVar.remove();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public abstract void a();

    public abstract void c();

    public abstract void d();

    public abstract boolean f(int i8);

    public abstract void h(int i8);

    public abstract void i(View view);

    public abstract void j(View view, ViewGroup.LayoutParams layoutParams);

    public abstract void k(CharSequence charSequence);
}
