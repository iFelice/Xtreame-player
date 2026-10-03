package p169v6;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class g extends p162u6.g {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f30757G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final f f30758H;

    public g(f fVar, int i8) {
        this.f30757G = i8;
        if (i8 != 1) {
            q0.h(fVar, "backing");
            this.f30758H = fVar;
        } else {
            q0.h(fVar, "backing");
            this.f30758H = fVar;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean add(Object obj) {
        switch (this.f30757G) {
            case 0:
                q0.h((Map.Entry) obj, "element");
                throw new UnsupportedOperationException();
            default:
                throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean addAll(Collection collection) {
        switch (this.f30757G) {
            case 0:
                q0.h(collection, "elements");
                throw new UnsupportedOperationException();
            default:
                q0.h(collection, "elements");
                throw new UnsupportedOperationException();
        }
    }

    @Override // p162u6.g
    public final int b() {
        int i8 = this.f30757G;
        f fVar = this.f30758H;
        switch (i8) {
            case 0:
                break;
        }
        return fVar.f30752O;
    }

    public final boolean c(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        q0.h(entry, "element");
        return this.f30758H.f(entry);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        int i8 = this.f30757G;
        f fVar = this.f30758H;
        switch (i8) {
            case 0:
                fVar.clear();
                break;
            default:
                fVar.clear();
                break;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        switch (this.f30757G) {
            case 0:
                return c(obj);
            default:
                return this.f30758H.containsKey(obj);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean containsAll(Collection collection) {
        switch (this.f30757G) {
            case 0:
                q0.h(collection, "elements");
                return this.f30758H.e(collection);
            default:
                return super.containsAll(collection);
        }
    }

    public final boolean i(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        q0.h(entry, "element");
        f fVar = this.f30758H;
        fVar.getClass();
        fVar.c();
        int iH = fVar.h(entry.getKey());
        if (iH < 0) {
            return false;
        }
        Object[] objArr = fVar.f30745H;
        q0.e(objArr);
        if (!q0.c(objArr[iH], entry.getValue())) {
            return false;
        }
        fVar.l(iH);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean isEmpty() {
        int i8 = this.f30757G;
        f fVar = this.f30758H;
        switch (i8) {
            case 0:
                break;
        }
        return fVar.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        int i8 = this.f30757G;
        f fVar = this.f30758H;
        switch (i8) {
            case 0:
                fVar.getClass();
                return new d(fVar, 0);
            default:
                fVar.getClass();
                return new d(fVar, 1);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        switch (this.f30757G) {
            case 0:
                return i(obj);
            default:
                f fVar = this.f30758H;
                fVar.c();
                int iH = fVar.h(obj);
                if (iH < 0) {
                    return false;
                }
                fVar.l(iH);
                return true;
        }
    }

    @Override // java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean removeAll(Collection collection) {
        int i8 = this.f30757G;
        f fVar = this.f30758H;
        switch (i8) {
            case 0:
                q0.h(collection, "elements");
                fVar.c();
                break;
            default:
                q0.h(collection, "elements");
                fVar.c();
                break;
        }
        return super.removeAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean retainAll(Collection collection) {
        int i8 = this.f30757G;
        f fVar = this.f30758H;
        switch (i8) {
            case 0:
                q0.h(collection, "elements");
                fVar.c();
                break;
            default:
                q0.h(collection, "elements");
                fVar.c();
                break;
        }
        return super.retainAll(collection);
    }
}
