package J2;

import F2.v;
import android.view.View;
import android.view.ViewTreeObserver;

/* JADX INFO: loaded from: classes.dex */
public final class d implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ ViewTreeObserver.OnDrawListener f4096G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ e f4097H;

    public d(e eVar, ViewTreeObserver.OnDrawListener onDrawListener) {
        this.f4097H = eVar;
        this.f4096G = onDrawListener;
    }

    @Override // java.lang.Runnable
    public final void run() {
        v vVarA = v.a();
        vVarA.getClass();
        P2.o.a();
        vVarA.f3174d.set(true);
        this.f4097H.f4099H.f4101H = true;
        View view = this.f4097H.f4098G;
        view.getViewTreeObserver().removeOnDrawListener(this.f4096G);
        this.f4097H.f4099H.f4100G.clear();
    }
}
