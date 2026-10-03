package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.ss, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2002ss implements InterfaceC2108uu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f21008a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f21009b;

    public /* synthetic */ C2002ss(Object obj, int i8) {
        this.f21008a = i8;
        this.f21009b = obj;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2108uu
    public final int zza() {
        switch (this.f21008a) {
            case 0:
                return 2;
            case 1:
                return 8;
            case 2:
                return 30;
            default:
                return 49;
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2108uu
    public final D4.b zzb() {
        int i8 = this.f21008a;
        Object obj = this.f21009b;
        switch (i8) {
            case 0:
                if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15648J2)).booleanValue()) {
                    return Cw.N1(new C2106us(U4.a.b((Context) obj, "com.google.android.gms.permission.AD_ID") == 0, 0));
                }
                return Cw.N1(null);
            case 1:
                ArrayList arrayList = new ArrayList();
                Iterator it = ((Set) obj).iterator();
                while (it.hasNext()) {
                    arrayList.add((String) it.next());
                }
                return Cw.N1(new Js(arrayList, 0));
            case 2:
                return Cw.N1(new Bt(2, (Bundle) obj));
            default:
                return Cw.b2(Cw.e2(Cw.N1(new Bundle()), ((Long) C3099q.f26624d.f26627c.a(Q7.f15712R3)).longValue(), TimeUnit.MILLISECONDS, (ScheduledExecutorService) obj), new C2064u1(16), AbstractC1988se.f20906a);
        }
    }

    public C2002ss(ScheduledExecutorService scheduledExecutorService) {
        this.f21008a = 3;
        this.f21009b = scheduledExecutorService;
    }
}
