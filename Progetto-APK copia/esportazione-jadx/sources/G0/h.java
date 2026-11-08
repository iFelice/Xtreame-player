package G0;

import android.os.Handler;
import p117p0.M;

/* JADX INFO: loaded from: classes.dex */
public final class h implements q {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final o f3336G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public l f3337H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public boolean f3338I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ i f3339J;

    public h(i iVar, o oVar) {
        this.f3339J = iVar;
        this.f3336G = oVar;
    }

    @Override // G0.q
    public final void release() {
        Handler handler = this.f3339J.f3359Z;
        handler.getClass();
        M.V(handler, new p000a.b(this, 16));
    }
}
