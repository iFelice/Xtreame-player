package com.google.protobuf;

/* JADX INFO: renamed from: com.google.protobuf.i2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C2910i2 implements N1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Q1 f24455a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f24456b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object[] f24457c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f24458d;

    public C2910i2(Q1 q7, String str, Object[] objArr) {
        this.f24455a = q7;
        this.f24456b = str;
        this.f24457c = objArr;
        char cCharAt = str.charAt(0);
        if (cCharAt < 55296) {
            this.f24458d = cCharAt;
            return;
        }
        int i8 = cCharAt & 8191;
        int i9 = 13;
        int i10 = 1;
        while (true) {
            int i11 = i10 + 1;
            char cCharAt2 = str.charAt(i10);
            if (cCharAt2 < 55296) {
                this.f24458d = i8 | (cCharAt2 << i9);
                return;
            } else {
                i8 |= (cCharAt2 & 8191) << i9;
                i9 += 13;
                i10 = i11;
            }
        }
    }

    public final Q1 a() {
        return this.f24455a;
    }

    public final Object[] b() {
        return this.f24457c;
    }

    public final String c() {
        return this.f24456b;
    }

    public final int d() {
        int i8 = this.f24458d;
        if ((i8 & 1) != 0) {
            return 1;
        }
        return (i8 & 4) == 4 ? 3 : 2;
    }
}
