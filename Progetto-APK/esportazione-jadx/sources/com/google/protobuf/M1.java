package com.google.protobuf;

/* JADX INFO: loaded from: classes2.dex */
public abstract class M1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final L1 f24271a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final L1 f24272b;

    static {
        L1 l4;
        try {
            l4 = (L1) Class.forName("com.google.protobuf.MapFieldSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            l4 = null;
        }
        f24271a = l4;
        f24272b = new L1();
    }
}
