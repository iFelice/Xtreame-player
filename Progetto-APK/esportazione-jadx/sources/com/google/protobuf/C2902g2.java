package com.google.protobuf;

import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: renamed from: com.google.protobuf.g2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C2902g2 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final C2902g2 f24439c = new C2902g2();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ConcurrentHashMap f24441b = new ConcurrentHashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final I1 f24440a = new I1();

    public final InterfaceC2914j2 a(Class cls) {
        InterfaceC2914j2 interfaceC2914j2C;
        U1 u7;
        Class cls2;
        AbstractC2960v1.a(cls, "messageType");
        ConcurrentHashMap concurrentHashMap = this.f24441b;
        InterfaceC2914j2 interfaceC2914j2 = (InterfaceC2914j2) concurrentHashMap.get(cls);
        if (interfaceC2914j2 != null) {
            return interfaceC2914j2;
        }
        I1 i8 = this.f24440a;
        i8.getClass();
        Class cls3 = AbstractC2918k2.f24462a;
        if (!AbstractC2909i1.class.isAssignableFrom(cls) && (cls2 = AbstractC2918k2.f24462a) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessageV3 or GeneratedMessageLite");
        }
        N1 n1A = i8.f24262a.a(cls);
        C2910i2 c2910i2 = (C2910i2) n1A;
        if ((c2910i2.f24458d & 2) == 2) {
            boolean zIsAssignableFrom = AbstractC2909i1.class.isAssignableFrom(cls);
            Q1 q7 = c2910i2.f24455a;
            if (zIsAssignableFrom) {
                u7 = new U1(AbstractC2918k2.f24464c, Q0.f24287a, q7);
            } else {
                B2 b8 = AbstractC2918k2.f24463b;
                P0 p7 = Q0.f24288b;
                if (p7 == null) {
                    throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
                }
                u7 = new U1(b8, p7, q7);
            }
            interfaceC2914j2C = u7;
        } else if (AbstractC2909i1.class.isAssignableFrom(cls)) {
            interfaceC2914j2C = p156u.h.b(c2910i2.d()) != 1 ? T1.C(n1A, AbstractC2878a2.f24411b, D1.f24246b, AbstractC2918k2.f24464c, Q0.f24287a, M1.f24272b) : T1.C(n1A, AbstractC2878a2.f24411b, D1.f24246b, AbstractC2918k2.f24464c, null, M1.f24272b);
        } else if (p156u.h.b(c2910i2.d()) != 1) {
            Z1 z7 = AbstractC2878a2.f24410a;
            B1 b9 = D1.f24245a;
            B2 b10 = AbstractC2918k2.f24463b;
            P0 p8 = Q0.f24288b;
            if (p8 == null) {
                throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
            }
            interfaceC2914j2C = T1.C(n1A, z7, b9, b10, p8, M1.f24271a);
        } else {
            interfaceC2914j2C = T1.C(n1A, AbstractC2878a2.f24410a, D1.f24245a, AbstractC2918k2.f24463b, null, M1.f24271a);
        }
        InterfaceC2914j2 interfaceC2914j3 = (InterfaceC2914j2) concurrentHashMap.putIfAbsent(cls, interfaceC2914j2C);
        return interfaceC2914j3 != null ? interfaceC2914j3 : interfaceC2914j2C;
    }

    public final InterfaceC2914j2 b(Object obj) {
        return a(obj.getClass());
    }
}
