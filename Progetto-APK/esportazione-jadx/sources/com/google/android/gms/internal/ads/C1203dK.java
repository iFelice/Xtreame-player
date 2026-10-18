package com.google.android.gms.internal.ads;

import android.text.TextUtils;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.dK, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1203dK {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f18317a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C1804p0 f18318b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C1804p0 f18319c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f18320d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f18321e;

    public C1203dK(String str, C1804p0 c1804p0, C1804p0 c1804p1, int i8, int i9) {
        boolean z7 = true;
        if (i8 != 0) {
            if (i9 == 0) {
                i9 = 0;
            } else {
                z7 = false;
            }
        }
        p113o3.r.J(z7);
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException();
        }
        this.f18317a = str;
        this.f18318b = c1804p0;
        c1804p1.getClass();
        this.f18319c = c1804p1;
        this.f18320d = i8;
        this.f18321e = i9;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C1203dK.class == obj.getClass()) {
            C1203dK c1203dK = (C1203dK) obj;
            if (this.f18320d == c1203dK.f18320d && this.f18321e == c1203dK.f18321e && this.f18317a.equals(c1203dK.f18317a) && this.f18318b.equals(c1203dK.f18318b) && this.f18319c.equals(c1203dK.f18319c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f18319c.hashCode() + ((this.f18318b.hashCode() + ((this.f18317a.hashCode() + ((((this.f18320d + 527) * 31) + this.f18321e) * 31)) * 31)) * 31);
    }
}
