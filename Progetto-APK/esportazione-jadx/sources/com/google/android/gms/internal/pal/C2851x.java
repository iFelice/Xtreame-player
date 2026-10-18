package com.google.android.gms.internal.pal;

import java.util.Collections;
import java.util.Map;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.x, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2851x {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static volatile C2851x f24056b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final C2851x f24057c = new C2851x();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Map f24058a = Collections.emptyMap();

    public static C2851x a() {
        C2851x c2851x = f24056b;
        if (c2851x == null) {
            synchronized (C2851x.class) {
                try {
                    c2851x = f24056b;
                    if (c2851x == null) {
                        c2851x = f24057c;
                        f24056b = c2851x;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return c2851x;
    }
}
