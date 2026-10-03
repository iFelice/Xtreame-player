package B0;

import android.os.Looper;
import com.google.android.gms.internal.measurement.H1;

/* JADX INFO: loaded from: classes.dex */
public final class z0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final y0 f1151a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final x0 f1152b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f1153c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Object f1154d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Looper f1155e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f1156f;

    public z0(X x7, y0 y0Var, p094m0.f0 f0Var, int i8, Looper looper) {
        this.f1152b = x7;
        this.f1151a = y0Var;
        this.f1155e = looper;
    }

    public final synchronized void a(boolean z7) {
        notifyAll();
    }

    public final void b() {
        H1.i(!this.f1156f);
        this.f1156f = true;
        X x7 = (X) this.f1152b;
        if (!x7.f891o0 && x7.f866P.getThread().isAlive()) {
            x7.f864N.a(14, this).b();
        } else {
            p117p0.x.f("ExoPlayerImplInternal", "Ignoring messages sent after release.");
            a(false);
        }
    }
}
