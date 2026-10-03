package com.google.android.gms.internal.pal;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.z, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC2867z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final C2859y f24087a = new C2859y();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final C2859y f24088b;

    static {
        C2859y c2859y;
        try {
            c2859y = (C2859y) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            c2859y = null;
        }
        f24088b = c2859y;
    }
}
