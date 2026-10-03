package p117p0;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: renamed from: p0.k, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3173k implements Iterable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Object f28090G = new Object();

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final HashMap f28091H = new HashMap();

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public Set f28092I = Collections.emptySet();

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public List f28093J = Collections.emptyList();

    public final int b(Object obj) {
        int iIntValue;
        synchronized (this.f28090G) {
            try {
                iIntValue = this.f28091H.containsKey(obj) ? ((Integer) this.f28091H.get(obj)).intValue() : 0;
            } catch (Throwable th) {
                throw th;
            }
        }
        return iIntValue;
    }

    public final void c(Object obj) {
        synchronized (this.f28090G) {
            try {
                Integer num = (Integer) this.f28091H.get(obj);
                if (num == null) {
                    return;
                }
                ArrayList arrayList = new ArrayList(this.f28093J);
                arrayList.remove(obj);
                this.f28093J = Collections.unmodifiableList(arrayList);
                if (num.intValue() == 1) {
                    this.f28091H.remove(obj);
                    HashSet hashSet = new HashSet(this.f28092I);
                    hashSet.remove(obj);
                    this.f28092I = Collections.unmodifiableSet(hashSet);
                } else {
                    this.f28091H.put(obj, Integer.valueOf(num.intValue() - 1));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        Iterator it;
        synchronized (this.f28090G) {
            it = this.f28093J.iterator();
        }
        return it;
    }
}
