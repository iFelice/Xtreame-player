package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.th, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2043th {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final C2043th f21089d = new C2043th(1.0f, 0, 0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f21090a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f21091b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f21092c;

    static {
        Integer.toString(0, 36);
        Integer.toString(1, 36);
        Integer.toString(3, 36);
    }

    public C2043th(float f8, int i8, int i9) {
        this.f21090a = i8;
        this.f21091b = i9;
        this.f21092c = f8;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2043th) {
            C2043th c2043th = (C2043th) obj;
            if (this.f21090a == c2043th.f21090a && this.f21091b == c2043th.f21091b && this.f21092c == c2043th.f21092c) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Float.floatToRawIntBits(this.f21092c) + ((((this.f21090a + 217) * 31) + this.f21091b) * 31);
    }
}
