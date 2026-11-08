package com.google.android.gms.internal.cast;

import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;
import okhttp3.HttpUrl;

/* JADX INFO: renamed from: com.google.android.gms.internal.cast.q2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2489q2 extends V1 implements RandomAccess, InterfaceC2492r2 {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final List f22786H;

    static {
        new C2489q2();
    }

    public C2489q2(int i8) {
        ArrayList arrayList = new ArrayList(i8);
        super(true);
        this.f22786H = arrayList;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ void add(int i8, Object obj) {
        zza();
        this.f22786H.add(i8, (String) obj);
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.cast.V1, java.util.AbstractList, java.util.List
    public final boolean addAll(int i8, Collection collection) {
        zza();
        if (collection instanceof InterfaceC2492r2) {
            collection = ((InterfaceC2492r2) collection).zzh();
        }
        boolean zAddAll = this.f22786H.addAll(i8, collection);
        ((AbstractList) this).modCount++;
        return zAddAll;
    }

    @Override // java.util.AbstractList, java.util.List
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final String get(int i8) {
        String str;
        List list = this.f22786H;
        Object obj = list.get(i8);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (!(obj instanceof Z1)) {
            byte[] bArr = (byte[]) obj;
            String str2 = new String(bArr, AbstractC2481o2.f22763a);
            C2439e0 c2439e0 = Y2.f22564a;
            int length = bArr.length;
            Y2.f22564a.getClass();
            if (C2439e0.a(bArr, length)) {
                list.set(i8, str2);
            }
            return str2;
        }
        Z1 z7 = (Z1) obj;
        Charset charset = AbstractC2481o2.f22763a;
        if (z7.n() == 0) {
            str = HttpUrl.FRAGMENT_ENCODE_SET;
        } else {
            C2425a2 c2425a2 = (C2425a2) z7;
            str = new String(c2425a2.f22626I, 0, c2425a2.n(), charset);
        }
        C2425a2 c2425a3 = (C2425a2) z7;
        int iN = c2425a3.n();
        Y2.f22564a.getClass();
        if (C2439e0.a(c2425a3.f22626I, iN)) {
            list.set(i8, str);
        }
        return str;
    }

    @Override // com.google.android.gms.internal.cast.V1, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        zza();
        this.f22786H.clear();
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.cast.InterfaceC2492r2
    public final Object d(int i8) {
        return this.f22786H.get(i8);
    }

    @Override // com.google.android.gms.internal.cast.V1, java.util.AbstractList, java.util.List
    public final Object remove(int i8) {
        zza();
        Object objRemove = this.f22786H.remove(i8);
        ((AbstractList) this).modCount++;
        if (objRemove instanceof String) {
            return (String) objRemove;
        }
        if (!(objRemove instanceof Z1)) {
            return new String((byte[]) objRemove, AbstractC2481o2.f22763a);
        }
        Z1 z7 = (Z1) objRemove;
        Charset charset = AbstractC2481o2.f22763a;
        if (z7.n() == 0) {
            return HttpUrl.FRAGMENT_ENCODE_SET;
        }
        C2425a2 c2425a2 = (C2425a2) z7;
        return new String(c2425a2.f22626I, 0, c2425a2.n(), charset);
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i8, Object obj) {
        zza();
        Object obj2 = this.f22786H.set(i8, (String) obj);
        if (obj2 instanceof String) {
            return (String) obj2;
        }
        if (!(obj2 instanceof Z1)) {
            return new String((byte[]) obj2, AbstractC2481o2.f22763a);
        }
        Z1 z7 = (Z1) obj2;
        Charset charset = AbstractC2481o2.f22763a;
        if (z7.n() == 0) {
            return HttpUrl.FRAGMENT_ENCODE_SET;
        }
        C2425a2 c2425a2 = (C2425a2) z7;
        return new String(c2425a2.f22626I, 0, c2425a2.n(), charset);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f22786H.size();
    }

    @Override // com.google.android.gms.internal.cast.InterfaceC2492r2
    public final InterfaceC2492r2 zzd() {
        return this.f22546G ? new R2(this) : this;
    }

    @Override // com.google.android.gms.internal.cast.InterfaceC2477n2
    public final InterfaceC2477n2 zzg(int i8) {
        List list = this.f22786H;
        if (i8 < list.size()) {
            throw new IllegalArgumentException();
        }
        ArrayList arrayList = new ArrayList(i8);
        arrayList.addAll(list);
        return new C2489q2(arrayList);
    }

    @Override // com.google.android.gms.internal.cast.InterfaceC2492r2
    public final List zzh() {
        return Collections.unmodifiableList(this.f22786H);
    }

    public C2489q2(ArrayList arrayList) {
        super(true);
        this.f22786H = arrayList;
    }

    public C2489q2() {
        super(false);
        this.f22786H = Collections.emptyList();
    }

    @Override // com.google.android.gms.internal.cast.V1, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        return addAll(this.f22786H.size(), collection);
    }
}
