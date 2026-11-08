package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.gE, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1352gE {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final C1352gE f18916b = new C1352gE(Collections.unmodifiableMap(new HashMap()));

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Map f18917a;

    public /* synthetic */ C1352gE(Map map) {
        this.f18917a = map;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C1352gE) {
            return this.f18917a.equals(((C1352gE) obj).f18917a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f18917a.hashCode();
    }

    public final String toString() {
        return this.f18917a.toString();
    }
}
