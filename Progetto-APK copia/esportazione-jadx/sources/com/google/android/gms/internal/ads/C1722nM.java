package com.google.android.gms.internal.ads;

import android.os.Handler;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.nM, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1722nM {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C1774oM f20167a;

    public /* synthetic */ C1722nM(C1774oM c1774oM) {
        this.f20167a = c1774oM;
    }

    public final void a(Exception exc) {
        Zo.d("MediaCodecAudioRenderer", "Audio sink error", exc);
        C1773oL c1773oL = this.f20167a.f20273y0;
        Handler handler = (Handler) c1773oL.f20259H;
        if (handler != null) {
            handler.post(new OL(c1773oL, exc, 1));
        }
    }
}
