package com.google.protobuf;

/* JADX INFO: loaded from: classes2.dex */
public final class J2 extends IllegalArgumentException {
    public J2(int i8, int i9) {
        super(U2.j("Unpaired surrogate at index ", i8, " of ", i9));
    }
}
