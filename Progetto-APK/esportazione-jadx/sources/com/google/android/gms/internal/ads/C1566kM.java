package com.google.android.gms.internal.ads;

import android.media.AudioTrack;
import android.os.Handler;
import android.os.Looper;
import java.util.Objects;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.kM, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1566kM {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Handler f19601a = new Handler(Looper.myLooper());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C1514jM f19602b = new C1514jM(this);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ C1618lM f19603c;

    public C1566kM(C1618lM c1618lM) {
        this.f19603c = c1618lM;
    }

    public void a(AudioTrack audioTrack) {
        Handler handler = this.f19601a;
        Objects.requireNonNull(handler);
        audioTrack.registerStreamEventCallback(new ExecutorC1885qe(handler, 1), this.f19602b);
    }

    public void b(AudioTrack audioTrack) {
        audioTrack.unregisterStreamEventCallback(this.f19602b);
        this.f19601a.removeCallbacksAndMessages(null);
    }
}
