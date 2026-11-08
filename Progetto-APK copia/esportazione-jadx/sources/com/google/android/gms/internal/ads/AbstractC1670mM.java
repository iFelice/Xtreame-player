package com.google.android.gms.internal.ads;

import B0.AbstractC0067q;
import android.media.AudioDeviceInfo;
import android.media.AudioTrack;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.mM, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC1670mM {
    public static void a(TL tl, Object obj) {
        IL il;
        AudioDeviceInfo audioDeviceInfoG = AbstractC0067q.g(obj);
        C1618lM c1618lM = (C1618lM) tl;
        if (audioDeviceInfoG == null) {
            il = null;
        } else {
            c1618lM.getClass();
            il = new IL(audioDeviceInfoG);
        }
        c1618lM.f19751Q = il;
        GL gl = c1618lM.f19777r;
        if (gl != null) {
            gl.a(audioDeviceInfoG);
        }
        AudioTrack audioTrack = c1618lM.f19775p;
        if (audioTrack != null) {
            AbstractC1153cM.a(audioTrack, c1618lM.f19751Q);
        }
    }
}
