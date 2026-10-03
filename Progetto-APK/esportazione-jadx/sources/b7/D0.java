package b7;

import D1.C0152q;
import android.view.ViewTreeObserver;

/* JADX INFO: loaded from: classes2.dex */
public final class D0 implements ViewTreeObserver.OnGlobalLayoutListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f9978G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ O1.c0 f9979H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ O1.C f9980I;

    public /* synthetic */ D0(O1.C c8, O1.c0 c0Var, int i8) {
        this.f9978G = i8;
        this.f9980I = c8;
        this.f9979H = c0Var;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        int i8 = this.f9978G;
        O1.C c8 = this.f9980I;
        O1.c0 c0Var = this.f9979H;
        switch (i8) {
            case 0:
                ((C0) c0Var).f9972b0.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                I0 i9 = ((E0) c8).f9989L;
                int i10 = I0.f10034A1;
                i9.V();
                break;
            default:
                ((P0) c0Var).f10164b0.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                S0 s7 = (S0) ((C0152q) c8).f2206M;
                int i11 = S0.f10180z1;
                s7.Y();
                break;
        }
    }
}
