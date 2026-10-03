package A2;

import android.app.ActivityManager;
import android.content.Context;
import android.text.format.Formatter;
import android.util.DisplayMetrics;
import android.util.Log;
import p090l3.d1;

/* JADX INFO: loaded from: classes.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f630a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f631b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f632c;

    public i(int i8) {
        if (i8 != 2) {
            return;
        }
        this.f630a = 0;
        this.f631b = 0;
        this.f632c = 0;
    }

    public static i a(d1 d1Var) {
        if (d1Var.f26551J) {
            return new i(3, 0, 0, 5);
        }
        if (d1Var.f26556O) {
            return new i(2, 0, 0, 5);
        }
        return d1Var.f26555N ? new i(0, 0, 0, 5) : new i(1, d1Var.f26553L, d1Var.f26550I, 5);
    }

    public boolean b() {
        return this.f630a == 3;
    }

    public /* synthetic */ i(int i8, int i9, int i10) {
        this.f630a = i8;
        this.f631b = i9;
        this.f632c = i10;
    }

    public i(int i8, int i9, int i10, int i11) {
        if (i11 != 5) {
            this.f630a = i8;
            this.f631b = i9;
            this.f632c = i10;
        } else {
            this.f630a = i8;
            this.f632c = i9;
            this.f631b = i10;
        }
    }

    public i(h hVar) {
        Context context = hVar.f626a;
        ActivityManager activityManager = hVar.f627b;
        int i8 = activityManager.isLowRamDevice() ? 2097152 : 4194304;
        this.f632c = i8;
        int iRound = Math.round(activityManager.getMemoryClass() * 1048576 * (activityManager.isLowRamDevice() ? 0.33f : 0.4f));
        DisplayMetrics displayMetrics = (DisplayMetrics) hVar.f628c.f1868H;
        float f8 = displayMetrics.widthPixels * displayMetrics.heightPixels * 4;
        float f9 = hVar.f629d;
        int iRound2 = Math.round(f8 * f9);
        int iRound3 = Math.round(f8 * 2.0f);
        int i9 = iRound - i8;
        int i10 = iRound3 + iRound2;
        if (i10 <= i9) {
            this.f631b = iRound3;
            this.f630a = iRound2;
        } else {
            float f10 = i9 / (f9 + 2.0f);
            this.f631b = Math.round(2.0f * f10);
            this.f630a = Math.round(f10 * f9);
        }
        if (Log.isLoggable("MemorySizeCalculator", 3)) {
            StringBuilder sb = new StringBuilder("Calculation complete, Calculated memory cache size: ");
            sb.append(Formatter.formatFileSize(context, this.f631b));
            sb.append(", pool size: ");
            sb.append(Formatter.formatFileSize(context, this.f630a));
            sb.append(", byte array size: ");
            sb.append(Formatter.formatFileSize(context, i8));
            sb.append(", memory class limited? ");
            sb.append(i10 > iRound);
            sb.append(", max size: ");
            sb.append(Formatter.formatFileSize(context, iRound));
            sb.append(", memoryClass: ");
            sb.append(activityManager.getMemoryClass());
            sb.append(", isLowMemoryDevice: ");
            sb.append(activityManager.isLowRamDevice());
            Log.d("MemorySizeCalculator", sb.toString());
        }
    }

    public i(int i8, int i9) {
        this.f630a = i8;
        this.f632c = i9;
    }
}
