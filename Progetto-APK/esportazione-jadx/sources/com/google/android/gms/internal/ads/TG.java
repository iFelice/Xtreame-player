package com.google.android.gms.internal.ads;

import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
public final class TG extends AbstractC1349gB {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public int f16627H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final int f16628I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ XG f16629J;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TG(XG xg) {
        super(1);
        this.f16629J = xg;
        this.f16627H = 0;
        this.f16628I = xg.n();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f16627H < this.f16628I;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1349gB
    public final byte zza() {
        int i8 = this.f16627H;
        if (i8 >= this.f16628I) {
            throw new NoSuchElementException();
        }
        this.f16627H = i8 + 1;
        return this.f16629J.i(i8);
    }
}
