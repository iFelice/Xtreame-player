package Y;

import android.util.Log;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class M extends p032e0.G {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final F2.G f7756h = new F2.G(0);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f7760e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HashMap f7757b = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HashMap f7758c = new HashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final HashMap f7759d = new HashMap();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f7761f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f7762g = false;

    public M(boolean z7) {
        this.f7760e = z7;
    }

    @Override // p032e0.G
    public final void b() {
        if (Log.isLoggable("FragmentManager", 3)) {
            Log.d("FragmentManager", "onCleared called for " + this);
        }
        this.f7761f = true;
    }

    public final void c(AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s) {
        if (this.f7762g) {
            if (Log.isLoggable("FragmentManager", 2)) {
                Log.v("FragmentManager", "Ignoring addRetainedFragment as the state is already saved");
                return;
            }
            return;
        }
        HashMap map = this.f7757b;
        if (map.containsKey(abstractComponentCallbacksC0406s.f7936L)) {
            return;
        }
        map.put(abstractComponentCallbacksC0406s.f7936L, abstractComponentCallbacksC0406s);
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "Updating retained Fragments: Added " + abstractComponentCallbacksC0406s);
        }
    }

    public final void d(AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s) {
        if (Log.isLoggable("FragmentManager", 3)) {
            Log.d("FragmentManager", "Clearing non-config state for " + abstractComponentCallbacksC0406s);
        }
        e(abstractComponentCallbacksC0406s.f7936L);
    }

    public final void e(String str) {
        HashMap map = this.f7758c;
        M m7 = (M) map.get(str);
        if (m7 != null) {
            m7.b();
            map.remove(str);
        }
        HashMap map2 = this.f7759d;
        p032e0.K k8 = (p032e0.K) map2.get(str);
        if (k8 != null) {
            k8.a();
            map2.remove(str);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || M.class != obj.getClass()) {
            return false;
        }
        M m7 = (M) obj;
        return this.f7757b.equals(m7.f7757b) && this.f7758c.equals(m7.f7758c) && this.f7759d.equals(m7.f7759d);
    }

    public final void f(AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s) {
        if (this.f7762g) {
            if (Log.isLoggable("FragmentManager", 2)) {
                Log.v("FragmentManager", "Ignoring removeRetainedFragment as the state is already saved");
            }
        } else {
            if (this.f7757b.remove(abstractComponentCallbacksC0406s.f7936L) == null || !Log.isLoggable("FragmentManager", 2)) {
                return;
            }
            Log.v("FragmentManager", "Updating retained Fragments: Removed " + abstractComponentCallbacksC0406s);
        }
    }

    public final int hashCode() {
        return this.f7759d.hashCode() + ((this.f7758c.hashCode() + (this.f7757b.hashCode() * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("FragmentManagerViewModel{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("} Fragments (");
        Iterator it = this.f7757b.values().iterator();
        while (it.hasNext()) {
            sb.append(it.next());
            if (it.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") Child Non Config (");
        Iterator it2 = this.f7758c.keySet().iterator();
        while (it2.hasNext()) {
            sb.append((String) it2.next());
            if (it2.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") ViewModelStores (");
        Iterator it3 = this.f7759d.keySet().iterator();
        while (it3.hasNext()) {
            sb.append((String) it3.next());
            if (it3.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(')');
        return sb.toString();
    }
}
