package com.google.android.gms.internal.pal;

import java.security.GeneralSecurityException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class J4 implements InterfaceC2871z3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final p096m2.i f23565a;

    public J4(p096m2.i iVar) {
        this.f23565a = iVar;
        if (!((M4) iVar.f27227K).f23605a.isEmpty()) {
            C2808r4 c2808r4 = (C2808r4) C2816s4.f23999b.f24001a.get();
            c2808r4 = c2808r4 == null ? C2816s4.f24000c : c2808r4;
            AbstractC2864y4.v(iVar);
            c2808r4.getClass();
        }
    }

    @Override // com.google.android.gms.internal.pal.InterfaceC2871z3
    public final byte[] a(byte[] bArr) throws GeneralSecurityException {
        p096m2.i iVar = this.f23565a;
        if (((A3) iVar.f27225I).f23450f == 4) {
            bArr = AbstractC2864y4.Y(bArr, K4.f23580a);
        }
        byte[][] bArr2 = new byte[2][];
        byte[] bArr3 = ((A3) iVar.f27225I).f23446b;
        bArr2[0] = bArr3 == null ? null : Arrays.copyOf(bArr3, bArr3.length);
        bArr2[1] = ((InterfaceC2871z3) ((A3) iVar.f27225I).f23445a).a(bArr);
        byte[] bArrY = AbstractC2864y4.Y(bArr2);
        ((A3) iVar.f27225I).getClass();
        return bArrY;
    }
}
