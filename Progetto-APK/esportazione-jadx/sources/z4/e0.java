package z4;

import java.util.AbstractMap;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class e0 extends H {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ f0 f31848I;

    public e0(f0 f0Var) {
        this.f31848I = f0Var;
    }

    @Override // java.util.List
    public final Object get(int i8) {
        f0 f0Var = this.f31848I;
        p190y4.k.r(i8, f0Var.f31854M);
        int i9 = i8 * 2;
        int i10 = f0Var.f31853L;
        Object[] objArr = f0Var.f31852K;
        Object obj = objArr[i9 + i10];
        Objects.requireNonNull(obj);
        Object obj2 = objArr[i9 + (i10 ^ 1)];
        Objects.requireNonNull(obj2);
        return new AbstractMap.SimpleImmutableEntry(obj, obj2);
    }

    @Override // z4.C
    public final boolean o() {
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f31848I.f31854M;
    }
}
