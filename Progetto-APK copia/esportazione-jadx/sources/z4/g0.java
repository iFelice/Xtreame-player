package z4;

import com.google.android.gms.internal.ads.AbstractC1349gB;

/* JADX INFO: loaded from: classes.dex */
public final class g0 extends L {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final transient J f31856J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final transient H f31857K;

    public g0(J j8, h0 h0Var) {
        this.f31856J = j8;
        this.f31857K = h0Var;
    }

    @Override // z4.L, z4.C
    public final H b() {
        return this.f31857K;
    }

    @Override // z4.C
    public final int c(int i8, Object[] objArr) {
        return this.f31857K.c(i8, objArr);
    }

    @Override // z4.C, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        return this.f31856J.get(obj) != null;
    }

    @Override // z4.C
    public final boolean o() {
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return ((i0) this.f31856J).f31865L;
    }

    @Override // z4.L
    /* JADX INFO: renamed from: t */
    public final AbstractC1349gB iterator() {
        return this.f31857K.listIterator(0);
    }
}
