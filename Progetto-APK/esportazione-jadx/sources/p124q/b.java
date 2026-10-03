package p124q;

import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes.dex */
public abstract class b extends Drawable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final double f29437a = Math.cos(Math.toRadians(45.0d));

    public static float a(float f8, float f9, boolean z7) {
        if (!z7) {
            return f8;
        }
        return (float) (((1.0d - f29437a) * ((double) f9)) + ((double) f8));
    }

    public static float b(float f8, float f9, boolean z7) {
        if (!z7) {
            return f8 * 1.5f;
        }
        return (float) (((1.0d - f29437a) * ((double) f9)) + ((double) (f8 * 1.5f)));
    }
}
