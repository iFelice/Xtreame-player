package z4;

import java.util.Iterator;
import java.util.ListIterator;

/* JADX INFO: loaded from: classes.dex */
public final class G extends H {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final transient int f31801I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final transient int f31802J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final /* synthetic */ H f31803K;

    public G(H h8, int i8, int i9) {
        this.f31803K = h8;
        this.f31801I = i8;
        this.f31802J = i9;
    }

    @Override // z4.H, java.util.List
    /* JADX INFO: renamed from: C */
    public final H subList(int i8, int i9) {
        p190y4.k.u(i8, i9, this.f31802J);
        int i10 = this.f31801I;
        return this.f31803K.subList(i8 + i10, i9 + i10);
    }

    @Override // java.util.List
    public final Object get(int i8) {
        p190y4.k.r(i8, this.f31802J);
        return this.f31803K.get(i8 + this.f31801I);
    }

    @Override // z4.C
    public final Object[] i() {
        return this.f31803K.i();
    }

    @Override // z4.H, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        return listIterator(0);
    }

    @Override // z4.C
    public final int l() {
        return this.f31803K.n() + this.f31801I + this.f31802J;
    }

    @Override // z4.H, java.util.List
    public final ListIterator listIterator() {
        return listIterator(0);
    }

    @Override // z4.C
    public final int n() {
        return this.f31803K.n() + this.f31801I;
    }

    @Override // z4.C
    public final boolean o() {
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f31802J;
    }

    @Override // z4.H, java.util.List
    public final /* bridge */ /* synthetic */ ListIterator listIterator(int i8) {
        return listIterator(i8);
    }
}
