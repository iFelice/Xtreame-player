package com.google.protobuf;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: renamed from: com.google.protobuf.z1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C2972z1 extends AbstractC2883c implements A1, RandomAccess {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final List f24553H;

    static {
        new C2972z1();
    }

    public C2972z1(ArrayList arrayList) {
        super(true);
        this.f24553H = arrayList;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i8, Object obj) {
        b();
        this.f24553H.add(i8, (String) obj);
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.protobuf.AbstractC2883c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        return addAll(this.f24553H.size(), collection);
    }

    @Override // com.google.protobuf.AbstractC2883c, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        b();
        this.f24553H.clear();
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.protobuf.InterfaceC2956u1
    public final InterfaceC2956u1 f(int i8) {
        List list = this.f24553H;
        if (i8 < list.size()) {
            throw new IllegalArgumentException();
        }
        ArrayList arrayList = new ArrayList(i8);
        arrayList.addAll(list);
        return new C2972z1(arrayList);
    }

    @Override // com.google.protobuf.A1
    public final void g(r rVar) {
        b();
        this.f24553H.add(rVar);
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i8) {
        String str;
        List list = this.f24553H;
        Object obj = list.get(i8);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof r) {
            r rVar = (r) obj;
            str = rVar.t();
            if (rVar.o()) {
                list.set(i8, str);
            }
        } else {
            byte[] bArr = (byte[]) obj;
            str = new String(bArr, AbstractC2960v1.f24524a);
            if (K2.f24269a.b0(bArr, 0, bArr.length) == 0) {
                list.set(i8, str);
            }
        }
        return str;
    }

    @Override // com.google.protobuf.A1
    public final List j() {
        return Collections.unmodifiableList(this.f24553H);
    }

    @Override // com.google.protobuf.A1
    public final A1 k() {
        return this.f24418G ? new C2(this) : this;
    }

    @Override // com.google.protobuf.A1
    public final Object m(int i8) {
        return this.f24553H.get(i8);
    }

    @Override // com.google.protobuf.AbstractC2883c, java.util.AbstractList, java.util.List
    public final Object remove(int i8) {
        b();
        Object objRemove = this.f24553H.remove(i8);
        ((AbstractList) this).modCount++;
        if (objRemove instanceof String) {
            return (String) objRemove;
        }
        return objRemove instanceof r ? ((r) objRemove).t() : new String((byte[]) objRemove, AbstractC2960v1.f24524a);
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i8, Object obj) {
        b();
        Object obj2 = this.f24553H.set(i8, (String) obj);
        if (obj2 instanceof String) {
            return (String) obj2;
        }
        return obj2 instanceof r ? ((r) obj2).t() : new String((byte[]) obj2, AbstractC2960v1.f24524a);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f24553H.size();
    }

    public C2972z1() {
        super(false);
        this.f24553H = Collections.emptyList();
    }

    @Override // com.google.protobuf.AbstractC2883c, java.util.AbstractList, java.util.List
    public final boolean addAll(int i8, Collection collection) {
        b();
        if (collection instanceof A1) {
            collection = ((A1) collection).j();
        }
        boolean zAddAll = this.f24553H.addAll(i8, collection);
        ((AbstractList) this).modCount++;
        return zAddAll;
    }

    public C2972z1(int i8) {
        this(new ArrayList(i8));
    }
}
