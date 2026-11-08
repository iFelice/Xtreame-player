package E1;

import android.util.SparseArray;

/* JADX INFO: loaded from: classes.dex */
public final class T implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f2669G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ U f2670H;

    public /* synthetic */ T(U u7, int i8) {
        this.f2669G = i8;
        this.f2670H = u7;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f2669G;
        U u7 = this.f2670H;
        switch (i8) {
            case 0:
                SparseArray sparseArray = u7.f2678h;
                int size = sparseArray.size();
                for (int i9 = 0; i9 < size; i9++) {
                    ((X) sparseArray.valueAt(i9)).getClass();
                    X.a(null, null);
                }
                sparseArray.clear();
                break;
            default:
                a0 a0Var = u7.f2679i;
                if (a0Var.f2703n == u7) {
                    a0Var.k();
                }
                break;
        }
    }
}
