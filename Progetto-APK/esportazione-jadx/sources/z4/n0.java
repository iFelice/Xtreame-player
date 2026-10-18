package z4;

import com.google.android.gms.internal.ads.AbstractC1091bB;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class n0 extends AbstractC1091bB {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ int f31883H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ Set f31884I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ Set f31885J;

    public /* synthetic */ n0(Set set, Set set2, int i8) {
        this.f31883H = i8;
        this.f31884I = set;
        this.f31885J = set2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        int i8 = this.f31883H;
        Set set = this.f31885J;
        Set set2 = this.f31884I;
        switch (i8) {
            case 0:
                return set2.contains(obj) || set.contains(obj);
            default:
                return set2.contains(obj) && set.contains(obj);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean containsAll(Collection collection) {
        switch (this.f31883H) {
            case 1:
                return this.f31884I.containsAll(collection) && this.f31885J.containsAll(collection);
            default:
                return super.containsAll(collection);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean isEmpty() {
        int i8 = this.f31883H;
        Set set = this.f31884I;
        Set set2 = this.f31885J;
        switch (i8) {
            case 0:
                return set.isEmpty() && set2.isEmpty();
            default:
                return Collections.disjoint(set2, set);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        int i8 = this.f31883H;
        switch (i8) {
            case 0:
                switch (i8) {
                    case 0:
                        return new m0(this);
                    default:
                        return new M(this);
                }
            default:
                switch (i8) {
                    case 0:
                        return new m0(this);
                    default:
                        return new M(this);
                }
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        int i8 = this.f31883H;
        Set set = this.f31885J;
        Set set2 = this.f31884I;
        switch (i8) {
            case 0:
                int size = set2.size();
                Iterator it = set.iterator();
                while (it.hasNext()) {
                    if (!set2.contains(it.next())) {
                        size++;
                    }
                }
                return size;
            default:
                Iterator it2 = set2.iterator();
                int i9 = 0;
                while (it2.hasNext()) {
                    if (set.contains(it2.next())) {
                        i9++;
                    }
                }
                return i9;
        }
    }
}
