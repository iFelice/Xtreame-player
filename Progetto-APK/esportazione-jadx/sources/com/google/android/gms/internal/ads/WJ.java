package com.google.android.gms.internal.ads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;

/* JADX INFO: loaded from: classes.dex */
public final class WJ extends BroadcastReceiver implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Handler f17198G;

    public WJ(Handler handler) {
        this.f17198G = handler;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if ("android.media.AUDIO_BECOMING_NOISY".equals(intent.getAction())) {
            this.f17198G.post(this);
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
    }
}
