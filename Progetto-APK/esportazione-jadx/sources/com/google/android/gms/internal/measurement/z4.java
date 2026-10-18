package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes.dex */
public final class z4 implements y4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final W1 f23418a;

    static {
        p113o3.G g8 = new p113o3.G(S1.a(), true, true);
        g8.g("measurement.client.sessions.background_sessions_enabled", true);
        f23418a = g8.g("measurement.client.sessions.enable_fix_background_engagement", false);
        g8.g("measurement.client.sessions.immediate_start_enabled_foreground", true);
        g8.g("measurement.client.sessions.enable_pause_engagement_in_background", true);
        g8.g("measurement.client.sessions.session_id_enabled", true);
        g8.d(0L, "measurement.id.client.sessions.enable_fix_background_engagement");
    }
}
