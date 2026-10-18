package com.google.android.gms.internal.ads;

import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
public final class YH extends AbstractC1349gB {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final ZH f17596H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public AbstractC1349gB f17597I;

    public YH(C1046aI c1046aI) {
        super(1);
        this.f17596H = new ZH(c1046aI);
        this.f17597I = a();
    }

    public final TG a() {
        ZH zh = this.f17596H;
        if (zh.hasNext()) {
            return new TG(zh.next());
        }
        return null;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f17597I != null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1349gB
    public final byte zza() {
        AbstractC1349gB abstractC1349gB = this.f17597I;
        if (abstractC1349gB == null) {
            throw new NoSuchElementException();
        }
        byte bZza = abstractC1349gB.zza();
        if (!this.f17597I.hasNext()) {
            this.f17597I = a();
        }
        return bZza;
    }
}
