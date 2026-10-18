package com.google.android.gms.internal.ads;

import android.content.Intent;
import android.net.Uri;
import com.google.api.Service;
import java.util.ArrayDeque;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import p090l3.C3097p;
import p090l3.C3099q;

/* JADX INFO: loaded from: classes.dex */
public final class Bw implements IJ {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f12516a;

    public /* synthetic */ Bw(int i8) {
        this.f12516a = i8;
    }

    @Override // com.google.android.gms.internal.ads.QJ
    public final Object zzb() {
        InterfaceExecutorServiceC1504jC scheduledExecutorServiceC1764oC;
        switch (this.f12516a) {
            case 0:
                ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), Executors.defaultThreadFactory());
                threadPoolExecutor.allowCoreThreadTimeOut(true);
                ExecutorService executorServiceUnconfigurableExecutorService = Executors.unconfigurableExecutorService(threadPoolExecutor);
                if (executorServiceUnconfigurableExecutorService instanceof InterfaceExecutorServiceC1504jC) {
                    scheduledExecutorServiceC1764oC = (InterfaceExecutorServiceC1504jC) executorServiceUnconfigurableExecutorService;
                } else {
                    scheduledExecutorServiceC1764oC = executorServiceUnconfigurableExecutorService instanceof ScheduledExecutorService ? new ScheduledExecutorServiceC1764oC((ScheduledExecutorService) executorServiceUnconfigurableExecutorService) : new C1936re(executorServiceUnconfigurableExecutorService);
                }
                Cw.N0(scheduledExecutorServiceC1764oC);
                return scheduledExecutorServiceC1764oC;
            case 1:
                return new I5();
            case 2:
                return new P9();
            case 3:
                return p083k3.l.f25980A.f25987g;
            case 4:
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.setPackage("com.android.vending");
                intent.setData(Uri.parse("https://play.google.com/d"));
                return intent;
            case 5:
                String str = C3097p.f26618f.f26621c;
                Cw.N0(str);
                return str;
            case 6:
                return new ArrayDeque();
            case 7:
                return new C2272y1();
            case 8:
                return new C2272y1();
            case 9:
                return new C2272y1();
            case 10:
                return new C2272y1();
            case 11:
                return new C2272y1();
            case 12:
                return new C2272y1();
            case 13:
                return new C2272y1();
            case 14:
                return new C2272y1();
            case 15:
                return new C2272y1();
            case 16:
                return new C2272y1();
            case 17:
                return new C2272y1();
            case 18:
                return new C2272y1();
            case 19:
                return new C2272y1();
            case 20:
                return p083k3.l.f25980A.f26003w;
            case 21:
                return new C1576kh();
            case 22:
                return EnumC2329z6.APP_OPEN;
            case 23:
                return "app_open_ad";
            case 24:
                return EnumC2329z6.BANNER;
            case 25:
                return "banner";
            case Service.BILLING_FIELD_NUMBER /* 26 */:
                return new C0895Qi();
            case 27:
                return new C1269ek();
            case Service.MONITORING_FIELD_NUMBER /* 28 */:
                C1579kk c1579kk = new C1579kk();
                J7 j8 = Q7.f15771Z0;
                C3099q c3099q = C3099q.f26624d;
                c1579kk.f19628G = ((Integer) c3099q.f26627c.a(j8)).intValue();
                c1579kk.f19629H = ((Integer) c3099q.f26627c.a(Q7.dc)).intValue();
                return c1579kk;
            default:
                Set setEmptySet = Collections.emptySet();
                Cw.N0(setEmptySet);
                return setEmptySet;
        }
    }

    public /* synthetic */ Bw(int i8, int i9) {
        this.f12516a = i8;
    }
}
