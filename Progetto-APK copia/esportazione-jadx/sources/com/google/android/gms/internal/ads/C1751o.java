package com.google.android.gms.internal.ads;

import android.util.SparseBooleanArray;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.o, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1751o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SparseBooleanArray f20216a;

    public final int a(int i8) {
        SparseBooleanArray sparseBooleanArray = this.f20216a;
        p113o3.r.p(i8, sparseBooleanArray.size());
        return sparseBooleanArray.keyAt(i8);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1751o)) {
            return false;
        }
        C1751o c1751o = (C1751o) obj;
        int i8 = Et.f13234a;
        SparseBooleanArray sparseBooleanArray = this.f20216a;
        if (i8 >= 24) {
            return sparseBooleanArray.equals(c1751o.f20216a);
        }
        if (sparseBooleanArray.size() != c1751o.f20216a.size()) {
            return false;
        }
        for (int i9 = 0; i9 < sparseBooleanArray.size(); i9++) {
            if (a(i9) != c1751o.a(i9)) {
                return false;
            }
        }
        return true;
    }

    public final int hashCode() {
        int i8 = Et.f13234a;
        SparseBooleanArray sparseBooleanArray = this.f20216a;
        if (i8 >= 24) {
            return sparseBooleanArray.hashCode();
        }
        int size = sparseBooleanArray.size();
        for (int i9 = 0; i9 < sparseBooleanArray.size(); i9++) {
            size = (size * 31) + a(i9);
        }
        return size;
    }
}
