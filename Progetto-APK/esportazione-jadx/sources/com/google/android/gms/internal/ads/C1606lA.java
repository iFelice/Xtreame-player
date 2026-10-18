package com.google.android.gms.internal.ads;

import java.util.Comparator;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.lA, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1606lA extends AbstractC1710nA {
    public static final AbstractC1710nA f(int i8) {
        if (i8 < 0) {
            return AbstractC1710nA.f20075b;
        }
        return i8 > 0 ? AbstractC1710nA.f20076c : AbstractC1710nA.f20074a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1710nA
    public final int a() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1710nA
    public final AbstractC1710nA b(int i8, int i9) {
        return f(Integer.compare(i8, i9));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1710nA
    public final AbstractC1710nA c(Object obj, Object obj2, Comparator comparator) {
        return f(comparator.compare(obj, obj2));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1710nA
    public final AbstractC1710nA d(boolean z7, boolean z8) {
        return f(Boolean.compare(z7, z8));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1710nA
    public final AbstractC1710nA e(boolean z7, boolean z8) {
        return f(Boolean.compare(z8, z7));
    }
}
