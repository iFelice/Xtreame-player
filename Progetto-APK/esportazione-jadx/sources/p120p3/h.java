package p120p3;

import android.util.Log;
import com.google.android.gms.internal.ads.Dz;
import com.google.android.gms.internal.ads.Xu;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public abstract class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Xu f28217a = new Xu(new Dz());

    public static String a(String str) {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        if (stackTrace.length < 4) {
            return str;
        }
        return str + " @" + stackTrace[3].getLineNumber();
    }

    public static void b(String str) {
        if (j(3)) {
            if (str == null || str.length() <= 4000) {
                Log.d("Ads", str);
                return;
            }
            Iterator itT = f28217a.t(str);
            boolean z7 = true;
            while (itT.hasNext()) {
                String str2 = (String) itT.next();
                if (z7) {
                    Log.d("Ads", str2);
                } else {
                    Log.d("Ads-cont", str2);
                }
                z7 = false;
            }
        }
    }

    public static void c(String str, Throwable th) {
        if (j(3)) {
            Log.d("Ads", str, th);
        }
    }

    public static void d(String str) {
        if (j(6)) {
            if (str == null || str.length() <= 4000) {
                Log.e("Ads", str);
                return;
            }
            Iterator itT = f28217a.t(str);
            boolean z7 = true;
            while (itT.hasNext()) {
                String str2 = (String) itT.next();
                if (z7) {
                    Log.e("Ads", str2);
                } else {
                    Log.e("Ads-cont", str2);
                }
                z7 = false;
            }
        }
    }

    public static void e(String str, Throwable th) {
        if (j(6)) {
            Log.e("Ads", str, th);
        }
    }

    public static void f(String str) {
        if (j(4)) {
            if (str == null || str.length() <= 4000) {
                Log.i("Ads", str);
                return;
            }
            Iterator itT = f28217a.t(str);
            boolean z7 = true;
            while (itT.hasNext()) {
                String str2 = (String) itT.next();
                if (z7) {
                    Log.i("Ads", str2);
                } else {
                    Log.i("Ads-cont", str2);
                }
                z7 = false;
            }
        }
    }

    public static void g(String str) {
        if (j(5)) {
            if (str == null || str.length() <= 4000) {
                Log.w("Ads", str);
                return;
            }
            Iterator itT = f28217a.t(str);
            boolean z7 = true;
            while (itT.hasNext()) {
                String str2 = (String) itT.next();
                if (z7) {
                    Log.w("Ads", str2);
                } else {
                    Log.w("Ads-cont", str2);
                }
                z7 = false;
            }
        }
    }

    public static void h(String str, Throwable th) {
        if (j(5)) {
            Log.w("Ads", str, th);
        }
    }

    public static void i(String str, Exception exc) {
        if (j(5)) {
            if (exc != null) {
                h(a(str), exc);
            } else {
                g(a(str));
            }
        }
    }

    public static boolean j(int i8) {
        return i8 >= 5 || Log.isLoggable("Ads", i8);
    }
}
