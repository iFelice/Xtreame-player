package J2;

import android.view.View;
import android.view.ViewTreeObserver;

/* JADX INFO: loaded from: classes.dex */
public final class e implements ViewTreeObserver.OnDrawListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ View f4098G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ f f4099H;

    public e(f fVar, View view) {
        this.f4099H = fVar;
        this.f4098G = view;
    }

    @Override // android.view.ViewTreeObserver.OnDrawListener
    public final void onDraw() {
        P2.o.f().post(new d(this, this));
    }
}
