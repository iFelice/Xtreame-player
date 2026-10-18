package com.google.android.gms.internal.ads;

import java.io.Serializable;
import java.util.AbstractList;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;
import p039f.AbstractC2987b;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.pB, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1815pB extends AbstractList implements RandomAccess, Serializable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int[] f20431G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final int f20432H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final int f20433I;

    public C1815pB(int i8, int i9, int[] iArr) {
        this.f20431G = iArr;
        this.f20432H = i8;
        this.f20433I = i9;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        if (!(obj instanceof Integer)) {
            return false;
        }
        int iIntValue = ((Integer) obj).intValue();
        int i8 = this.f20432H;
        while (i8 < this.f20433I) {
            if (this.f20431G[i8] == iIntValue) {
                return i8 != -1;
            }
            i8++;
        }
        return false;
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C1815pB)) {
            return super.equals(obj);
        }
        C1815pB c1815pB = (C1815pB) obj;
        int i8 = c1815pB.f20433I;
        int i9 = c1815pB.f20432H;
        int i10 = i8 - i9;
        int i11 = this.f20433I;
        int i12 = this.f20432H;
        int i13 = i11 - i12;
        if (i10 != i13) {
            return false;
        }
        for (int i14 = 0; i14 < i13; i14++) {
            if (this.f20431G[i12 + i14] != c1815pB.f20431G[i9 + i14]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i8) {
        int i9 = this.f20433I;
        int i10 = this.f20432H;
        AbstractC2987b.c0(i8, i9 - i10);
        return Integer.valueOf(this.f20431G[i10 + i8]);
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i8 = 1;
        for (int i9 = this.f20432H; i9 < this.f20433I; i9++) {
            i8 = (i8 * 31) + this.f20431G[i9];
        }
        return i8;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x001f  */
    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (obj instanceof Integer) {
            int iIntValue = ((Integer) obj).intValue();
            int i8 = this.f20432H;
            int i9 = i8;
            while (i9 < this.f20433I) {
                if (this.f20431G[i9] != iIntValue) {
                    i9++;
                } else if (i9 >= 0) {
                    return i9 - i8;
                }
            }
            i9 = -1;
            if (i9 >= 0) {
                return i9 - i8;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean isEmpty() {
        return false;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int lastIndexOf(Object obj) {
        int i8;
        if (obj instanceof Integer) {
            int iIntValue = ((Integer) obj).intValue();
            int i9 = this.f20433I - 1;
            while (true) {
                i8 = this.f20432H;
                if (i9 < i8) {
                    i9 = -1;
                    break;
                }
                if (this.f20431G[i9] == iIntValue) {
                    break;
                }
                i9--;
            }
            if (i9 >= 0) {
                return i9 - i8;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i8, Object obj) {
        int i9 = this.f20433I;
        int i10 = this.f20432H;
        Integer num = (Integer) obj;
        AbstractC2987b.c0(i8, i9 - i10);
        int i11 = i10 + i8;
        int[] iArr = this.f20431G;
        int i12 = iArr[i11];
        num.getClass();
        iArr[i11] = num.intValue();
        return Integer.valueOf(i12);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f20433I - this.f20432H;
    }

    @Override // java.util.AbstractList, java.util.List
    public final List subList(int i8, int i9) {
        int i10 = this.f20433I;
        int i11 = this.f20432H;
        AbstractC2987b.D0(i8, i9, i10 - i11);
        if (i8 == i9) {
            return Collections.emptyList();
        }
        return new C1815pB(i11 + i8, i9 + i11, this.f20431G);
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        int i8 = this.f20433I;
        int i9 = this.f20432H;
        StringBuilder sb = new StringBuilder((i8 - i9) * 5);
        sb.append('[');
        int[] iArr = this.f20431G;
        sb.append(iArr[i9]);
        while (true) {
            i9++;
            if (i9 >= i8) {
                sb.append(']');
                return sb.toString();
            }
            sb.append(", ");
            sb.append(iArr[i9]);
        }
    }
}
