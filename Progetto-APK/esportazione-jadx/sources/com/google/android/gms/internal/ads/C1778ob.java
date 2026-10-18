package com.google.android.gms.internal.ads;

import java.util.Locale;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.ob, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1778ob {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final C1778ob f20289d = new C1778ob(1.0f, 1.0f);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f20290a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f20291b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f20292c;

    static {
        Integer.toString(0, 36);
        Integer.toString(1, 36);
    }

    public C1778ob(float f8, float f9) {
        p113o3.r.J(f8 > 0.0f);
        p113o3.r.J(f9 > 0.0f);
        this.f20290a = f8;
        this.f20291b = f9;
        this.f20292c = Math.round(f8 * 1000.0f);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C1778ob.class == obj.getClass()) {
            C1778ob c1778ob = (C1778ob) obj;
            if (this.f20290a == c1778ob.f20290a && this.f20291b == c1778ob.f20291b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Float.floatToRawIntBits(this.f20291b) + ((Float.floatToRawIntBits(this.f20290a) + 527) * 31);
    }

    public final String toString() {
        return String.format(Locale.US, "PlaybackParameters(speed=%.2f, pitch=%.2f)", Float.valueOf(this.f20290a), Float.valueOf(this.f20291b));
    }
}
