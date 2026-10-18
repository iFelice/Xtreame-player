package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes.dex */
public final class X2 implements N2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final P2 f23049a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f23050b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object[] f23051c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f23052d;

    public X2(AbstractC2631s2 abstractC2631s2, String str, Object[] objArr) {
        this.f23049a = abstractC2631s2;
        this.f23050b = str;
        this.f23051c = objArr;
        char cCharAt = str.charAt(0);
        if (cCharAt < 55296) {
            this.f23052d = cCharAt;
            return;
        }
        int i8 = cCharAt & 8191;
        int i9 = 13;
        int i10 = 1;
        while (true) {
            int i11 = i10 + 1;
            char cCharAt2 = str.charAt(i10);
            if (cCharAt2 < 55296) {
                this.f23052d = i8 | (cCharAt2 << i9);
                return;
            } else {
                i8 |= (cCharAt2 & 8191) << i9;
                i9 += 13;
                i10 = i11;
            }
        }
    }

    public final P2 a() {
        return this.f23049a;
    }

    public final int b() {
        int i8 = this.f23052d;
        if ((i8 & 1) != 0) {
            return 1;
        }
        return (i8 & 4) == 4 ? 3 : 2;
    }

    public final String c() {
        return this.f23050b;
    }

    public final Object[] d() {
        return this.f23051c;
    }
}
