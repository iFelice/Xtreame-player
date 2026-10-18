package C0;

import android.media.metrics.MediaMetricsManager;
import android.media.metrics.TrackChangeEvent;

/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class D {
    public static /* bridge */ /* synthetic */ MediaMetricsManager b(Object obj) {
        return (MediaMetricsManager) obj;
    }

    public static /* synthetic */ TrackChangeEvent.Builder f(int i8) {
        return new TrackChangeEvent.Builder(i8);
    }
}
