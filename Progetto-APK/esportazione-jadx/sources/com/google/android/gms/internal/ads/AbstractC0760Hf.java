package com.google.android.gms.internal.ads;

import android.app.NotificationChannel;
import android.media.AudioFocusRequest;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Hf, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class AbstractC0760Hf {
    public static /* synthetic */ NotificationChannel f() {
        return new NotificationChannel("ForegroundServiceChannelForRecording", "Foreground Service Channel", 3);
    }

    public static /* synthetic */ NotificationChannel g(int i8) {
        return new NotificationChannel("offline_notification_channel", "AdMob Offline Notifications", i8);
    }

    public static /* synthetic */ AudioFocusRequest.Builder i(int i8) {
        return new AudioFocusRequest.Builder(i8);
    }

    public static /* bridge */ /* synthetic */ AudioFocusRequest n(Object obj) {
        return (AudioFocusRequest) obj;
    }

    public static /* synthetic */ void q() {
    }
}
