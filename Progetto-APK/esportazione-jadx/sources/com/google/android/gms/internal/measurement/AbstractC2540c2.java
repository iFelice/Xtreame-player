package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.ads.AbstractC2090uc;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: renamed from: com.google.android.gms.internal.measurement.c2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC2540c2 implements P2 {
    protected int zza;

    /* JADX WARN: Multi-variable type inference failed */
    public static void b(Iterable iterable, InterfaceC2661y2 interfaceC2661y2) {
        Charset charset = AbstractC2666z2.f23416a;
        iterable.getClass();
        if (iterable instanceof E2) {
            List listZza = ((E2) iterable).zza();
            AbstractC2090uc.u(interfaceC2661y2);
            interfaceC2661y2.size();
            Iterator it = listZza.iterator();
            if (it.hasNext()) {
                Object next = it.next();
                next.getClass();
                if (next instanceof AbstractC2576i2) {
                    throw null;
                }
                if (!(next instanceof byte[])) {
                    throw null;
                }
                byte[] bArr = (byte[]) next;
                AbstractC2576i2.p(0, bArr, bArr.length);
                throw null;
            }
            return;
        }
        if (iterable instanceof U2) {
            interfaceC2661y2.addAll((Collection) iterable);
            return;
        }
        if (iterable instanceof Collection) {
            int size = ((Collection) iterable).size();
            if (interfaceC2661y2 instanceof ArrayList) {
                ((ArrayList) interfaceC2661y2).ensureCapacity(interfaceC2661y2.size() + size);
            } else if (interfaceC2661y2 instanceof W2) {
                W2 w7 = (W2) interfaceC2661y2;
                int size2 = interfaceC2661y2.size() + size;
                int length = w7.f23031H.length;
                if (size2 > length) {
                    if (length != 0) {
                        while (length < size2) {
                            length = Math.max(((length * 3) / 2) + 1, 10);
                        }
                        w7.f23031H = Arrays.copyOf(w7.f23031H, length);
                    } else {
                        w7.f23031H = new Object[Math.max(size2, 10)];
                    }
                }
            }
        }
        int size3 = interfaceC2661y2.size();
        if (!(iterable instanceof List) || !(iterable instanceof RandomAccess)) {
            for (Object obj : iterable) {
                if (obj == null) {
                    com.google.android.gms.internal.atv_ads_framework.D.a(size3, interfaceC2661y2);
                    throw null;
                }
                interfaceC2661y2.add(obj);
            }
            return;
        }
        List list = (List) iterable;
        int size4 = list.size();
        for (int i8 = 0; i8 < size4; i8++) {
            Object obj2 = list.get(i8);
            if (obj2 == null) {
                com.google.android.gms.internal.atv_ads_framework.D.a(size3, interfaceC2661y2);
                throw null;
            }
            interfaceC2661y2.add(obj2);
        }
    }

    public abstract int a(Y2 y7);

    public final byte[] c() {
        try {
            AbstractC2631s2 abstractC2631s2 = (AbstractC2631s2) this;
            int iE = abstractC2631s2.e();
            byte[] bArr = new byte[iE];
            C2588k2 c2588k2 = new C2588k2(bArr, iE);
            abstractC2631s2.d(c2588k2);
            if (iE - c2588k2.f23182K == 0) {
                return bArr;
            }
            throw new IllegalStateException("Did not write as much data as expected.");
        } catch (IOException e8) {
            throw new RuntimeException(p000a.r.g("Serializing ", getClass().getName(), " to a byte array threw an IOException (should never happen)."), e8);
        }
    }
}
