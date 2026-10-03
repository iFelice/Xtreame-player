package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes.dex */
public final class L2 implements B2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final U1 f22487a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f22488b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object[] f22489c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f22490d;

    public L2(AbstractC2457i2 abstractC2457i2, String str, Object[] objArr) {
        this.f22487a = abstractC2457i2;
        this.f22488b = str;
        this.f22489c = objArr;
        char cCharAt = str.charAt(0);
        if (cCharAt < 55296) {
            this.f22490d = cCharAt;
            return;
        }
        int i8 = cCharAt & 8191;
        int i9 = 13;
        int i10 = 1;
        while (true) {
            int i11 = i10 + 1;
            char cCharAt2 = str.charAt(i10);
            if (cCharAt2 < 55296) {
                this.f22490d = i8 | (cCharAt2 << i9);
                return;
            } else {
                i8 |= (cCharAt2 & 8191) << i9;
                i9 += 13;
                i10 = i11;
            }
        }
    }

    public final U1 a() {
        return this.f22487a;
    }

    public final int b() {
        int i8 = this.f22490d;
        if ((i8 & 1) != 0) {
            return 1;
        }
        return (i8 & 4) == 4 ? 3 : 2;
    }

    public final String c() {
        return this.f22488b;
    }

    public final Object[] d() {
        return this.f22489c;
    }
}
