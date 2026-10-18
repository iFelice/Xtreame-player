package z4;

import com.google.android.gms.internal.ads.AbstractC1349gB;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class f0 extends L {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final transient J f31851J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final transient Object[] f31852K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final transient int f31853L = 0;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final transient int f31854M;

    public f0(J j8, Object[] objArr, int i8) {
        this.f31851J = j8;
        this.f31852K = objArr;
        this.f31854M = i8;
    }

    @Override // z4.C
    public final int c(int i8, Object[] objArr) {
        return b().c(i8, objArr);
    }

    @Override // z4.C, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        Object key = entry.getKey();
        Object value = entry.getValue();
        return value != null && value.equals(this.f31851J.get(key));
    }

    @Override // z4.C
    public final boolean o() {
        return true;
    }

    @Override // z4.L
    public final H s() {
        return new e0(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f31854M;
    }

    @Override // z4.L
    /* JADX INFO: renamed from: t */
    public final AbstractC1349gB iterator() {
        return b().listIterator(0);
    }
}
