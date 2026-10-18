package z4;

import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class m0 extends AbstractC3238b {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final Iterator f31880J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final Iterator f31881K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final /* synthetic */ n0 f31882L;

    public m0(n0 n0Var) {
        this.f31882L = n0Var;
        this.f31880J = n0Var.f31884I.iterator();
        this.f31881K = n0Var.f31885J.iterator();
    }

    @Override // z4.AbstractC3238b
    public final Object a() {
        Object next;
        Iterator it = this.f31880J;
        if (it.hasNext()) {
            return it.next();
        }
        do {
            Iterator it2 = this.f31881K;
            if (!it2.hasNext()) {
                this.f31834H = 3;
                return null;
            }
            next = it2.next();
        } while (this.f31882L.f31884I.contains(next));
        return next;
    }
}
