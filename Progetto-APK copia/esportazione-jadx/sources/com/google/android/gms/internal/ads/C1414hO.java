package com.google.android.gms.internal.ads;

import android.content.res.Configuration;
import android.content.res.Resources;
import android.text.TextUtils;
import java.util.Comparator;
import java.util.Objects;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.hO, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1414hO extends AbstractC1880qO implements Comparable {

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final int f19090K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final boolean f19091L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final String f19092M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final C1620lO f19093N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final boolean f19094O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final int f19095P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public final int f19096Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public final int f19097R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public final boolean f19098S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public final int f19099T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public final int f19100U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public final boolean f19101V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public final int f19102W;

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public final int f19103X;

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public final int f19104Y;

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public final int f19105Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public final boolean f19106a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public final boolean f19107b0;

    public C1414hO(int i8, C0961Ve c0961Ve, int i9, C1620lO c1620lO, int i10, boolean z7, C1362gO c1362gO) {
        int i11;
        int iF;
        int iF2;
        boolean z8;
        super(i8, c0961Ve, i9);
        this.f19093N = c1620lO;
        int i12 = 1;
        int i13 = true != c1620lO.f19792o ? 16 : 24;
        this.f19092M = C1983sO.g(this.f20585J.f20374d);
        this.f19094O = Cw.g0(i10, false);
        int i14 = 0;
        while (true) {
            AbstractC2073uA abstractC2073uA = c1620lO.f20472e;
            int size = abstractC2073uA.size();
            i11 = com.google.android.gms.common.api.d.API_PRIORITY_OTHER;
            if (i14 >= size) {
                i14 = com.google.android.gms.common.api.d.API_PRIORITY_OTHER;
                iF = 0;
                break;
            } else {
                iF = C1983sO.f(this.f20585J, (String) abstractC2073uA.get(i14), false);
                if (iF > 0) {
                    break;
                } else {
                    i14++;
                }
            }
        }
        this.f19096Q = i14;
        this.f19095P = iF;
        this.f19097R = C1983sO.e(this.f20585J.f20376f, 0);
        C1804p0 c1804p0 = this.f20585J;
        int i15 = c1804p0.f20376f;
        this.f19098S = i15 == 0 || (i15 & 1) != 0;
        this.f19101V = 1 == (c1804p0.f20375e & 1);
        this.f19102W = c1804p0.f20362A;
        this.f19103X = c1804p0.f20363B;
        this.f19104Y = c1804p0.f20379i;
        this.f19091L = c1362gO.zza(c1804p0);
        Configuration configuration = Resources.getSystem().getConfiguration();
        String[] strArrSplit = Et.f13234a >= 24 ? configuration.getLocales().toLanguageTags().split(",", -1) : new String[]{configuration.locale.toLanguageTag()};
        for (int i16 = 0; i16 < strArrSplit.length; i16++) {
            strArrSplit[i16] = Et.a(strArrSplit[i16]);
        }
        int i17 = 0;
        while (true) {
            if (i17 >= strArrSplit.length) {
                i17 = com.google.android.gms.common.api.d.API_PRIORITY_OTHER;
                iF2 = 0;
                break;
            } else {
                iF2 = C1983sO.f(this.f20585J, strArrSplit[i17], false);
                if (iF2 > 0) {
                    break;
                } else {
                    i17++;
                }
            }
        }
        this.f19099T = i17;
        this.f19100U = iF2;
        int i18 = 0;
        while (true) {
            AbstractC2073uA abstractC2073uA2 = c1620lO.f20473f;
            if (i18 >= abstractC2073uA2.size()) {
                break;
            }
            String str = this.f20585J.f20383m;
            if (str != null && str.equals(abstractC2073uA2.get(i18))) {
                i11 = i18;
                break;
            }
            i18++;
        }
        this.f19105Z = i11;
        this.f19106a0 = (i10 & 384) == 128;
        this.f19107b0 = (i10 & 64) == 64;
        C1620lO c1620lO2 = this.f19093N;
        if (!Cw.g0(i10, c1620lO2.f19794q) || (!(z8 = this.f19091L) && !c1620lO2.f19791n)) {
            i12 = 0;
        } else if (Cw.g0(i10, false) && z8 && this.f20585J.f20379i != -1 && ((c1620lO2.f19795r || !z7) && (i13 & i10) != 0)) {
            i12 = 2;
        }
        this.f19090K = i12;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1880qO
    public final int a() {
        return this.f19090K;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1880qO
    public final /* bridge */ /* synthetic */ boolean b(AbstractC1880qO abstractC1880qO) {
        String str;
        int i8;
        C1414hO c1414hO = (C1414hO) abstractC1880qO;
        this.f19093N.getClass();
        C1804p0 c1804p0 = this.f20585J;
        int i9 = c1804p0.f20362A;
        if (i9 == -1) {
            return false;
        }
        C1804p0 c1804p1 = c1414hO.f20585J;
        return i9 == c1804p1.f20362A && (str = c1804p0.f20383m) != null && TextUtils.equals(str, c1804p1.f20383m) && (i8 = c1804p0.f20363B) != -1 && i8 == c1804p1.f20363B && this.f19106a0 == c1414hO.f19106a0 && this.f19107b0 == c1414hO.f19107b0;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public final int compareTo(C1414hO c1414hO) {
        Comparator xa;
        boolean z7 = this.f19094O;
        boolean z8 = this.f19091L;
        if (z8 && z7) {
            xa = C1983sO.f20895j;
        } else {
            C1554kA c1554kA = C1983sO.f20895j;
            c1554kA.getClass();
            xa = new XA(c1554kA);
        }
        AbstractC1710nA abstractC1710nAD = AbstractC1710nA.f20074a.d(z7, c1414hO.f19094O);
        Integer numValueOf = Integer.valueOf(this.f19096Q);
        Integer numValueOf2 = Integer.valueOf(c1414hO.f19096Q);
        NA.f14891G.getClass();
        WA wa = WA.f17175G;
        AbstractC1710nA abstractC1710nAC = abstractC1710nAD.c(numValueOf, numValueOf2, wa).b(this.f19095P, c1414hO.f19095P).b(this.f19097R, c1414hO.f19097R).d(this.f19101V, c1414hO.f19101V).d(this.f19098S, c1414hO.f19098S).c(Integer.valueOf(this.f19099T), Integer.valueOf(c1414hO.f19099T), wa).b(this.f19100U, c1414hO.f19100U).d(z8, c1414hO.f19091L).c(Integer.valueOf(this.f19105Z), Integer.valueOf(c1414hO.f19105Z), wa);
        this.f19093N.getClass();
        AbstractC1710nA abstractC1710nAC2 = abstractC1710nAC.d(this.f19106a0, c1414hO.f19106a0).d(this.f19107b0, c1414hO.f19107b0).c(Integer.valueOf(this.f19102W), Integer.valueOf(c1414hO.f19102W), xa).c(Integer.valueOf(this.f19103X), Integer.valueOf(c1414hO.f19103X), xa);
        if (Objects.equals(this.f19092M, c1414hO.f19092M)) {
            abstractC1710nAC2 = abstractC1710nAC2.c(Integer.valueOf(this.f19104Y), Integer.valueOf(c1414hO.f19104Y), xa);
        }
        return abstractC1710nAC2.a();
    }
}
