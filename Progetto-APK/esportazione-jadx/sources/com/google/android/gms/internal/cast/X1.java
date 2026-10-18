package com.google.android.gms.internal.cast;

import com.google.android.gms.internal.ads.AbstractC1349gB;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
public final class X1 extends AbstractC1349gB {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public int f22558H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final int f22559I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ Z1 f22560J;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public X1(Z1 z7) {
        super(5);
        this.f22560J = z7;
        this.f22558H = 0;
        this.f22559I = z7.n();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f22558H < this.f22559I;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1349gB
    public final byte zza() {
        int i8 = this.f22558H;
        if (i8 >= this.f22559I) {
            throw new NoSuchElementException();
        }
        this.f22558H = i8 + 1;
        return this.f22560J.l(i8);
    }
}
