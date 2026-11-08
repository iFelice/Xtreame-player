package com.google.android.gms.internal.ads;

import android.util.Base64;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.cw, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1178cw {
    public static final String a(byte[] bArr, byte[] bArr2, String str, C0693Cn c0693Cn) {
        p004a3.b bVarA;
        try {
            try {
                bVarA = Cw.A(new Xu(new ByteArrayInputStream(Base64.decode(str, 11)), 19));
            } catch (IOException unused) {
                throw new GeneralSecurityException("Parse keyset failed");
            }
        } catch (GeneralSecurityException e8) {
            p113o3.I.k("Failed to get keysethandle".concat(e8.toString()));
            p083k3.l.f25980A.f25987g.i("CryptoUtils.getHandle", e8);
            bVarA = null;
        }
        if (bVarA == null) {
            return null;
        }
        try {
            byte[] bArrZza = ((InterfaceC2127vC) bVarA.u()).zza(bArr, bArr2);
            c0693Cn.f12691a.put("ds", "1");
            return new String(bArrZza, "UTF-8");
        } catch (UnsupportedEncodingException | UnsupportedOperationException | GeneralSecurityException e9) {
            p113o3.I.k("Failed to decrypt ".concat(e9.toString()));
            p083k3.l.f25980A.f25987g.i("CryptoUtils.decrypt", e9);
            c0693Cn.f12691a.put("dsf", e9.toString());
            return null;
        }
    }
}
