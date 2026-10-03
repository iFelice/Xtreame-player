package p094m0;

import android.util.SparseBooleanArray;
import com.google.android.gms.internal.measurement.H1;
import p117p0.M;

/* JADX INFO: loaded from: classes.dex */
public final class U {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final r f26790a;

    static {
        new SparseBooleanArray();
        H1.i(!false);
        M.L(0);
    }

    public U(r rVar) {
        this.f26790a = rVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof U) {
            return this.f26790a.equals(((U) obj).f26790a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f26790a.hashCode();
    }
}
