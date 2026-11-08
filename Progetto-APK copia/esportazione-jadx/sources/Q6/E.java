package Q6;

import java.util.concurrent.TimeUnit;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class E extends G {
    @Override // Q6.G
    public final G timeout(long j8, TimeUnit timeUnit) {
        q0.h(timeUnit, "unit");
        return this;
    }

    @Override // Q6.G
    public final void throwIfReached() {
    }

    @Override // Q6.G
    public final G deadlineNanoTime(long j8) {
        return this;
    }
}
