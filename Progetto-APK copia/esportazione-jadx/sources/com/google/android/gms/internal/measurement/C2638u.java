package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.ads.Cw;
import java.util.Arrays;
import java.util.Comparator;

/* JADX INFO: renamed from: com.google.android.gms.internal.measurement.u, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2638u implements Comparator {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f23261G = 1;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ Object f23262H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ Object f23263I;

    public C2638u(AbstractC2567h abstractC2567h, p096m2.i iVar) {
        this.f23262H = abstractC2567h;
        this.f23263I = iVar;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int i8 = this.f23261G;
        Object obj3 = this.f23262H;
        Object obj4 = this.f23263I;
        switch (i8) {
            case 0:
                InterfaceC2603n interfaceC2603n = (InterfaceC2603n) obj;
                InterfaceC2603n interfaceC2603n2 = (InterfaceC2603n) obj2;
                if (interfaceC2603n instanceof r) {
                    return !(interfaceC2603n2 instanceof r) ? 1 : 0;
                }
                if (interfaceC2603n2 instanceof r) {
                    return -1;
                }
                AbstractC2567h abstractC2567h = (AbstractC2567h) obj3;
                return abstractC2567h == null ? interfaceC2603n.zzi().compareTo(interfaceC2603n2.zzi()) : (int) Cw.r(abstractC2567h.a((p096m2.i) obj4, Arrays.asList(interfaceC2603n, interfaceC2603n2)).zzh().doubleValue());
            default:
                P5.o oVar = (P5.o) obj4;
                O5.t tVar = (O5.t) obj3;
                return Float.compare(oVar.a((O5.t) obj2, tVar), oVar.a((O5.t) obj, tVar));
        }
    }

    public C2638u(P5.o oVar, O5.t tVar) {
        this.f23263I = oVar;
        this.f23262H = tVar;
    }
}
