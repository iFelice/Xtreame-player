package com.google.android.gms.internal.pal;

/* JADX INFO: loaded from: classes.dex */
public abstract class Z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Y f23710a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Y f23711b;

    static {
        Y y7;
        try {
            y7 = (Y) Class.forName("com.google.protobuf.MapFieldSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            y7 = null;
        }
        f23710a = y7;
        f23711b = new Y();
    }
}
