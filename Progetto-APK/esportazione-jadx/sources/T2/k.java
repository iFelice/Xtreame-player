package T2;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class k extends r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f6577a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Integer f6578b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f6579c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final byte[] f6580d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f6581e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f6582f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final v f6583g;

    public k(long j8, Integer num, long j9, byte[] bArr, String str, long j10, v vVar) {
        this.f6577a = j8;
        this.f6578b = num;
        this.f6579c = j9;
        this.f6580d = bArr;
        this.f6581e = str;
        this.f6582f = j10;
        this.f6583g = vVar;
    }

    public final boolean equals(Object obj) {
        Integer num;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof r)) {
            return false;
        }
        r rVar = (r) obj;
        if (this.f6577a == ((k) rVar).f6577a && ((num = this.f6578b) != null ? num.equals(((k) rVar).f6578b) : ((k) rVar).f6578b == null)) {
            k kVar = (k) rVar;
            if (this.f6579c == kVar.f6579c) {
                if (Arrays.equals(this.f6580d, rVar instanceof k ? ((k) rVar).f6580d : kVar.f6580d)) {
                    String str = kVar.f6581e;
                    String str2 = this.f6581e;
                    if (str2 != null ? str2.equals(str) : str == null) {
                        if (this.f6582f == kVar.f6582f) {
                            v vVar = kVar.f6583g;
                            v vVar2 = this.f6583g;
                            if (vVar2 == null) {
                                if (vVar == null) {
                                    return true;
                                }
                            } else if (vVar2.equals(vVar)) {
                                return true;
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        long j8 = this.f6577a;
        int i8 = (((int) (j8 ^ (j8 >>> 32))) ^ 1000003) * 1000003;
        Integer num = this.f6578b;
        int iHashCode = (i8 ^ (num == null ? 0 : num.hashCode())) * 1000003;
        long j9 = this.f6579c;
        int iHashCode2 = (((iHashCode ^ ((int) (j9 ^ (j9 >>> 32)))) * 1000003) ^ Arrays.hashCode(this.f6580d)) * 1000003;
        String str = this.f6581e;
        int iHashCode3 = (iHashCode2 ^ (str == null ? 0 : str.hashCode())) * 1000003;
        long j10 = this.f6582f;
        int i9 = (iHashCode3 ^ ((int) (j10 ^ (j10 >>> 32)))) * 1000003;
        v vVar = this.f6583g;
        return i9 ^ (vVar != null ? vVar.hashCode() : 0);
    }

    public final String toString() {
        return "LogEvent{eventTimeMs=" + this.f6577a + ", eventCode=" + this.f6578b + ", eventUptimeMs=" + this.f6579c + ", sourceExtension=" + Arrays.toString(this.f6580d) + ", sourceExtensionJsonProto3=" + this.f6581e + ", timezoneOffsetSeconds=" + this.f6582f + ", networkConnectionInfo=" + this.f6583g + "}";
    }
}
