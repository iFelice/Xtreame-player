package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.i9, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1451i9 {

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final C1451i9 f19243y = new C1451i9(new A8());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CharSequence f19244a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CharSequence f19245b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CharSequence f19246c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final CharSequence f19247d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CharSequence f19248e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final byte[] f19249f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Integer f19250g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Integer f19251h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Integer f19252i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Integer f19253j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Boolean f19254k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final Integer f19255l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final Integer f19256m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final Integer f19257n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final Integer f19258o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final Integer f19259p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final Integer f19260q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final Integer f19261r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final CharSequence f19262s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final CharSequence f19263t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final CharSequence f19264u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final CharSequence f19265v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final CharSequence f19266w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final Integer f19267x;

    static {
        Integer.toString(0, 36);
        Integer.toString(1, 36);
        Integer.toString(2, 36);
        Integer.toString(3, 36);
        Integer.toString(4, 36);
        Integer.toString(5, 36);
        Integer.toString(6, 36);
        Integer.toString(8, 36);
        Integer.toString(9, 36);
        Integer.toString(10, 36);
        Integer.toString(11, 36);
        Integer.toString(12, 36);
        Integer.toString(13, 36);
        Integer.toString(14, 36);
        Integer.toString(15, 36);
        Integer.toString(16, 36);
        Integer.toString(17, 36);
        Integer.toString(18, 36);
        Integer.toString(19, 36);
        Integer.toString(20, 36);
        Integer.toString(21, 36);
        Integer.toString(22, 36);
        Integer.toString(23, 36);
        Integer.toString(24, 36);
        Integer.toString(25, 36);
        Integer.toString(26, 36);
        Integer.toString(27, 36);
        Integer.toString(28, 36);
        Integer.toString(29, 36);
        Integer.toString(30, 36);
        Integer.toString(31, 36);
        Integer.toString(32, 36);
        Integer.toString(33, 36);
        Integer.toString(1000, 36);
    }

    /* JADX WARN: Code duplicated, block: B:13:0x002a  */
    public C1451i9(A8 a8) {
        Boolean boolValueOf = a8.f11973k;
        Integer numValueOf = a8.f11972j;
        Integer numValueOf2 = a8.f11985w;
        int i8 = 1;
        int i9 = 0;
        if (boolValueOf != null) {
            if (!boolValueOf.booleanValue()) {
                numValueOf = -1;
            } else if (numValueOf == null || numValueOf.intValue() == -1) {
                if (numValueOf2 != null) {
                    switch (numValueOf2.intValue()) {
                        case 1:
                        case 2:
                        case 3:
                        case 4:
                        case 5:
                        case 6:
                        case 7:
                        case 8:
                        case 9:
                        case 10:
                        case 11:
                        case 12:
                        case 13:
                        case 14:
                        case 15:
                        case 16:
                        case 17:
                        case 18:
                        case 19:
                            break;
                        case 20:
                        default:
                            i8 = 0;
                            break;
                        case 21:
                            i8 = 2;
                            break;
                        case 22:
                            i8 = 3;
                            break;
                        case 23:
                            i8 = 4;
                            break;
                        case 24:
                            i8 = 5;
                            break;
                        case 25:
                            i8 = 6;
                            break;
                    }
                } else {
                    i8 = 0;
                }
                numValueOf = Integer.valueOf(i8);
            }
        } else if (numValueOf != null) {
            boolean z7 = numValueOf.intValue() != -1;
            boolValueOf = Boolean.valueOf(z7);
            if (z7 && numValueOf2 == null) {
                switch (numValueOf.intValue()) {
                    case 1:
                        break;
                    case 2:
                        i9 = 21;
                        break;
                    case 3:
                        i9 = 22;
                        break;
                    case 4:
                        i9 = 23;
                        break;
                    case 5:
                        i9 = 24;
                        break;
                    case 6:
                        i9 = 25;
                        break;
                    default:
                        i9 = 20;
                        break;
                }
                numValueOf2 = Integer.valueOf(i9);
            }
        } else {
            numValueOf = null;
        }
        this.f19244a = a8.f11963a;
        this.f19245b = a8.f11964b;
        this.f19246c = a8.f11965c;
        this.f19247d = a8.f11966d;
        this.f19248e = a8.f11967e;
        this.f19249f = a8.f11968f;
        this.f19250g = a8.f11969g;
        this.f19251h = a8.f11970h;
        this.f19252i = a8.f11971i;
        this.f19253j = numValueOf;
        this.f19254k = boolValueOf;
        Integer num = a8.f11974l;
        this.f19255l = num;
        this.f19256m = num;
        this.f19257n = a8.f11975m;
        this.f19258o = a8.f11976n;
        this.f19259p = a8.f11977o;
        this.f19260q = a8.f11978p;
        this.f19261r = a8.f11979q;
        this.f19262s = a8.f11980r;
        this.f19263t = a8.f11981s;
        this.f19264u = a8.f11982t;
        this.f19265v = a8.f11983u;
        this.f19266w = a8.f11984v;
        this.f19267x = numValueOf2;
    }

    public final A8 a() {
        A8 a8 = new A8();
        a8.f11963a = this.f19244a;
        a8.f11964b = this.f19245b;
        a8.f11965c = this.f19246c;
        a8.f11966d = this.f19247d;
        a8.f11967e = this.f19248e;
        a8.f11968f = this.f19249f;
        a8.f11969g = this.f19250g;
        a8.f11970h = this.f19251h;
        a8.f11971i = this.f19252i;
        a8.f11972j = this.f19253j;
        a8.f11973k = this.f19254k;
        a8.f11974l = this.f19256m;
        a8.f11975m = this.f19257n;
        a8.f11976n = this.f19258o;
        a8.f11977o = this.f19259p;
        a8.f11978p = this.f19260q;
        a8.f11979q = this.f19261r;
        a8.f11980r = this.f19262s;
        a8.f11981s = this.f19263t;
        a8.f11982t = this.f19264u;
        a8.f11983u = this.f19265v;
        a8.f11984v = this.f19266w;
        a8.f11985w = this.f19267x;
        return a8;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C1451i9.class == obj.getClass()) {
            C1451i9 c1451i9 = (C1451i9) obj;
            if (Objects.equals(this.f19244a, c1451i9.f19244a) && Objects.equals(this.f19245b, c1451i9.f19245b) && Objects.equals(this.f19246c, c1451i9.f19246c) && Objects.equals(this.f19247d, c1451i9.f19247d) && Objects.equals(this.f19248e, c1451i9.f19248e) && Arrays.equals(this.f19249f, c1451i9.f19249f) && Objects.equals(this.f19250g, c1451i9.f19250g) && Objects.equals(this.f19251h, c1451i9.f19251h) && Objects.equals(this.f19252i, c1451i9.f19252i) && Objects.equals(this.f19253j, c1451i9.f19253j) && Objects.equals(this.f19254k, c1451i9.f19254k) && Objects.equals(this.f19256m, c1451i9.f19256m) && Objects.equals(this.f19257n, c1451i9.f19257n) && Objects.equals(this.f19258o, c1451i9.f19258o) && Objects.equals(this.f19259p, c1451i9.f19259p) && Objects.equals(this.f19260q, c1451i9.f19260q) && Objects.equals(this.f19261r, c1451i9.f19261r) && Objects.equals(this.f19262s, c1451i9.f19262s) && Objects.equals(this.f19263t, c1451i9.f19263t) && Objects.equals(this.f19264u, c1451i9.f19264u) && Objects.equals(this.f19265v, c1451i9.f19265v) && Objects.equals(this.f19266w, c1451i9.f19266w) && Objects.equals(this.f19267x, c1451i9.f19267x)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f19244a, this.f19245b, this.f19246c, this.f19247d, null, null, this.f19248e, null, null, null, Integer.valueOf(Arrays.hashCode(this.f19249f)), this.f19250g, null, this.f19251h, this.f19252i, this.f19253j, this.f19254k, null, this.f19256m, this.f19257n, this.f19258o, this.f19259p, this.f19260q, this.f19261r, this.f19262s, this.f19263t, this.f19264u, null, null, this.f19265v, null, this.f19266w, this.f19267x, Boolean.TRUE});
    }
}
