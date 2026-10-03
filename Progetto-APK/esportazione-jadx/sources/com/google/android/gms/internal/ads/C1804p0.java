package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.p0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1804p0 {

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public final int f20362A;

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public final int f20363B;

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public final int f20364C;

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public final int f20365D;

    /* JADX INFO: renamed from: E, reason: collision with root package name */
    public final int f20366E;

    /* JADX INFO: renamed from: F, reason: collision with root package name */
    public final int f20367F;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f20368G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final int f20369H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public int f20370I;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f20371a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f20372b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f20373c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f20374d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f20375e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f20376f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f20377g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f20378h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f20379i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f20380j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Q9 f20381k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final String f20382l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final String f20383m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final int f20384n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final int f20385o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final List f20386p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final C1672mO f20387q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final long f20388r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final int f20389s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final int f20390t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final float f20391u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final int f20392v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final float f20393w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final byte[] f20394x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final int f20395y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final C1928rL f20396z;

    static {
        new C1804p0(new K());
        Integer.toString(0, 36);
        Integer.toString(1, 36);
        Integer.toString(2, 36);
        Integer.toString(3, 36);
        Integer.toString(4, 36);
        Integer.toString(5, 36);
        Integer.toString(6, 36);
        Integer.toString(7, 36);
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
    }

    public C1804p0(K k8) {
        boolean z7;
        String str;
        this.f20371a = k8.f14260a;
        String strA = Et.a(k8.f14263d);
        this.f20374d = strA;
        if (k8.f14262c.isEmpty() && k8.f14261b != null) {
            this.f20373c = AbstractC2073uA.w(new K1(strA, k8.f14261b));
            this.f20372b = k8.f14261b;
        } else if (k8.f14262c.isEmpty() || k8.f14261b != null) {
            if (!k8.f14262c.isEmpty() || k8.f14261b != null) {
                int i8 = 0;
                while (true) {
                    if (i8 >= k8.f14262c.size()) {
                        z7 = false;
                        break;
                    } else {
                        if (((K1) k8.f14262c.get(i8)).f14288b.equals(k8.f14261b)) {
                            z7 = true;
                            break;
                        }
                        i8++;
                    }
                }
            } else {
                z7 = true;
                break;
            }
            p113o3.r.M(z7);
            this.f20373c = k8.f14262c;
            this.f20372b = k8.f14261b;
        } else {
            List list = k8.f14262c;
            this.f20373c = list;
            Iterator it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    str = ((K1) list.get(0)).f14288b;
                    break;
                }
                K1 k9 = (K1) it.next();
                if (TextUtils.equals(k9.f14287a, strA)) {
                    str = k9.f14288b;
                    break;
                }
            }
            this.f20372b = str;
        }
        this.f20375e = k8.f14264e;
        this.f20376f = k8.f14265f;
        int i9 = k8.f14266g;
        this.f20377g = i9;
        int i10 = k8.f14267h;
        this.f20378h = i10;
        this.f20379i = i10 != -1 ? i10 : i9;
        this.f20380j = k8.f14268i;
        this.f20381k = k8.f14269j;
        this.f20382l = k8.f14270k;
        this.f20383m = k8.f14271l;
        this.f20384n = k8.f14272m;
        this.f20385o = k8.f14273n;
        List list2 = k8.f14274o;
        this.f20386p = list2 == null ? Collections.emptyList() : list2;
        C1672mO c1672mO = k8.f14275p;
        this.f20387q = c1672mO;
        this.f20388r = k8.f14276q;
        this.f20389s = k8.f14277r;
        this.f20390t = k8.f14278s;
        this.f20391u = k8.f14279t;
        int i11 = k8.f14280u;
        this.f20392v = i11 == -1 ? 0 : i11;
        float f8 = k8.f14281v;
        this.f20393w = f8 == -1.0f ? 1.0f : f8;
        this.f20394x = k8.f14282w;
        this.f20395y = k8.f14283x;
        this.f20396z = k8.f14284y;
        this.f20362A = k8.f14285z;
        this.f20363B = k8.f14253A;
        this.f20364C = k8.f14254B;
        int i12 = k8.f14255C;
        this.f20365D = i12 == -1 ? 0 : i12;
        int i13 = k8.f14256D;
        this.f20366E = i13 != -1 ? i13 : 0;
        this.f20367F = k8.f14257E;
        this.f20368G = k8.f14258F;
        int i14 = k8.f14259G;
        if (i14 != 0 || c1672mO == null) {
            this.f20369H = i14;
        } else {
            this.f20369H = 1;
        }
    }

    public final int a() {
        int i8;
        int i9 = this.f20389s;
        if (i9 == -1 || (i8 = this.f20390t) == -1) {
            return -1;
        }
        return i9 * i8;
    }

    public final K b() {
        return new K(this);
    }

    public final boolean c(C1804p0 c1804p0) {
        List list = this.f20386p;
        if (list.size() != c1804p0.f20386p.size()) {
            return false;
        }
        for (int i8 = 0; i8 < list.size(); i8++) {
            if (!Arrays.equals((byte[]) list.get(i8), (byte[]) c1804p0.f20386p.get(i8))) {
                return false;
            }
        }
        return true;
    }

    public final boolean equals(Object obj) {
        int i8;
        if (this == obj) {
            return true;
        }
        if (obj != null && C1804p0.class == obj.getClass()) {
            C1804p0 c1804p0 = (C1804p0) obj;
            int i9 = this.f20370I;
            if ((i9 == 0 || (i8 = c1804p0.f20370I) == 0 || i9 == i8) && this.f20375e == c1804p0.f20375e && this.f20376f == c1804p0.f20376f && this.f20377g == c1804p0.f20377g && this.f20378h == c1804p0.f20378h && this.f20384n == c1804p0.f20384n && this.f20388r == c1804p0.f20388r && this.f20389s == c1804p0.f20389s && this.f20390t == c1804p0.f20390t && this.f20392v == c1804p0.f20392v && this.f20395y == c1804p0.f20395y && this.f20362A == c1804p0.f20362A && this.f20363B == c1804p0.f20363B && this.f20364C == c1804p0.f20364C && this.f20365D == c1804p0.f20365D && this.f20366E == c1804p0.f20366E && this.f20367F == c1804p0.f20367F && this.f20369H == c1804p0.f20369H && Float.compare(this.f20391u, c1804p0.f20391u) == 0 && Float.compare(this.f20393w, c1804p0.f20393w) == 0 && Objects.equals(this.f20371a, c1804p0.f20371a) && Objects.equals(this.f20372b, c1804p0.f20372b) && this.f20373c.equals(c1804p0.f20373c) && Objects.equals(this.f20380j, c1804p0.f20380j) && Objects.equals(this.f20382l, c1804p0.f20382l) && Objects.equals(this.f20383m, c1804p0.f20383m) && Objects.equals(this.f20374d, c1804p0.f20374d) && Arrays.equals(this.f20394x, c1804p0.f20394x) && Objects.equals(this.f20381k, c1804p0.f20381k) && Objects.equals(this.f20396z, c1804p0.f20396z) && Objects.equals(this.f20387q, c1804p0.f20387q) && c(c1804p0)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i8 = this.f20370I;
        if (i8 != 0) {
            return i8;
        }
        String str = this.f20371a;
        int iHashCode = str == null ? 0 : str.hashCode();
        String str2 = this.f20372b;
        int iHashCode2 = this.f20373c.hashCode() + ((((iHashCode + 527) * 31) + (str2 == null ? 0 : str2.hashCode())) * 31);
        String str3 = this.f20374d;
        int iHashCode3 = ((((((((((iHashCode2 * 31) + (str3 == null ? 0 : str3.hashCode())) * 31) + this.f20375e) * 31) + this.f20376f) * 961) + this.f20377g) * 31) + this.f20378h) * 31;
        String str4 = this.f20380j;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        Q9 q9 = this.f20381k;
        int iHashCode5 = (iHashCode4 + (q9 == null ? 0 : q9.hashCode())) * 961;
        String str5 = this.f20382l;
        int iHashCode6 = (iHashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.f20383m;
        int iFloatToIntBits = this.f20369H + ((((((((((((((((((((Float.floatToIntBits(this.f20393w) + ((((Float.floatToIntBits(this.f20391u) + ((((((((((iHashCode6 + (str6 != null ? str6.hashCode() : 0)) * 31) + this.f20384n) * 31) + ((int) this.f20388r)) * 31) + this.f20389s) * 31) + this.f20390t) * 31)) * 31) + this.f20392v) * 31)) * 31) + this.f20395y) * 31) + this.f20362A) * 31) + this.f20363B) * 31) + this.f20364C) * 31) + this.f20365D) * 31) + this.f20366E) * 31) + this.f20367F) * 31) - 1) * 31) - 1) * 31);
        this.f20370I = iFloatToIntBits;
        return iFloatToIntBits;
    }

    public final String toString() {
        String strValueOf = String.valueOf(this.f20396z);
        StringBuilder sb = new StringBuilder("Format(");
        sb.append(this.f20371a);
        sb.append(", ");
        sb.append(this.f20372b);
        sb.append(", ");
        sb.append(this.f20382l);
        sb.append(", ");
        sb.append(this.f20383m);
        sb.append(", ");
        sb.append(this.f20380j);
        sb.append(", ");
        sb.append(this.f20379i);
        sb.append(", ");
        sb.append(this.f20374d);
        sb.append(", [");
        sb.append(this.f20389s);
        sb.append(", ");
        sb.append(this.f20390t);
        sb.append(", ");
        sb.append(this.f20391u);
        sb.append(", ");
        sb.append(strValueOf);
        sb.append("], [");
        sb.append(this.f20362A);
        sb.append(", ");
        return p000a.r.h(sb, this.f20363B, "])");
    }
}
