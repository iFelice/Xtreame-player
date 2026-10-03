package com.google.android.gms.internal.atv_ads_framework;

import p039f.AbstractC2987b;

/* JADX INFO: renamed from: com.google.android.gms.internal.atv_ads_framework.d, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2380d extends AbstractC2987b {
    public final String toString() {
        char[] cArr = {'\\', 'u', 0, 0, 0, 0};
        int i8 = 58;
        for (int i9 = 0; i9 < 4; i9++) {
            cArr[5 - i9] = "0123456789ABCDEF".charAt(i8 & 15);
            i8 >>= 4;
        }
        return p000a.r.g("CharMatcher.is('", String.copyValueOf(cArr), "')");
    }
}
