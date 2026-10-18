package p135r2;

import android.text.TextUtils;
import p000a.r;

/* JADX INFO: loaded from: classes.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f29797a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f29798b;

    public f(String str, String str2) {
        this.f29797a = str;
        this.f29798b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || f.class != obj.getClass()) {
            return false;
        }
        f fVar = (f) obj;
        return TextUtils.equals(this.f29797a, fVar.f29797a) && TextUtils.equals(this.f29798b, fVar.f29798b);
    }

    public final int hashCode() {
        return this.f29798b.hashCode() + (this.f29797a.hashCode() * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Header[name=");
        sb.append(this.f29797a);
        sb.append(",value=");
        return r.j(sb, this.f29798b, "]");
    }
}
