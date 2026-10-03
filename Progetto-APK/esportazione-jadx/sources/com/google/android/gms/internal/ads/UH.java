package com.google.android.gms.internal.ads;

import java.nio.charset.Charset;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class UH {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final UH f16822c = new UH();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ConcurrentHashMap f16824b = new ConcurrentHashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final IH f16823a = new IH();

    public final InterfaceC1098bI a(Class cls) {
        Charset charset = AbstractC2288yH.f22010a;
        if (cls == null) {
            throw new NullPointerException("messageType");
        }
        ConcurrentHashMap concurrentHashMap = this.f16824b;
        InterfaceC1098bI interfaceC1098bIU = (InterfaceC1098bI) concurrentHashMap.get(cls);
        if (interfaceC1098bIU == null) {
            IH ih = this.f16823a;
            ih.getClass();
            C2272y1 c2272y1 = AbstractC1149cI.f18207a;
            AbstractC1873qH.class.isAssignableFrom(cls);
            LH lhZzb = ih.f13861a.zzb(cls);
            XH xh = (XH) lhZzb;
            if ((xh.f17406d & 2) == 2) {
                C2272y1 c2272y2 = AbstractC1149cI.f18207a;
                C1561kH c1561kH = AbstractC1613lH.f19730a;
                interfaceC1098bIU = new QH(c2272y2, xh.f17403a);
            } else {
                int i8 = RH.f16233a;
                int i9 = EH.f12960a;
                C2272y1 c2272y3 = AbstractC1149cI.f18207a;
                C1561kH c1561kH2 = xh.b() + (-1) != 1 ? AbstractC1613lH.f19730a : null;
                int i10 = KH.f14323a;
                interfaceC1098bIU = PH.u(lhZzb, c2272y3, c1561kH2);
            }
            InterfaceC1098bI interfaceC1098bI = (InterfaceC1098bI) concurrentHashMap.putIfAbsent(cls, interfaceC1098bIU);
            if (interfaceC1098bI != null) {
                return interfaceC1098bI;
            }
        }
        return interfaceC1098bIU;
    }
}
