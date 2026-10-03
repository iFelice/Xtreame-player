package Z3;

import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class S extends O {

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public static final Object[] f8271N = null;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public static final S f8272O;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final transient Object[] f8273I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final transient int f8274J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final transient Object[] f8275K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final transient int f8276L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final transient int f8277M;

    static {
        Object[] objArr = new Object[0];
        f8272O = new S(objArr, 0, objArr, 0, 0);
    }

    public S(Object[] objArr, int i8, Object[] objArr2, int i9, int i10) {
        this.f8273I = objArr;
        this.f8274J = i8;
        this.f8275K = objArr2;
        this.f8276L = i9;
        this.f8277M = i10;
    }

    @Override // Z3.K
    public final int b(Object[] objArr) {
        Object[] objArr2 = this.f8273I;
        int i8 = this.f8277M;
        System.arraycopy(objArr2, 0, objArr, 0, i8);
        return i8;
    }

    @Override // Z3.K
    public final int c() {
        return this.f8277M;
    }

    @Override // Z3.K, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        if (obj != null) {
            Object[] objArr = this.f8275K;
            if (objArr.length != 0) {
                int iRotateLeft = (int) (((long) Integer.rotateLeft((int) (((long) obj.hashCode()) * (-862048943)), 15)) * 461845907);
                while (true) {
                    int i8 = this.f8276L & iRotateLeft;
                    Object obj2 = objArr[i8];
                    if (obj2 == null) {
                        return false;
                    }
                    if (obj2.equals(obj)) {
                        return true;
                    }
                    iRotateLeft = i8 + 1;
                }
            }
        }
        return false;
    }

    @Override // Z3.O, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.f8274J;
    }

    @Override // Z3.K
    public final int i() {
        return 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        N nP = this.f8265H;
        if (nP == null) {
            nP = p();
            this.f8265H = nP;
        }
        return nP.listIterator(0);
    }

    @Override // Z3.K
    public final Object[] l() {
        return this.f8273I;
    }

    public final Q p() {
        L l4 = N.f8264H;
        int i8 = this.f8277M;
        return i8 == 0 ? Q.f8268K : new Q(this.f8273I, i8);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f8277M;
    }
}
