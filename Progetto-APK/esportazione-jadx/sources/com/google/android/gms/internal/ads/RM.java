package com.google.android.gms.internal.ads;

import android.media.metrics.LogSessionId;

/* JADX INFO: loaded from: classes.dex */
public abstract class RM {
    public static void a(KM km, C2344zL c2344zL) {
        C2292yL c2292yL = c2344zL.f22155b;
        c2292yL.getClass();
        LogSessionId logSessionId = LogSessionId.LOG_SESSION_ID_NONE;
        LogSessionId logSessionId2 = c2292yL.f22022a;
        if (logSessionId2.equals(logSessionId)) {
            return;
        }
        km.f14330b.setString("log-session-id", logSessionId2.getStringId());
    }
}
