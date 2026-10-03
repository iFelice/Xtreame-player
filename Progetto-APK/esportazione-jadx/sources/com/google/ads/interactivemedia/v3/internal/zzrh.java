package com.google.ads.interactivemedia.v3.internal;

import com.google.android.gms.common.api.d;

/* JADX INFO: loaded from: classes.dex */
public final class zzrh {
    public static int zza(int i8, int i9) {
        if (i9 < 0) {
            throw new IllegalArgumentException("cannot store more than MAX_VALUE elements");
        }
        if (i9 <= i8) {
            return i8;
        }
        int i10 = i8 + (i8 >> 1) + 1;
        if (i10 < i9) {
            int iHighestOneBit = Integer.highestOneBit(i9 - 1);
            i10 = iHighestOneBit + iHighestOneBit;
        }
        return i10 < 0 ? d.API_PRIORITY_OTHER : i10;
    }
}
