package com.google.android.gms.internal.pal;

import java.util.HashMap;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.v1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2837v1 extends AbstractC2686c1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f24039a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f24040b;

    @Override // com.google.android.gms.internal.pal.AbstractC2686c1
    public final HashMap b() {
        HashMap map = new HashMap();
        map.put(0, Long.valueOf(this.f24039a));
        map.put(1, Long.valueOf(this.f24040b));
        return map;
    }
}
