package p065i1;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class m extends j {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f25542b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f25543c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f25544d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int[] f25545e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int[] f25546f;

    public m(int i8, int i9, int i10, int[] iArr, int[] iArr2) {
        super("MLLT");
        this.f25542b = i8;
        this.f25543c = i9;
        this.f25544d = i10;
        this.f25545e = iArr;
        this.f25546f = iArr2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || m.class != obj.getClass()) {
            return false;
        }
        m mVar = (m) obj;
        return this.f25542b == mVar.f25542b && this.f25543c == mVar.f25543c && this.f25544d == mVar.f25544d && Arrays.equals(this.f25545e, mVar.f25545e) && Arrays.equals(this.f25546f, mVar.f25546f);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f25546f) + ((Arrays.hashCode(this.f25545e) + ((((((527 + this.f25542b) * 31) + this.f25543c) * 31) + this.f25544d) * 31)) * 31);
    }
}
