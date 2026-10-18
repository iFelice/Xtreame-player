package p167v3;

import android.util.Pair;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class A extends LinkedHashMap {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ C f30563G;

    public A(C c8) {
        this.f30563G = c8;
    }

    @Override // java.util.LinkedHashMap
    public final boolean removeEldestEntry(Map.Entry entry) {
        synchronized (this.f30563G) {
            try {
                int size = size();
                C c8 = this.f30563G;
                if (size <= c8.f30567a) {
                    return false;
                }
                c8.f30572f.add(new Pair((String) entry.getKey(), ((B) entry.getValue()).f30565b));
                return size() > this.f30563G.f30567a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
