package androidx.leanback.widget;

import android.graphics.Color;

/* JADX INFO: loaded from: classes.dex */
public final class N {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f9141a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f9142b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f9143c;

    public N(int i8, int i9, int i10) {
        this.f9141a = i8;
        if (i9 == i8) {
            i9 = Color.argb((int) ((Color.alpha(i8) * 0.85f) + 38.25f), (int) ((Color.red(i8) * 0.85f) + 38.25f), (int) ((Color.green(i8) * 0.85f) + 38.25f), (int) ((Color.blue(i8) * 0.85f) + 38.25f));
        }
        this.f9142b = i9;
        this.f9143c = i10;
    }
}
