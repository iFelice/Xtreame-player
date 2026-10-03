package com.google.android.gms.internal.ads;

import D0.C0117g;
import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioManager;

/* JADX INFO: loaded from: classes.dex */
public abstract class ZL {
    public static JL a(AudioFormat audioFormat, AudioAttributes audioAttributes, boolean z7) {
        int playbackOffloadSupport = AudioManager.getPlaybackOffloadSupport(audioFormat, audioAttributes);
        if (playbackOffloadSupport == 0) {
            return JL.f14140d;
        }
        C0117g c0117g = new C0117g();
        boolean z8 = false;
        if (Et.f13234a > 32 && playbackOffloadSupport == 2) {
            z8 = true;
        }
        c0117g.f1935a = true;
        c0117g.f1936b = z8;
        c0117g.f1937c = z7;
        return c0117g.c();
    }
}
