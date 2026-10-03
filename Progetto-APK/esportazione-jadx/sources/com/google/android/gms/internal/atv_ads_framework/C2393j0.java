package com.google.android.gms.internal.atv_ads_framework;

import java.nio.charset.Charset;

/* JADX INFO: renamed from: com.google.android.gms.internal.atv_ads_framework.j0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2393j0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final C2389h0 f22333b = new C2389h0();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C2391i0 f22334a;

    public C2393j0() {
        InterfaceC2401n0 interfaceC2401n0;
        InterfaceC2401n0[] interfaceC2401n0Arr = new InterfaceC2401n0[2];
        interfaceC2401n0Arr[0] = S.f22290a;
        try {
            interfaceC2401n0 = (InterfaceC2401n0) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception unused) {
            interfaceC2401n0 = f22333b;
        }
        interfaceC2401n0Arr[1] = interfaceC2401n0;
        C2391i0 c2391i0 = new C2391i0(interfaceC2401n0Arr);
        Charset charset = Z.f22301a;
        this.f22334a = c2391i0;
    }
}
