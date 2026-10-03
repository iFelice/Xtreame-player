package com.google.android.gms.internal.ads;

import D0.C0117g;
import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioManager;

/* JADX INFO: loaded from: classes.dex */
public abstract class YL {
    public static JL a(AudioFormat audioFormat, AudioAttributes audioAttributes, boolean z7) {
        if (!AudioManager.isOffloadedPlaybackSupported(audioFormat, audioAttributes)) {
            return JL.f14140d;
        }
        C0117g c0117g = new C0117g();
        c0117g.f1935a = true;
        c0117g.f1937c = z7;
        return c0117g.c();
    }
}
