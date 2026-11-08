package com.google.android.gms.internal.ads;

import android.app.Activity;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.bq, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1121bq {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Activity f18099a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final p105n3.k f18100b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f18101c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f18102d;

    public C1121bq(Activity activity, p105n3.k kVar, String str, String str2) {
        this.f18099a = activity;
        this.f18100b = kVar;
        this.f18101c = str;
        this.f18102d = str2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C1121bq) {
            C1121bq c1121bq = (C1121bq) obj;
            if (this.f18099a.equals(c1121bq.f18099a)) {
                p105n3.k kVar = c1121bq.f18100b;
                p105n3.k kVar2 = this.f18100b;
                if (kVar2 != null ? kVar2.equals(kVar) : kVar == null) {
                    String str = c1121bq.f18101c;
                    String str2 = this.f18101c;
                    if (str2 != null ? str2.equals(str) : str == null) {
                        String str3 = c1121bq.f18102d;
                        String str4 = this.f18102d;
                        if (str4 != null ? str4.equals(str3) : str3 == null) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = this.f18099a.hashCode() ^ 1000003;
        p105n3.k kVar = this.f18100b;
        int iHashCode2 = ((iHashCode * 1000003) ^ (kVar == null ? 0 : kVar.hashCode())) * 1000003;
        String str = this.f18101c;
        int iHashCode3 = (iHashCode2 ^ (str == null ? 0 : str.hashCode())) * 1000003;
        String str2 = this.f18102d;
        return iHashCode3 ^ (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbQ = com.google.protobuf.U2.q("OfflineUtilsParams{activity=", this.f18099a.toString(), ", adOverlay=", String.valueOf(this.f18100b), ", gwsQueryId=");
        sbQ.append(this.f18101c);
        sbQ.append(", uri=");
        return p000a.r.j(sbQ, this.f18102d, "}");
    }
}
