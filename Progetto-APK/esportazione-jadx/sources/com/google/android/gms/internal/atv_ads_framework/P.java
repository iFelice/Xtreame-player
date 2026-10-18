package com.google.android.gms.internal.atv_ads_framework;

/* JADX INFO: loaded from: classes.dex */
public abstract class P {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final N f22283a = new N();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final N f22284b;

    static {
        N n7;
        try {
            n7 = (N) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            n7 = null;
        }
        f22284b = n7;
    }
}
