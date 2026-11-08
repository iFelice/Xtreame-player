package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.aA, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public class C1038aA extends Yz implements List {

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final /* synthetic */ Mz f17841M;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1038aA(Mz mz, Object obj, List list, Yz yz) {
        super(mz, obj, list, yz);
        this.f17841M = mz;
    }

    @Override // java.util.List
    public final void add(int i8, Object obj) {
        zzb();
        boolean zIsEmpty = this.f17696I.isEmpty();
        ((List) this.f17696I).add(i8, obj);
        this.f17841M.f14835K++;
        if (zIsEmpty) {
            zza();
        }
    }

    @Override // java.util.List
    public final boolean addAll(int i8, Collection collection) {
        if (collection.isEmpty()) {
            return false;
        }
        int size = size();
        boolean zAddAll = ((List) this.f17696I).addAll(i8, collection);
        if (!zAddAll) {
            return zAddAll;
        }
        this.f17841M.f14835K += this.f17696I.size() - size;
        if (size != 0) {
            return zAddAll;
        }
        zza();
        return true;
    }

    @Override // java.util.List
    public final Object get(int i8) {
        zzb();
        return ((List) this.f17696I).get(i8);
    }

    @Override // java.util.List
    public final int indexOf(Object obj) {
        zzb();
        return ((List) this.f17696I).indexOf(obj);
    }

    @Override // java.util.List
    public final int lastIndexOf(Object obj) {
        zzb();
        return ((List) this.f17696I).lastIndexOf(obj);
    }

    @Override // java.util.List
    public final ListIterator listIterator() {
        zzb();
        return new Zz(this);
    }

    @Override // java.util.List
    public final Object remove(int i8) {
        zzb();
        Object objRemove = ((List) this.f17696I).remove(i8);
        this.f17841M.f14835K--;
        l();
        return objRemove;
    }

    @Override // java.util.List
    public final Object set(int i8, Object obj) {
        zzb();
        return ((List) this.f17696I).set(i8, obj);
    }

    @Override // java.util.List
    public final List subList(int i8, int i9) {
        zzb();
        List listSubList = ((List) this.f17696I).subList(i8, i9);
        Yz yz = this.f17698K;
        if (yz == null) {
            yz = this;
        }
        Mz mz = this.f17841M;
        mz.getClass();
        boolean z7 = listSubList instanceof RandomAccess;
        Object obj = this.f17695H;
        return z7 ? new Vz(mz, obj, listSubList, yz) : new C1038aA(mz, obj, listSubList, yz);
    }

    @Override // java.util.List
    public final ListIterator listIterator(int i8) {
        zzb();
        return new Zz(this, i8);
    }
}
