package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes.dex */
public final class A3 implements InterfaceC2667z3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final W1 f22861a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final W1 f22862b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final W1 f22863c;

    static {
        p113o3.G g8 = new p113o3.G(S1.a(), true, true);
        g8.g("measurement.set_default_event_parameters_with_backfill.client.dev", false);
        g8.g("measurement.set_default_event_parameters_with_backfill.service", true);
        g8.d(0L, "measurement.id.set_default_event_parameters.fix_service_request_ordering");
        f22861a = g8.g("measurement.set_default_event_parameters.fix_app_update_logging", true);
        f22862b = g8.g("measurement.set_default_event_parameters.fix_deferred_analytics_collection", true);
        f22863c = g8.g("measurement.set_default_event_parameters.fix_service_request_ordering", false);
        g8.g("measurement.set_default_event_parameters.fix_subsequent_launches", true);
    }
}
