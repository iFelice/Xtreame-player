package com.google.android.gms.internal.ads;

import p039f.AbstractC2987b;

/* JADX INFO: loaded from: classes.dex */
public final class Bz extends Ez {

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final /* synthetic */ Xu f12526L;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Bz(Xu xu, CharSequence charSequence) {
        super(charSequence);
        this.f12526L = xu;
    }

    @Override // com.google.android.gms.internal.ads.Ez
    public final int d(int i8) {
        return i8 + 1;
    }

    @Override // com.google.android.gms.internal.ads.Ez
    public final int e(int i8) {
        CharSequence charSequence = this.f13258I;
        int length = charSequence.length();
        AbstractC2987b.o0(i8, length);
        while (i8 < length) {
            if (((AbstractC2009sz) this.f12526L.f17529H).a(charSequence.charAt(i8))) {
                return i8;
            }
            i8++;
        }
        return -1;
    }
}
