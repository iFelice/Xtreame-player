package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class V5 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f16956a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f16957b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f16958c;

    public V5(long j8, String str, int i8) {
        this.f16956a = j8;
        this.f16957b = str;
        this.f16958c = i8;
    }

    public final boolean equals(Object obj) {
        if (obj != null && (obj instanceof V5)) {
            V5 v5 = (V5) obj;
            if (v5.f16956a == this.f16956a && v5.f16958c == this.f16958c) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (int) this.f16956a;
    }
}
