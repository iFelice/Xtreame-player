package p027d2;

import android.net.Uri;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Uri f24617a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f24618b;

    public c(Uri uri, boolean z7) {
        this.f24617a = uri;
        this.f24618b = z7;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!q0.c(c.class, obj != null ? obj.getClass() : null)) {
            return false;
        }
        q0.f(obj, "null cannot be cast to non-null type androidx.work.Constraints.ContentUriTrigger");
        c cVar = (c) obj;
        return q0.c(this.f24617a, cVar.f24617a) && this.f24618b == cVar.f24618b;
    }

    public final int hashCode() {
        return (this.f24617a.hashCode() * 31) + (this.f24618b ? 1231 : 1237);
    }
}
