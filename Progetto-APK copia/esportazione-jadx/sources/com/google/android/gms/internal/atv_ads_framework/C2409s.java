package com.google.android.gms.internal.atv_ads_framework;

import com.google.android.gms.internal.ads.AbstractC1349gB;
import java.util.NoSuchElementException;

/* JADX INFO: renamed from: com.google.android.gms.internal.atv_ads_framework.s, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2409s extends AbstractC1349gB {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public boolean f22366H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ Object f22367I;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2409s(Object obj) {
        super(2);
        this.f22367I = obj;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return !this.f22366H;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1349gB, java.util.Iterator, java.util.ListIterator
    public final Object next() {
        if (this.f22366H) {
            throw new NoSuchElementException();
        }
        this.f22366H = true;
        return this.f22367I;
    }
}
