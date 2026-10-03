package p117p0;

import android.text.TextUtils;
import android.util.Log;
import java.net.UnknownHostException;
import p000a.r;

/* JADX INFO: loaded from: classes.dex */
public abstract class x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Object f28126a = new Object();

    public static String a(String str, Throwable th) {
        String strReplace;
        if (th != null) {
            synchronized (f28126a) {
                Throwable cause = th;
                while (true) {
                    if (cause == null) {
                        strReplace = Log.getStackTraceString(th).trim().replace("\t", "    ");
                        break;
                    }
                    try {
                        if (cause instanceof UnknownHostException) {
                            strReplace = "UnknownHostException (no network)";
                            break;
                        }
                        cause = cause.getCause();
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
        } else {
            strReplace = null;
        }
        if (TextUtils.isEmpty(strReplace)) {
            return str;
        }
        StringBuilder sbL = r.l(str, "\n  ");
        sbL.append(strReplace.replace("\n", "\n  "));
        sbL.append('\n');
        return sbL.toString();
    }

    public static void b(String str, String str2) {
        synchronized (f28126a) {
            Log.d(str, a(str2, null));
        }
    }

    public static void c(String str, String str2) {
        synchronized (f28126a) {
            Log.e(str, a(str2, null));
        }
    }

    public static void d(String str, String str2, Throwable th) {
        synchronized (f28126a) {
            Log.e(str, a(str2, th));
        }
    }

    public static void e(String str, String str2) {
        synchronized (f28126a) {
            Log.i(str, a(str2, null));
        }
    }

    public static void f(String str, String str2) {
        synchronized (f28126a) {
            Log.w(str, a(str2, null));
        }
    }

    public static void g(String str, String str2, Throwable th) {
        synchronized (f28126a) {
            Log.w(str, a(str2, th));
        }
    }
}
