package com.google.android.gms.internal.pal;

import android.content.ContentResolver;
import android.content.Context;
import android.os.Handler;
import android.provider.Settings;
import android.util.Log;
import com.google.ads.interactivemedia.pal.zzat;
import com.google.android.gms.internal.ads.Cw;
import java.io.IOException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes.dex */
public final class S0 extends AbstractC2670a1 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f23648e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Object f23649f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public S0(Handler handler, ExecutorService executorService, Context context, int i8) {
        W3.i iVar;
        super(handler, executorService, A0.b(2L));
        this.f23648e = i8;
        if (i8 != 1) {
            this.f23649f = context;
            return;
        }
        try {
            iVar = new W3.i(context);
        } catch (NoClassDefFoundError | NoSuchMethodError e8) {
            Log.e("NonceGenerator", "Failed to contact the App Set SDK.", e8);
            iVar = null;
        }
        super(handler, executorService, A0.b(2L));
        this.f23649f = iVar;
    }

    @Override // com.google.android.gms.internal.pal.AbstractC2670a1
    public final I2 a() {
        I2 k8;
        int i8 = this.f23648e;
        I2 k9 = G2.f23533G;
        switch (i8) {
            case 0:
                Object obj = this.f23649f;
                if (((Context) obj).getPackageManager().hasSystemFeature("amazon.hardware.fire_tv")) {
                    try {
                        ContentResolver contentResolver = ((Context) obj).getContentResolver();
                        String string = Settings.Secure.getString(contentResolver, "advertising_id");
                        boolean z7 = true;
                        if (Settings.Secure.getInt(contentResolver, "limit_ad_tracking") != 1) {
                            z7 = false;
                        }
                        k8 = new K2(new T0(string, "afai", z7));
                    } catch (Settings.SettingNotFoundException e8) {
                        Log.e("NonceGenerator", "Failed to retrieve advertising info from amazon fire tv.", e8);
                        k8 = k9;
                    }
                    break;
                } else {
                    k8 = k9;
                }
                if (k8.d()) {
                    return k8;
                }
                try {
                    p075j3.a aVarA = p075j3.b.a((Context) obj);
                    String str = aVarA.f25695a;
                    if (str == null) {
                        str = HttpUrl.FRAGMENT_ENCODE_SET;
                    }
                    k9 = new K2(new T0(str, "adid", aVarA.f25696b));
                } catch (J3.g e9) {
                    Log.e("NonceGenerator", "Google Play services is not available entirely.", e9);
                } catch (J3.h e10) {
                    Log.e("NonceGenerator", "Obsolete or disabled version of Google Play Services", e10);
                } catch (IOException e11) {
                    Log.e("NonceGenerator", "Unrecoverable error connecting to Google Play services.", e11);
                } catch (IllegalStateException e12) {
                    Log.e("NonceGenerator", "IllegalStateException, can't access android advertising info.", e12);
                }
                return k9;
            default:
                A3.a aVar = (A3.a) this.f23649f;
                if (aVar == null) {
                    return k9;
                }
                try {
                    A3.b bVar = (A3.b) Cw.b(aVar.a(), zzat.zzd.f23477G, TimeUnit.MILLISECONDS);
                    bVar.getClass();
                    return new K2(bVar);
                } catch (InterruptedException | NoClassDefFoundError | NoSuchMethodError | ExecutionException | TimeoutException e13) {
                    Log.e("NonceGenerator", "Failed to get the App Set ID.", e13);
                    return k9;
                }
        }
    }
}
