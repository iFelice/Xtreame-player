package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Map;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.jH, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1509jH {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static volatile C1509jH f19448b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final C1509jH f19449c = new C1509jH();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Map f19450a = Collections.emptyMap();

    public static C1509jH a() {
        C1509jH c1509jH = f19448b;
        if (c1509jH != null) {
            return c1509jH;
        }
        synchronized (C1509jH.class) {
            try {
                C1509jH c1509jH2 = f19448b;
                if (c1509jH2 != null) {
                    return c1509jH2;
                }
                UH uh = UH.f16822c;
                C1509jH c1509jHE = AbstractC1717nH.e();
                f19448b = c1509jHE;
                return c1509jHE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
