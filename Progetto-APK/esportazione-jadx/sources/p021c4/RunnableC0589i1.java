package p021c4;

import com.google.android.gms.internal.cast.X;
import p096m2.e;

/* JADX INFO: renamed from: c4.i1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC0589i1 implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final long f11217G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final long f11218H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ e f11219I;

    public RunnableC0589i1(e eVar, long j8, long j9) {
        this.f11219I = eVar;
        this.f11217G = j8;
        this.f11218H = j9;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C0591j0 c0591j0 = ((C0597l0) ((C0595k1) this.f11219I.f27216I).f10616G).f11259P;
        C0597l0.k(c0591j0);
        c0591j0.x(new X(this, 6));
    }
}
