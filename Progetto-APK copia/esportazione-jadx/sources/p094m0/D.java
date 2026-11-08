package p094m0;

import p117p0.M;

/* JADX INFO: loaded from: classes.dex */
public final class D {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f26670a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f26671b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f26672c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final float f26673d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f26674e;

    static {
        new D(new C());
        M.L(0);
        M.L(1);
        M.L(2);
        M.L(3);
        M.L(4);
    }

    public D(C c8) {
        long j8 = c8.f26665a;
        long j9 = c8.f26666b;
        long j10 = c8.f26667c;
        float f8 = c8.f26668d;
        float f9 = c8.f26669e;
        this.f26670a = j8;
        this.f26671b = j9;
        this.f26672c = j10;
        this.f26673d = f8;
        this.f26674e = f9;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof D)) {
            return false;
        }
        D d6 = (D) obj;
        return this.f26670a == d6.f26670a && this.f26671b == d6.f26671b && this.f26672c == d6.f26672c && this.f26673d == d6.f26673d && this.f26674e == d6.f26674e;
    }

    public final int hashCode() {
        long j8 = this.f26670a;
        long j9 = this.f26671b;
        int i8 = ((((int) (j8 ^ (j8 >>> 32))) * 31) + ((int) (j9 ^ (j9 >>> 32)))) * 31;
        long j10 = this.f26672c;
        int i9 = (i8 + ((int) (j10 ^ (j10 >>> 32)))) * 31;
        float f8 = this.f26673d;
        int iFloatToIntBits = (i9 + (f8 != 0.0f ? Float.floatToIntBits(f8) : 0)) * 31;
        float f9 = this.f26674e;
        return iFloatToIntBits + (f9 != 0.0f ? Float.floatToIntBits(f9) : 0);
    }
}
