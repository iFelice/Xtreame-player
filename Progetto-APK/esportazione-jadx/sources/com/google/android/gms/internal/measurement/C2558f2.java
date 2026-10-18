package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.ads.AbstractC1349gB;
import java.util.NoSuchElementException;

/* JADX INFO: renamed from: com.google.android.gms.internal.measurement.f2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2558f2 extends AbstractC1349gB {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public int f23124H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final int f23125I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ AbstractC2576i2 f23126J;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2558f2(AbstractC2576i2 abstractC2576i2) {
        super(7);
        this.f23126J = abstractC2576i2;
        this.f23124H = 0;
        this.f23125I = abstractC2576i2.n();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f23124H < this.f23125I;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1349gB
    public final byte zza() {
        int i8 = this.f23124H;
        if (i8 >= this.f23125I) {
            throw new NoSuchElementException();
        }
        this.f23124H = i8 + 1;
        return this.f23126J.l(i8);
    }
}
