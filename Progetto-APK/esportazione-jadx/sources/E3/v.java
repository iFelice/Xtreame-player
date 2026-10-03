package E3;

import com.google.android.gms.common.api.internal.BasePendingResult;
import java.util.ArrayDeque;
import java.util.TimerTask;

/* JADX INFO: loaded from: classes.dex */
public final class v extends TimerTask {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ d f2928G;

    public v(d dVar) {
        this.f2928G = dVar;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public final void run() {
        BasePendingResult basePendingResultQ;
        d dVar = this.f2928G;
        if (dVar.f2847h.isEmpty() || dVar.f2850k != null || dVar.f2841b == 0) {
            return;
        }
        ArrayDeque arrayDeque = dVar.f2847h;
        int[] iArrF = H3.a.f(arrayDeque);
        j jVar = dVar.f2842c;
        jVar.getClass();
        com.bumptech.glide.c.d("Must be called from the main thread.");
        if (jVar.t()) {
            m mVar = new m(jVar, iArrF);
            j.u(mVar);
            basePendingResultQ = mVar;
        } else {
            basePendingResultQ = j.q();
        }
        dVar.f2850k = basePendingResultQ;
        basePendingResultQ.M0(new u(dVar, 1));
        arrayDeque.clear();
    }
}
