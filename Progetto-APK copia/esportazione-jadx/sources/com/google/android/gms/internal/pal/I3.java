package com.google.android.gms.internal.pal;

import java.security.GeneralSecurityException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class I3 implements InterfaceC2768m3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final p096m2.i f23557a;

    public I3(p096m2.i iVar) {
        this.f23557a = iVar;
        if (!((M4) iVar.f27227K).f23605a.isEmpty()) {
            C2808r4 c2808r4 = (C2808r4) C2816s4.f23999b.f24001a.get();
            c2808r4 = c2808r4 == null ? C2816s4.f24000c : c2808r4;
            AbstractC2864y4.v(iVar);
            c2808r4.getClass();
        }
    }

    @Override // com.google.android.gms.internal.pal.InterfaceC2768m3
    public final byte[] zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        byte[][] bArr3 = new byte[2][];
        p096m2.i iVar = this.f23557a;
        byte[] bArr4 = ((A3) iVar.f27225I).f23446b;
        bArr3[0] = bArr4 == null ? null : Arrays.copyOf(bArr4, bArr4.length);
        bArr3[1] = ((InterfaceC2768m3) ((A3) iVar.f27225I).f23445a).zza(bArr, bArr2);
        byte[] bArrY = AbstractC2864y4.Y(bArr3);
        ((A3) iVar.f27225I).getClass();
        int length = bArr.length;
        return bArrY;
    }
}
