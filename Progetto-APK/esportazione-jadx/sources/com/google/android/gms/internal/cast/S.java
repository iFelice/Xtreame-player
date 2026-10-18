package com.google.android.gms.internal.cast;

import com.google.android.gms.internal.ads.Cw;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class S extends I {

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public static final Object[] f22528O = null;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public static final S f22529P;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final transient Object[] f22530J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final transient int f22531K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final transient Object[] f22532L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final transient int f22533M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final transient int f22534N;

    static {
        Object[] objArr = new Object[0];
        f22529P = new S(objArr, 0, objArr, 0, 0);
    }

    public S(Object[] objArr, int i8, Object[] objArr2, int i9, int i10) {
        this.f22530J = objArr;
        this.f22531K = i8;
        this.f22532L = objArr2;
        this.f22533M = i9;
        this.f22534N = i10;
    }

    @Override // com.google.android.gms.internal.cast.D
    public final int b(Object[] objArr) {
        Object[] objArr2 = this.f22530J;
        int i8 = this.f22534N;
        System.arraycopy(objArr2, 0, objArr, 0, i8);
        return i8;
    }

    @Override // com.google.android.gms.internal.cast.D
    public final int c() {
        return this.f22534N;
    }

    @Override // com.google.android.gms.internal.cast.D, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        if (obj != null) {
            Object[] objArr = this.f22532L;
            if (objArr.length != 0) {
                int iS = Cw.s(obj.hashCode());
                while (true) {
                    int i8 = iS & this.f22533M;
                    Object obj2 = objArr[i8];
                    if (obj2 == null) {
                        return false;
                    }
                    if (obj2.equals(obj)) {
                        return true;
                    }
                    iS = i8 + 1;
                }
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.cast.I, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.f22531K;
    }

    @Override // com.google.android.gms.internal.cast.D
    public final int i() {
        return 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        G gP = this.f22472H;
        if (gP == null) {
            gP = p();
            this.f22472H = gP;
        }
        return gP.listIterator(0);
    }

    @Override // com.google.android.gms.internal.cast.D
    public final Object[] l() {
        return this.f22530J;
    }

    public final G p() {
        return G.o(this.f22534N, this.f22530J);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f22534N;
    }
}
