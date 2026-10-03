package com.google.android.gms.internal.ads;

import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class K1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f14287a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f14288b;

    static {
        Integer.toString(0, 36);
        Integer.toString(1, 36);
    }

    public K1(String str, String str2) {
        this.f14287a = Et.a(str);
        this.f14288b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && K1.class == obj.getClass()) {
            K1 k8 = (K1) obj;
            if (Objects.equals(this.f14287a, k8.f14287a) && Objects.equals(this.f14288b, k8.f14288b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = this.f14288b.hashCode() * 31;
        String str = this.f14287a;
        return iHashCode + (str != null ? str.hashCode() : 0);
    }
}
