package z4;

import com.google.android.gms.internal.ads.AbstractC1349gB;

/* JADX INFO: loaded from: classes.dex */
public final class r0 extends L {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final transient Object f31896J;

    public r0(Object obj) {
        obj.getClass();
        this.f31896J = obj;
    }

    @Override // z4.L, z4.C
    public final H b() {
        return H.x(this.f31896J);
    }

    @Override // z4.C
    public final int c(int i8, Object[] objArr) {
        objArr[i8] = this.f31896J;
        return i8 + 1;
    }

    @Override // z4.C, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        return this.f31896J.equals(obj);
    }

    @Override // z4.L, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.f31896J.hashCode();
    }

    @Override // z4.C
    public final boolean o() {
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return 1;
    }

    @Override // z4.L
    /* JADX INFO: renamed from: t */
    public final AbstractC1349gB iterator() {
        return new Q(this.f31896J);
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        return "[" + this.f31896J.toString() + ']';
    }
}
