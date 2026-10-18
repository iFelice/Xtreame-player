package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public abstract class OG implements Cloneable {
    public final void a(byte[] bArr, C1509jH c1509jH) throws AH {
        int length = bArr.length;
        AbstractC1769oH abstractC1769oH = (AbstractC1769oH) this;
        abstractC1769oH.d();
        try {
            UH.f16822c.a(abstractC1769oH.f20255H.getClass()).c(abstractC1769oH.f20255H, bArr, 0, length, new SG(c1509jH));
        } catch (AH e8) {
            throw e8;
        } catch (IOException e9) {
            throw new RuntimeException("Reading from byte array should not throw IOException.", e9);
        } catch (IndexOutOfBoundsException unused) {
            throw new AH("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
    }
}
