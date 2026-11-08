package p027d2;

import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public final class n {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Object f24641b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile n f24642c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f24643a;

    public n(int i8) {
        this.f24643a = i8;
    }

    public static n d() {
        n nVar;
        synchronized (f24641b) {
            try {
                if (f24642c == null) {
                    f24642c = new n(3);
                }
                nVar = f24642c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return nVar;
    }

    public static String f(String str) {
        int length = str.length();
        StringBuilder sb = new StringBuilder(23);
        sb.append("WM-");
        if (length >= 20) {
            sb.append(str.substring(0, 20));
        } else {
            sb.append(str);
        }
        return sb.toString();
    }

    public final void a(String str, String str2) {
        if (this.f24643a <= 3) {
            Log.d(str, str2);
        }
    }

    public final void b(String str, String str2) {
        if (this.f24643a <= 6) {
            Log.e(str, str2);
        }
    }

    public final void c(String str, String str2, Throwable th) {
        if (this.f24643a <= 6) {
            Log.e(str, str2, th);
        }
    }

    public final void e(String str, String str2) {
        if (this.f24643a <= 4) {
            Log.i(str, str2);
        }
    }

    public final void g(String str, String str2) {
        if (this.f24643a <= 5) {
            Log.w(str, str2);
        }
    }
}
