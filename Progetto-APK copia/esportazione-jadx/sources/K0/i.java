package K0;

import N.C0260i;
import android.media.LoudnessCodecController;
import android.media.MediaCodec;
import com.google.android.gms.internal.measurement.H1;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HashSet f4349a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final h f4350b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public LoudnessCodecController f4351c;

    public i() {
        C0260i c0260i = h.f4348e;
        this.f4349a = new HashSet();
        this.f4350b = c0260i;
    }

    public final void a(MediaCodec mediaCodec) {
        LoudnessCodecController loudnessCodecController = this.f4351c;
        if (loudnessCodecController == null || loudnessCodecController.addMediaCodec(mediaCodec)) {
            H1.i(this.f4349a.add(mediaCodec));
        }
    }

    public final void b() {
        this.f4349a.clear();
        LoudnessCodecController loudnessCodecController = this.f4351c;
        if (loudnessCodecController != null) {
            loudnessCodecController.close();
        }
    }

    public final void c(MediaCodec mediaCodec) {
        LoudnessCodecController loudnessCodecController;
        if (!this.f4349a.remove(mediaCodec) || (loudnessCodecController = this.f4351c) == null) {
            return;
        }
        loudnessCodecController.removeMediaCodec(mediaCodec);
    }

    public final void d(int i8) {
        LoudnessCodecController loudnessCodecController = this.f4351c;
        if (loudnessCodecController != null) {
            loudnessCodecController.close();
            this.f4351c = null;
        }
        LoudnessCodecController loudnessCodecControllerCreate = LoudnessCodecController.create(i8, D4.a.f2392G, new g(this));
        this.f4351c = loudnessCodecControllerCreate;
        Iterator it = this.f4349a.iterator();
        while (it.hasNext()) {
            if (!loudnessCodecControllerCreate.addMediaCodec((MediaCodec) it.next())) {
                it.remove();
            }
        }
    }
}
