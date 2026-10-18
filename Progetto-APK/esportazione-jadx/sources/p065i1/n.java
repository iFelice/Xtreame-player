package p065i1;

import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class n extends j {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f25547b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final byte[] f25548c;

    public n(byte[] bArr, String str) {
        super("PRIV");
        this.f25547b = str;
        this.f25548c = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || n.class != obj.getClass()) {
            return false;
        }
        n nVar = (n) obj;
        return Objects.equals(this.f25547b, nVar.f25547b) && Arrays.equals(this.f25548c, nVar.f25548c);
    }

    public final int hashCode() {
        String str = this.f25547b;
        return Arrays.hashCode(this.f25548c) + ((527 + (str != null ? str.hashCode() : 0)) * 31);
    }

    @Override // p065i1.j
    public final String toString() {
        return this.f25537a + ": owner=" + this.f25547b;
    }
}
