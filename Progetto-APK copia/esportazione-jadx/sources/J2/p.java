package J2;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class p implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ t f4113a;

    public p(t tVar) {
        this.f4113a = tVar;
    }

    @Override // J2.a
    public final void a(boolean z7) {
        ArrayList arrayList;
        P2.o.a();
        synchronized (this.f4113a) {
            arrayList = new ArrayList((Set) this.f4113a.f4127J);
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((a) it.next()).a(z7);
        }
    }
}
