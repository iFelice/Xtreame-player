package com.google.android.gms.internal.pal;

import android.content.Context;
import android.os.Handler;
import android.os.RemoteException;
import android.util.Log;
import com.google.ads.interactivemedia.pal.zzx;
import com.google.android.gms.internal.ads.Cw;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes.dex */
public final class R0 extends AbstractC2670a1 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final zzx f23636e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final p052g4.h f23637f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Context f23638g;

    public R0(Handler handler, ExecutorService executorService, Context context, p052g4.r rVar, zzx zzxVar) {
        super(handler, executorService, A0.b(2L));
        this.f23638g = context;
        this.f23637f = rVar;
        this.f23636e = zzxVar;
    }

    @Override // com.google.android.gms.internal.pal.AbstractC2670a1
    public final I2 a() {
        try {
            String strA = ((C2679b2) Cw.a(this.f23637f)).a(this.f23638g);
            strA.getClass();
            return new K2(strA);
        } catch (RemoteException | InterruptedException | ExecutionException unused) {
            Log.e("NonceGenerator", "Unexpected exception while gathering request signals.");
            this.f23636e.zza(1);
            return G2.f23533G;
        }
    }
}
