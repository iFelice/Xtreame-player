package T2;

/* JADX INFO: loaded from: classes.dex */
public final class h extends a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Integer f6562a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f6563b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f6564c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f6565d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f6566e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f6567f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final String f6568g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f6569h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f6570i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f6571j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f6572k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final String f6573l;

    public h(Integer num, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11) {
        this.f6562a = num;
        this.f6563b = str;
        this.f6564c = str2;
        this.f6565d = str3;
        this.f6566e = str4;
        this.f6567f = str5;
        this.f6568g = str6;
        this.f6569h = str7;
        this.f6570i = str8;
        this.f6571j = str9;
        this.f6572k = str10;
        this.f6573l = str11;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        Integer num = this.f6562a;
        if (num != null ? num.equals(((h) aVar).f6562a) : ((h) aVar).f6562a == null) {
            String str = this.f6563b;
            if (str != null ? str.equals(((h) aVar).f6563b) : ((h) aVar).f6563b == null) {
                String str2 = this.f6564c;
                if (str2 != null ? str2.equals(((h) aVar).f6564c) : ((h) aVar).f6564c == null) {
                    String str3 = this.f6565d;
                    if (str3 != null ? str3.equals(((h) aVar).f6565d) : ((h) aVar).f6565d == null) {
                        String str4 = this.f6566e;
                        if (str4 != null ? str4.equals(((h) aVar).f6566e) : ((h) aVar).f6566e == null) {
                            String str5 = this.f6567f;
                            if (str5 != null ? str5.equals(((h) aVar).f6567f) : ((h) aVar).f6567f == null) {
                                String str6 = this.f6568g;
                                if (str6 != null ? str6.equals(((h) aVar).f6568g) : ((h) aVar).f6568g == null) {
                                    String str7 = this.f6569h;
                                    if (str7 != null ? str7.equals(((h) aVar).f6569h) : ((h) aVar).f6569h == null) {
                                        String str8 = this.f6570i;
                                        if (str8 != null ? str8.equals(((h) aVar).f6570i) : ((h) aVar).f6570i == null) {
                                            String str9 = this.f6571j;
                                            if (str9 != null ? str9.equals(((h) aVar).f6571j) : ((h) aVar).f6571j == null) {
                                                String str10 = this.f6572k;
                                                if (str10 != null ? str10.equals(((h) aVar).f6572k) : ((h) aVar).f6572k == null) {
                                                    String str11 = this.f6573l;
                                                    if (str11 == null) {
                                                        if (((h) aVar).f6573l == null) {
                                                            return true;
                                                        }
                                                    } else if (str11.equals(((h) aVar).f6573l)) {
                                                        return true;
                                                    }
                                                }
                                            }
                                        }
                                    }
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
        Integer num = this.f6562a;
        int iHashCode = ((num == null ? 0 : num.hashCode()) ^ 1000003) * 1000003;
        String str = this.f6563b;
        int iHashCode2 = (iHashCode ^ (str == null ? 0 : str.hashCode())) * 1000003;
        String str2 = this.f6564c;
        int iHashCode3 = (iHashCode2 ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        String str3 = this.f6565d;
        int iHashCode4 = (iHashCode3 ^ (str3 == null ? 0 : str3.hashCode())) * 1000003;
        String str4 = this.f6566e;
        int iHashCode5 = (iHashCode4 ^ (str4 == null ? 0 : str4.hashCode())) * 1000003;
        String str5 = this.f6567f;
        int iHashCode6 = (iHashCode5 ^ (str5 == null ? 0 : str5.hashCode())) * 1000003;
        String str6 = this.f6568g;
        int iHashCode7 = (iHashCode6 ^ (str6 == null ? 0 : str6.hashCode())) * 1000003;
        String str7 = this.f6569h;
        int iHashCode8 = (iHashCode7 ^ (str7 == null ? 0 : str7.hashCode())) * 1000003;
        String str8 = this.f6570i;
        int iHashCode9 = (iHashCode8 ^ (str8 == null ? 0 : str8.hashCode())) * 1000003;
        String str9 = this.f6571j;
        int iHashCode10 = (iHashCode9 ^ (str9 == null ? 0 : str9.hashCode())) * 1000003;
        String str10 = this.f6572k;
        int iHashCode11 = (iHashCode10 ^ (str10 == null ? 0 : str10.hashCode())) * 1000003;
        String str11 = this.f6573l;
        return (str11 != null ? str11.hashCode() : 0) ^ iHashCode11;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AndroidClientInfo{sdkVersion=");
        sb.append(this.f6562a);
        sb.append(", model=");
        sb.append(this.f6563b);
        sb.append(", hardware=");
        sb.append(this.f6564c);
        sb.append(", device=");
        sb.append(this.f6565d);
        sb.append(", product=");
        sb.append(this.f6566e);
        sb.append(", osBuild=");
        sb.append(this.f6567f);
        sb.append(", manufacturer=");
        sb.append(this.f6568g);
        sb.append(", fingerprint=");
        sb.append(this.f6569h);
        sb.append(", locale=");
        sb.append(this.f6570i);
        sb.append(", country=");
        sb.append(this.f6571j);
        sb.append(", mccMnc=");
        sb.append(this.f6572k);
        sb.append(", applicationBuild=");
        return p000a.r.j(sb, this.f6573l, "}");
    }
}
