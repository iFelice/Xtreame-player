package O1;

import android.util.SparseArray;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class S {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public SparseArray f5302a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f5303b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Set f5304c;

    public final Q a(int i8) {
        SparseArray sparseArray = this.f5302a;
        Q q7 = (Q) sparseArray.get(i8);
        if (q7 != null) {
            return q7;
        }
        Q q8 = new Q();
        sparseArray.put(i8, q8);
        return q8;
    }
}
