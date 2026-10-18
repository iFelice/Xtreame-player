package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.wg, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2198wg {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f21720a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C0961Ve f21721b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f21722c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int[] f21723d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean[] f21724e;

    static {
        Integer.toString(0, 36);
        Integer.toString(1, 36);
        Integer.toString(3, 36);
        Integer.toString(4, 36);
    }

    public C2198wg(C0961Ve c0961Ve, boolean z7, int[] iArr, boolean[] zArr) {
        int i8 = c0961Ve.f17069a;
        this.f21720a = i8;
        p113o3.r.J(i8 == iArr.length && i8 == zArr.length);
        this.f21721b = c0961Ve;
        this.f21722c = z7 && i8 > 1;
        this.f21723d = (int[]) iArr.clone();
        this.f21724e = (boolean[]) zArr.clone();
    }

    public final int a() {
        return this.f21721b.f17071c;
    }

    public final boolean b() {
        for (boolean z7 : this.f21724e) {
            if (z7) {
                return true;
            }
        }
        return false;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C2198wg.class == obj.getClass()) {
            C2198wg c2198wg = (C2198wg) obj;
            if (this.f21722c == c2198wg.f21722c && this.f21721b.equals(c2198wg.f21721b) && Arrays.equals(this.f21723d, c2198wg.f21723d) && Arrays.equals(this.f21724e, c2198wg.f21724e)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f21724e) + ((Arrays.hashCode(this.f21723d) + (((this.f21721b.hashCode() * 31) + (this.f21722c ? 1 : 0)) * 31)) * 31);
    }
}
