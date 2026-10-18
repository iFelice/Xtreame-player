package com.google.android.gms.internal.ads;

import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import z4.AbstractC3239c;

/* JADX INFO: loaded from: classes.dex */
public abstract class Yz extends AbstractCollection {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f17694G = 0;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Object f17695H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public Collection f17696I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final Collection f17697J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final Yz f17698K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final /* synthetic */ Serializable f17699L;

    public Yz(AbstractC3239c abstractC3239c, Object obj, Collection collection, Yz yz) {
        this.f17699L = abstractC3239c;
        this.f17695H = obj;
        this.f17696I = collection;
        this.f17698K = yz;
        this.f17697J = yz == null ? null : yz.f17696I;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean add(Object obj) {
        int i8 = this.f17694G;
        Serializable serializable = this.f17699L;
        switch (i8) {
            case 0:
                zzb();
                boolean zIsEmpty = this.f17696I.isEmpty();
                boolean zAdd = this.f17696I.add(obj);
                if (zAdd) {
                    ((Mz) serializable).f14835K++;
                    if (zIsEmpty) {
                        zza();
                        return true;
                    }
                }
                return zAdd;
            default:
                c();
                boolean zIsEmpty2 = this.f17696I.isEmpty();
                boolean zAdd2 = this.f17696I.add(obj);
                if (zAdd2) {
                    ((AbstractC3239c) serializable).f31838K++;
                    if (zIsEmpty2) {
                        b();
                    }
                }
                return zAdd2;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean addAll(Collection collection) {
        int i8 = this.f17694G;
        Serializable serializable = this.f17699L;
        boolean zAddAll = false;
        switch (i8) {
            case 0:
                if (collection.isEmpty()) {
                    return false;
                }
                int size = size();
                boolean zAddAll2 = this.f17696I.addAll(collection);
                if (!zAddAll2) {
                    return zAddAll2;
                }
                ((Mz) serializable).f14835K += this.f17696I.size() - size;
                if (size != 0) {
                    return zAddAll2;
                }
                zza();
                return true;
            default:
                if (!collection.isEmpty()) {
                    int size2 = size();
                    zAddAll = this.f17696I.addAll(collection);
                    if (zAddAll) {
                        ((AbstractC3239c) serializable).f31838K += this.f17696I.size() - size2;
                        if (size2 == 0) {
                            b();
                        }
                    }
                }
                return zAddAll;
        }
    }

    public final void b() {
        Yz yz = this.f17698K;
        if (yz != null) {
            yz.b();
        } else {
            ((AbstractC3239c) this.f17699L).f31837J.put(this.f17695H, this.f17696I);
        }
    }

    public final void c() {
        Collection collection;
        Yz yz = this.f17698K;
        if (yz != null) {
            yz.c();
            if (yz.f17696I != this.f17697J) {
                throw new ConcurrentModificationException();
            }
        } else {
            if (!this.f17696I.isEmpty() || (collection = (Collection) ((AbstractC3239c) this.f17699L).f31837J.get(this.f17695H)) == null) {
                return;
            }
            this.f17696I = collection;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        int i8 = this.f17694G;
        Serializable serializable = this.f17699L;
        switch (i8) {
            case 0:
                int size = size();
                if (size != 0) {
                    this.f17696I.clear();
                    ((Mz) serializable).f14835K -= size;
                    l();
                    break;
                }
                break;
            default:
                int size2 = size();
                if (size2 != 0) {
                    this.f17696I.clear();
                    ((AbstractC3239c) serializable).f31838K -= size2;
                    i();
                    break;
                }
                break;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        switch (this.f17694G) {
            case 0:
                zzb();
                break;
            default:
                c();
                break;
        }
        return this.f17696I.contains(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean containsAll(Collection collection) {
        switch (this.f17694G) {
            case 0:
                zzb();
                break;
            default:
                c();
                break;
        }
        return this.f17696I.containsAll(collection);
    }

    @Override // java.util.Collection
    public final boolean equals(Object obj) {
        switch (this.f17694G) {
            case 0:
                if (obj == this) {
                    return true;
                }
                zzb();
                return this.f17696I.equals(obj);
            default:
                if (obj == this) {
                    return true;
                }
                c();
                return this.f17696I.equals(obj);
        }
    }

    @Override // java.util.Collection
    public final int hashCode() {
        switch (this.f17694G) {
            case 0:
                zzb();
                return this.f17696I.hashCode();
            default:
                c();
                return this.f17696I.hashCode();
        }
    }

    public final void i() {
        Yz yz = this.f17698K;
        if (yz != null) {
            yz.i();
        } else if (this.f17696I.isEmpty()) {
            ((AbstractC3239c) this.f17699L).f31837J.remove(this.f17695H);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        switch (this.f17694G) {
            case 0:
                zzb();
                return new Qz(this);
            default:
                c();
                return new Qz(this, 0);
        }
    }

    public final void l() {
        Yz yz = this.f17698K;
        if (yz != null) {
            yz.l();
        } else if (this.f17696I.isEmpty()) {
            ((Mz) this.f17699L).f14834J.remove(this.f17695H);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean remove(Object obj) {
        int i8 = this.f17694G;
        Serializable serializable = this.f17699L;
        switch (i8) {
            case 0:
                zzb();
                boolean zRemove = this.f17696I.remove(obj);
                if (zRemove) {
                    ((Mz) serializable).f14835K--;
                    l();
                }
                return zRemove;
            default:
                c();
                boolean zRemove2 = this.f17696I.remove(obj);
                if (zRemove2) {
                    ((AbstractC3239c) serializable).f31838K--;
                    i();
                }
                return zRemove2;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean removeAll(Collection collection) {
        int i8 = this.f17694G;
        Serializable serializable = this.f17699L;
        boolean zRemoveAll = false;
        switch (i8) {
            case 0:
                if (!collection.isEmpty()) {
                    int size = size();
                    zRemoveAll = this.f17696I.removeAll(collection);
                    if (zRemoveAll) {
                        ((Mz) serializable).f14835K += this.f17696I.size() - size;
                        l();
                    }
                }
                break;
            default:
                if (!collection.isEmpty()) {
                    int size2 = size();
                    zRemoveAll = this.f17696I.removeAll(collection);
                    if (zRemoveAll) {
                        ((AbstractC3239c) serializable).f31838K += this.f17696I.size() - size2;
                        i();
                    }
                }
                break;
        }
        return zRemoveAll;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean retainAll(Collection collection) {
        int i8 = this.f17694G;
        Serializable serializable = this.f17699L;
        switch (i8) {
            case 0:
                collection.getClass();
                int size = size();
                boolean zRetainAll = this.f17696I.retainAll(collection);
                if (zRetainAll) {
                    ((Mz) serializable).f14835K += this.f17696I.size() - size;
                    l();
                }
                return zRetainAll;
            default:
                collection.getClass();
                int size2 = size();
                boolean zRetainAll2 = this.f17696I.retainAll(collection);
                if (zRetainAll2) {
                    ((AbstractC3239c) serializable).f31838K += this.f17696I.size() - size2;
                    i();
                }
                return zRetainAll2;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        switch (this.f17694G) {
            case 0:
                zzb();
                break;
            default:
                c();
                break;
        }
        return this.f17696I.size();
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        switch (this.f17694G) {
            case 0:
                zzb();
                break;
            default:
                c();
                break;
        }
        return this.f17696I.toString();
    }

    public final void zza() {
        Yz yz = this.f17698K;
        if (yz != null) {
            yz.zza();
            return;
        }
        ((Mz) this.f17699L).f14834J.put(this.f17695H, this.f17696I);
    }

    public final void zzb() {
        Collection collection;
        Yz yz = this.f17698K;
        if (yz != null) {
            yz.zzb();
            if (yz.f17696I != this.f17697J) {
                throw new ConcurrentModificationException();
            }
        } else {
            if (!this.f17696I.isEmpty() || (collection = (Collection) ((Mz) this.f17699L).f14834J.get(this.f17695H)) == null) {
                return;
            }
            this.f17696I = collection;
        }
    }

    public Yz(Mz mz, Object obj, Collection collection, Yz yz) {
        this.f17699L = mz;
        this.f17695H = obj;
        this.f17696I = collection;
        this.f17698K = yz;
        this.f17697J = yz == null ? null : yz.f17696I;
    }
}
