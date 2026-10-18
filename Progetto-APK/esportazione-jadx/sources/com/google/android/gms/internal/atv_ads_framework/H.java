package com.google.android.gms.internal.atv_ads_framework;

import com.google.android.gms.internal.ads.AbstractC1349gB;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
public final class H extends AbstractC1349gB {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public int f22258H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final int f22259I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ J f22260J;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public H(J j8) {
        super(3);
        this.f22260J = j8;
        this.f22258H = 0;
        this.f22259I = j8.n();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f22258H < this.f22259I;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1349gB
    public final byte zza() {
        int i8 = this.f22258H;
        if (i8 >= this.f22259I) {
            throw new NoSuchElementException();
        }
        this.f22258H = i8 + 1;
        return this.f22260J.l(i8);
    }
}
