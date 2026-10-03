package com.google.protobuf;

import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes2.dex */
public final class I1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final G1 f24261b = new G1();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final O1 f24262a;

    public I1() {
        O1 o4;
        O1[] o1Arr = new O1[2];
        o1Arr[0] = C2877a1.f24409a;
        try {
            o4 = (O1) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception unused) {
            o4 = f24261b;
        }
        o1Arr[1] = o4;
        H1 h8 = new H1();
        h8.f24252a = o1Arr;
        Charset charset = AbstractC2960v1.f24524a;
        this.f24262a = h8;
    }
}
