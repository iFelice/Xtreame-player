package com.google.ads.interactivemedia.v3.internal;

import java.util.ArrayList;
import java.util.List;
import p052g4.b;
import p052g4.h;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class zzfz implements b {
    public /* synthetic */ zzfz(zzgd zzgdVar) {
    }

    @Override // p052g4.b
    public final Object then(h hVar) {
        List<h> list = (List) hVar.f();
        ArrayList arrayList = new ArrayList(list.size());
        for (h hVar2 : list) {
            if (hVar2.h()) {
                arrayList.add(hVar2.f());
            }
        }
        return arrayList;
    }
}
