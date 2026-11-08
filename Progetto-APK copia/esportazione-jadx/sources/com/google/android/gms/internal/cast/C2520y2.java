package com.google.android.gms.internal.cast;

import java.nio.charset.Charset;

/* JADX INFO: renamed from: com.google.android.gms.internal.cast.y2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2520y2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final C2512w2 f22853b = new C2512w2();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C2516x2 f22854a;

    public C2520y2() {
        C2 c8;
        C2[] c2Arr = new C2[2];
        c2Arr[0] = C2449g2.f22737a;
        try {
            c8 = (C2) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception unused) {
            c8 = f22853b;
        }
        c2Arr[1] = c8;
        C2516x2 c2516x2 = new C2516x2(c2Arr);
        Charset charset = AbstractC2481o2.f22763a;
        this.f22854a = c2516x2;
    }
}
