package z4;

import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class d0 extends H {

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static final d0 f31844K = new d0(new Object[0], 0);

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final transient Object[] f31845I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final transient int f31846J;

    public d0(Object[] objArr, int i8) {
        this.f31845I = objArr;
        this.f31846J = i8;
    }

    @Override // z4.H, z4.C
    public final int c(int i8, Object[] objArr) {
        Object[] objArr2 = this.f31845I;
        int i9 = this.f31846J;
        System.arraycopy(objArr2, 0, objArr, i8, i9);
        return i8 + i9;
    }

    @Override // java.util.List
    public final Object get(int i8) {
        p190y4.k.r(i8, this.f31846J);
        Object obj = this.f31845I[i8];
        Objects.requireNonNull(obj);
        return obj;
    }

    @Override // z4.C
    public final Object[] i() {
        return this.f31845I;
    }

    @Override // z4.C
    public final int l() {
        return this.f31846J;
    }

    @Override // z4.C
    public final int n() {
        return 0;
    }

    @Override // z4.C
    public final boolean o() {
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f31846J;
    }
}
