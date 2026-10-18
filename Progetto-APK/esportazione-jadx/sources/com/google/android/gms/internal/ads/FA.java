package com.google.android.gms.internal.ads;

import C0.C0083h;
import java.io.Serializable;
import java.util.AbstractSequentialList;
import java.util.List;
import java.util.ListIterator;

/* JADX INFO: loaded from: classes.dex */
public final class FA extends AbstractSequentialList implements Serializable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f13325G = 1;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final List f13326H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Object f13327I;

    public FA(C0083h c0083h, List list) {
        list.getClass();
        this.f13326H = list;
        this.f13327I = c0083h;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean isEmpty() {
        int i8 = this.f13325G;
        List list = this.f13326H;
        switch (i8) {
            case 0:
                break;
        }
        return list.isEmpty();
    }

    @Override // java.util.AbstractSequentialList, java.util.AbstractList, java.util.List
    public final ListIterator listIterator(int i8) {
        int i9 = this.f13325G;
        List list = this.f13326H;
        switch (i9) {
            case 0:
                return new DA(this, list.listIterator(i8), 1);
            default:
                return new z4.S(this, list.listIterator(i8), 1);
        }
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i8, int i9) {
        int i10 = this.f13325G;
        List list = this.f13326H;
        switch (i10) {
            case 0:
                list.subList(i8, i9).clear();
                break;
            default:
                list.subList(i8, i9).clear();
                break;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        int i8 = this.f13325G;
        List list = this.f13326H;
        switch (i8) {
            case 0:
                break;
        }
        return list.size();
    }

    public FA(List list, C2064u1 c2064u1) {
        list.getClass();
        this.f13326H = list;
        this.f13327I = c2064u1;
    }
}
