package L1;

import p000a.r;

/* JADX INFO: loaded from: classes.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f4621a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f4622b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f4623c;

    public f(int i8, long j8, long j9) {
        this.f4621a = j8;
        this.f4622b = j9;
        this.f4623c = i8;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return this.f4621a == fVar.f4621a && this.f4622b == fVar.f4622b && this.f4623c == fVar.f4623c;
    }

    public final int hashCode() {
        long j8 = this.f4621a;
        int i8 = ((int) (j8 ^ (j8 >>> 32))) * 31;
        long j9 = this.f4622b;
        return ((i8 + ((int) (j9 ^ (j9 >>> 32)))) * 31) + this.f4623c;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("TaxonomyVersion=");
        sb.append(this.f4621a);
        sb.append(", ModelVersion=");
        sb.append(this.f4622b);
        sb.append(", TopicCode=");
        return p148t.a.c("Topic { ", r.h(sb, this.f4623c, " }"));
    }
}
