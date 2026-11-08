package K;

import android.util.Base64;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f4275a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f4276b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f4277c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final List f4278d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f4279e;

    public f(String str, String str2, String str3, List list) {
        this.f4275a = str;
        this.f4276b = str2;
        this.f4277c = str3;
        list.getClass();
        this.f4278d = list;
        this.f4279e = str + "-" + str2 + "-" + str3;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("FontRequest {mProviderAuthority: " + this.f4275a + ", mProviderPackage: " + this.f4276b + ", mQuery: " + this.f4277c + ", mCertificates:");
        int i8 = 0;
        while (true) {
            List list = this.f4278d;
            if (i8 >= list.size()) {
                sb.append("}mCertificatesArray: 0");
                return sb.toString();
            }
            sb.append(" [");
            List list2 = (List) list.get(i8);
            for (int i9 = 0; i9 < list2.size(); i9++) {
                sb.append(" \"");
                sb.append(Base64.encodeToString((byte[]) list2.get(i9), 0));
                sb.append("\"");
            }
            sb.append(" ]");
            i8++;
        }
    }
}
