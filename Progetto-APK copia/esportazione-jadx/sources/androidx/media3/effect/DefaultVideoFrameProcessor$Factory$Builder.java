package androidx.media3.effect;

import A0.C0021v;

/* JADX INFO: loaded from: classes.dex */
public final class DefaultVideoFrameProcessor$Factory$Builder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f9448a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f9449b = true;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f9450c = true;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f9451d = true;

    public C0021v build() {
        return new C0021v(!this.f9449b, this.f9448a, this.f9450c, this.f9451d);
    }

    public DefaultVideoFrameProcessor$Factory$Builder setEnableReplayableCache(boolean z7) {
        this.f9448a = z7;
        return this;
    }
}
