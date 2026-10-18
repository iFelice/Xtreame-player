package C0;

import android.content.ClipData;
import android.media.AudioProfile;
import android.media.MediaDrm;
import android.media.metrics.PlaybackMetrics;
import android.view.ContentInfo;

/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class E {
    public static /* bridge */ /* synthetic */ AudioProfile e(Object obj) {
        return (AudioProfile) obj;
    }

    public static /* bridge */ /* synthetic */ MediaDrm.PlaybackComponent g(Object obj) {
        return (MediaDrm.PlaybackComponent) obj;
    }

    public static /* synthetic */ PlaybackMetrics.Builder i() {
        return new PlaybackMetrics.Builder();
    }

    public static /* synthetic */ ContentInfo.Builder l(ClipData clipData, int i8) {
        return new ContentInfo.Builder(clipData, i8);
    }
}
