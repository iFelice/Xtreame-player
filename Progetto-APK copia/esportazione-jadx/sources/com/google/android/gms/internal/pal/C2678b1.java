package com.google.android.gms.internal.pal;

import K3.AbstractC0245s;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import com.google.ads.interactivemedia.pal.zzx;
import com.google.android.gms.internal.ads.Cw;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.b1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2678b1 extends AbstractC2670a1 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final C2822t2 f23729e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final zzx f23730f;

    public C2678b1(Handler handler, ExecutorService executorService, Context context, zzx zzxVar) {
        C2822t2 c2822t2 = new C2822t2(context, C2822t2.f24011a, null, com.google.android.gms.common.api.i.f11764c);
        super(handler, executorService, A0.b(2L));
        this.f23729e = c2822t2;
        this.f23730f = zzxVar;
    }

    @Override // com.google.android.gms.internal.pal.AbstractC2670a1
    public final I2 a() {
        G2 g8 = G2.f23533G;
        zzx zzxVar = this.f23730f;
        Bundle bundle = new Bundle();
        try {
            C2822t2 c2822t2 = this.f23729e;
            K3.r rVarA = AbstractC0245s.a();
            rVarA.f4569b = false;
            rVarA.f4571d = new J3.d[]{AbstractC2864y4.f24078H};
            rVarA.f4570c = new C2767m2(3, c2822t2, bundle);
            String str = (String) Cw.b(c2822t2.doRead(rVarA.a()), 5L, TimeUnit.SECONDS);
            str.getClass();
            return new K2(str);
        } catch (InterruptedException | TimeoutException unused) {
            zzxVar.zza(2);
            return g8;
        } catch (ExecutionException e8) {
            Throwable cause = e8.getCause();
            if (cause instanceof C2806r2) {
                Log.d("NonceGenerator", "SignalSdk Error code: " + ((C2806r2) cause).f23995G);
                zzxVar.zza(3);
            }
            return g8;
        }
    }
}
