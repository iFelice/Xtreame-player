package com.google.android.gms.internal.cast;

/* JADX INFO: renamed from: com.google.android.gms.internal.cast.e2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC2441e2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final C2437d2 f22730a = new C2437d2();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final C2437d2 f22731b;

    static {
        C2437d2 c2437d2;
        try {
            c2437d2 = (C2437d2) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            c2437d2 = null;
        }
        f22731b = c2437d2;
    }
}
