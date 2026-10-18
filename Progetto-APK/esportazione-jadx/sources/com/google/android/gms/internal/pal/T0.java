package com.google.android.gms.internal.pal;

/* JADX INFO: loaded from: classes.dex */
public final class T0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f23656a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f23657b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f23658c;

    public T0(String str, String str2, boolean z7) {
        if (str == null) {
            throw new NullPointerException("Null advertisingId");
        }
        this.f23656a = str;
        this.f23657b = str2;
        this.f23658c = z7;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof T0) {
            T0 t7 = (T0) obj;
            if (this.f23656a.equals(t7.f23656a) && this.f23657b.equals(t7.f23657b) && this.f23658c == t7.f23658c) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((this.f23656a.hashCode() ^ 1000003) * 1000003) ^ this.f23657b.hashCode()) * 1000003) ^ (true != this.f23658c ? 1237 : 1231);
    }

    public final String toString() {
        return "AdvertisingIdInfo{advertisingId=" + this.f23656a + ", advertisingIdType=" + this.f23657b + ", isLimitAdTracking=" + this.f23658c + "}";
    }
}
