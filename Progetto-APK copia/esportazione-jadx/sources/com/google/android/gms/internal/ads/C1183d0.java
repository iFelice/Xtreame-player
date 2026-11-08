package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.d0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1183d0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f18289a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f18290b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f18291c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f18292d;

    public C1183d0(int i8, byte[] bArr, int i9, int i10) {
        this.f18289a = i8;
        this.f18290b = bArr;
        this.f18291c = i9;
        this.f18292d = i10;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C1183d0.class == obj.getClass()) {
            C1183d0 c1183d0 = (C1183d0) obj;
            if (this.f18289a == c1183d0.f18289a && this.f18291c == c1183d0.f18291c && this.f18292d == c1183d0.f18292d && Arrays.equals(this.f18290b, c1183d0.f18290b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((Arrays.hashCode(this.f18290b) + (this.f18289a * 31)) * 31) + this.f18291c) * 31) + this.f18292d;
    }
}
