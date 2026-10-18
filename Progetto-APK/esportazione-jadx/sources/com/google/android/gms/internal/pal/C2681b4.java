package com.google.android.gms.internal.pal;

import java.security.GeneralSecurityException;
import java.util.Arrays;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.b4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2681b4 implements InterfaceC2792p3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final p096m2.i f23735a;

    public C2681b4(p096m2.i iVar) {
        this.f23735a = iVar;
    }

    @Override // com.google.android.gms.internal.pal.InterfaceC2792p3
    public final byte[] zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        p096m2.i iVar = this.f23735a;
        A3 a8 = (A3) iVar.f27225I;
        if (a8 == null) {
            throw new GeneralSecurityException("keyset without primary key");
        }
        byte[] bArr3 = a8.f23446b;
        return AbstractC2864y4.Y(bArr3 == null ? null : Arrays.copyOf(bArr3, bArr3.length), ((InterfaceC2792p3) ((A3) iVar.f27225I).f23445a).zza(bArr, bArr2));
    }
}
