package com.google.ads.interactivemedia.v3.internal;

import com.google.protobuf.U2;

/* JADX INFO: loaded from: classes.dex */
final class zzagq extends IllegalArgumentException {
    public zzagq(int i8, int i9) {
        super(U2.j("Unpaired surrogate at index ", i8, " of ", i9));
    }
}
