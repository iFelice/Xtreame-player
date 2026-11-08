package com.google.android.gms.internal.ads;

import java.util.concurrent.ThreadFactory;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.tt, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ThreadFactoryC2055tt implements ThreadFactory {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f21155G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ String f21156H;

    public /* synthetic */ ThreadFactoryC2055tt(int i8) {
        this.f21155G = i8;
        if (i8 != 1) {
            this.f21156H = "ExoPlayer:Loader:ProgressiveMediaPeriod";
        } else {
            this.f21156H = "ExoPlayer:AudioTrackReleaseThread";
        }
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        int i8 = this.f21155G;
        String str = this.f21156H;
        switch (i8) {
            case 0:
                break;
        }
        return new Thread(runnable, str);
    }
}
