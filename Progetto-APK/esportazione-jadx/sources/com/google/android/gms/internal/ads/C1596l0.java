package com.google.android.gms.internal.ads;

import org.videolan.libvlc.interfaces.IMediaList;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.l0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1596l0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InterfaceC1234e0 f19684a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f19685b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f19686c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f19687d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f19688e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f19689f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f19690g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f19691h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f19692i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f19693j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long f19694k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public long[] f19695l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int[] f19696m;

    public C1596l0(int i8, int i9, long j8, int i10, InterfaceC1234e0 interfaceC1234e0) {
        i9 = i9 != 1 ? 2 : i9;
        this.f19687d = j8;
        this.f19688e = i10;
        this.f19684a = interfaceC1234e0;
        int i11 = (((i8 % 10) + 48) << 8) | ((i8 / 10) + 48);
        this.f19685b = (i9 == 2 ? 1667497984 : 1651965952) | i11;
        this.f19686c = i9 == 2 ? i11 | 1650720768 : -1;
        this.f19694k = -1L;
        this.f19695l = new long[IMediaList.Event.ItemAdded];
        this.f19696m = new int[IMediaList.Event.ItemAdded];
    }

    public final X a(long j8) {
        if (this.f19693j == 0) {
            Z z7 = new Z(0L, this.f19694k);
            return new X(z7, z7);
        }
        int i8 = (int) (j8 / ((this.f19687d * ((long) 1)) / ((long) this.f19688e)));
        int iJ = Et.j(this.f19696m, i8, true, true);
        if (this.f19696m[iJ] == i8) {
            Z zB = b(iJ);
            return new X(zB, zB);
        }
        Z zB2 = b(iJ);
        int i9 = iJ + 1;
        return i9 < this.f19695l.length ? new X(zB2, b(i9)) : new X(zB2, zB2);
    }

    public final Z b(int i8) {
        return new Z(((this.f19687d * ((long) 1)) / ((long) this.f19688e)) * ((long) this.f19696m[i8]), this.f19695l[i8]);
    }
}
