package com.google.android.gms.internal.cast;

import com.google.android.gms.internal.ads.AbstractC1349gB;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
public final class J extends AbstractC1349gB {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public boolean f22473H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ Object f22474I;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public J(Object obj) {
        super(4);
        this.f22474I = obj;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return !this.f22473H;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1349gB, java.util.Iterator, java.util.ListIterator
    public final Object next() {
        if (this.f22473H) {
            throw new NoSuchElementException();
        }
        this.f22473H = true;
        return this.f22474I;
    }
}
