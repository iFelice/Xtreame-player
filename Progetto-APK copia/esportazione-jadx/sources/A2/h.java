package A2;

import D0.U;
import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;

/* JADX INFO: loaded from: classes.dex */
public final class h {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f625e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f626a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ActivityManager f627b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final U f628c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final float f629d;

    static {
        f625e = Build.VERSION.SDK_INT < 26 ? 4 : 1;
    }

    public h(Context context) {
        this.f629d = f625e;
        this.f626a = context;
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        this.f627b = activityManager;
        this.f628c = new U(context.getResources().getDisplayMetrics(), 27);
        if (Build.VERSION.SDK_INT < 26 || !activityManager.isLowRamDevice()) {
            return;
        }
        this.f629d = 0.0f;
    }
}
