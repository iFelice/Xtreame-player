package p117p0;

import com.google.android.gms.internal.measurement.H1;

/* JADX INFO: loaded from: classes.dex */
public final class F {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final F f28038c = new F(-1, -1);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f28039a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f28040b;

    static {
        new F(0, 0);
    }

    public F(int i8, int i9) {
        H1.d((i8 == -1 || i8 >= 0) && (i9 == -1 || i9 >= 0));
        this.f28039a = i8;
        this.f28040b = i9;
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof F)) {
            return false;
        }
        F f8 = (F) obj;
        return this.f28039a == f8.f28039a && this.f28040b == f8.f28040b;
    }

    public final int hashCode() {
        int i8 = this.f28039a;
        return ((i8 >>> 16) | (i8 << 16)) ^ this.f28040b;
    }

    public final String toString() {
        return this.f28039a + "x" + this.f28040b;
    }
}
