package com.google.android.gms.internal.pal;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class M4 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final M4 f23604b = new M4(Collections.unmodifiableMap(new HashMap()));

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Map f23605a;

    public /* synthetic */ M4(Map map) {
        this.f23605a = map;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof M4) {
            return this.f23605a.equals(((M4) obj).f23605a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f23605a.hashCode();
    }

    public final String toString() {
        return this.f23605a.toString();
    }
}
