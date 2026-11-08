package O6;

import J6.E;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;

/* JADX INFO: loaded from: classes2.dex */
public abstract class h extends E {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final c f5675I;

    public h(int i8, int i9, long j8, String str) {
        this.f5675I = new c(i8, i9, j8, str);
    }

    @Override // J6.AbstractC0214m
    public final void a0(p185x6.j jVar, Runnable runnable) {
        c cVar = this.f5675I;
        AtomicLongFieldUpdater atomicLongFieldUpdater = c.f5660N;
        cVar.E(runnable, false, false);
    }
}
