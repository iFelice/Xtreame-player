package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Ai, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0658Ai implements InterfaceC1742nr {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f12026a;

    public C0658Ai(List list) {
        this.f12026a = list;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1742nr
    public final void zzr() {
        Iterator it = this.f12026a.iterator();
        while (it.hasNext()) {
            Cw.h2((D4.b) it.next(), new C0650Aa(20, 0), XB.f17385G);
        }
    }

    public C0658Ai(AbstractC2252xi abstractC2252xi) {
        this.f12026a = Collections.singletonList(Cw.N1(abstractC2252xi));
    }
}
