package U2;

import android.util.Base64;
import java.util.Arrays;
import okhttp3.HttpUrl;
import p096m2.u;

/* JADX INFO: loaded from: classes.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f6952a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f6953b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final R2.c f6954c;

    public i(String str, byte[] bArr, R2.c cVar) {
        this.f6952a = str;
        this.f6953b = bArr;
        this.f6954c = cVar;
    }

    public static u a() {
        u uVar = new u(29);
        uVar.S(R2.c.f6285G);
        return uVar;
    }

    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final String toString() {
        byte[] bArr = this.f6953b;
        return "TransportContext(" + this.f6952a + ", " + this.f6954c + ", " + (bArr == null ? HttpUrl.FRAGMENT_ENCODE_SET : Base64.encodeToString(bArr, 2)) + ")";
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        return this.f6952a.equals(iVar.f6952a) && Arrays.equals(this.f6953b, iVar.f6953b) && this.f6954c.equals(iVar.f6954c);
    }

    public final int hashCode() {
        return ((((this.f6952a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f6953b)) * 1000003) ^ this.f6954c.hashCode();
    }
}
