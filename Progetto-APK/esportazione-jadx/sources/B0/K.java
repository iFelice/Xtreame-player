package B0;

import android.os.HandlerThread;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class K implements p190y4.h, p190y4.t {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f740G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ int f741H;

    public /* synthetic */ K(int i8, int i9) {
        this.f740G = i9;
        this.f741H = i8;
    }

    @Override // p190y4.h
    public Object apply(Object obj) {
        int i8 = this.f740G;
        int i9 = this.f741H;
        switch (i8) {
            case 0:
                break;
        }
        return Integer.valueOf(i9);
    }

    @Override // p190y4.t
    public Object get() {
        int i8 = this.f740G;
        int i9 = this.f741H;
        switch (i8) {
            case 0:
                return new HandlerThread(K0.b.c(i9, "ExoPlayer:MediaCodecAsyncAdapter:"));
            default:
                return new HandlerThread(K0.b.c(i9, "ExoPlayer:MediaCodecQueueingThread:"));
        }
    }
}
