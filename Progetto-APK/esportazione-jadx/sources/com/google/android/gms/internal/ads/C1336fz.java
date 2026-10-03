package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.fz, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1336fz {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f18855a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f18856b;

    public C1336fz(String str, String str2) {
        this.f18855a = str;
        this.f18856b = str2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C1336fz) {
            C1336fz c1336fz = (C1336fz) obj;
            String str = this.f18855a;
            if (str != null ? str.equals(c1336fz.f18855a) : c1336fz.f18855a == null) {
                String str2 = this.f18856b;
                if (str2 != null ? str2.equals(c1336fz.f18856b) : c1336fz.f18856b == null) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.f18855a;
        int iHashCode = str == null ? 0 : str.hashCode();
        String str2 = this.f18856b;
        return (str2 != null ? str2.hashCode() : 0) ^ ((iHashCode ^ 1000003) * 1000003);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("OverlayDisplayUpdateRequest{sessionToken=");
        sb.append(this.f18855a);
        sb.append(", appId=");
        return p000a.r.j(sb, this.f18856b, "}");
    }
}
