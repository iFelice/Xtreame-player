package com.google.android.gms.internal.measurement;

import java.nio.charset.Charset;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class V2 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final V2 f23021c = new V2();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ConcurrentHashMap f23023b = new ConcurrentHashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final J2 f23022a = new J2();

    public final Y2 a(Class cls) {
        Charset charset = AbstractC2666z2.f23416a;
        if (cls == null) {
            throw new NullPointerException("messageType");
        }
        ConcurrentHashMap concurrentHashMap = this.f23023b;
        Y2 y2P = (Y2) concurrentHashMap.get(cls);
        if (y2P == null) {
            J2 j8 = this.f23022a;
            j8.getClass();
            C2622q2 c2622q2 = Z2.f23065a;
            AbstractC2631s2.class.isAssignableFrom(cls);
            N2 n2Zzb = j8.f22943a.zzb(cls);
            X2 x7 = (X2) n2Zzb;
            if ((x7.f23052d & 2) == 2) {
                C2622q2 c2622q3 = Z2.f23065a;
                S3.g gVar = AbstractC2606n2.f23221a;
                y2P = new S2(c2622q3, x7.f23049a);
            } else {
                int i8 = T2.f23007a;
                int i9 = F2.f22915a;
                C2622q2 c2622q4 = Z2.f23065a;
                S3.g gVar2 = x7.b() + (-1) != 1 ? AbstractC2606n2.f23221a : null;
                int i10 = M2.f22968a;
                y2P = R2.p(n2Zzb, c2622q4, gVar2);
            }
            Y2 y7 = (Y2) concurrentHashMap.putIfAbsent(cls, y2P);
            if (y7 != null) {
                return y7;
            }
        }
        return y2P;
    }
}
