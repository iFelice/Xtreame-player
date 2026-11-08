package com.google.android.gms.internal.ads;

import android.graphics.Bitmap;
import android.text.Layout;
import android.text.Spanned;
import android.text.SpannedString;
import android.text.TextUtils;
import java.util.Arrays;
import okhttp3.HttpUrl;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.ak, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1063ak {

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public static final String f17921A;

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public static final String f17922B;

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public static final String f17923C;

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public static final String f17924D;

    /* JADX INFO: renamed from: E, reason: collision with root package name */
    public static final String f17925E;

    /* JADX INFO: renamed from: F, reason: collision with root package name */
    public static final String f17926F;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public static final String f17927G;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final String f17928p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final String f17929q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final String f17930r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final String f17931s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final String f17932t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final String f17933u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final String f17934v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final String f17935w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final String f17936x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final String f17937y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final String f17938z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CharSequence f17939a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Layout.Alignment f17940b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Layout.Alignment f17941c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Bitmap f17942d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f17943e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f17944f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f17945g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final float f17946h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f17947i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final float f17948j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final float f17949k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f17950l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final float f17951m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final int f17952n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final float f17953o;

    static {
        int i8 = Integer.MIN_VALUE;
        float f8 = -3.4028235E38f;
        new C1063ak(HttpUrl.FRAGMENT_ENCODE_SET, null, 0 == true ? 1 : 0, 0 == true ? 1 : 0, f8, i8, i8, f8, i8, i8, f8, f8, f8, i8, 0.0f);
        f17928p = Integer.toString(0, 36);
        f17929q = Integer.toString(17, 36);
        f17930r = Integer.toString(1, 36);
        f17931s = Integer.toString(2, 36);
        Integer.toString(3, 36);
        f17932t = Integer.toString(18, 36);
        f17933u = Integer.toString(4, 36);
        f17934v = Integer.toString(5, 36);
        f17935w = Integer.toString(6, 36);
        f17936x = Integer.toString(7, 36);
        f17937y = Integer.toString(8, 36);
        f17938z = Integer.toString(9, 36);
        f17921A = Integer.toString(10, 36);
        f17922B = Integer.toString(11, 36);
        f17923C = Integer.toString(12, 36);
        f17924D = Integer.toString(13, 36);
        f17925E = Integer.toString(14, 36);
        f17926F = Integer.toString(15, 36);
        f17927G = Integer.toString(16, 36);
    }

    public /* synthetic */ C1063ak(CharSequence charSequence, Layout.Alignment alignment, Layout.Alignment alignment2, Bitmap bitmap, float f8, int i8, int i9, float f9, int i10, int i11, float f10, float f11, float f12, int i12, float f13) {
        if (charSequence == null) {
            bitmap.getClass();
        } else {
            p113o3.r.J(bitmap == null);
        }
        if (charSequence instanceof Spanned) {
            this.f17939a = SpannedString.valueOf(charSequence);
        } else {
            this.f17939a = charSequence != null ? charSequence.toString() : null;
        }
        this.f17940b = alignment;
        this.f17941c = alignment2;
        this.f17942d = bitmap;
        this.f17943e = f8;
        this.f17944f = i8;
        this.f17945g = i9;
        this.f17946h = f9;
        this.f17947i = i10;
        this.f17948j = f11;
        this.f17949k = f12;
        this.f17950l = i11;
        this.f17951m = f10;
        this.f17952n = i12;
        this.f17953o = f13;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C1063ak.class == obj.getClass()) {
            C1063ak c1063ak = (C1063ak) obj;
            if (TextUtils.equals(this.f17939a, c1063ak.f17939a) && this.f17940b == c1063ak.f17940b && this.f17941c == c1063ak.f17941c) {
                Bitmap bitmap = c1063ak.f17942d;
                Bitmap bitmap2 = this.f17942d;
                if (bitmap2 != null ? !(bitmap == null || !bitmap2.sameAs(bitmap)) : bitmap == null) {
                    if (this.f17943e == c1063ak.f17943e && this.f17944f == c1063ak.f17944f && this.f17945g == c1063ak.f17945g && this.f17946h == c1063ak.f17946h && this.f17947i == c1063ak.f17947i && this.f17948j == c1063ak.f17948j && this.f17949k == c1063ak.f17949k && this.f17950l == c1063ak.f17950l && this.f17951m == c1063ak.f17951m && this.f17952n == c1063ak.f17952n && this.f17953o == c1063ak.f17953o) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f17939a, this.f17940b, this.f17941c, this.f17942d, Float.valueOf(this.f17943e), Integer.valueOf(this.f17944f), Integer.valueOf(this.f17945g), Float.valueOf(this.f17946h), Integer.valueOf(this.f17947i), Float.valueOf(this.f17948j), Float.valueOf(this.f17949k), Boolean.FALSE, -16777216, Integer.valueOf(this.f17950l), Float.valueOf(this.f17951m), Integer.valueOf(this.f17952n), Float.valueOf(this.f17953o)});
    }
}
