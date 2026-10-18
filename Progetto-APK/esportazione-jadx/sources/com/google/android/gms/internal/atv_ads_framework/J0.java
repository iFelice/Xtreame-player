package com.google.android.gms.internal.atv_ads_framework;

import com.google.protobuf.U2;

/* JADX INFO: loaded from: classes.dex */
public final class J0 extends IllegalArgumentException {
    public J0(int i8, int i9) {
        super(U2.j("Unpaired surrogate at index ", i8, " of ", i9));
    }
}
