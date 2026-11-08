package com.google.android.gms.internal.pal;

import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes.dex */
public final class V {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final T f23670b = new T();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final U f23671a;

    public V() {
        InterfaceC2677b0 interfaceC2677b0;
        InterfaceC2677b0[] interfaceC2677b0Arr = new InterfaceC2677b0[2];
        interfaceC2677b0Arr[0] = B.f23453a;
        try {
            interfaceC2677b0 = (InterfaceC2677b0) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception unused) {
            interfaceC2677b0 = f23670b;
        }
        interfaceC2677b0Arr[1] = interfaceC2677b0;
        U u7 = new U(interfaceC2677b0Arr);
        Charset charset = J.f23560a;
        this.f23671a = u7;
    }
}
