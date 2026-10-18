package U2;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final R2.b f6961a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f6962b;

    public l(R2.b bVar, byte[] bArr) {
        if (bVar == null) {
            throw new NullPointerException("encoding is null");
        }
        if (bArr == null) {
            throw new NullPointerException("bytes is null");
        }
        this.f6961a = bVar;
        this.f6962b = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof l)) {
            return false;
        }
        l lVar = (l) obj;
        if (this.f6961a.equals(lVar.f6961a)) {
            return Arrays.equals(this.f6962b, lVar.f6962b);
        }
        return false;
    }

    public final int hashCode() {
        return ((this.f6961a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f6962b);
    }

    public final String toString() {
        return "EncodedPayload{encoding=" + this.f6961a + ", bytes=[...]}";
    }
}
