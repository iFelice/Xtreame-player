package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.nio.charset.Charset;
import java.util.AbstractCollection;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public abstract class PG implements NH {
    protected int zzq;

    /* JADX WARN: Multi-variable type inference failed */
    public static void c(AbstractCollection abstractCollection, InterfaceC2236xH interfaceC2236xH) {
        Charset charset = AbstractC2288yH.f22010a;
        abstractCollection.getClass();
        if (abstractCollection instanceof TH) {
            interfaceC2236xH.addAll(abstractCollection);
            return;
        }
        if (interfaceC2236xH instanceof ArrayList) {
            ((ArrayList) interfaceC2236xH).ensureCapacity(abstractCollection.size() + interfaceC2236xH.size());
        }
        int size = interfaceC2236xH.size();
        for (Object obj : abstractCollection) {
            if (obj == null) {
                String strY = A0.O.y("Element at index ", interfaceC2236xH.size() - size, " is null.");
                int size2 = interfaceC2236xH.size();
                while (true) {
                    size2--;
                    if (size2 < size) {
                        throw new NullPointerException(strY);
                    }
                    interfaceC2236xH.remove(size2);
                }
            } else {
                interfaceC2236xH.add(obj);
            }
        }
    }

    public abstract int a(InterfaceC1098bI interfaceC1098bI);

    public final VG b() {
        try {
            int iA = ((AbstractC1873qH) this).a(null);
            VG vg = XG.f17401H;
            byte[] bArr = new byte[iA];
            C1303fH c1303fH = new C1303fH(bArr, iA);
            ((AbstractC1873qH) this).w(c1303fH);
            if (c1303fH.g0() == 0) {
                return new VG(bArr);
            }
            throw new IllegalStateException("Did not write as much data as expected.");
        } catch (IOException e8) {
            throw new RuntimeException(e("ByteString"), e8);
        }
    }

    public final byte[] d() {
        try {
            int iA = ((AbstractC1873qH) this).a(null);
            byte[] bArr = new byte[iA];
            C1303fH c1303fH = new C1303fH(bArr, iA);
            ((AbstractC1873qH) this).w(c1303fH);
            if (c1303fH.g0() == 0) {
                return bArr;
            }
            throw new IllegalStateException("Did not write as much data as expected.");
        } catch (IOException e8) {
            throw new RuntimeException(e("byte array"), e8);
        }
    }

    public final String e(String str) {
        return A0.O.C("Serializing ", getClass().getName(), " to a ", str, " threw an IOException (should never happen).");
    }
}
