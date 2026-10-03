package com.google.android.gms.internal.cast;

import android.os.Build;

/* JADX INFO: renamed from: com.google.android.gms.internal.cast.x, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC2513x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f22816a;

    static {
        f22816a = Build.VERSION.SDK_INT >= 23 ? 67108864 : 0;
    }
}
