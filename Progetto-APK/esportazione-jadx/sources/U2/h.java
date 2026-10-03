package U2;

import java.util.HashMap;
import java.util.Map;
import okhttp3.HttpUrl;
import p086l.C3061x;

/* JADX INFO: loaded from: classes.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f6946a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Integer f6947b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final l f6948c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f6949d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f6950e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Map f6951f;

    public h(String str, Integer num, l lVar, long j8, long j9, Map map) {
        this.f6946a = str;
        this.f6947b = num;
        this.f6948c = lVar;
        this.f6949d = j8;
        this.f6950e = j9;
        this.f6951f = map;
    }

    public final String a(String str) {
        String str2 = (String) this.f6951f.get(str);
        return str2 == null ? HttpUrl.FRAGMENT_ENCODE_SET : str2;
    }

    public final int b(String str) {
        String str2 = (String) this.f6951f.get(str);
        if (str2 == null) {
            return 0;
        }
        return Integer.valueOf(str2).intValue();
    }

    public final C3061x c() {
        C3061x c3061x = new C3061x(3);
        String str = this.f6946a;
        if (str == null) {
            throw new NullPointerException("Null transportName");
        }
        c3061x.f26410G = str;
        c3061x.f26411H = this.f6947b;
        c3061x.m(this.f6948c);
        c3061x.f26413J = Long.valueOf(this.f6949d);
        c3061x.f26414K = Long.valueOf(this.f6950e);
        c3061x.f26415L = new HashMap(this.f6951f);
        return c3061x;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        if (this.f6946a.equals(hVar.f6946a)) {
            Integer num = hVar.f6947b;
            Integer num2 = this.f6947b;
            if (num2 != null ? num2.equals(num) : num == null) {
                if (this.f6948c.equals(hVar.f6948c) && this.f6949d == hVar.f6949d && this.f6950e == hVar.f6950e && this.f6951f.equals(hVar.f6951f)) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = (this.f6946a.hashCode() ^ 1000003) * 1000003;
        Integer num = this.f6947b;
        int iHashCode2 = (((iHashCode ^ (num == null ? 0 : num.hashCode())) * 1000003) ^ this.f6948c.hashCode()) * 1000003;
        long j8 = this.f6949d;
        int i8 = (iHashCode2 ^ ((int) (j8 ^ (j8 >>> 32)))) * 1000003;
        long j9 = this.f6950e;
        return ((i8 ^ ((int) (j9 ^ (j9 >>> 32)))) * 1000003) ^ this.f6951f.hashCode();
    }

    public final String toString() {
        return "EventInternal{transportName=" + this.f6946a + ", code=" + this.f6947b + ", encodedPayload=" + this.f6948c + ", eventMillis=" + this.f6949d + ", uptimeMillis=" + this.f6950e + ", autoMetadata=" + this.f6951f + "}";
    }
}
