package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class ZK {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ZK f17760c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f17761a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f17762b;

    static {
        ZK zk = new ZK(0L, 0L);
        new ZK(Long.MAX_VALUE, Long.MAX_VALUE);
        new ZK(Long.MAX_VALUE, 0L);
        new ZK(0L, Long.MAX_VALUE);
        f17760c = zk;
    }

    public ZK(long j8, long j9) {
        p113o3.r.J(j8 >= 0);
        p113o3.r.J(j9 >= 0);
        this.f17761a = j8;
        this.f17762b = j9;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && ZK.class == obj.getClass()) {
            ZK zk = (ZK) obj;
            if (this.f17761a == zk.f17761a && this.f17762b == zk.f17762b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (((int) this.f17761a) * 31) + ((int) this.f17762b);
    }
}
