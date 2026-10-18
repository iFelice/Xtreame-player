package H3;

import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f3679a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f3680b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f3681c;

    public b(String str, String str2) {
        com.bumptech.glide.c.f("The log tag cannot be null or empty.", str);
        this.f3679a = str;
        this.f3680b = str.length() <= 23;
        this.f3681c = TextUtils.isEmpty(str2) ? null : p000a.r.g("[", str2, "] ");
    }

    public final void a(Exception exc, String str, Object... objArr) {
        if (Build.TYPE.equals("user") || !this.f3680b) {
            return;
        }
        String str2 = this.f3679a;
        if (Log.isLoggable(str2, 3)) {
            Log.d(str2, c(str, objArr), exc);
        }
    }

    public final void b(String str, Object... objArr) {
        if (Build.TYPE.equals("user") || !this.f3680b) {
            return;
        }
        String str2 = this.f3679a;
        if (Log.isLoggable(str2, 3)) {
            Log.d(str2, c(str, objArr));
        }
    }

    public final String c(String str, Object... objArr) {
        if (objArr.length != 0) {
            str = String.format(Locale.ROOT, str, objArr);
        }
        String str2 = this.f3681c;
        if (TextUtils.isEmpty(str2)) {
            return str;
        }
        return String.valueOf(str2).concat(String.valueOf(str));
    }
}
