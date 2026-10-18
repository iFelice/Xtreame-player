package Z3;

import com.google.android.gms.internal.ads.Cw;

/* JADX INFO: loaded from: classes.dex */
public final class M extends N {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final transient int f8261I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final transient int f8262J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final /* synthetic */ N f8263K;

    public M(N n7, int i8, int i9) {
        this.f8263K = n7;
        this.f8261I = i8;
        this.f8262J = i9;
    }

    @Override // Z3.K
    public final int c() {
        return this.f8263K.i() + this.f8261I + this.f8262J;
    }

    @Override // java.util.List
    public final Object get(int i8) {
        Cw.u0(i8, this.f8262J);
        return this.f8263K.get(i8 + this.f8261I);
    }

    @Override // Z3.K
    public final int i() {
        return this.f8263K.i() + this.f8261I;
    }

    @Override // Z3.K
    public final Object[] l() {
        return this.f8263K.l();
    }

    @Override // Z3.N, java.util.List
    /* JADX INFO: renamed from: n */
    public final N subList(int i8, int i9) {
        Cw.k1(i8, i9, this.f8262J);
        int i10 = this.f8261I;
        return this.f8263K.subList(i8 + i10, i9 + i10);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f8262J;
    }
}
