package z4;

import com.google.android.gms.internal.ads.AbstractC1091bB;
import com.google.android.gms.internal.ads.Qz;
import com.google.android.gms.internal.ads.Rz;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: renamed from: z4.e, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3241e extends AbstractC1091bB {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ Rz f31847H;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3241e(Rz rz) {
        super(1);
        this.f31847H = rz;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1091bB, java.util.AbstractCollection, java.util.Collection, java.util.Set
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final void clear() {
        this.f31847H.clear();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1091bB, java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public final boolean removeAll(Collection collection) {
        try {
            collection.getClass();
            return super.removeAll(collection);
        } catch (UnsupportedOperationException unused) {
            Iterator it = collection.iterator();
            boolean zRemove = false;
            while (it.hasNext()) {
                zRemove |= remove(it.next());
            }
            return zRemove;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        Set setEntrySet = this.f31847H.f16386J.entrySet();
        setEntrySet.getClass();
        try {
            return setEntrySet.contains(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1091bB, java.util.AbstractCollection, java.util.Collection, java.util.Set
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public final boolean retainAll(Collection collection) {
        try {
            collection.getClass();
            return super.retainAll(collection);
        } catch (UnsupportedOperationException unused) {
            HashSet hashSet = new HashSet(p027d2.v.e(collection.size()));
            for (Object obj : collection) {
                if (contains(obj) && (obj instanceof Map.Entry)) {
                    hashSet.add(((Map.Entry) obj).getKey());
                }
            }
            return this.f31847H.keySet().retainAll(hashSet);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean isEmpty() {
        return this.f31847H.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        return new Qz(this.f31847H, 0);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1091bB, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        Object objRemove;
        if (!contains(obj)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        Objects.requireNonNull(entry);
        AbstractC3239c abstractC3239c = (AbstractC3239c) this.f31847H.f16387K;
        Object key = entry.getKey();
        Map map = abstractC3239c.f31837J;
        map.getClass();
        try {
            objRemove = map.remove(key);
        } catch (ClassCastException | NullPointerException unused) {
            objRemove = null;
        }
        Collection collection = (Collection) objRemove;
        if (collection == null) {
            return true;
        }
        int size = collection.size();
        collection.clear();
        abstractC3239c.f31838K -= size;
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f31847H.size();
    }
}
