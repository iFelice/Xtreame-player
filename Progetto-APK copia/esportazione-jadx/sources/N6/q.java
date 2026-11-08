package N6;

import J6.AbstractC0214m;
import J6.AbstractC0220t;
import J6.InterfaceC0223w;

/* JADX INFO: loaded from: classes2.dex */
public final class q extends AbstractC0214m implements InterfaceC0223w {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final AbstractC0214m f4995I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final String f4996J;

    /* JADX WARN: Multi-variable type inference failed */
    public q(AbstractC0214m abstractC0214m, String str) {
        if ((abstractC0214m instanceof InterfaceC0223w ? (InterfaceC0223w) abstractC0214m : null) == null) {
            int i8 = AbstractC0220t.f4260a;
        }
        this.f4995I = abstractC0214m;
        this.f4996J = str;
    }

    @Override // J6.AbstractC0214m
    public final void a0(p185x6.j jVar, Runnable runnable) {
        this.f4995I.a0(jVar, runnable);
    }

    @Override // J6.AbstractC0214m
    public final boolean b0(p185x6.j jVar) {
        return this.f4995I.b0(jVar);
    }

    @Override // J6.AbstractC0214m
    public final String toString() {
        return this.f4996J;
    }
}
