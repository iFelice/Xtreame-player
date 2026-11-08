package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import p167v3.C3195c;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Bi, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0673Bi implements InterfaceC1195dC {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f12481G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ InterfaceC1195dC f12482H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ p048g0.a f12483I;

    public /* synthetic */ C0673Bi(p048g0.a aVar, InterfaceC1195dC interfaceC1195dC, int i8) {
        this.f12481G = i8;
        this.f12482H = interfaceC1195dC;
        this.f12483I = aVar;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1195dC
    public final void zza(Throwable th) {
        int i8 = this.f12481G;
        InterfaceC1195dC interfaceC1195dC = this.f12482H;
        p048g0.a aVar = this.f12483I;
        switch (i8) {
            case 0:
                interfaceC1195dC.zza(th);
                AbstractC1988se.f20910e.execute(new RunnableC0878Pf(aVar, 22));
                break;
            default:
                AbstractC1988se.f20910e.execute(new RunnableC0878Pf(aVar, 22));
                interfaceC1195dC.zza(th);
                break;
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1195dC
    /* JADX INFO: renamed from: zzb */
    public final /* bridge */ /* synthetic */ void mo3zzb(Object obj) {
        int i8 = this.f12481G;
        InterfaceC1195dC interfaceC1195dC = this.f12482H;
        p048g0.a aVar = this.f12483I;
        switch (i8) {
            case 0:
                List list = ((C0658Ai) obj).f12026a;
                if (list == null || list.isEmpty()) {
                    ((Executor) aVar.f25293b).execute(new RunnableC0878Pf(interfaceC1195dC, 23));
                } else {
                    D4.b bVarN1 = Cw.N1(null);
                    Iterator it = list.iterator();
                    while (true) {
                        int i9 = 1;
                        if (!it.hasNext()) {
                            Cw.h2(bVarN1, new C0673Bi(aVar, interfaceC1195dC, i9), (Executor) aVar.f25293b);
                        } else {
                            bVarN1 = Cw.d2(Cw.D1(bVarN1, Throwable.class, new No(interfaceC1195dC, 4), (Executor) aVar.f25293b), new C3195c(aVar, interfaceC1195dC, (D4.b) it.next(), i9), (Executor) aVar.f25293b);
                        }
                    }
                }
                break;
            default:
                AbstractC1988se.f20910e.execute(new RunnableC0878Pf(aVar, 22));
                interfaceC1195dC.mo3zzb((AbstractC2252xi) obj);
                break;
        }
    }
}
