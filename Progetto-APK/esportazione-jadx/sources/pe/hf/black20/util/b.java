package pe.hf.black20.util;

import android.app.Activity;
import android.os.Build;
import android.util.DisplayMetrics;

/* JADX INFO: loaded from: classes2.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Activity f29422a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f29423b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f29424c;

    public b(Activity activity) {
        this.f29422a = activity;
        DisplayMetrics displayMetrics = new DisplayMetrics();
        if (Build.VERSION.SDK_INT >= 30) {
            activity.getDisplay().getRealMetrics(displayMetrics);
        } else {
            activity.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
            activity.getWindowManager().getDefaultDisplay().getRealMetrics(displayMetrics);
        }
        float f8 = activity.getResources().getDisplayMetrics().density;
        this.f29424c = displayMetrics.heightPixels / f8;
        this.f29423b = displayMetrics.widthPixels / f8;
    }

    public final float a() {
        return this.f29422a.getResources().getDisplayMetrics().density;
    }
}
