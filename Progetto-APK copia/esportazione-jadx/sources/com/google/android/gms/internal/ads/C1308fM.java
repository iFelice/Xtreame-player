package com.google.android.gms.internal.ads;

import android.media.AudioAttributes;
import android.media.AudioTrack;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.fM, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1308fM {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C1804p0 f18747a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f18748b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f18749c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f18750d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f18751e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f18752f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f18753g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f18754h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final C0732Fh f18755i;

    public C1308fM(C1804p0 c1804p0, int i8, int i9, int i10, int i11, int i12, int i13, int i14, C0732Fh c0732Fh) {
        this.f18747a = c1804p0;
        this.f18748b = i8;
        this.f18749c = i9;
        this.f18750d = i10;
        this.f18751e = i11;
        this.f18752f = i12;
        this.f18753g = i13;
        this.f18754h = i14;
        this.f18755i = c0732Fh;
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0086  */
    /* JADX WARN: Code duplicated, block: B:31:0x0088  */
    public final AudioTrack a(int i8, C1097bH c1097bH) {
        boolean z7;
        AudioTrack audioTrack;
        int i9 = this.f18749c;
        try {
            int i10 = Et.f13234a;
            int i11 = this.f18753g;
            int i12 = this.f18752f;
            int i13 = this.f18751e;
            if (i10 >= 29) {
                audioTrack = new AudioTrack.Builder().setAudioAttributes((AudioAttributes) c1097bH.a().f15180H).setAudioFormat(Et.x(i13, i12, i11)).setTransferMode(1).setBufferSizeInBytes(this.f18754h).setSessionId(i8).setOffloadedPlayback(i9 == 1).build();
            } else {
                audioTrack = new AudioTrack((AudioAttributes) c1097bH.a().f15180H, Et.x(i13, i12, i11), this.f18754h, 1, i8);
            }
            int state = audioTrack.getState();
            if (state == 1) {
                return audioTrack;
            }
            try {
                audioTrack.release();
            } catch (Exception unused) {
            }
            throw new RL(state, this.f18751e, this.f18752f, this.f18754h, this.f18747a, i9 == 1, null);
        } catch (IllegalArgumentException e8) {
            e = e8;
            RuntimeException runtimeException = e;
            if (i9 == 1) {
                z7 = true;
            } else {
                z7 = false;
            }
            throw new RL(0, this.f18751e, this.f18752f, this.f18754h, this.f18747a, z7, runtimeException);
        } catch (UnsupportedOperationException e9) {
            e = e9;
            RuntimeException runtimeException2 = e;
            if (i9 == 1) {
                z7 = true;
            } else {
                z7 = false;
            }
            throw new RL(0, this.f18751e, this.f18752f, this.f18754h, this.f18747a, z7, runtimeException2);
        }
    }
}
