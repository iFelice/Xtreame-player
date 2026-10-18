package com.google.android.gms.internal.ads;

import java.util.Comparator;
import okhttp3.HttpUrl;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.oO, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1776oO extends AbstractC1880qO implements Comparable {

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final int f20280K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final boolean f20281L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final boolean f20282M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final boolean f20283N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final int f20284O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final int f20285P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public final int f20286Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public final int f20287R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public final boolean f20288S;

    public C1776oO(int i8, C0961Ve c0961Ve, int i9, C1620lO c1620lO, int i10, String str) {
        int iF;
        super(i8, c0961Ve, i9);
        int i11 = 0;
        this.f20281L = Cw.g0(i10, false);
        int i12 = this.f20585J.f20375e;
        c1620lO.getClass();
        this.f20282M = 1 == (i12 & 1);
        this.f20283N = (i12 & 2) != 0;
        AbstractC2073uA abstractC2073uA = c1620lO.f20475h;
        AbstractC2073uA abstractC2073uAW = abstractC2073uA.isEmpty() ? AbstractC2073uA.w(HttpUrl.FRAGMENT_ENCODE_SET) : abstractC2073uA;
        int i13 = 0;
        while (true) {
            if (i13 >= abstractC2073uAW.size()) {
                i13 = com.google.android.gms.common.api.d.API_PRIORITY_OTHER;
                iF = 0;
                break;
            } else {
                iF = C1983sO.f(this.f20585J, (String) abstractC2073uAW.get(i13), false);
                if (iF > 0) {
                    break;
                } else {
                    i13++;
                }
            }
        }
        this.f20284O = i13;
        this.f20285P = iF;
        int iE = C1983sO.e(this.f20585J.f20376f, c1620lO.f20476i);
        this.f20286Q = iE;
        this.f20288S = (this.f20585J.f20376f & 1088) != 0;
        int iF2 = C1983sO.f(this.f20585J, str, C1983sO.g(str) == null);
        this.f20287R = iF2;
        boolean z7 = iF > 0 || (abstractC2073uA.isEmpty() && iE > 0) || this.f20282M || (this.f20283N && iF2 > 0);
        if (Cw.g0(i10, c1620lO.f19794q) && z7) {
            i11 = 1;
        }
        this.f20280K = i11;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1880qO
    public final int a() {
        return this.f20280K;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1880qO
    public final /* bridge */ /* synthetic */ boolean b(AbstractC1880qO abstractC1880qO) {
        return false;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public final int compareTo(C1776oO c1776oO) {
        AbstractC1710nA abstractC1710nAD = AbstractC1710nA.f20074a.d(this.f20281L, c1776oO.f20281L);
        Integer numValueOf = Integer.valueOf(this.f20284O);
        Integer numValueOf2 = Integer.valueOf(c1776oO.f20284O);
        Comparator comparator = NA.f14891G;
        comparator.getClass();
        WA wa = WA.f17175G;
        AbstractC1710nA abstractC1710nAC = abstractC1710nAD.c(numValueOf, numValueOf2, wa);
        int i8 = this.f20285P;
        AbstractC1710nA abstractC1710nAB = abstractC1710nAC.b(i8, c1776oO.f20285P);
        int i9 = this.f20286Q;
        AbstractC1710nA abstractC1710nAD2 = abstractC1710nAB.b(i9, c1776oO.f20286Q).d(this.f20282M, c1776oO.f20282M);
        Boolean boolValueOf = Boolean.valueOf(this.f20283N);
        Boolean boolValueOf2 = Boolean.valueOf(c1776oO.f20283N);
        if (i8 != 0) {
            comparator = wa;
        }
        AbstractC1710nA abstractC1710nAB2 = abstractC1710nAD2.c(boolValueOf, boolValueOf2, comparator).b(this.f20287R, c1776oO.f20287R);
        if (i9 == 0) {
            abstractC1710nAB2 = abstractC1710nAB2.e(this.f20288S, c1776oO.f20288S);
        }
        return abstractC1710nAB2.a();
    }
}
