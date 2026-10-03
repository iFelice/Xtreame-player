package com.google.android.gms.internal.ads;

import java.util.Iterator;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.gB, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC1349gB implements Iterator {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f18910G;

    @Override // java.util.Iterator, java.util.ListIterator
    public /* synthetic */ Object next() {
        switch (this.f18910G) {
            case 1:
                break;
            case 3:
                break;
            case 5:
                break;
        }
        return Byte.valueOf(zza());
    }

    @Override // java.util.Iterator
    public final void remove() {
        switch (this.f18910G) {
            case 0:
                throw new UnsupportedOperationException();
            case 1:
                throw new UnsupportedOperationException();
            case 2:
                throw new UnsupportedOperationException();
            case 3:
                throw new UnsupportedOperationException();
            case 4:
                throw new UnsupportedOperationException();
            case 5:
                throw new UnsupportedOperationException();
            case 6:
                throw new UnsupportedOperationException();
            case 7:
                throw new UnsupportedOperationException();
            default:
                throw new UnsupportedOperationException();
        }
    }

    public abstract byte zza();
}
