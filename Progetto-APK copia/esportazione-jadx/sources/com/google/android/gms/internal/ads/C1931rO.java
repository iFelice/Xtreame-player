package com.google.android.gms.internal.ads;

import java.util.Objects;
import okhttp3.internal.http2.Http2;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.rO, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1931rO extends AbstractC1880qO {

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final boolean f20724K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final C1620lO f20725L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final boolean f20726M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final boolean f20727N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final boolean f20728O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final int f20729P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public final int f20730Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public final int f20731R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public final int f20732S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public final boolean f20733T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public final int f20734U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public final boolean f20735V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public final boolean f20736W;

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public final int f20737X;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:13:0x0025  */
    /* JADX WARN: Code duplicated, block: B:21:0x0036  */
    /* JADX WARN: Code duplicated, block: B:65:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:68:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:97:0x0122  */
    public C1931rO(int i8, C0961Ve c0961Ve, int i9, C1620lO c1620lO, int i10, boolean z7) {
        boolean z8;
        boolean z9;
        int i11;
        boolean z10;
        C1804p0 c1804p0;
        int i12;
        int i13;
        int i14;
        super(i8, c0961Ve, i9);
        this.f20725L = c1620lO;
        int i15 = 1;
        int i16 = true != c1620lO.f19790m ? 16 : 24;
        if (z7) {
            C1804p0 c1804p1 = this.f20585J;
            int i17 = c1804p1.f20389s;
            float f8 = c1804p1.f20391u;
            if (f8 == -1.0f || f8 <= 2.1474836E9f) {
                z8 = true;
            } else {
                z8 = false;
            }
        } else {
            z8 = false;
        }
        this.f20724K = z8;
        if (!z7 || (((i12 = (c1804p0 = this.f20585J).f20389s) != -1 && i12 < 0) || ((i13 = c1804p0.f20390t) != -1 && i13 < 0))) {
            z9 = false;
        } else {
            float f9 = c1804p0.f20391u;
            if ((f9 == -1.0f || f9 >= 0.0f) && ((i14 = c1804p0.f20379i) == -1 || i14 >= 0)) {
                z9 = true;
            } else {
                z9 = false;
            }
        }
        this.f20726M = z9;
        this.f20727N = Cw.g0(i10, false);
        C1804p0 c1804p2 = this.f20585J;
        float f10 = c1804p2.f20391u;
        this.f20728O = f10 != -1.0f && f10 >= 10.0f;
        this.f20729P = c1804p2.f20379i;
        this.f20730Q = c1804p2.a();
        this.f20732S = C1983sO.e(this.f20585J.f20376f, 0);
        int i18 = this.f20585J.f20376f;
        this.f20733T = i18 == 0 || (i18 & 1) != 0;
        int i19 = 0;
        while (true) {
            AbstractC2073uA abstractC2073uA = c1620lO.f20471d;
            if (i19 >= abstractC2073uA.size()) {
                i19 = com.google.android.gms.common.api.d.API_PRIORITY_OTHER;
                break;
            }
            String str = this.f20585J.f20383m;
            if (str != null && str.equals(abstractC2073uA.get(i19))) {
                break;
            } else {
                i19++;
            }
        }
        this.f20731R = i19;
        this.f20735V = (i10 & 384) == 128;
        this.f20736W = (i10 & 64) == 64;
        C1804p0 c1804p3 = this.f20585J;
        String str2 = c1804p3.f20383m;
        if (str2 != null) {
            i11 = 3;
            switch (str2) {
                case "video/dolby-vision":
                    i11 = 5;
                    break;
                case "video/av01":
                    i11 = 4;
                    break;
                case "video/hevc":
                    break;
                case "video/avc":
                    i11 = 1;
                    break;
                case "video/x-vnd.on2.vp9":
                    i11 = 2;
                    break;
                default:
                    i11 = 0;
                    break;
            }
        } else {
            i11 = 0;
        }
        this.f20737X = i11;
        if ((c1804p3.f20376f & Http2.INITIAL_MAX_FRAME_SIZE) != 0) {
            i15 = 0;
        } else {
            C1620lO c1620lO2 = this.f20725L;
            if (!Cw.g0(i10, c1620lO2.f19794q) || (!(z10 = this.f20724K) && !c1620lO2.f19789l)) {
                i15 = 0;
            } else if (Cw.g0(i10, false) && this.f20726M && z10 && c1804p3.f20379i != -1 && (i16 & i10) != 0) {
                i15 = 2;
            }
        }
        this.f20734U = i15;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1880qO
    public final int a() {
        return this.f20734U;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1880qO
    public final /* bridge */ /* synthetic */ boolean b(AbstractC1880qO abstractC1880qO) {
        C1931rO c1931rO = (C1931rO) abstractC1880qO;
        if (!Objects.equals(this.f20585J.f20383m, c1931rO.f20585J.f20383m)) {
            return false;
        }
        this.f20725L.getClass();
        return this.f20735V == c1931rO.f20735V && this.f20736W == c1931rO.f20736W;
    }
}
