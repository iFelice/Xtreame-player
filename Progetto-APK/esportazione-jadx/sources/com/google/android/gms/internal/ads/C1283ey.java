package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.ey, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1283ey {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f18626a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f18627b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f18628c;

    public C1283ey(String str, boolean z7, boolean z8) {
        this.f18626a = str;
        this.f18627b = z7;
        this.f18628c = z8;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C1283ey) {
            C1283ey c1283ey = (C1283ey) obj;
            if (this.f18626a.equals(c1283ey.f18626a) && this.f18627b == c1283ey.f18627b && this.f18628c == c1283ey.f18628c) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((this.f18626a.hashCode() ^ 1000003) * 1000003) ^ (true != this.f18627b ? 1237 : 1231)) * 1000003) ^ (true != this.f18628c ? 1237 : 1231);
    }

    public final String toString() {
        return "AdShield2Options{clientVersion=" + this.f18626a + ", shouldGetAdvertisingId=" + this.f18627b + ", isGooglePlayServicesAvailable=" + this.f18628c + "}";
    }
}
