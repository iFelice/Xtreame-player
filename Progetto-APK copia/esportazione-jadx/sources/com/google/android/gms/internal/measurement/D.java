package com.google.android.gms.internal.measurement;

import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes.dex */
public final class D {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ int f22893d = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f22894a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f22895b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f22896c;

    static {
        C c8 = new C();
        c8.f22868a = HttpUrl.FRAGMENT_ENCODE_SET;
        c8.f22869b = (byte) 1;
        c8.f22870c = 1;
        c8.f22871d = 1;
        c8.a();
        C c9 = new C();
        c9.f22868a = HttpUrl.FRAGMENT_ENCODE_SET;
        c9.f22869b = (byte) 1;
        c9.f22870c = 4;
        c9.f22871d = 1;
        c9.a();
        C c10 = new C();
        c10.f22868a = HttpUrl.FRAGMENT_ENCODE_SET;
        c10.f22869b = (byte) 1;
        c10.f22870c = 2;
        c10.f22871d = 1;
        c10.a();
    }

    public D(String str, int i8, int i9) {
        this.f22894a = str;
        this.f22895b = i8;
        this.f22896c = i9;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof D) {
            D d6 = (D) obj;
            if (this.f22894a.equals(d6.f22894a)) {
                int i8 = this.f22895b;
                if (i8 == 0) {
                    throw null;
                }
                if (i8 == d6.f22895b) {
                    if (this.f22896c == 0) {
                        throw null;
                    }
                    if (d6.f22896c == 1) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = this.f22894a.hashCode() ^ 1000003;
        int i8 = this.f22895b;
        if (i8 == 0) {
            throw null;
        }
        int i9 = (((iHashCode * 1000003) ^ 1237) * 1000003) ^ i8;
        if (this.f22896c != 0) {
            return (i9 * 583896283) ^ 1;
        }
        throw null;
    }

    public final String toString() {
        String str;
        int i8 = this.f22895b;
        if (i8 == 1) {
            str = "ALL_CHECKS";
        } else if (i8 == 2) {
            str = "SKIP_COMPLIANCE_CHECK";
        } else if (i8 != 3) {
            str = i8 != 4 ? "null" : "NO_CHECKS";
        } else {
            str = "SKIP_SECURITY_CHECK";
        }
        String str2 = this.f22896c == 1 ? "READ_AND_WRITE" : "null";
        StringBuilder sb = new StringBuilder("FileComplianceOptions{fileOwner=");
        p148t.a.h(sb, this.f22894a, ", hasDifferentDmaOwner=false, fileChecks=", str, ", dataForwardingNotAllowedResolver=null, multipleProductIdGroupsResolver=null, filePurpose=");
        return p000a.r.j(sb, str2, "}");
    }
}
