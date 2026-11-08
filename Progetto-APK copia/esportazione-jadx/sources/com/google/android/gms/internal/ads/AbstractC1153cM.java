package com.google.android.gms.internal.ads;

import android.media.AudioTrack;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.cM, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC1153cM {
    public static void a(AudioTrack audioTrack, IL il) {
        audioTrack.setPreferredDevice(il == null ? null : il.f13878a);
    }
}
