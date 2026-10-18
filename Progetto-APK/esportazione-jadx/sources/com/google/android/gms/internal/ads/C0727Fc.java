package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Fc, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0727Fc {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f13359a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f13360b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C2225x6 f13361c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Object f13362d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f13363e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f13364f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final long f13365g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f13366h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f13367i;

    static {
        Integer.toString(0, 36);
        Integer.toString(1, 36);
        Integer.toString(2, 36);
        Integer.toString(3, 36);
        Integer.toString(4, 36);
        Integer.toString(5, 36);
        Integer.toString(6, 36);
    }

    public C0727Fc(Object obj, int i8, C2225x6 c2225x6, Object obj2, int i9, long j8, long j9, int i10, int i11) {
        this.f13359a = obj;
        this.f13360b = i8;
        this.f13361c = c2225x6;
        this.f13362d = obj2;
        this.f13363e = i9;
        this.f13364f = j8;
        this.f13365g = j9;
        this.f13366h = i10;
        this.f13367i = i11;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C0727Fc.class == obj.getClass()) {
            C0727Fc c0727Fc = (C0727Fc) obj;
            if (this.f13360b == c0727Fc.f13360b && this.f13363e == c0727Fc.f13363e && this.f13364f == c0727Fc.f13364f && this.f13365g == c0727Fc.f13365g && this.f13366h == c0727Fc.f13366h && this.f13367i == c0727Fc.f13367i && com.google.android.gms.internal.measurement.H1.E(this.f13361c, c0727Fc.f13361c) && com.google.android.gms.internal.measurement.H1.E(this.f13359a, c0727Fc.f13359a) && com.google.android.gms.internal.measurement.H1.E(this.f13362d, c0727Fc.f13362d)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f13359a, Integer.valueOf(this.f13360b), this.f13361c, this.f13362d, Integer.valueOf(this.f13363e), Long.valueOf(this.f13364f), Long.valueOf(this.f13365g), Integer.valueOf(this.f13366h), Integer.valueOf(this.f13367i)});
    }
}
