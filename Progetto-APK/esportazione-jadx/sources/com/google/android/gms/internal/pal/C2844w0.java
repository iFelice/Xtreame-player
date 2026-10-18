package com.google.android.gms.internal.pal;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.w0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2844w0 extends IllegalArgumentException {
    public C2844w0(int i8, int i9) {
        super(com.google.protobuf.U2.j("Unpaired surrogate at index ", i8, " of ", i9));
    }
}
