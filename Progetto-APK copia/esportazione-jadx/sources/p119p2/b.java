package p119p2;

import android.os.Handler;
import java.util.concurrent.Executor;
import p000a.f;
import p021c4.C0591j0;
import p021c4.C0597l0;
import p021c4.K0;
import p096m2.u;

/* JADX INFO: loaded from: classes.dex */
public final class b implements Executor {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f28194G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Object f28195H;

    public /* synthetic */ b(Object obj, int i8) {
        this.f28194G = i8;
        this.f28195H = obj;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        int i8 = this.f28194G;
        Object obj = this.f28195H;
        switch (i8) {
            case 0:
                ((Handler) ((u) obj).f27279I).post(runnable);
                break;
            case 1:
                ((Executor) obj).execute(new f(runnable, 19));
                break;
            default:
                C0591j0 c0591j0 = ((C0597l0) ((K0) obj).f10616G).f11259P;
                C0597l0.k(c0591j0);
                c0591j0.x(runnable);
                break;
        }
    }
}
