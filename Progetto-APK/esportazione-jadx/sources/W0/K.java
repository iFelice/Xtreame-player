package W0;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class K {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f7336a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f7337b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f7338c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f7339d;

    public K(int i8, byte[] bArr, int i9, int i10) {
        this.f7336a = i8;
        this.f7337b = bArr;
        this.f7338c = i9;
        this.f7339d = i10;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || K.class != obj.getClass()) {
            return false;
        }
        K k8 = (K) obj;
        return this.f7336a == k8.f7336a && this.f7338c == k8.f7338c && this.f7339d == k8.f7339d && Arrays.equals(this.f7337b, k8.f7337b);
    }

    public final int hashCode() {
        return ((((Arrays.hashCode(this.f7337b) + (this.f7336a * 31)) * 31) + this.f7338c) * 31) + this.f7339d;
    }
}
