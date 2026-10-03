package p094m0;

import p117p0.M;

/* JADX INFO: loaded from: classes.dex */
public final class w0 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final w0 f27062d = new w0(0, 0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f27063a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f27064b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f27065c;

    static {
        M.L(0);
        M.L(1);
        M.L(3);
    }

    public w0(int i8, int i9) {
        this(1.0f, i8, i9);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof w0)) {
            return false;
        }
        w0 w0Var = (w0) obj;
        return this.f27063a == w0Var.f27063a && this.f27064b == w0Var.f27064b && this.f27065c == w0Var.f27065c;
    }

    public final int hashCode() {
        return Float.floatToRawIntBits(this.f27065c) + ((((217 + this.f27063a) * 31) + this.f27064b) * 31);
    }

    public w0(float f8, int i8, int i9) {
        this.f27063a = i8;
        this.f27064b = i9;
        this.f27065c = f8;
    }
}
