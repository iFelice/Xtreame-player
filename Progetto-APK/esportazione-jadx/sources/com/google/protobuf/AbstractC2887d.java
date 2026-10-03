package com.google.protobuf;

/* JADX INFO: renamed from: com.google.protobuf.d, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2887d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Class f24421a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final boolean f24422b;

    static {
        Class<?> cls;
        Class<?> cls2 = null;
        try {
            cls = Class.forName("libcore.io.Memory");
        } catch (Throwable unused) {
            cls = null;
        }
        f24421a = cls;
        try {
            cls2 = Class.forName("org.robolectric.Robolectric");
        } catch (Throwable unused2) {
        }
        f24422b = cls2 != null;
    }

    public static boolean a() {
        return (f24421a == null || f24422b) ? false : true;
    }
}
