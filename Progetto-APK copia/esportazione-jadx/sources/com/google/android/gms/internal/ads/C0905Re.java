package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.AudioManager;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Re, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0905Re implements AudioManager.OnAudioFocusChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AudioManager f16271a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final InterfaceC0891Qe f16272b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f16273c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f16274d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f16275e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float f16276f = 1.0f;

    public C0905Re(Context context, InterfaceC0891Qe interfaceC0891Qe) {
        this.f16271a = (AudioManager) context.getSystemService("audio");
        this.f16272b = interfaceC0891Qe;
    }

    public final void a() {
        boolean z7 = this.f16274d;
        InterfaceC0891Qe interfaceC0891Qe = this.f16272b;
        AudioManager audioManager = this.f16271a;
        if (!z7 || this.f16275e || this.f16276f <= 0.0f) {
            if (this.f16273c) {
                if (audioManager != null) {
                    this.f16273c = audioManager.abandonAudioFocus(this) == 0;
                }
                interfaceC0891Qe.zzn();
                return;
            }
            return;
        }
        if (this.f16273c) {
            return;
        }
        if (audioManager != null) {
            this.f16273c = audioManager.requestAudioFocus(this, 3, 2) == 1;
        }
        interfaceC0891Qe.zzn();
    }

    @Override // android.media.AudioManager.OnAudioFocusChangeListener
    public final void onAudioFocusChange(int i8) {
        this.f16273c = i8 > 0;
        this.f16272b.zzn();
    }
}
