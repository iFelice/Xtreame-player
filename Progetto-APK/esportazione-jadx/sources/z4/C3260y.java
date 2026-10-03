package z4;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Comparator;

/* JADX INFO: renamed from: z4.y, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3260y extends c0 implements Serializable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Comparator[] f31906G;

    public C3260y(C3253q c3253q, C3253q c3253q2) {
        this.f31906G = new Comparator[]{c3253q, c3253q2};
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int i8 = 0;
        while (true) {
            Comparator[] comparatorArr = this.f31906G;
            if (i8 >= comparatorArr.length) {
                return 0;
            }
            int iCompare = comparatorArr[i8].compare(obj, obj2);
            if (iCompare != 0) {
                return iCompare;
            }
            i8++;
        }
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C3260y) {
            return Arrays.equals(this.f31906G, ((C3260y) obj).f31906G);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f31906G);
    }

    public final String toString() {
        return p000a.r.j(new StringBuilder("Ordering.compound("), Arrays.toString(this.f31906G), ")");
    }
}
