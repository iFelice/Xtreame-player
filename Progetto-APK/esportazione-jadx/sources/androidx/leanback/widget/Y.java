package androidx.leanback.widget;

/* JADX INFO: loaded from: classes.dex */
public final class Y {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f9280c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f9281d;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f9286i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f9287j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f9288k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f9289l;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f9282e = 2;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f9283f = 3;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f9284g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float f9285h = 50.0f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f9279b = Integer.MIN_VALUE;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f9278a = com.google.android.gms.common.api.d.API_PRIORITY_OTHER;

    public final int a() {
        if (this.f9289l) {
            int i8 = this.f9284g;
            int i9 = i8 >= 0 ? this.f9286i - i8 : -i8;
            float f8 = this.f9285h;
            return f8 != -1.0f ? i9 - ((int) ((this.f9286i * f8) / 100.0f)) : i9;
        }
        int i10 = this.f9284g;
        if (i10 < 0) {
            i10 += this.f9286i;
        }
        float f9 = this.f9285h;
        return f9 != -1.0f ? i10 + ((int) ((this.f9286i * f9) / 100.0f)) : i10;
    }

    public final int b(int i8) {
        int i9;
        int i10;
        int i11 = this.f9286i;
        int iA = a();
        int i12 = this.f9279b;
        boolean z7 = i12 == Integer.MIN_VALUE;
        int i13 = this.f9278a;
        boolean z8 = i13 == Integer.MAX_VALUE;
        if (!z7) {
            int i14 = this.f9287j;
            int i15 = iA - i14;
            if (this.f9289l ? (this.f9283f & 2) != 0 : (this.f9283f & 1) != 0) {
                if (i8 - i12 <= i15) {
                    int i16 = i12 - i14;
                    return (z8 || i16 <= (i10 = this.f9280c)) ? i16 : i10;
                }
            }
        }
        if (!z8) {
            int i17 = this.f9288k;
            int i18 = (i11 - iA) - i17;
            if (this.f9289l ? (1 & this.f9283f) != 0 : (this.f9283f & 2) != 0) {
                if (i13 - i8 <= i18) {
                    int i19 = i13 - (i11 - i17);
                    return (z7 || i19 >= (i9 = this.f9281d)) ? i19 : i9;
                }
            }
        }
        return i8 - iA;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0035, code lost:
    
        r6.f9281d = r0 - r6.f9287j;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0051, code lost:
    
        r6.f9280c = (r4 - r6.f9287j) - r7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void c(int r7, int r8, int r9, int r10) {
        /*
            Method dump skipped, instruction units count: 222
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.leanback.widget.Y.c(int, int, int, int):void");
    }

    public final String toString() {
        return " min:" + this.f9279b + " " + this.f9281d + " max:" + this.f9278a + " " + this.f9280c;
    }
}
