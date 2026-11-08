package com.google.android.gms.internal.ads;

import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes.dex */
public final class Ly {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ int f14592d = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f14593a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f14594b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f14595c;

    static {
        Ky ky = new Ky();
        ky.f14440a = HttpUrl.FRAGMENT_ENCODE_SET;
        byte b8 = (byte) (ky.f14442c | 1);
        ky.f14441b = false;
        ky.f14442c = (byte) (b8 | 2);
        ky.f14443d = 1;
        ky.a();
        Ky ky2 = new Ky();
        ky2.f14440a = HttpUrl.FRAGMENT_ENCODE_SET;
        byte b9 = (byte) (ky2.f14442c | 1);
        ky2.f14441b = true;
        ky2.f14442c = (byte) (b9 | 2);
        ky2.f14443d = 1;
        ky2.a();
    }

    public Ly(String str, boolean z7, int i8) {
        this.f14593a = str;
        this.f14594b = z7;
        this.f14595c = i8;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof Ly) {
            Ly ly = (Ly) obj;
            if (this.f14593a.equals(ly.f14593a) && this.f14594b == ly.f14594b) {
                if (this.f14595c == 0) {
                    throw null;
                }
                if (ly.f14595c == 1) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = this.f14593a.hashCode() ^ 1000003;
        if (this.f14595c == 0) {
            throw null;
        }
        return (((((iHashCode * 1000003) ^ 1237) * 1000003) ^ (true != this.f14594b ? 1237 : 1231)) * 583896283) ^ 1;
    }

    public final String toString() {
        return "FileComplianceOptions{fileOwner=" + this.f14593a + ", hasDifferentDmaOwner=false, skipChecks=" + this.f14594b + ", dataForwardingNotAllowedResolver=null, multipleProductIdGroupsResolver=null, filePurpose=" + (this.f14595c != 1 ? "null" : "READ_AND_WRITE") + "}";
    }
}
