package p000a;

import Y.AbstractActivityC0409v;
import android.view.View;
import android.view.Window;
import p032e0.EnumC2981i;
import p032e0.InterfaceC2983k;
import p032e0.K;
import p032e0.m;

/* JADX INFO: loaded from: classes.dex */
public final class i implements InterfaceC2983k {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f8570G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ m f8571H;

    public /* synthetic */ i(AbstractActivityC0409v abstractActivityC0409v, int i8) {
        this.f8570G = i8;
        this.f8571H = abstractActivityC0409v;
    }

    @Override // p032e0.InterfaceC2983k
    public final void b(m mVar, EnumC2981i enumC2981i) {
        switch (this.f8570G) {
            case 0:
                if (enumC2981i == EnumC2981i.ON_STOP) {
                    Window window = this.f8571H.getWindow();
                    View viewPeekDecorView = window != null ? window.peekDecorView() : null;
                    if (viewPeekDecorView != null) {
                        viewPeekDecorView.cancelPendingInputEvents();
                    }
                }
                break;
            case 1:
                if (enumC2981i == EnumC2981i.ON_DESTROY) {
                    this.f8571H.f8577H.f4153H = null;
                    if (!this.f8571H.isChangingConfigurations()) {
                        this.f8571H.c().a();
                    }
                }
                break;
            default:
                m mVar2 = this.f8571H;
                if (mVar2.f8581L == null) {
                    k kVar = (k) mVar2.getLastNonConfigurationInstance();
                    if (kVar != null) {
                        mVar2.f8581L = kVar.f8572a;
                    }
                    if (mVar2.f8581L == null) {
                        mVar2.f8581L = new K();
                    }
                }
                mVar2.f8579J.c(this);
                break;
        }
    }
}
