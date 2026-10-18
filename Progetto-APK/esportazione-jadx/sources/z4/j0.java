package z4;

import com.google.android.gms.internal.ads.AbstractC1349gB;

/* JADX INFO: loaded from: classes.dex */
public final class j0 extends L {

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public static final Object[] f31868O = null;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public static final j0 f31869P;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final transient Object[] f31870J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final transient int f31871K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final transient Object[] f31872L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final transient int f31873M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final transient int f31874N;

    static {
        Object[] objArr = new Object[0];
        f31869P = new j0(objArr, 0, objArr, 0, 0);
    }

    public j0(Object[] objArr, int i8, Object[] objArr2, int i9, int i10) {
        this.f31870J = objArr;
        this.f31871K = i8;
        this.f31872L = objArr2;
        this.f31873M = i9;
        this.f31874N = i10;
    }

    @Override // z4.C
    public final int c(int i8, Object[] objArr) {
        Object[] objArr2 = this.f31870J;
        int i9 = this.f31874N;
        System.arraycopy(objArr2, 0, objArr, i8, i9);
        return i8 + i9;
    }

    @Override // z4.C, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        if (obj != null) {
            Object[] objArr = this.f31872L;
            if (objArr.length != 0) {
                int iH = a7.b.h(obj);
                while (true) {
                    int i8 = iH & this.f31873M;
                    Object obj2 = objArr[i8];
                    if (obj2 == null) {
                        return false;
                    }
                    if (obj2.equals(obj)) {
                        return true;
                    }
                    iH = i8 + 1;
                }
            }
        }
        return false;
    }

    @Override // z4.L, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.f31871K;
    }

    @Override // z4.C
    public final Object[] i() {
        return this.f31870J;
    }

    @Override // z4.C
    public final int l() {
        return this.f31874N;
    }

    @Override // z4.C
    public final int n() {
        return 0;
    }

    @Override // z4.C
    public final boolean o() {
        return false;
    }

    @Override // z4.L
    public final H s() {
        return H.p(this.f31874N, this.f31870J);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f31874N;
    }

    @Override // z4.L
    /* JADX INFO: renamed from: t */
    public final AbstractC1349gB iterator() {
        return b().listIterator(0);
    }
}
