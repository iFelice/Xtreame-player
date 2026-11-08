package z4;

import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class M extends AbstractC3238b {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ int f31813J = 0;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final Iterator f31814K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final /* synthetic */ Object f31815L;

    public M(Iterator it, p190y4.l lVar) {
        this.f31814K = it;
        this.f31815L = lVar;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // z4.AbstractC3238b
    public final Object a() {
        int i8 = this.f31813J;
        Object obj = this.f31815L;
        Iterator it = this.f31814K;
        switch (i8) {
            case 0:
                while (it.hasNext()) {
                    Object next = it.next();
                    if (((p190y4.l) obj).apply(next)) {
                        return next;
                    }
                }
                this.f31834H = 3;
                return null;
            default:
                while (it.hasNext()) {
                    Object next2 = it.next();
                    if (((n0) obj).f31885J.contains(next2)) {
                        return next2;
                    }
                }
                this.f31834H = 3;
                return null;
        }
    }

    public M(n0 n0Var) {
        this.f31815L = n0Var;
        this.f31814K = n0Var.f31884I.iterator();
    }
}
