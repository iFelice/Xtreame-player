package K0;

import N.C0260i;
import android.media.LoudnessCodecController;
import android.media.MediaCodec;
import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
public final class g implements LoudnessCodecController.OnLoudnessCodecUpdateListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ i f4347a;

    public g(i iVar) {
        this.f4347a = iVar;
    }

    public final Bundle onLoudnessCodecUpdate(MediaCodec mediaCodec, Bundle bundle) {
        ((C0260i) this.f4347a.f4350b).getClass();
        return bundle;
    }
}
