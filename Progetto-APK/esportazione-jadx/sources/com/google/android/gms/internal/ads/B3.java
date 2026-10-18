package com.google.android.gms.internal.ads;

import android.util.Log;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public abstract class B3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final boolean f12095a = Log.isLoggable("Volley", 2);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f12096b = B3.class.getName();

    public static void a(String str, Object... objArr) {
        Log.d("Volley", d(str, objArr));
    }

    public static void b(String str, Object... objArr) {
        Log.e("Volley", d(str, objArr));
    }

    public static void c(String str, Object... objArr) {
        if (f12095a) {
            Log.v("Volley", d(str, objArr));
        }
    }

    public static String d(String str, Object... objArr) {
        String strL;
        String str2 = String.format(Locale.US, str, objArr);
        StackTraceElement[] stackTrace = new Throwable().fillInStackTrace().getStackTrace();
        for (int i8 = 2; i8 < stackTrace.length; i8++) {
            if (!stackTrace[i8].getClassName().equals(f12096b)) {
                String className = stackTrace[i8].getClassName();
                String strSubstring = className.substring(className.lastIndexOf(46) + 1);
                strL = com.google.protobuf.U2.l(strSubstring.substring(strSubstring.lastIndexOf(36) + 1), ".", stackTrace[i8].getMethodName());
                Locale locale = Locale.US;
                long id = Thread.currentThread().getId();
                StringBuilder sb = new StringBuilder("[");
                sb.append(id);
                sb.append("] ");
                sb.append(strL);
                return p000a.r.j(sb, ": ", str2);
            }
        }
        strL = "<unknown>";
        Locale locale2 = Locale.US;
        long id2 = Thread.currentThread().getId();
        StringBuilder sb2 = new StringBuilder("[");
        sb2.append(id2);
        sb2.append("] ");
        sb2.append(strL);
        return p000a.r.j(sb2, ": ", str2);
    }
}
