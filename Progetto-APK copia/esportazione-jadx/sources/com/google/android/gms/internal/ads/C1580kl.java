package com.google.android.gms.internal.ads;

import java.util.Map;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.kl, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1580kl implements InterfaceC2356zi {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Map f19630a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Map f19631b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Map f19632c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final QJ f19633d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final C0856Nl f19634e;

    public C1580kl(Map map, Map map2, Map map3, QJ qj, C0856Nl c0856Nl) {
        this.f19630a = map;
        this.f19631b = map2;
        this.f19632c = map3;
        this.f19633d = qj;
        this.f19634e = c0856Nl;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2356zi
    public final InterfaceC1845pq a(int i8, String str) {
        InterfaceC1845pq interfaceC1845pqA;
        InterfaceC1845pq interfaceC1845pq = (InterfaceC1845pq) this.f19630a.get(str);
        if (interfaceC1845pq != null) {
            return interfaceC1845pq;
        }
        if (i8 != 1) {
            if (i8 != 4) {
                return null;
            }
            Yq yq = (Yq) this.f19632c.get(str);
            if (yq != null) {
                return new C1897qq(yq, new C2064u1(5));
            }
            interfaceC1845pqA = (InterfaceC1845pq) this.f19631b.get(str);
            if (interfaceC1845pqA == null) {
                return null;
            }
        } else if (this.f19634e.f15078d == null || (interfaceC1845pqA = ((InterfaceC2356zi) this.f19633d.zzb()).a(i8, str)) == null) {
            return null;
        }
        return new C1897qq(interfaceC1845pqA, new C2064u1(6));
    }
}
