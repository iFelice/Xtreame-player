package p094m0;

import android.os.Build;
import android.util.SparseBooleanArray;
import com.google.android.gms.internal.measurement.H1;

/* JADX INFO: loaded from: classes.dex */
public final class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SparseBooleanArray f26967a;

    public r(SparseBooleanArray sparseBooleanArray) {
        this.f26967a = sparseBooleanArray;
    }

    public final int a(int i8) {
        SparseBooleanArray sparseBooleanArray = this.f26967a;
        H1.e(i8, sparseBooleanArray.size());
        return sparseBooleanArray.keyAt(i8);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof r)) {
            return false;
        }
        r rVar = (r) obj;
        int i8 = Build.VERSION.SDK_INT;
        SparseBooleanArray sparseBooleanArray = this.f26967a;
        if (i8 >= 24) {
            return sparseBooleanArray.equals(rVar.f26967a);
        }
        if (sparseBooleanArray.size() != rVar.f26967a.size()) {
            return false;
        }
        for (int i9 = 0; i9 < sparseBooleanArray.size(); i9++) {
            if (a(i9) != rVar.a(i9)) {
                return false;
            }
        }
        return true;
    }

    public final int hashCode() {
        int i8 = Build.VERSION.SDK_INT;
        SparseBooleanArray sparseBooleanArray = this.f26967a;
        if (i8 >= 24) {
            return sparseBooleanArray.hashCode();
        }
        int size = sparseBooleanArray.size();
        for (int i9 = 0; i9 < sparseBooleanArray.size(); i9++) {
            size = (size * 31) + a(i9);
        }
        return size;
    }
}
