package Z3;

import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class T extends O {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final transient Object f8278I;

    public T(Object obj) {
        this.f8278I = obj;
    }

    @Override // Z3.K
    public final int b(Object[] objArr) {
        objArr[0] = this.f8278I;
        return 1;
    }

    @Override // Z3.K, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        return this.f8278I.equals(obj);
    }

    @Override // Z3.O, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.f8278I.hashCode();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final /* synthetic */ Iterator iterator() {
        return new P(this.f8278I);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return 1;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        return p000a.r.g("[", this.f8278I.toString(), "]");
    }
}
