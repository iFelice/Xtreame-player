package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.bz, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1129bz {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f18139a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f18140b;

    public C1129bz(String str, String str2) {
        this.f18139a = str;
        this.f18140b = str2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C1129bz) {
            C1129bz c1129bz = (C1129bz) obj;
            String str = this.f18139a;
            if (str != null ? str.equals(c1129bz.f18139a) : c1129bz.f18139a == null) {
                String str2 = this.f18140b;
                if (str2 != null ? str2.equals(c1129bz.f18140b) : c1129bz.f18140b == null) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.f18139a;
        int iHashCode = str == null ? 0 : str.hashCode();
        String str2 = this.f18140b;
        return (str2 != null ? str2.hashCode() : 0) ^ ((iHashCode ^ 1000003) * 1000003);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("OverlayDisplayDismissRequest{sessionToken=");
        sb.append(this.f18139a);
        sb.append(", appId=");
        return p000a.r.j(sb, this.f18140b, "}");
    }
}
