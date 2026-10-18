package F0;

import android.net.Uri;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes.dex */
public final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f3058a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f3059b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f3060c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f3061d;

    public j(long j8, long j9, String str) {
        this.f3060c = str == null ? HttpUrl.FRAGMENT_ENCODE_SET : str;
        this.f3058a = j8;
        this.f3059b = j9;
    }

    public final j a(j jVar, String str) {
        long j8;
        String strU = Q3.b.u(str, this.f3060c);
        if (jVar == null || !strU.equals(Q3.b.u(str, jVar.f3060c))) {
            return null;
        }
        long j9 = jVar.f3059b;
        long j10 = this.f3059b;
        if (j10 != -1) {
            long j11 = this.f3058a;
            if (j11 + j10 == jVar.f3058a) {
                return new j(j11, j9 == -1 ? -1L : j10 + j9, strU);
            }
            j8 = -1;
        } else {
            j8 = -1;
        }
        if (j9 != j8) {
            long j12 = jVar.f3058a;
            if (j12 + j9 == this.f3058a) {
                return new j(j12, j10 == -1 ? -1L : j9 + j10, strU);
            }
        }
        return null;
    }

    public final Uri b(String str) {
        return Q3.b.w(str, this.f3060c);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || j.class != obj.getClass()) {
            return false;
        }
        j jVar = (j) obj;
        return this.f3058a == jVar.f3058a && this.f3059b == jVar.f3059b && this.f3060c.equals(jVar.f3060c);
    }

    public final int hashCode() {
        if (this.f3061d == 0) {
            this.f3061d = this.f3060c.hashCode() + ((((527 + ((int) this.f3058a)) * 31) + ((int) this.f3059b)) * 31);
        }
        return this.f3061d;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("RangedUri(referenceUri=");
        sb.append(this.f3060c);
        sb.append(", start=");
        sb.append(this.f3058a);
        sb.append(", length=");
        return p000a.r.i(sb, this.f3059b, ")");
    }
}
