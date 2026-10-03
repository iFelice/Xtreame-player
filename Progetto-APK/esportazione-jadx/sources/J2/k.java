package J2;

import java.util.Map;
import p032e0.B;

/* JADX INFO: loaded from: classes.dex */
public final class k implements j {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ B f4104G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ l f4105H;

    public k(l lVar, p032e0.o oVar) {
        this.f4105H = lVar;
        this.f4104G = oVar;
    }

    @Override // J2.j
    public final void onDestroy() {
        ((Map) this.f4105H.f4106G).remove(this.f4104G);
    }

    @Override // J2.j
    public final void e() {
    }

    @Override // J2.j
    public final void j() {
    }
}
