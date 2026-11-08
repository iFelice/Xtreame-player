package com.google.android.gms.internal.ads;

import org.videolan.libvlc.MediaPlayer;

/* JADX INFO: loaded from: classes.dex */
public final class DJ {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final DJ f12800j = new DJ(1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final DJ f12801k = new DJ(0.0d, 1.0d, -1.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final DJ f12802l = new DJ(-1.0d, 0.0d, 0.0d, -1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final DJ f12803m = new DJ(0.0d, -1.0d, 1.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final double f12804a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final double f12805b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final double f12806c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final double f12807d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final double f12808e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final double f12809f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final double f12810g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final double f12811h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final double f12812i;

    public DJ(double d6, double d8, double d9, double d10, double d11, double d12, double d13, double d14, double d15) {
        this.f12804a = d11;
        this.f12805b = d12;
        this.f12806c = d13;
        this.f12807d = d6;
        this.f12808e = d8;
        this.f12809f = d9;
        this.f12810g = d10;
        this.f12811h = d14;
        this.f12812i = d15;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || DJ.class != obj.getClass()) {
            return false;
        }
        DJ dj = (DJ) obj;
        return Double.compare(dj.f12807d, this.f12807d) == 0 && Double.compare(dj.f12808e, this.f12808e) == 0 && Double.compare(dj.f12809f, this.f12809f) == 0 && Double.compare(dj.f12810g, this.f12810g) == 0 && Double.compare(dj.f12811h, this.f12811h) == 0 && Double.compare(dj.f12812i, this.f12812i) == 0 && Double.compare(dj.f12804a, this.f12804a) == 0 && Double.compare(dj.f12805b, this.f12805b) == 0 && Double.compare(dj.f12806c, this.f12806c) == 0;
    }

    public final int hashCode() {
        long jDoubleToLongBits = Double.doubleToLongBits(this.f12804a);
        long j8 = jDoubleToLongBits ^ (jDoubleToLongBits >>> 32);
        long jDoubleToLongBits2 = Double.doubleToLongBits(this.f12805b);
        long j9 = jDoubleToLongBits2 ^ (jDoubleToLongBits2 >>> 32);
        long jDoubleToLongBits3 = Double.doubleToLongBits(this.f12806c);
        long j10 = jDoubleToLongBits3 ^ (jDoubleToLongBits3 >>> 32);
        long jDoubleToLongBits4 = Double.doubleToLongBits(this.f12807d);
        long j11 = jDoubleToLongBits4 ^ (jDoubleToLongBits4 >>> 32);
        long jDoubleToLongBits5 = Double.doubleToLongBits(this.f12808e);
        long j12 = jDoubleToLongBits5 ^ (jDoubleToLongBits5 >>> 32);
        long jDoubleToLongBits6 = Double.doubleToLongBits(this.f12809f);
        long j13 = jDoubleToLongBits6 ^ (jDoubleToLongBits6 >>> 32);
        long jDoubleToLongBits7 = Double.doubleToLongBits(this.f12810g);
        long j14 = jDoubleToLongBits7 ^ (jDoubleToLongBits7 >>> 32);
        long jDoubleToLongBits8 = Double.doubleToLongBits(this.f12811h);
        long j15 = jDoubleToLongBits8 ^ (jDoubleToLongBits8 >>> 32);
        long jDoubleToLongBits9 = Double.doubleToLongBits(this.f12812i);
        return (((((((((((((((((int) j8) * 31) + ((int) j9)) * 31) + ((int) j10)) * 31) + ((int) j11)) * 31) + ((int) j12)) * 31) + ((int) j13)) * 31) + ((int) j14)) * 31) + ((int) j15)) * 31) + ((int) (jDoubleToLongBits9 ^ (jDoubleToLongBits9 >>> 32)));
    }

    public final String toString() {
        if (equals(f12800j)) {
            return "Rotate 0°";
        }
        if (equals(f12801k)) {
            return "Rotate 90°";
        }
        if (equals(f12802l)) {
            return "Rotate 180°";
        }
        if (equals(f12803m)) {
            return "Rotate 270°";
        }
        StringBuilder sb = new StringBuilder(MediaPlayer.Event.Playing);
        sb.append("Matrix{u=");
        sb.append(this.f12804a);
        sb.append(", v=");
        sb.append(this.f12805b);
        sb.append(", w=");
        sb.append(this.f12806c);
        sb.append(", a=");
        sb.append(this.f12807d);
        sb.append(", b=");
        sb.append(this.f12808e);
        sb.append(", c=");
        sb.append(this.f12809f);
        sb.append(", d=");
        sb.append(this.f12810g);
        sb.append(", tx=");
        sb.append(this.f12811h);
        sb.append(", ty=");
        sb.append(this.f12812i);
        sb.append("}");
        return sb.toString();
    }
}
