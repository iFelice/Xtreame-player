package T2;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class l extends s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f6584a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f6585b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final q f6586c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Integer f6587d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f6588e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List f6589f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final w f6590g;

    public l(long j8, long j9, q qVar, Integer num, String str, List list, w wVar) {
        this.f6584a = j8;
        this.f6585b = j9;
        this.f6586c = qVar;
        this.f6587d = num;
        this.f6588e = str;
        this.f6589f = list;
        this.f6590g = wVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof s)) {
            return false;
        }
        s sVar = (s) obj;
        if (this.f6584a == ((l) sVar).f6584a) {
            l lVar = (l) sVar;
            if (this.f6585b == lVar.f6585b) {
                q qVar = lVar.f6586c;
                q qVar2 = this.f6586c;
                if (qVar2 != null ? qVar2.equals(qVar) : qVar == null) {
                    Integer num = lVar.f6587d;
                    Integer num2 = this.f6587d;
                    if (num2 != null ? num2.equals(num) : num == null) {
                        String str = lVar.f6588e;
                        String str2 = this.f6588e;
                        if (str2 != null ? str2.equals(str) : str == null) {
                            List list = lVar.f6589f;
                            List list2 = this.f6589f;
                            if (list2 != null ? list2.equals(list) : list == null) {
                                w wVar = lVar.f6590g;
                                w wVar2 = this.f6590g;
                                if (wVar2 == null) {
                                    if (wVar == null) {
                                        return true;
                                    }
                                } else if (wVar2.equals(wVar)) {
                                    return true;
                                }
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        long j8 = this.f6584a;
        long j9 = this.f6585b;
        int i8 = (((((int) (j8 ^ (j8 >>> 32))) ^ 1000003) * 1000003) ^ ((int) ((j9 >>> 32) ^ j9))) * 1000003;
        q qVar = this.f6586c;
        int iHashCode = (i8 ^ (qVar == null ? 0 : qVar.hashCode())) * 1000003;
        Integer num = this.f6587d;
        int iHashCode2 = (iHashCode ^ (num == null ? 0 : num.hashCode())) * 1000003;
        String str = this.f6588e;
        int iHashCode3 = (iHashCode2 ^ (str == null ? 0 : str.hashCode())) * 1000003;
        List list = this.f6589f;
        int iHashCode4 = (iHashCode3 ^ (list == null ? 0 : list.hashCode())) * 1000003;
        w wVar = this.f6590g;
        return iHashCode4 ^ (wVar != null ? wVar.hashCode() : 0);
    }

    public final String toString() {
        return "LogRequest{requestTimeMs=" + this.f6584a + ", requestUptimeMs=" + this.f6585b + ", clientInfo=" + this.f6586c + ", logSource=" + this.f6587d + ", logSourceName=" + this.f6588e + ", logEvents=" + this.f6589f + ", qosTier=" + this.f6590g + "}";
    }
}
