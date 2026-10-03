package O6;

import J6.AbstractC0214m;
import N6.q;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class l extends AbstractC0214m {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public static final l f5685I = new l();

    @Override // J6.AbstractC0214m
    public final void a0(p185x6.j jVar, Runnable runnable) {
        e.f5673J.f5675I.E(runnable, true, false);
    }

    @Override // J6.AbstractC0214m
    public final AbstractC0214m c0(int i8, String str) {
        q0.i(i8);
        if (i8 >= k.f5682d) {
            return str != null ? new q(this, str) : this;
        }
        return super.c0(i8, str);
    }

    @Override // J6.AbstractC0214m
    public final String toString() {
        return "Dispatchers.IO";
    }
}
