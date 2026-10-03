package p094m0;

import android.view.Surface;

/* JADX INFO: loaded from: classes.dex */
public final class b0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Surface f26816a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f26817b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f26818c;

    public b0(Surface surface, int i8, int i9) {
        this.f26816a = surface;
        this.f26817b = i8;
        this.f26818c = i9;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b0)) {
            return false;
        }
        b0 b0Var = (b0) obj;
        return this.f26817b == b0Var.f26817b && this.f26818c == b0Var.f26818c && this.f26816a.equals(b0Var.f26816a);
    }

    public final int hashCode() {
        return ((((this.f26816a.hashCode() * 31) + this.f26817b) * 31) + this.f26818c) * 961;
    }
}
