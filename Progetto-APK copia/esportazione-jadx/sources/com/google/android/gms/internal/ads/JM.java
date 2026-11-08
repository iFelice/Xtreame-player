package com.google.android.gms.internal.ads;

import android.media.LoudnessCodecController;
import android.media.MediaCodec;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class JM {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HashSet f14144a = new HashSet();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public LoudnessCodecController f14145b;

    public void a(MediaCodec mediaCodec) {
        LoudnessCodecController loudnessCodecController = this.f14145b;
        if (loudnessCodecController == null || loudnessCodecController.addMediaCodec(mediaCodec)) {
            p113o3.r.M(this.f14144a.add(mediaCodec));
        }
    }

    public void b() {
        this.f14144a.clear();
        LoudnessCodecController loudnessCodecController = this.f14145b;
        if (loudnessCodecController != null) {
            loudnessCodecController.close();
        }
    }

    public void c(MediaCodec mediaCodec) {
        LoudnessCodecController loudnessCodecController;
        if (!this.f14144a.remove(mediaCodec) || (loudnessCodecController = this.f14145b) == null) {
            return;
        }
        loudnessCodecController.removeMediaCodec(mediaCodec);
    }

    public void d(int i8) {
        LoudnessCodecController loudnessCodecController = this.f14145b;
        if (loudnessCodecController != null) {
            loudnessCodecController.close();
            this.f14145b = null;
        }
        LoudnessCodecController loudnessCodecControllerCreate = LoudnessCodecController.create(i8, XB.f17385G, new IM());
        this.f14145b = loudnessCodecControllerCreate;
        Iterator it = this.f14144a.iterator();
        while (it.hasNext()) {
            if (!loudnessCodecControllerCreate.addMediaCodec((MediaCodec) it.next())) {
                it.remove();
            }
        }
    }
}
