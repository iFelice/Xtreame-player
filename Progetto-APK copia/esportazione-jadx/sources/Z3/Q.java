package Z3;

import com.google.android.gms.internal.ads.Cw;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class Q extends N {

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static final Q f8268K = new Q(new Object[0], 0);

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final transient Object[] f8269I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final transient int f8270J;

    public Q(Object[] objArr, int i8) {
        this.f8269I = objArr;
        this.f8270J = i8;
    }

    @Override // Z3.N, Z3.K
    public final int b(Object[] objArr) {
        Object[] objArr2 = this.f8269I;
        int i8 = this.f8270J;
        System.arraycopy(objArr2, 0, objArr, 0, i8);
        return i8;
    }

    @Override // Z3.K
    public final int c() {
        return this.f8270J;
    }

    @Override // java.util.List
    public final Object get(int i8) {
        Cw.u0(i8, this.f8270J);
        Object obj = this.f8269I[i8];
        Objects.requireNonNull(obj);
        return obj;
    }

    @Override // Z3.K
    public final int i() {
        return 0;
    }

    @Override // Z3.K
    public final Object[] l() {
        return this.f8269I;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f8270J;
    }
}
