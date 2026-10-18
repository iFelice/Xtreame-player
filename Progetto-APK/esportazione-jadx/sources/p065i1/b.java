package p065i1;

import com.google.protobuf.U2;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class b extends j {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f25513b;

    public b(byte[] bArr, String str) {
        super(str);
        this.f25513b = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || b.class != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        return this.f25537a.equals(bVar.f25537a) && Arrays.equals(this.f25513b, bVar.f25513b);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f25513b) + U2.e(this.f25537a, 527, 31);
    }
}
