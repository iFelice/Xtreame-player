package F;

import A0.O;
import B0.K;
import B0.L;
import D0.C0124n;
import android.os.Looper;
import com.google.android.gms.internal.measurement.H1;
import p039f.RunnableC3004t;
import p117p0.C3167e;
import p117p0.M;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class l implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f2984G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ int f2985H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ Object f2986I;

    public /* synthetic */ l(Object obj, int i8, int i9) {
        this.f2984G = i9;
        this.f2986I = obj;
        this.f2985H = i8;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f2984G;
        int i9 = this.f2985H;
        Object obj = this.f2986I;
        switch (i8) {
            case 0:
                ((p016c.g) obj).getClass();
                return;
            case 1:
                ((p102n0.a) obj).f27305b.onAudioFocusChange(i9);
                return;
            case 2:
                O.I(obj);
                throw null;
            default:
                C0124n c0124n = (C0124n) obj;
                c0124n.getClass();
                String str = M.f28050a;
                C3167e c3167e = ((L) c0124n.f1962b).f743G.f802j0;
                K k8 = new K(i9, 1);
                c3167e.getClass();
                H1.i(Looper.myLooper() == c3167e.f28075b.f28043a.getLooper());
                c3167e.f28079f++;
                c3167e.a(new RunnableC3004t(5, c3167e, k8));
                Integer numValueOf = Integer.valueOf(i9);
                Object obj2 = c3167e.f28077d;
                c3167e.f28077d = numValueOf;
                if (obj2.equals(numValueOf)) {
                    return;
                }
                c3167e.f28076c.a(obj2, numValueOf);
                return;
        }
    }
}
