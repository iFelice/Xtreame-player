package p065i1;

import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class f extends j {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f25528b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f25529c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f25530d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final byte[] f25531e;

    public f(String str, String str2, String str3, byte[] bArr) {
        super("GEOB");
        this.f25528b = str;
        this.f25529c = str2;
        this.f25530d = str3;
        this.f25531e = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || f.class != obj.getClass()) {
            return false;
        }
        f fVar = (f) obj;
        return Objects.equals(this.f25528b, fVar.f25528b) && Objects.equals(this.f25529c, fVar.f25529c) && Objects.equals(this.f25530d, fVar.f25530d) && Arrays.equals(this.f25531e, fVar.f25531e);
    }

    public final int hashCode() {
        String str = this.f25528b;
        int iHashCode = (527 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f25529c;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f25530d;
        return Arrays.hashCode(this.f25531e) + ((iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31);
    }

    @Override // p065i1.j
    public final String toString() {
        return this.f25537a + ": mimeType=" + this.f25528b + ", filename=" + this.f25529c + ", description=" + this.f25530d;
    }
}
