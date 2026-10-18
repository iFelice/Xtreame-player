package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class Br {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Br f12504c = new Br(-1, -1);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f12505a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f12506b;

    static {
        new Br(0, 0);
    }

    public Br(int i8, int i9) {
        boolean z7 = false;
        if ((i8 == -1 || i8 >= 0) && (i9 == -1 || i9 >= 0)) {
            z7 = true;
        }
        p113o3.r.J(z7);
        this.f12505a = i8;
        this.f12506b = i9;
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (obj instanceof Br) {
            Br br = (Br) obj;
            if (this.f12505a == br.f12505a && this.f12506b == br.f12506b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i8 = this.f12505a;
        return ((i8 >>> 16) | (i8 << 16)) ^ this.f12506b;
    }

    public final String toString() {
        return this.f12505a + "x" + this.f12506b;
    }
}
