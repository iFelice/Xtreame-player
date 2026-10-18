package com.google.protobuf;

/* JADX INFO: renamed from: com.google.protobuf.a2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2878a2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Z1 f24410a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Z1 f24411b;

    static {
        Z1 z7;
        try {
            z7 = (Z1) Class.forName("com.google.protobuf.NewInstanceSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            z7 = null;
        }
        f24410a = z7;
        f24411b = new Z1();
    }
}
