package com.google.android.gms.internal.ads;

import java.util.Map;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.yi, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2304yi implements InterfaceC2356zi {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Map f22048a;

    public C2304yi(Map map) {
        this.f22048a = map;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2356zi
    public final InterfaceC1845pq a(int i8, String str) {
        return (InterfaceC1845pq) this.f22048a.get(str);
    }
}
