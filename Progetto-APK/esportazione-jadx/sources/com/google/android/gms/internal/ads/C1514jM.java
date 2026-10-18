package com.google.android.gms.internal.ads;

import android.media.AudioTrack;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.jM, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1514jM extends AudioTrack.StreamEventCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C1566kM f19459a;

    public C1514jM(C1566kM c1566kM) {
        this.f19459a = c1566kM;
    }

    @Override // android.media.AudioTrack.StreamEventCallback
    public final void onDataRequest(AudioTrack audioTrack, int i8) {
        audioTrack.equals(this.f19459a.f19603c.f19775p);
    }

    @Override // android.media.AudioTrack.StreamEventCallback
    public final void onPresentationEnded(AudioTrack audioTrack) {
        if (audioTrack.equals(this.f19459a.f19603c.f19775p)) {
            this.f19459a.f19603c.f19747M = true;
        }
    }

    @Override // android.media.AudioTrack.StreamEventCallback
    public final void onTearDown(AudioTrack audioTrack) {
        audioTrack.equals(this.f19459a.f19603c.f19775p);
    }
}
