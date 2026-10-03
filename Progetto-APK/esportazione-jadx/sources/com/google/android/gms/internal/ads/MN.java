package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class MN implements InterfaceC1828pO {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Object f14706G;

    public MN(int i8) {
        if (i8 != 3) {
            this.f14706G = InterfaceC1840pl.f20481a;
        } else {
            this.f14706G = new CopyOnWriteArrayList();
        }
    }

    public static C1258eO b(C0961Ve c0961Ve, int[] iArr, AbstractC2073uA abstractC2073uA) {
        C1258eO c1258eO = new C1258eO(c0961Ve, iArr);
        AbstractC2073uA.t(abstractC2073uA);
        return c1258eO;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1828pO
    public final PA a(int i8, C0961Ve c0961Ve, int[] iArr) {
        C1554kA c1554kA = C1983sO.f20895j;
        p113o3.r.q(4, "initialCapacity");
        Object[] objArrCopyOf = new Object[4];
        int i9 = 0;
        int i10 = 0;
        while (i9 < c0961Ve.f17069a) {
            C1466iO c1466iO = new C1466iO(i8, c0961Ve, i9, (C1620lO) this.f14706G, iArr[i9]);
            int i11 = i10 + 1;
            int length = objArrCopyOf.length;
            if (length < i11) {
                objArrCopyOf = Arrays.copyOf(objArrCopyOf, AbstractC1762oA.e(length, i11));
            }
            objArrCopyOf[i10] = c1466iO;
            i9++;
            i10 = i11;
        }
        return AbstractC2073uA.s(i10, objArrCopyOf);
    }

    public final void c(InterfaceC1152cL interfaceC1152cL) {
        Object obj = this.f14706G;
        for (AO ao : (CopyOnWriteArrayList) obj) {
            if (ao.f12004b == interfaceC1152cL) {
                ao.f12005c = true;
                ((CopyOnWriteArrayList) obj).remove(ao);
            }
        }
    }

    public /* synthetic */ MN(Object obj) {
        this.f14706G = obj;
    }
}
