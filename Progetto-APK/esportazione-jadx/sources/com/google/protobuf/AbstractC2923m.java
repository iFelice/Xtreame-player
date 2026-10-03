package com.google.protobuf;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: renamed from: com.google.protobuf.m, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2923m implements Iterator {
    @Override // java.util.Iterator
    public final Object next() {
        C2919l c2919l = (C2919l) this;
        int i8 = c2919l.f24465G;
        if (i8 >= c2919l.f24466H) {
            throw new NoSuchElementException();
        }
        c2919l.f24465G = i8 + 1;
        return Byte.valueOf(c2919l.f24467I.n(i8));
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
