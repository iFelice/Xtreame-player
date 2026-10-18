package z4;

import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class h0 extends H {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final transient Object[] f31859I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final transient int f31860J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final transient int f31861K;

    public h0(Object[] objArr, int i8, int i9) {
        this.f31859I = objArr;
        this.f31860J = i8;
        this.f31861K = i9;
    }

    @Override // java.util.List
    public final Object get(int i8) {
        p190y4.k.r(i8, this.f31861K);
        Object obj = this.f31859I[(i8 * 2) + this.f31860J];
        Objects.requireNonNull(obj);
        return obj;
    }

    @Override // z4.C
    public final boolean o() {
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f31861K;
    }
}
