package com.google.android.gms.internal.pal;

import java.nio.charset.Charset;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.h0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2725h0 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final C2725h0 f23828c = new C2725h0();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ConcurrentHashMap f23830b = new ConcurrentHashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final V f23829a = new V();

    public final InterfaceC2749k0 a(Class cls) {
        C2693d0 c2693d0;
        Class cls2;
        Charset charset = J.f23560a;
        if (cls == null) {
            throw new NullPointerException("messageType");
        }
        ConcurrentHashMap concurrentHashMap = this.f23830b;
        InterfaceC2749k0 interfaceC2749k0Y = (InterfaceC2749k0) concurrentHashMap.get(cls);
        if (interfaceC2749k0Y == null) {
            V v5 = this.f23829a;
            v5.getClass();
            Class cls3 = AbstractC2757l0.f23918a;
            if (!D.class.isAssignableFrom(cls) && (cls2 = AbstractC2757l0.f23918a) != null && !cls2.isAssignableFrom(cls)) {
                throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
            }
            InterfaceC2669a0 interfaceC2669a0Zzb = v5.f23671a.zzb(cls);
            C2741j0 c2741j0 = (C2741j0) interfaceC2669a0Zzb;
            if ((c2741j0.f23875d & 2) == 2) {
                boolean zIsAssignableFrom = D.class.isAssignableFrom(cls);
                AbstractC2740j abstractC2740j = c2741j0.f23872a;
                if (zIsAssignableFrom) {
                    c2693d0 = new C2693d0(AbstractC2757l0.f23921d, AbstractC2867z.f24087a, abstractC2740j);
                } else {
                    C2789p0 c2789p0 = AbstractC2757l0.f23919b;
                    C2859y c2859y = AbstractC2867z.f24088b;
                    if (c2859y == null) {
                        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
                    }
                    c2693d0 = new C2693d0(c2789p0, c2859y, abstractC2740j);
                }
                interfaceC2749k0Y = c2693d0;
            } else if (D.class.isAssignableFrom(cls)) {
                if (c2741j0.b() == 1) {
                    int i8 = AbstractC2709f0.f23809a;
                    interfaceC2749k0Y = C2685c0.y(interfaceC2669a0Zzb, S.f23647b, AbstractC2757l0.f23921d, AbstractC2867z.f24087a, Z.f23711b);
                } else {
                    int i9 = AbstractC2709f0.f23809a;
                    interfaceC2749k0Y = C2685c0.y(interfaceC2669a0Zzb, S.f23647b, AbstractC2757l0.f23921d, null, Z.f23711b);
                }
            } else if (c2741j0.b() == 1) {
                int i10 = AbstractC2709f0.f23809a;
                P p7 = S.f23646a;
                C2789p0 c2789p1 = AbstractC2757l0.f23919b;
                C2859y c2859y2 = AbstractC2867z.f24088b;
                if (c2859y2 == null) {
                    throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
                }
                interfaceC2749k0Y = C2685c0.y(interfaceC2669a0Zzb, p7, c2789p1, c2859y2, Z.f23710a);
            } else {
                int i11 = AbstractC2709f0.f23809a;
                interfaceC2749k0Y = C2685c0.y(interfaceC2669a0Zzb, S.f23646a, AbstractC2757l0.f23920c, null, Z.f23710a);
            }
            InterfaceC2749k0 interfaceC2749k0 = (InterfaceC2749k0) concurrentHashMap.putIfAbsent(cls, interfaceC2749k0Y);
            if (interfaceC2749k0 != null) {
                return interfaceC2749k0;
            }
        }
        return interfaceC2749k0Y;
    }
}
