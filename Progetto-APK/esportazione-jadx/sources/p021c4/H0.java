package p021c4;

import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
public final class H0 implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ String f10854G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ String f10855H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ long f10856I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ Bundle f10857J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final /* synthetic */ boolean f10858K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final /* synthetic */ boolean f10859L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final /* synthetic */ boolean f10860M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final /* synthetic */ String f10861N = null;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final /* synthetic */ K0 f10862O;

    public H0(K0 k8, String str, String str2, long j8, Bundle bundle, boolean z7, boolean z8, boolean z9) {
        this.f10854G = str;
        this.f10855H = str2;
        this.f10856I = j8;
        this.f10857J = bundle;
        this.f10858K = z7;
        this.f10859L = z8;
        this.f10860M = z9;
        this.f10862O = k8;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f10862O.A(this.f10854G, this.f10855H, this.f10856I, this.f10857J, this.f10858K, this.f10859L, this.f10860M, this.f10861N);
    }
}
