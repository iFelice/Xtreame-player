package com.google.android.gms.internal.atv_ads_framework;

import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;
import okhttp3.HttpUrl;

/* JADX INFO: renamed from: com.google.android.gms.internal.atv_ads_framework.b0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2377b0 extends F implements RandomAccess, InterfaceC2379c0 {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final List f22315H;

    static {
        new C2377b0();
    }

    public C2377b0(int i8) {
        ArrayList arrayList = new ArrayList(i8);
        super(true);
        this.f22315H = arrayList;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ void add(int i8, Object obj) {
        zza();
        this.f22315H.add(i8, (String) obj);
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.F, java.util.AbstractList, java.util.List
    public final boolean addAll(int i8, Collection collection) {
        zza();
        if (collection instanceof InterfaceC2379c0) {
            collection = ((InterfaceC2379c0) collection).zzh();
        }
        boolean zAddAll = this.f22315H.addAll(i8, collection);
        ((AbstractList) this).modCount++;
        return zAddAll;
    }

    @Override // java.util.AbstractList, java.util.List
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final String get(int i8) {
        String str;
        List list = this.f22315H;
        Object obj = list.get(i8);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (!(obj instanceof J)) {
            byte[] bArr = (byte[]) obj;
            String str2 = new String(bArr, Z.f22301a);
            C2383e0 c2383e0 = K0.f22273a;
            int length = bArr.length;
            K0.f22273a.getClass();
            if (C2383e0.a(bArr, length)) {
                list.set(i8, str2);
            }
            return str2;
        }
        J j8 = (J) obj;
        Charset charset = Z.f22301a;
        if (j8.n() == 0) {
            str = HttpUrl.FRAGMENT_ENCODE_SET;
        } else {
            K k8 = (K) j8;
            str = new String(k8.f22272I, 0, k8.n(), charset);
        }
        K k9 = (K) j8;
        int iN = k9.n();
        K0.f22273a.getClass();
        if (C2383e0.a(k9.f22272I, iN)) {
            list.set(i8, str);
        }
        return str;
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.F, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        zza();
        this.f22315H.clear();
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.InterfaceC2379c0
    public final Object d(int i8) {
        return this.f22315H.get(i8);
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.F, java.util.AbstractList, java.util.List
    public final Object remove(int i8) {
        zza();
        Object objRemove = this.f22315H.remove(i8);
        ((AbstractList) this).modCount++;
        if (objRemove instanceof String) {
            return (String) objRemove;
        }
        if (!(objRemove instanceof J)) {
            return new String((byte[]) objRemove, Z.f22301a);
        }
        J j8 = (J) objRemove;
        Charset charset = Z.f22301a;
        if (j8.n() == 0) {
            return HttpUrl.FRAGMENT_ENCODE_SET;
        }
        K k8 = (K) j8;
        return new String(k8.f22272I, 0, k8.n(), charset);
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i8, Object obj) {
        zza();
        Object obj2 = this.f22315H.set(i8, (String) obj);
        if (obj2 instanceof String) {
            return (String) obj2;
        }
        if (!(obj2 instanceof J)) {
            return new String((byte[]) obj2, Z.f22301a);
        }
        J j8 = (J) obj2;
        Charset charset = Z.f22301a;
        if (j8.n() == 0) {
            return HttpUrl.FRAGMENT_ENCODE_SET;
        }
        K k8 = (K) j8;
        return new String(k8.f22272I, 0, k8.n(), charset);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f22315H.size();
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.InterfaceC2379c0
    public final InterfaceC2379c0 zzd() {
        return this.f22256G ? new D0(this) : this;
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.Y
    public final Y zzg(int i8) {
        List list = this.f22315H;
        if (i8 < list.size()) {
            throw new IllegalArgumentException();
        }
        ArrayList arrayList = new ArrayList(i8);
        arrayList.addAll(list);
        return new C2377b0(arrayList);
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.InterfaceC2379c0
    public final List zzh() {
        return Collections.unmodifiableList(this.f22315H);
    }

    public C2377b0(ArrayList arrayList) {
        super(true);
        this.f22315H = arrayList;
    }

    public C2377b0() {
        super(false);
        this.f22315H = Collections.emptyList();
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.F, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        return addAll(this.f22315H.size(), collection);
    }
}
