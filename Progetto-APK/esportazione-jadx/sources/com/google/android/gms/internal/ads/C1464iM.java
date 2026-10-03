package com.google.android.gms.internal.ads;

import D0.AbstractC0134y;
import android.media.AudioRouting;
import android.media.AudioTrack;
import android.os.Handler;
import android.os.Looper;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.iM, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1464iM {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AudioTrack f19297a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final GL f19298b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public C1412hM f19299c = new AudioRouting.OnRoutingChangedListener() { // from class: com.google.android.gms.internal.ads.hM
        @Override // android.media.AudioRouting.OnRoutingChangedListener
        public final void onRoutingChanged(AudioRouting audioRouting) {
            this.f19084a.c(audioRouting);
        }
    };

    /* JADX WARN: Type inference failed for: r3v1, types: [com.google.android.gms.internal.ads.hM] */
    public C1464iM(AudioTrack audioTrack, GL gl) {
        this.f19297a = audioTrack;
        this.f19298b = gl;
        audioTrack.addOnRoutingChangedListener(this.f19299c, new Handler(Looper.myLooper()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(AudioRouting audioRouting) {
        if (this.f19299c == null || audioRouting.getRoutedDevice() == null) {
            return;
        }
        this.f19298b.a(audioRouting.getRoutedDevice());
    }

    public void b() {
        C1412hM c1412hM = this.f19299c;
        c1412hM.getClass();
        this.f19297a.removeOnRoutingChangedListener(AbstractC0134y.f(c1412hM));
        this.f19299c = null;
    }
}
