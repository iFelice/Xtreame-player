package J2;

import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class u implements j {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Set f4128G = Collections.newSetFromMap(new WeakHashMap());

    @Override // J2.j
    public final void e() {
        Iterator it = P2.o.e(this.f4128G).iterator();
        while (it.hasNext()) {
            ((M2.i) it.next()).e();
        }
    }

    @Override // J2.j
    public final void j() {
        Iterator it = P2.o.e(this.f4128G).iterator();
        while (it.hasNext()) {
            ((M2.i) it.next()).j();
        }
    }

    @Override // J2.j
    public final void onDestroy() {
        Iterator it = P2.o.e(this.f4128G).iterator();
        while (it.hasNext()) {
            ((M2.i) it.next()).onDestroy();
        }
    }
}
