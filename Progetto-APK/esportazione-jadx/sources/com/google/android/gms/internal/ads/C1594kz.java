package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.HandlerThread;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.kz, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C1594kz implements Gz {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f19677G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ Object f19678H;

    public /* synthetic */ C1594kz() {
        this.f19677G = 0;
        this.f19678H = "OverlayDisplayService";
    }

    @Override // com.google.android.gms.internal.ads.Gz
    public final Object zza() {
        int i8 = this.f19677G;
        Object obj = this.f19678H;
        switch (i8) {
            case 0:
                HandlerThread handlerThread = new HandlerThread((String) obj, 10);
                handlerThread.start();
                return new Handler(handlerThread.getLooper());
            case 1:
                return (DK) obj;
            default:
                return (AbstractC2191wO) obj;
        }
    }

    public /* synthetic */ C1594kz(Object obj, int i8) {
        this.f19677G = i8;
        this.f19678H = obj;
    }
}
