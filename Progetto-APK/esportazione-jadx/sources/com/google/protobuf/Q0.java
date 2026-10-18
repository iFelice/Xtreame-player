package com.google.protobuf;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Q0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final P0 f24287a = new P0();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final P0 f24288b;

    static {
        P0 p7;
        try {
            p7 = (P0) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            p7 = null;
        }
        f24288b = p7;
    }
}
