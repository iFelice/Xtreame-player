package com.google.android.gms.internal.ads;

import java.util.Map;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.En, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0723En implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f13212G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ C0871Om f13213H;

    public /* synthetic */ RunnableC0723En(C0871Om c0871Om, int i8) {
        this.f13212G = i8;
        this.f13213H = c0871Om;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f13212G;
        C0871Om c0871Om = this.f13213H;
        switch (i8) {
            case 0:
                ((C0738Fn) c0871Om.f15196H).f13412a.a((Map) c0871Om.f15197I, false);
                break;
            default:
                ((C0738Fn) c0871Om.f15196H).f13412a.a((Map) c0871Om.f15197I, true);
                break;
        }
    }
}
