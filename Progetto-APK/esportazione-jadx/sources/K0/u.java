package K0;

import android.text.TextUtils;
import com.google.protobuf.U2;

/* JADX INFO: loaded from: classes.dex */
public final class u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f4449a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f4450b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f4451c;

    public u(String str, boolean z7, boolean z8) {
        this.f4449a = str;
        this.f4450b = z7;
        this.f4451c = z8;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || obj.getClass() != u.class) {
            return false;
        }
        u uVar = (u) obj;
        return TextUtils.equals(this.f4449a, uVar.f4449a) && this.f4450b == uVar.f4450b && this.f4451c == uVar.f4451c;
    }

    public final int hashCode() {
        return ((U2.e(this.f4449a, 31, 31) + (this.f4450b ? 1231 : 1237)) * 31) + (this.f4451c ? 1231 : 1237);
    }
}
