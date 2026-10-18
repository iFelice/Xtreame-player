package H6;

import java.util.Iterator;
import java.util.concurrent.atomic.AtomicReference;
import p162u6.n;

/* JADX INFO: loaded from: classes2.dex */
public final class a implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AtomicReference f3781a;

    public a(n nVar) {
        this.f3781a = new AtomicReference(nVar);
    }

    @Override // H6.c
    public final Iterator iterator() {
        c cVar = (c) this.f3781a.getAndSet(null);
        if (cVar != null) {
            return cVar.iterator();
        }
        throw new IllegalStateException("This sequence can be consumed only once.");
    }
}
