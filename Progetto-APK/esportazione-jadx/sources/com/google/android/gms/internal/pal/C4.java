package com.google.android.gms.internal.pal;

import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes.dex */
public final class C4 extends AbstractC2864y4 {

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public final F4 f23481Q;

    public C4(F4 f8) {
        this.f23481Q = f8;
    }

    public static C4 I0(F4 f8, C2805r1 c2805r1, Integer num) throws GeneralSecurityException {
        if (c2805r1.b() != 32) {
            throw new GeneralSecurityException("Invalid key size");
        }
        E4 e8 = E4.f23500e;
        E4 e9 = f8.f23530R;
        if (e9 != e8 && num == null) {
            throw new GeneralSecurityException("Cannot create key without ID requirement with format with ID requirement");
        }
        if (e9 == e8 && num != null) {
            throw new GeneralSecurityException("Cannot create key with ID requirement with format without ID requirement");
        }
        return new C4(f8);
    }

    @Override // com.google.android.gms.internal.pal.AbstractC2864y4
    public final /* synthetic */ AbstractC2864y4 i() {
        return this.f23481Q;
    }
}
