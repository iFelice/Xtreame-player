package com.google.android.gms.internal.ads;

import java.util.HashSet;
import java.util.SortedSet;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.pg, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public class C1835pg {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f20468a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f20469b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f20470c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AbstractC2073uA f20471d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AbstractC2073uA f20472e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AbstractC2073uA f20473f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final C0820Lf f20474g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AbstractC2073uA f20475h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f20476i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final UA f20477j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final AbstractC2333zA f20478k;

    static {
        new C1835pg(new C1059ag());
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
    }

    /* JADX WARN: Code duplicated, block: B:9:0x0043  */
    /* JADX WARN: Multi-variable type inference failed */
    public C1835pg(C1059ag c1059ag) {
        AbstractC2333zA abstractC2333zAU;
        this.f20468a = c1059ag.f17897a;
        this.f20469b = c1059ag.f17898b;
        this.f20470c = c1059ag.f17899c;
        this.f20471d = c1059ag.f17900d;
        this.f20472e = c1059ag.f17901e;
        this.f20473f = c1059ag.f17902f;
        this.f20474g = c1059ag.f17903g;
        this.f20475h = c1059ag.f17904h;
        this.f20476i = c1059ag.f17905i;
        this.f20477j = AbstractC2229xA.a(c1059ag.f17906j);
        HashSet hashSet = c1059ag.f17907k;
        if (!(hashSet instanceof AbstractC2333zA) || (hashSet instanceof SortedSet)) {
            Object[] array = hashSet.toArray();
            abstractC2333zAU = AbstractC2333zA.u(array.length, array);
        } else {
            abstractC2333zAU = (AbstractC2333zA) hashSet;
            if (abstractC2333zAU.o()) {
                Object[] array2 = hashSet.toArray();
                abstractC2333zAU = AbstractC2333zA.u(array2.length, array2);
            }
        }
        this.f20478k = abstractC2333zAU;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            C1835pg c1835pg = (C1835pg) obj;
            if (this.f20470c == c1835pg.f20470c && this.f20468a == c1835pg.f20468a && this.f20469b == c1835pg.f20469b && this.f20471d.equals(c1835pg.f20471d) && this.f20472e.equals(c1835pg.f20472e) && this.f20473f.equals(c1835pg.f20473f) && this.f20474g.equals(c1835pg.f20474g) && this.f20475h.equals(c1835pg.f20475h) && this.f20476i == c1835pg.f20476i) {
                UA ua = this.f20477j;
                ua.getClass();
                if (p113o3.r.z(c1835pg.f20477j, ua) && this.f20478k.equals(c1835pg.f20478k)) {
                    return true;
                }
            }
        }
        return false;
    }

    public int hashCode() {
        return this.f20478k.hashCode() + ((this.f20477j.hashCode() + ((((this.f20475h.hashCode() + ((((this.f20473f.hashCode() + ((((((this.f20472e.hashCode() + ((this.f20471d.hashCode() + (((((((this.f20470c ? 1 : 0) - 1048002209) * 31) + this.f20468a) * 31) + this.f20469b) * 31)) * 961)) * 961) + com.google.android.gms.common.api.d.API_PRIORITY_OTHER) * 31) + com.google.android.gms.common.api.d.API_PRIORITY_OTHER) * 31)) * 31) + 29791) * 31)) * 31) + this.f20476i) * 887503681)) * 31);
    }
}
