package com.google.android.gms.internal.atv_ads_framework;

/* JADX INFO: renamed from: com.google.android.gms.internal.atv_ads_framework.v0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2416v0 implements InterfaceC2399m0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final E f22379a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f22380b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object[] f22381c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f22382d;

    public C2416v0(U u7, String str, Object[] objArr) {
        this.f22379a = u7;
        this.f22380b = str;
        this.f22381c = objArr;
        char cCharAt = str.charAt(0);
        if (cCharAt < 55296) {
            this.f22382d = cCharAt;
            return;
        }
        int i8 = cCharAt & 8191;
        int i9 = 13;
        int i10 = 1;
        while (true) {
            int i11 = i10 + 1;
            char cCharAt2 = str.charAt(i10);
            if (cCharAt2 < 55296) {
                this.f22382d = i8 | (cCharAt2 << i9);
                return;
            } else {
                i8 |= (cCharAt2 & 8191) << i9;
                i9 += 13;
                i10 = i11;
            }
        }
    }

    public final E a() {
        return this.f22379a;
    }

    public final int b() {
        return (this.f22382d & 1) == 1 ? 1 : 2;
    }

    public final String c() {
        return this.f22380b;
    }

    public final Object[] d() {
        return this.f22381c;
    }
}
