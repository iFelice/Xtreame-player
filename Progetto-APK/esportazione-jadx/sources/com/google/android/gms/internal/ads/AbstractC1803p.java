package com.google.android.gms.internal.ads;

import android.view.Surface;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.p, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC1803p {
    public static void a(Surface surface, float f8) {
        try {
            surface.setFrameRate(f8, f8 == 0.0f ? 0 : 1);
        } catch (IllegalStateException e8) {
            Zo.d("VideoFrameReleaseHelper", "Failed to call Surface.setFrameRate", e8);
        }
    }
}
