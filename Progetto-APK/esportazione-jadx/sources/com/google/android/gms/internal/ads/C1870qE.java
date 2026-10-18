package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.qE, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1870qE {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final C1870qE f20561b = new C1870qE();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HashMap f20562a = new HashMap();

    public final synchronized GC a() {
        if (!this.f20562a.containsKey("AES128_GCM")) {
            throw new GeneralSecurityException("Name AES128_GCM does not exist");
        }
        return (GC) this.f20562a.get("AES128_GCM");
    }

    public final synchronized void b(String str, GC gc) {
        try {
            if (!this.f20562a.containsKey(str)) {
                this.f20562a.put(str, gc);
                return;
            }
            if (((GC) this.f20562a.get(str)).equals(gc)) {
                return;
            }
            throw new GeneralSecurityException("Parameters object with name " + str + " already exists (" + String.valueOf(this.f20562a.get(str)) + "), cannot insert " + String.valueOf(gc));
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void c(Map map) {
        for (Map.Entry entry : map.entrySet()) {
            b((String) entry.getKey(), (GC) entry.getValue());
        }
    }
}
