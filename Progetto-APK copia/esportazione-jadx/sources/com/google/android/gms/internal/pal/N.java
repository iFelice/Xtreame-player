package com.google.android.gms.internal.pal;

import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes.dex */
public final class N extends AbstractC2748k implements RandomAccess, O {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final ArrayList f23606H;

    static {
        new N(10).f23887G = false;
    }

    public N(int i8) {
        this.f23606H = new ArrayList(i8);
    }

    @Override // com.google.android.gms.internal.pal.O
    public final Object a(int i8) {
        return this.f23606H.get(i8);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ void add(int i8, Object obj) {
        zza();
        this.f23606H.add(i8, (String) obj);
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.pal.AbstractC2748k, java.util.AbstractList, java.util.List
    public final boolean addAll(int i8, Collection collection) {
        zza();
        if (collection instanceof O) {
            collection = ((O) collection).zzh();
        }
        boolean zAddAll = this.f23606H.addAll(i8, collection);
        ((AbstractList) this).modCount++;
        return zAddAll;
    }

    @Override // java.util.AbstractList, java.util.List
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final String get(int i8) {
        String str;
        ArrayList arrayList = this.f23606H;
        Object obj = arrayList.get(i8);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (!(obj instanceof r)) {
            byte[] bArr = (byte[]) obj;
            String str2 = new String(bArr, J.f23560a);
            C2684c c2684c = AbstractC2852x0.f24059a;
            int length = bArr.length;
            AbstractC2852x0.f24059a.getClass();
            if (C2684c.c(0, bArr, length)) {
                arrayList.set(i8, str2);
            }
            return str2;
        }
        r rVar = (r) obj;
        Charset charset = J.f23560a;
        if (rVar.i() == 0) {
            str = HttpUrl.FRAGMENT_ENCODE_SET;
        } else {
            C2796q c2796q = (C2796q) rVar;
            str = new String(c2796q.f23982I, 0, c2796q.i(), charset);
        }
        C2796q c2796q2 = (C2796q) rVar;
        int i9 = c2796q2.i();
        AbstractC2852x0.f24059a.getClass();
        if (C2684c.c(0, c2796q2.f23982I, i9)) {
            arrayList.set(i8, str);
        }
        return str;
    }

    @Override // com.google.android.gms.internal.pal.AbstractC2748k, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        zza();
        this.f23606H.clear();
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.pal.O
    public final void h(C2796q c2796q) {
        zza();
        this.f23606H.add(c2796q);
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.pal.AbstractC2748k, java.util.AbstractList, java.util.List
    public final Object remove(int i8) {
        zza();
        Object objRemove = this.f23606H.remove(i8);
        ((AbstractList) this).modCount++;
        if (objRemove instanceof String) {
            return (String) objRemove;
        }
        if (!(objRemove instanceof r)) {
            return new String((byte[]) objRemove, J.f23560a);
        }
        r rVar = (r) objRemove;
        Charset charset = J.f23560a;
        if (rVar.i() == 0) {
            return HttpUrl.FRAGMENT_ENCODE_SET;
        }
        C2796q c2796q = (C2796q) rVar;
        return new String(c2796q.f23982I, 0, c2796q.i(), charset);
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i8, Object obj) {
        zza();
        Object obj2 = this.f23606H.set(i8, (String) obj);
        if (obj2 instanceof String) {
            return (String) obj2;
        }
        if (!(obj2 instanceof r)) {
            return new String((byte[]) obj2, J.f23560a);
        }
        r rVar = (r) obj2;
        Charset charset = J.f23560a;
        if (rVar.i() == 0) {
            return HttpUrl.FRAGMENT_ENCODE_SET;
        }
        C2796q c2796q = (C2796q) rVar;
        return new String(c2796q.f23982I, 0, c2796q.i(), charset);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f23606H.size();
    }

    @Override // com.google.android.gms.internal.pal.I
    public final I zzd(int i8) {
        ArrayList arrayList = this.f23606H;
        if (i8 < arrayList.size()) {
            throw new IllegalArgumentException();
        }
        ArrayList arrayList2 = new ArrayList(i8);
        arrayList2.addAll(arrayList);
        return new N(arrayList2);
    }

    @Override // com.google.android.gms.internal.pal.O
    public final O zze() {
        return this.f23887G ? new C2804r0(this) : this;
    }

    @Override // com.google.android.gms.internal.pal.O
    public final List zzh() {
        return Collections.unmodifiableList(this.f23606H);
    }

    public N(ArrayList arrayList) {
        this.f23606H = arrayList;
    }

    @Override // com.google.android.gms.internal.pal.AbstractC2748k, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        return addAll(this.f23606H.size(), collection);
    }
}
