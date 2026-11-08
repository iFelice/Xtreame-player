package p065i1;

import java.util.Arrays;
import java.util.Objects;
import p094m0.K;

/* JADX INFO: loaded from: classes.dex */
public final class a extends j {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f25509b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f25510c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f25511d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final byte[] f25512e;

    public a(String str, String str2, int i8, byte[] bArr) {
        super("APIC");
        this.f25509b = str;
        this.f25510c = str2;
        this.f25511d = i8;
        this.f25512e = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || a.class != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        return this.f25511d == aVar.f25511d && Objects.equals(this.f25509b, aVar.f25509b) && Objects.equals(this.f25510c, aVar.f25510c) && Arrays.equals(this.f25512e, aVar.f25512e);
    }

    public final int hashCode() {
        int i8 = (527 + this.f25511d) * 31;
        String str = this.f25509b;
        int iHashCode = (i8 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f25510c;
        return Arrays.hashCode(this.f25512e) + ((iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31);
    }

    @Override // p065i1.j, p094m0.M
    public final void populateMediaMetadata(K k8) {
        k8.a(this.f25511d, this.f25512e);
    }

    @Override // p065i1.j
    public final String toString() {
        return this.f25537a + ": mimeType=" + this.f25509b + ", description=" + this.f25510c;
    }
}
