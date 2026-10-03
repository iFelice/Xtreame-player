package com.google.protobuf;

import java.util.Iterator;

/* JADX INFO: renamed from: com.google.protobuf.p, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2935p extends r {
    public AbstractC2935p() {
        this.f24493G = 0;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new C2919l(this);
    }
}
