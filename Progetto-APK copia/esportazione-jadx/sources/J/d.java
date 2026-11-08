package J;

import J6.C0205d;
import android.os.OutcomeReceiver;
import java.util.concurrent.atomic.AtomicBoolean;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class d extends AtomicBoolean implements OutcomeReceiver {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final p185x6.e f4048G;

    public d(C0205d c0205d) {
        super(false);
        this.f4048G = c0205d;
    }

    @Override // android.os.OutcomeReceiver
    public final void onError(Throwable th) {
        if (compareAndSet(false, true)) {
            this.f4048G.b(q0.n(th));
        }
    }

    @Override // android.os.OutcomeReceiver
    public final void onResult(Object obj) {
        if (compareAndSet(false, true)) {
            this.f4048G.b(obj);
        }
    }

    @Override // java.util.concurrent.atomic.AtomicBoolean
    public final String toString() {
        return "ContinuationOutcomeReceiver(outcomeReceived = " + get() + ')';
    }
}
