package p072j0;

import N.d0;
import android.os.Build;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public g f25664a;

    public d(String str, int i8, int i9) {
        if (str == null) {
            throw new NullPointerException("package shouldn't be null");
        }
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("packageName should be nonempty");
        }
        if (Build.VERSION.SDK_INT < 28) {
            this.f25664a = new g(str, i8, i9);
            return;
        }
        f fVar = new f(str, i8, i9);
        d0.w(str, i8, i9);
        this.f25664a = fVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        return this.f25664a.equals(((d) obj).f25664a);
    }

    public final int hashCode() {
        return this.f25664a.hashCode();
    }
}
