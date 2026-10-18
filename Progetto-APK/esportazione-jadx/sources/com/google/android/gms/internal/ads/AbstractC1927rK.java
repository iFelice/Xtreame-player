package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.metrics.LogSessionId;
import android.media.metrics.MediaMetricsManager;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.rK, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC1927rK {
    public static C2344zL a(Context context, C2135vK c2135vK, boolean z7, String str) {
        MediaMetricsManager mediaMetricsManagerB = C0.D.b(context.getSystemService("media_metrics"));
        C2188wL c2188wL = mediaMetricsManagerB == null ? null : new C2188wL(context, mediaMetricsManagerB.createPlaybackSession());
        if (c2188wL == null) {
            Zo.f("ExoPlayerImpl", "MediaMetricsService unavailable.");
            return new C2344zL(LogSessionId.LOG_SESSION_ID_NONE, str);
        }
        if (z7) {
            c2135vK.B(c2188wL);
        }
        return new C2344zL(c2188wL.f21666I.getSessionId(), str);
    }
}
