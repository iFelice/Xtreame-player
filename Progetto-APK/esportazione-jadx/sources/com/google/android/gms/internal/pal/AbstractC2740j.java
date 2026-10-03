package com.google.android.gms.internal.pal;

import java.io.IOException;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.j, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC2740j {
    protected int zza;

    public final C2796q a() {
        try {
            int iC = c();
            C2796q c2796q = r.f23990H;
            byte[] bArr = new byte[iC];
            C2835v c2835v = new C2835v(bArr, iC);
            D d6 = (D) this;
            InterfaceC2749k0 interfaceC2749k0A = C2725h0.f23828c.a(d6.getClass());
            C2843w c2843w = c2835v.f24028Q;
            if (c2843w == null) {
                c2843w = new C2843w(c2835v);
            }
            interfaceC2749k0A.b(d6, c2843w);
            if (iC - c2835v.f24031T == 0) {
                return new C2796q(bArr);
            }
            throw new IllegalStateException("Did not write as much data as expected.");
        } catch (IOException e8) {
            throw new RuntimeException(p000a.r.g("Serializing ", getClass().getName(), " to a ByteString threw an IOException (should never happen)."), e8);
        }
    }

    public final byte[] b() {
        try {
            int iC = c();
            byte[] bArr = new byte[iC];
            C2835v c2835v = new C2835v(bArr, iC);
            D d6 = (D) this;
            InterfaceC2749k0 interfaceC2749k0A = C2725h0.f23828c.a(d6.getClass());
            C2843w c2843w = c2835v.f24028Q;
            if (c2843w == null) {
                c2843w = new C2843w(c2835v);
            }
            interfaceC2749k0A.b(d6, c2843w);
            if (iC - c2835v.f24031T == 0) {
                return bArr;
            }
            throw new IllegalStateException("Did not write as much data as expected.");
        } catch (IOException e8) {
            throw new RuntimeException(p000a.r.g("Serializing ", getClass().getName(), " to a byte array threw an IOException (should never happen)."), e8);
        }
    }

    public abstract int c();
}
