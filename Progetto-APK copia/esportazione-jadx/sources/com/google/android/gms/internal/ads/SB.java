package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class SB extends MB {

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public List f16412V;

    public SB(AbstractC2073uA abstractC2073uA, boolean z7) {
        List arrayList;
        super(abstractC2073uA, z7, true);
        if (abstractC2073uA.isEmpty()) {
            arrayList = Collections.emptyList();
        } else {
            int size = abstractC2073uA.size();
            p113o3.r.q(size, "initialArraySize");
            arrayList = new ArrayList(size);
        }
        for (int i8 = 0; i8 < abstractC2073uA.size(); i8++) {
            arrayList.add(null);
        }
        this.f16412V = arrayList;
        x();
    }

    @Override // com.google.android.gms.internal.ads.MB
    public final void v(int i8, Object obj) {
        List list = this.f16412V;
        if (list != null) {
            list.set(i8, new TB(obj));
        }
    }

    @Override // com.google.android.gms.internal.ads.MB
    public final void w() {
        List<TB> list = this.f16412V;
        if (list != null) {
            int size = list.size();
            p113o3.r.q(size, "initialArraySize");
            ArrayList arrayList = new ArrayList(size);
            for (TB tb : list) {
                arrayList.add(tb != null ? tb.f16604a : null);
            }
            f(Collections.unmodifiableList(arrayList));
        }
    }

    @Override // com.google.android.gms.internal.ads.MB
    public final void y(int i8) {
        this.f14684R = null;
        this.f16412V = null;
    }
}
