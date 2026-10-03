package b7;

import O1.C0314m;
import android.widget.ListAdapter;

/* JADX INFO: loaded from: classes2.dex */
public final class s1 implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f10411G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ t1 f10412H;

    public /* synthetic */ s1(t1 t1Var, int i8) {
        this.f10411G = i8;
        this.f10412H = t1Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f10411G;
        t1 t1Var = this.f10412H;
        switch (i8) {
            case 0:
                boolean z7 = t1Var.f10494J;
                A1 a8 = t1Var.f10495K;
                if (!z7) {
                    a8.f9945E0.setVisibility(8);
                }
                if (a8.f9952L0.size() != 0) {
                    a8.l();
                    a8.f9944D0.setAdapter(new v1(a8, a8.f9952L0, 1));
                    a8.f9944D0.setFocusable(false);
                    a8.f9944D0.j(new C0314m(this, 6));
                    break;
                }
                break;
            case 1:
                t1Var.f10495K.f9951K0.setVisibility(0);
                break;
            case 2:
                t1Var.f10495K.f9945E0.setVisibility(8);
                A1 a9 = t1Var.f10495K;
                a9.f9951K0.setAdapter((ListAdapter) new z1(a9, a9.l(), a9.f9956P0));
                break;
            default:
                t1Var.f10495K.f9951K0.setVisibility(8);
                break;
        }
    }
}
