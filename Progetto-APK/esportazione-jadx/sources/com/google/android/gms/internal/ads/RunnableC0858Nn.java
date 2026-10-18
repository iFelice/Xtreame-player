package com.google.android.gms.internal.ads;

import java.util.concurrent.CopyOnWriteArraySet;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Nn, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0858Nn implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f15085G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ int f15086H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ Object f15087I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ Object f15088J;

    public /* synthetic */ RunnableC0858Nn(Object obj, int i8, Object obj2, int i9) {
        this.f15085G = i9;
        this.f15087I = obj;
        this.f15086H = i8;
        this.f15088J = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f15085G;
        int i9 = this.f15086H;
        Object obj = this.f15088J;
        Object obj2 = this.f15087I;
        switch (i8) {
            case 0:
                for (C2310yo c2310yo : (CopyOnWriteArraySet) obj2) {
                    InterfaceC1119bo interfaceC1119bo = (InterfaceC1119bo) obj;
                    if (!c2310yo.f22065d) {
                        if (i9 != -1) {
                            c2310yo.f22063b.c(i9);
                        }
                        c2310yo.f22064c = true;
                        interfaceC1119bo.zza(c2310yo.f22062a);
                    }
                }
                break;
            default:
                ((MB) obj2).t(i9, (D4.b) obj);
                break;
        }
    }
}
