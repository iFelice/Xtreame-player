package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes.dex */
public final class X2 extends IllegalArgumentException {
    public X2(int i8, int i9) {
        super(com.google.protobuf.U2.j("Unpaired surrogate at index ", i8, " of ", i9));
    }
}
