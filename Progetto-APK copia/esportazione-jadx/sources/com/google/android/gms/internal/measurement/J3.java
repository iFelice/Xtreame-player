package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes.dex */
public final class J3 implements I3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final W1 f22944a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final W1 f22945b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final W1 f22946c;

    static {
        p113o3.G g8 = new p113o3.G(S1.a(), true, true);
        g8.g("measurement.service.audience.fix_skip_audience_with_failed_filters", true);
        f22944a = g8.g("measurement.audience.refresh_event_count_filters_timestamp", false);
        f22945b = g8.g("measurement.audience.use_bundle_end_timestamp_for_non_sequence_property_filters", false);
        f22946c = g8.g("measurement.audience.use_bundle_timestamp_for_event_count_filters", false);
    }
}
