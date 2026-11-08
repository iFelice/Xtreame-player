package com.google.android.gms.internal.pal;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.o, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC2780o implements Iterator {
    @Override // java.util.Iterator
    public final Object next() {
        C2764m c2764m = (C2764m) this;
        int i8 = c2764m.f23949G;
        if (i8 >= c2764m.f23950H) {
            throw new NoSuchElementException();
        }
        c2764m.f23949G = i8 + 1;
        return Byte.valueOf(c2764m.f23951I.c(i8));
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
