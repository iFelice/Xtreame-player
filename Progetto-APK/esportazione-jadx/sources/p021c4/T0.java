package p021c4;

/* JADX INFO: loaded from: classes.dex */
public final class T0 implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ S0 f11048G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ S0 f11049H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ long f11050I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ boolean f11051J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final /* synthetic */ V0 f11052K;

    public T0(V0 v5, S0 s7, S0 s8, long j8, boolean z7) {
        this.f11048G = s7;
        this.f11049H = s8;
        this.f11050I = j8;
        this.f11051J = z7;
        this.f11052K = v5;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f11052K.r(this.f11048G, this.f11049H, this.f11050I, this.f11051J, null);
    }
}
