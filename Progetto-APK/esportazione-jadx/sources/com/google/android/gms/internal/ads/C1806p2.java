package com.google.android.gms.internal.ads;

import android.text.Layout;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.p2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1806p2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f20398a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f20399b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f20400c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f20401d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f20402e;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public float f20408k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public String f20409l;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Layout.Alignment f20412o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Layout.Alignment f20413p;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public C1598l2 f20415r;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f20403f = -1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f20404g = -1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f20405h = -1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f20406i = -1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f20407j = -1;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f20410m = -1;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f20411n = -1;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f20414q = -1;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public float f20416s = Float.MAX_VALUE;

    public final String a() {
        return this.f20409l;
    }

    public final void b(C1806p2 c1806p2) {
        int i8;
        Layout.Alignment alignment;
        Layout.Alignment alignment2;
        String str;
        if (c1806p2 != null) {
            if (!this.f20400c && c1806p2.f20400c) {
                this.f20399b = c1806p2.f20399b;
                this.f20400c = true;
            }
            if (this.f20405h == -1) {
                this.f20405h = c1806p2.f20405h;
            }
            if (this.f20406i == -1) {
                this.f20406i = c1806p2.f20406i;
            }
            if (this.f20398a == null && (str = c1806p2.f20398a) != null) {
                this.f20398a = str;
            }
            if (this.f20403f == -1) {
                this.f20403f = c1806p2.f20403f;
            }
            if (this.f20404g == -1) {
                this.f20404g = c1806p2.f20404g;
            }
            if (this.f20411n == -1) {
                this.f20411n = c1806p2.f20411n;
            }
            if (this.f20412o == null && (alignment2 = c1806p2.f20412o) != null) {
                this.f20412o = alignment2;
            }
            if (this.f20413p == null && (alignment = c1806p2.f20413p) != null) {
                this.f20413p = alignment;
            }
            if (this.f20414q == -1) {
                this.f20414q = c1806p2.f20414q;
            }
            if (this.f20407j == -1) {
                this.f20407j = c1806p2.f20407j;
                this.f20408k = c1806p2.f20408k;
            }
            if (this.f20415r == null) {
                this.f20415r = c1806p2.f20415r;
            }
            if (this.f20416s == Float.MAX_VALUE) {
                this.f20416s = c1806p2.f20416s;
            }
            if (!this.f20402e && c1806p2.f20402e) {
                this.f20401d = c1806p2.f20401d;
                this.f20402e = true;
            }
            if (this.f20410m != -1 || (i8 = c1806p2.f20410m) == -1) {
                return;
            }
            this.f20410m = i8;
        }
    }
}
