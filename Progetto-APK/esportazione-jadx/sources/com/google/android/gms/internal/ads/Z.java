package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class Z {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Z f17700c = new Z(0, 0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f17701a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f17702b;

    public Z(long j8, long j9) {
        this.f17701a = j8;
        this.f17702b = j9;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && Z.class == obj.getClass()) {
            Z z7 = (Z) obj;
            if (this.f17701a == z7.f17701a && this.f17702b == z7.f17702b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (((int) this.f17701a) * 31) + ((int) this.f17702b);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("[timeUs=");
        sb.append(this.f17701a);
        sb.append(", position=");
        return p000a.r.i(sb, this.f17702b, "]");
    }
}
