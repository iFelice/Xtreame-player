package com.google.android.gms.internal.ads;

import android.view.MotionEvent;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.e8, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1242e8 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public MotionEvent f18484a = MotionEvent.obtain(0, 0, 1, 0.0f, 0.0f, 0);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MotionEvent f18485b = MotionEvent.obtain(0, 0, 0, 0.0f, 0.0f, 0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ScheduledExecutorService f18486c;

    public C1242e8(ScheduledExecutorService scheduledExecutorService) {
        this.f18486c = scheduledExecutorService;
    }
}
