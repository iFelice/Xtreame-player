package com.google.protobuf;

import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class C1 extends D1 {
    @Override // com.google.protobuf.D1
    public final void a(Object obj, long j8) {
        AbstractC2883c abstractC2883c = (AbstractC2883c) ((InterfaceC2956u1) H2.f24255c.k(obj, j8));
        if (abstractC2883c.f24418G) {
            abstractC2883c.f24418G = false;
        }
    }

    @Override // com.google.protobuf.D1
    public final void b(Object obj, long j8, Object obj2) {
        G2 g8 = H2.f24255c;
        InterfaceC2956u1 interfaceC2956u1F = (InterfaceC2956u1) g8.k(obj, j8);
        InterfaceC2956u1 interfaceC2956u1 = (InterfaceC2956u1) g8.k(obj2, j8);
        int size = interfaceC2956u1F.size();
        int size2 = interfaceC2956u1.size();
        if (size > 0 && size2 > 0) {
            if (!((AbstractC2883c) interfaceC2956u1F).f24418G) {
                interfaceC2956u1F = interfaceC2956u1F.f(size2 + size);
            }
            interfaceC2956u1F.addAll(interfaceC2956u1);
        }
        if (size > 0) {
            interfaceC2956u1 = interfaceC2956u1F;
        }
        H2.s(obj, j8, interfaceC2956u1);
    }

    @Override // com.google.protobuf.D1
    public final List c(Object obj, long j8) {
        InterfaceC2956u1 interfaceC2956u1 = (InterfaceC2956u1) H2.f24255c.k(obj, j8);
        if (((AbstractC2883c) interfaceC2956u1).f24418G) {
            return interfaceC2956u1;
        }
        int size = interfaceC2956u1.size();
        InterfaceC2956u1 interfaceC2956u1F = interfaceC2956u1.f(size == 0 ? 10 : size * 2);
        H2.s(obj, j8, interfaceC2956u1F);
        return interfaceC2956u1F;
    }
}
