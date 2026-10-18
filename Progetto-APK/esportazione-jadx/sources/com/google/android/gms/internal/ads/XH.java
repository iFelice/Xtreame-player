package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class XH implements LH {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final NH f17403a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f17404b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object[] f17405c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f17406d;

    public XH(AbstractC1873qH abstractC1873qH, String str, Object[] objArr) {
        this.f17403a = abstractC1873qH;
        this.f17404b = str;
        this.f17405c = objArr;
        char cCharAt = str.charAt(0);
        if (cCharAt < 55296) {
            this.f17406d = cCharAt;
            return;
        }
        int i8 = cCharAt & 8191;
        int i9 = 13;
        int i10 = 1;
        while (true) {
            int i11 = i10 + 1;
            char cCharAt2 = str.charAt(i10);
            if (cCharAt2 < 55296) {
                this.f17406d = i8 | (cCharAt2 << i9);
                return;
            } else {
                i8 |= (cCharAt2 & 8191) << i9;
                i9 += 13;
                i10 = i11;
            }
        }
    }

    public final NH a() {
        return this.f17403a;
    }

    public final int b() {
        int i8 = this.f17406d;
        if ((i8 & 1) != 0) {
            return 1;
        }
        return (i8 & 4) == 4 ? 3 : 2;
    }

    public final String c() {
        return this.f17404b;
    }

    public final Object[] d() {
        return this.f17405c;
    }
}
