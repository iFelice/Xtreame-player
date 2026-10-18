package H0;

import android.text.TextUtils;
import com.google.protobuf.U2;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import okhttp3.HttpUrl;
import p094m0.C3136t;
import p094m0.K;
import p094m0.M;

/* JADX INFO: loaded from: classes.dex */
public final class v implements M {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f3615a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f3616b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f3617c;

    public v(String str, String str2, List list) {
        this.f3615a = str;
        this.f3616b = str2;
        this.f3617c = Collections.unmodifiableList(new ArrayList(list));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || v.class != obj.getClass()) {
            return false;
        }
        v vVar = (v) obj;
        return TextUtils.equals(this.f3615a, vVar.f3615a) && TextUtils.equals(this.f3616b, vVar.f3616b) && this.f3617c.equals(vVar.f3617c);
    }

    @Override // p094m0.M
    public final /* synthetic */ byte[] getWrappedMetadataBytes() {
        return null;
    }

    @Override // p094m0.M
    public final /* synthetic */ C3136t getWrappedMetadataFormat() {
        return null;
    }

    public final int hashCode() {
        String str = this.f3615a;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.f3616b;
        return this.f3617c.hashCode() + ((iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("HlsTrackMetadataEntry");
        String str = this.f3615a;
        sb.append(str != null ? p000a.r.j(U2.p(" [", str, ", "), this.f3616b, "]") : HttpUrl.FRAGMENT_ENCODE_SET);
        return sb.toString();
    }

    @Override // p094m0.M
    public final /* synthetic */ void populateMediaMetadata(K k8) {
    }
}
