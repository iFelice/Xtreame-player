package com.google.android.gms.internal.ads;

import android.media.AudioManager;
import android.os.Handler;

/* JADX INFO: loaded from: classes.dex */
public final class XJ implements AudioManager.OnAudioFocusChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Handler f17407a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ZJ f17408b;

    public XJ(ZJ zj, Handler handler) {
        this.f17408b = zj;
        this.f17407a = handler;
    }

    @Override // android.media.AudioManager.OnAudioFocusChangeListener
    public final void onAudioFocusChange(int i8) {
        this.f17407a.post(new androidx.leanback.widget.C(this, i8, 7));
    }
}
