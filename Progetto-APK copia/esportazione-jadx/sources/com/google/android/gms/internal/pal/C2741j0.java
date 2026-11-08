package com.google.android.gms.internal.pal;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.j0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2741j0 implements InterfaceC2669a0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AbstractC2740j f23872a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f23873b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object[] f23874c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f23875d;

    public C2741j0(D d6, String str, Object[] objArr) {
        this.f23872a = d6;
        this.f23873b = str;
        this.f23874c = objArr;
        char cCharAt = str.charAt(0);
        if (cCharAt < 55296) {
            this.f23875d = cCharAt;
            return;
        }
        int i8 = cCharAt & 8191;
        int i9 = 1;
        int i10 = 13;
        while (true) {
            int i11 = i9 + 1;
            char cCharAt2 = str.charAt(i9);
            if (cCharAt2 < 55296) {
                this.f23875d = i8 | (cCharAt2 << i10);
                return;
            } else {
                i8 |= (cCharAt2 & 8191) << i10;
                i10 += 13;
                i9 = i11;
            }
        }
    }

    public final AbstractC2740j a() {
        return this.f23872a;
    }

    public final int b() {
        return (this.f23875d & 1) == 1 ? 1 : 2;
    }

    public final String c() {
        return this.f23873b;
    }

    public final Object[] d() {
        return this.f23874c;
    }
}
