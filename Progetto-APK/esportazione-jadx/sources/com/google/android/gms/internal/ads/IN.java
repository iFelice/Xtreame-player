package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class IN {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f13879a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f13880b;

    public IN(int i8, boolean z7) {
        this.f13879a = i8;
        this.f13880b = z7;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && IN.class == obj.getClass()) {
            IN in = (IN) obj;
            if (this.f13879a == in.f13879a && this.f13880b == in.f13880b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (this.f13879a * 31) + (this.f13880b ? 1 : 0);
    }
}
