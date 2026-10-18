package J3;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageInstaller;
import android.content.pm.PackageManager;
import android.os.Build;
import android.util.Log;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public abstract class j {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static boolean f4148b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static boolean f4149c = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AtomicBoolean f4147a = new AtomicBoolean();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final AtomicBoolean f4150d = new AtomicBoolean();

    public static Context a(Context context) {
        try {
            return context.createPackageContext("com.google.android.gms", 3);
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    public static boolean b(Context context) {
        try {
            if (!f4149c) {
                PackageInfo packageInfoC = Q3.c.a(context).c(64, "com.google.android.gms");
                k.b(context);
                if (packageInfoC == null || k.g(packageInfoC, false) || !k.g(packageInfoC, true)) {
                    f4148b = false;
                } else {
                    f4148b = true;
                }
            }
        } catch (PackageManager.NameNotFoundException e8) {
            Log.w("GooglePlayServicesUtil", "Cannot find Google Play services package name.", e8);
        } finally {
            f4149c = true;
        }
        return f4148b || !"user".equals(Build.TYPE);
    }

    public static boolean c(Context context) {
        try {
            Iterator<PackageInstaller.SessionInfo> it = context.getPackageManager().getPackageInstaller().getAllSessions().iterator();
            while (it.hasNext()) {
                if ("com.google.android.gms".equals(it.next().getAppPackageName())) {
                    return true;
                }
            }
            return context.getPackageManager().getApplicationInfo("com.google.android.gms", 8192).enabled;
        } catch (PackageManager.NameNotFoundException | Exception unused) {
            return false;
        }
    }
}
