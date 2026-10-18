package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.tz, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2061tz extends AbstractC2009sz {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final char f21171G;

    public C2061tz(char c8) {
        this.f21171G = c8;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2009sz
    public final boolean a(char c8) {
        return c8 == this.f21171G;
    }

    public final String toString() {
        char[] cArr = {'\\', 'u', 0, 0, 0, 0};
        int i8 = this.f21171G;
        for (int i9 = 0; i9 < 4; i9++) {
            cArr[5 - i9] = "0123456789ABCDEF".charAt(i8 & 15);
            i8 >>= 4;
        }
        return p000a.r.g("CharMatcher.is('", String.copyValueOf(cArr), "')");
    }
}
