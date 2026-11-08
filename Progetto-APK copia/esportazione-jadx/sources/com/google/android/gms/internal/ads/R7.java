package com.google.android.gms.internal.ads;

import java.util.HashSet;

/* JADX INFO: loaded from: classes.dex */
public abstract class R7 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final HashSet f16212a = new HashSet();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static String f16213b = "media3.common";

    public static synchronized void a(String str) {
        if (f16212a.add(str)) {
            f16213b = f16213b + ", " + str;
        }
    }
}
