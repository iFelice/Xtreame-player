package p086l;

import androidx.appcompat.widget.Toolbar;
import p079k.q;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class g1 implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f26257G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ Toolbar f26258H;

    public /* synthetic */ g1(Toolbar toolbar, int i8) {
        this.f26257G = i8;
        this.f26258H = toolbar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f26257G;
        Toolbar toolbar = this.f26258H;
        switch (i8) {
            case 0:
                j1 j1Var = toolbar.f8930u0;
                q qVar = j1Var == null ? null : j1Var.f26271H;
                if (qVar != null) {
                    qVar.collapseActionView();
                }
                break;
            default:
                toolbar.m();
                break;
        }
    }
}
