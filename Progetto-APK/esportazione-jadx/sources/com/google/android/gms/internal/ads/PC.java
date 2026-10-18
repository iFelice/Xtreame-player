package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class PC implements InterfaceC2127vC {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C2246xc f15347a;

    public PC(C2246xc c2246xc) {
        this.f15347a = c2246xc;
        if (!((C1352gE) c2246xc.f21885K).f18917a.isEmpty()) {
            C1766oE c1766oE = (C1766oE) C1818pE.f20437b.f20439a.get();
            c1766oE = c1766oE == null ? C1818pE.f20438c : c1766oE;
            Cw.Z(c2246xc);
            c1766oE.getClass();
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2127vC
    public final byte[] zza(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        int length = bArr.length;
        C2246xc c2246xc = this.f15347a;
        if (length > 5) {
            List listEmptyList = (List) ((Map) c2246xc.f21882H).get(NG.a(Arrays.copyOf(bArr, 5)));
            if (listEmptyList == null) {
                listEmptyList = Collections.emptyList();
            }
            Iterator it = listEmptyList.iterator();
            while (it.hasNext()) {
                try {
                    return ((InterfaceC2127vC) ((DE) it.next()).f12788a).zza(bArr, bArr2);
                } catch (GeneralSecurityException unused) {
                }
            }
        }
        List listEmptyList2 = (List) ((Map) c2246xc.f21882H).get(NG.a(Cw.f12721e));
        if (listEmptyList2 == null) {
            listEmptyList2 = Collections.emptyList();
        }
        Iterator it2 = listEmptyList2.iterator();
        while (it2.hasNext()) {
            try {
                return ((InterfaceC2127vC) ((DE) it2.next()).f12788a).zza(bArr, bArr2);
            } catch (GeneralSecurityException unused2) {
            }
        }
        throw new GeneralSecurityException("decryption failed");
    }
}
