package B0;

import android.media.AudioDeviceInfo;
import android.media.AudioTrack;
import android.media.PlaybackParams;
import android.util.ArraySet;

/* JADX INFO: renamed from: B0.q, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class AbstractC0067q {
    public static /* bridge */ /* synthetic */ AudioDeviceInfo g(Object obj) {
        return (AudioDeviceInfo) obj;
    }

    public static /* synthetic */ AudioTrack.Builder h() {
        return new AudioTrack.Builder();
    }

    public static /* synthetic */ PlaybackParams n() {
        return new PlaybackParams();
    }

    public static /* synthetic */ ArraySet r() {
        return new ArraySet();
    }
}
