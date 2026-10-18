package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.HashSet;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.ag, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public class C1059ag {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f17897a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f17898b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f17899c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AbstractC2073uA f17900d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AbstractC2073uA f17901e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AbstractC2073uA f17902f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final C0820Lf f17903g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public AbstractC2073uA f17904h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f17905i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final HashMap f17906j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final HashSet f17907k;

    public C1059ag() {
        this.f17897a = com.google.android.gms.common.api.d.API_PRIORITY_OTHER;
        this.f17898b = com.google.android.gms.common.api.d.API_PRIORITY_OTHER;
        this.f17899c = true;
        C1969sA c1969sA = AbstractC2073uA.f21207H;
        PA pa = PA.f15340K;
        this.f17900d = pa;
        this.f17901e = pa;
        this.f17902f = pa;
        this.f17903g = C0820Lf.f14524a;
        this.f17904h = pa;
        this.f17905i = 0;
        this.f17906j = new HashMap();
        this.f17907k = new HashSet();
    }

    public C1059ag(C1835pg c1835pg) {
        this.f17897a = c1835pg.f20468a;
        this.f17898b = c1835pg.f20469b;
        this.f17899c = c1835pg.f20470c;
        this.f17900d = c1835pg.f20471d;
        this.f17901e = c1835pg.f20472e;
        this.f17902f = c1835pg.f20473f;
        this.f17903g = c1835pg.f20474g;
        this.f17904h = c1835pg.f20475h;
        this.f17905i = c1835pg.f20476i;
        this.f17907k = new HashSet(c1835pg.f20478k);
        this.f17906j = new HashMap(c1835pg.f20477j);
    }
}
