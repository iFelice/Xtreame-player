package com.google.ads.interactivemedia.v3.internal;

import W3.i;
import android.content.ContentResolver;
import android.content.Context;
import android.provider.Settings;
import com.google.ads.interactivemedia.v3.api.BaseRequest;
import com.google.ads.interactivemedia.v3.impl.data.TestingConfiguration;
import com.google.android.gms.internal.ads.Cw;
import java.util.Map;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import okhttp3.HttpUrl;
import p075j3.b;

/* JADX INFO: loaded from: classes.dex */
public final class zzez {
    private final Context zza;
    private final boolean zzb;
    private final long zzc;
    private final TestingConfiguration zzd;
    private final zzfd zze;
    private final zzew zzf;
    private final zzej zzg;

    public zzez(Context context, zzew zzewVar, zzfd zzfdVar, Map map, TestingConfiguration testingConfiguration) {
        int i8;
        this.zza = context;
        this.zzb = !zzewVar.zza;
        long j8 = zzewVar.zzb;
        this.zzc = j8 <= 0 ? 150L : j8;
        this.zzf = zzewVar;
        this.zzd = testingConfiguration;
        this.zze = zzfdVar;
        int i9 = zzewVar.zze;
        if (map != null) {
            try {
                i8 = Integer.parseInt((String) map.get("IDENTITY_TOKEN_CUSTOM_TIMEOUT_AND_MEASUREMENT"));
            } catch (NumberFormatException unused) {
                i8 = 0;
            }
            if (i8 > 0) {
                i9 = i8;
            }
        }
        this.zzg = new zzej(new zzei(context, i9, zzfdVar));
    }

    private final Boolean zzb(zzeu zzeuVar) {
        try {
            return (Boolean) zzeuVar.zzc().get();
        } catch (InterruptedException | CancellationException | ExecutionException e8) {
            this.zze.zzg(com.google.ads.interactivemedia.v3.impl.data.zzbp.IDENTIFIER_INFO_FACTORY, com.google.ads.interactivemedia.v3.impl.data.zzbq.SAFE_BLOCKING_GET_IDLESS, e8);
            return Boolean.TRUE;
        }
    }

    /* JADX WARN: Code duplicated, block: B:34:0x008e  */
    /* JADX WARN: Code duplicated, block: B:36:0x0092  */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    public final com.google.ads.interactivemedia.v3.impl.data.zzbn zza(BaseRequest baseRequest, zzeu zzeuVar, String str) {
        String str2;
        boolean z7;
        String string;
        String str3;
        String str4;
        String str5;
        int i8;
        boolean zZzc;
        String strZza = HttpUrl.FRAGMENT_ENCODE_SET;
        if (zzb(zzeuVar).booleanValue()) {
            return null;
        }
        try {
            p075j3.a aVarA = b.a(this.zza);
            String str6 = aVarA.f25695a;
            str3 = "adid";
            z7 = aVarA.f25696b;
            string = str6;
        } catch (Exception | NoClassDefFoundError unused) {
            try {
                ContentResolver contentResolver = this.zza.getContentResolver();
                string = Settings.Secure.getString(contentResolver, "advertising_id");
                boolean z8 = Settings.Secure.getInt(contentResolver, "limit_ad_tracking") == 1;
                str3 = "afai";
                z7 = z8;
            } catch (Settings.SettingNotFoundException unused2) {
                zzfk.zzd("Failed to get advertising ID.");
                str2 = HttpUrl.FRAGMENT_ENCODE_SET;
                z7 = false;
                string = HttpUrl.FRAGMENT_ENCODE_SET;
            }
        }
        str2 = str3;
        if (this.zzb) {
            try {
                A3.b bVar = (A3.b) Cw.b(new i(this.zza).a(), this.zzc, TimeUnit.MILLISECONDS);
                str4 = bVar.f635a;
                try {
                    i8 = bVar.f636b;
                    str5 = str4;
                } catch (InterruptedException | ExecutionException | TimeoutException unused3) {
                    zzfk.zzd("Timeout getting AppSet ID.");
                    str5 = str4;
                    i8 = 0;
                } catch (Exception | NoClassDefFoundError | NoSuchMethodError unused4) {
                    zzfk.zzd("Unable to contact the App Set SDK.");
                    str5 = str4;
                    i8 = 0;
                }
            } catch (InterruptedException | ExecutionException | TimeoutException unused5) {
                str4 = HttpUrl.FRAGMENT_ENCODE_SET;
            } catch (Exception | NoClassDefFoundError | NoSuchMethodError unused6) {
                str4 = HttpUrl.FRAGMENT_ENCODE_SET;
            }
            zZzc = zzel.zzc(this.zza, this.zzd);
            if (baseRequest.zza().zza(this.zzf, this.zza, z7, zZzc)) {
                strZza = this.zzg.zza(zZzc ? com.google.ads.interactivemedia.v3.impl.zzau.GTV : null, str);
            }
            return com.google.ads.interactivemedia.v3.impl.data.zzbn.create(string, str2, z7, str5, i8, strZza);
        }
        str5 = HttpUrl.FRAGMENT_ENCODE_SET;
        i8 = 0;
        zZzc = zzel.zzc(this.zza, this.zzd);
        if (baseRequest.zza().zza(this.zzf, this.zza, z7, zZzc)) {
            strZza = this.zzg.zza(zZzc ? com.google.ads.interactivemedia.v3.impl.zzau.GTV : null, str);
        }
        return com.google.ads.interactivemedia.v3.impl.data.zzbn.create(string, str2, z7, str5, i8, strZza);
    }
}
