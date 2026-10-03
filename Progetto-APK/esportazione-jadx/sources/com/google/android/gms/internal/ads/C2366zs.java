package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.concurrent.Executor;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.zs, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2366zs implements InterfaceC2108uu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f22224a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f22225b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f22226c;

    public /* synthetic */ C2366zs(int i8, Object obj, Object obj2) {
        this.f22224a = i8;
        this.f22225b = obj;
        this.f22226c = obj2;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2108uu
    public final int zza() {
        switch (this.f22224a) {
            case 0:
                return 4;
            case 1:
                return 31;
            case 2:
                return 41;
            default:
                return 48;
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2108uu
    public final D4.b zzb() {
        int i8 = this.f22224a;
        Object obj = this.f22226c;
        Object obj2 = this.f22225b;
        switch (i8) {
            case 0:
                ((P3.b) ((P3.a) obj2)).getClass();
                return Cw.N1(new As((Yv) obj, System.currentTimeMillis()));
            case 1:
                return Cw.N1(new C1279eu((String) obj2, (String) obj, 0));
            case 2:
                Executor executor = (Executor) obj2;
                return Cw.D1(Cw.b2(Cw.N1((String) obj), new C2064u1(14), executor), Throwable.class, new No(this, 16), executor);
            default:
                return ((IB) ((InterfaceExecutorServiceC1504jC) obj2)).b(new CallableC1419he(this, 28));
        }
    }

    public C2366zs(C1936re c1936re, String str) {
        this.f22224a = 2;
        this.f22225b = c1936re;
        this.f22226c = str;
    }

    public C2366zs(C1936re c1936re, List list) {
        this.f22224a = 3;
        this.f22225b = c1936re;
        this.f22226c = list;
    }
}
