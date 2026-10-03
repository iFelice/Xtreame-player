package A0;

import android.adservices.measurement.MeasurementManager;
import android.adservices.topics.GetTopicsRequest;
import android.adservices.topics.Topic;
import android.window.SurfaceSyncGroup;

/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class F {
    public static /* bridge */ /* synthetic */ MeasurementManager e(Object obj) {
        return (MeasurementManager) obj;
    }

    public static /* synthetic */ GetTopicsRequest.Builder f() {
        return new GetTopicsRequest.Builder();
    }

    public static /* bridge */ /* synthetic */ Topic j(Object obj) {
        return (Topic) obj;
    }

    public static /* synthetic */ SurfaceSyncGroup n() {
        return new SurfaceSyncGroup("exo-sync-b-334901521");
    }

    public static /* bridge */ /* synthetic */ Class o() {
        return MeasurementManager.class;
    }
}
