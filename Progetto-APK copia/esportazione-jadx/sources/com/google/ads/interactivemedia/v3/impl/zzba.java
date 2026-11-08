package com.google.ads.interactivemedia.v3.impl;

import android.content.Context;
import android.net.Uri;
import android.webkit.WebView;
import com.google.ads.interactivemedia.v3.impl.data.TestingConfiguration;
import com.google.ads.interactivemedia.v3.internal.zzahg;
import com.google.ads.interactivemedia.v3.internal.zzahh;
import com.google.ads.interactivemedia.v3.internal.zzahj;
import com.google.ads.interactivemedia.v3.internal.zzfk;
import com.google.ads.interactivemedia.v3.internal.zzuk;
import com.google.ads.interactivemedia.v3.internal.zzuu;
import com.google.ads.interactivemedia.v3.internal.zzvd;
import com.google.ads.interactivemedia.v3.internal.zzvr;
import com.google.protobuf.U2;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ExecutorService;
import p000a.r;

/* JADX INFO: loaded from: classes.dex */
public final class zzba implements zzbh, zzbi {
    final TestingConfiguration zza;
    private final Context zze;
    private final zzbk zzf;
    private final ExecutorService zzh;
    private zzbs zzk;
    private final Map zzb = new HashMap();
    private final Map zzc = new HashMap();
    private final Set zzd = new HashSet();
    private final Queue zzg = new ConcurrentLinkedQueue();
    private final zzvd zzi = zzvd.zzs();
    private final zzvd zzj = zzvd.zzs();
    private boolean zzl = false;

    public zzba(zzbk zzbkVar, Context context, TestingConfiguration testingConfiguration, ExecutorService executorService) {
        this.zze = context;
        this.zza = testingConfiguration;
        this.zzf = zzbkVar;
        zzbkVar.zzi(this);
        this.zzh = executorService;
    }

    public static zzba zzc(Context context, TestingConfiguration testingConfiguration, Uri uri, zzahj zzahjVar, ExecutorService executorService) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        WebView webView = new WebView(context);
        zzahg zzahgVarZzc = zzahh.zzc();
        zzahgVarZzc.zzb(jCurrentTimeMillis);
        zzahgVarZzc.zza(System.currentTimeMillis());
        zzahjVar.zzn((zzahh) zzahgVarZzc.zzal());
        final zzba zzbaVar = new zzba(zzbk.zzb(webView, uri, zzahjVar), context, testingConfiguration, executorService);
        zzuk.zza(zzbaVar.zzj, zzbaVar.zzi).zza(new Callable() { // from class: com.google.ads.interactivemedia.v3.impl.zzay
            @Override // java.util.concurrent.Callable
            public final Object call() {
                this.zza.zzg();
                return null;
            }
        }, zzbaVar.zzh);
        return zzbaVar;
    }

    public static String zzf(String str, String str2) {
        return (str2 == null || str2.length() == 0) ? str : U2.l(str, " Caused by: ", str2);
    }

    private static final void zzo(String str, JavaScriptMessage.MsgType msgType) {
        zzfk.zzc("Illegal message type " + String.valueOf(msgType) + " received for " + str + " channel");
    }

    @Override // com.google.ads.interactivemedia.v3.impl.zzbh
    public final void zza(JavaScriptMessage javaScriptMessage) {
        String str;
        String str2;
        zzbh zzbhVar;
        com.google.ads.interactivemedia.v3.impl.data.zzbu zzbuVar = (com.google.ads.interactivemedia.v3.impl.data.zzbu) javaScriptMessage.zzc();
        String strZzd = javaScriptMessage.zzd();
        JavaScriptMessage.MsgType msgTypeZzb = javaScriptMessage.zzb();
        zzfk.zzc("Received js message: " + javaScriptMessage.zza().name() + " [" + msgTypeZzb.name() + "]");
        if (this.zzb.containsKey(strZzd) && (zzbhVar = (zzbh) ((Map) this.zzb.get(strZzd)).get(javaScriptMessage.zza())) != null) {
            zzbhVar.zza(javaScriptMessage);
            return;
        }
        int iOrdinal = javaScriptMessage.zza().ordinal();
        if (iOrdinal == 0) {
            if (this.zzd.contains(strZzd)) {
                return;
            }
            zzaz zzazVar = (zzaz) this.zzc.get(strZzd);
            if (zzazVar == null) {
                zzfk.zzd("Received monitor message: " + String.valueOf(msgTypeZzb) + " for invalid session id: " + strZzd);
                return;
            }
            if (zzbuVar != null) {
                if (msgTypeZzb.ordinal() != 37) {
                    zzo(JavaScriptMessage.MsgChannel.activityMonitor.toString(), msgTypeZzb);
                    return;
                } else {
                    zzazVar.zzf(zzbuVar.queryId, zzbuVar.eventId);
                    return;
                }
            }
            zzfk.zzd("Received monitor message: " + String.valueOf(msgTypeZzb) + " for session id: " + strZzd + " with no data");
            return;
        }
        if (iOrdinal != 5) {
            if (iOrdinal == 7) {
                zzbs zzbsVar = this.zzk;
                if (zzbsVar != null) {
                    zzbsVar.zzc(msgTypeZzb, strZzd, zzbuVar.networkRequest);
                    return;
                } else {
                    zzfk.zza("Native network handler not initialized.");
                    return;
                }
            }
            if (iOrdinal != 12) {
                zzfk.zza("Unknown message channel: ".concat(String.valueOf(javaScriptMessage.zza())));
                return;
            }
        }
        int iOrdinal2 = msgTypeZzb.ordinal();
        if (iOrdinal2 == 44) {
            this.zzj.zzc(zzbuVar);
            this.zzl = true;
            return;
        }
        if (iOrdinal2 != 48) {
            zzo("other", msgTypeZzb);
            return;
        }
        if (zzbuVar.ln == null || (str = zzbuVar.f11609n) == null || (str2 = zzbuVar.f11608m) == null) {
            zzfk.zza("Invalid logging message data: ".concat(String.valueOf(zzbuVar)));
            return;
        }
        String strM = U2.m("JsMessage (", str, "): ", str2);
        char cCharAt = zzbuVar.ln.charAt(0);
        if (cCharAt != 'D') {
            if (cCharAt != 'E') {
                if (cCharAt != 'I') {
                    if (cCharAt != 'S') {
                        if (cCharAt != 'V') {
                            if (cCharAt == 'W') {
                                zzfk.zzd(strM);
                                return;
                            } else {
                                zzfk.zzd("Unrecognized log level: ".concat(String.valueOf(zzbuVar.ln)));
                                zzfk.zzd(strM);
                                return;
                            }
                        }
                    }
                }
            }
            zzfk.zza(strM);
            return;
        }
        zzfk.zzc(strM);
    }

    public final WebView zzb() {
        return this.zzf.zza();
    }

    public final zzuu zzd(Map map) {
        return this.zzf.zzc(r.g("google.ima.NativeBridge.calculateIdlessState(", new zzvr().zzf(map), ")"));
    }

    public final zzuu zze() {
        return this.zzj;
    }

    public final /* synthetic */ Void zzg() {
        com.google.ads.interactivemedia.v3.impl.data.zzbu zzbuVar = (com.google.ads.interactivemedia.v3.impl.data.zzbu) this.zzj.get();
        com.google.ads.interactivemedia.v3.impl.data.zzbn zzbnVar = (com.google.ads.interactivemedia.v3.impl.data.zzbn) this.zzi.get();
        boolean z7 = zzbuVar.enableGks;
        Context context = this.zze;
        this.zzk = new zzbs(context, this, this.zzh, z7 ? new zzbr(context, zzbnVar) : new zzbp(null));
        return null;
    }

    public final void zzh(zzaz zzazVar, String str) {
        this.zzc.put(str, zzazVar);
    }

    public final void zzi(String str, JavaScriptMessage.MsgChannel msgChannel, zzbh zzbhVar) {
        if (!this.zzb.containsKey(str)) {
            this.zzb.put(str, new HashMap());
        }
        ((Map) this.zzb.get(str)).put(msgChannel, zzbhVar);
    }

    public final void zzj(com.google.ads.interactivemedia.v3.impl.data.zzbn zzbnVar) {
        this.zzi.zzc(zzbnVar);
    }

    public final void zzk() {
        this.zzf.zzd();
    }

    public final void zzl(String str) {
        this.zzc.remove(str);
        this.zzd.add(str);
    }

    public final void zzm(String str) {
        this.zzb.remove(str);
    }

    @Override // com.google.ads.interactivemedia.v3.impl.zzbi
    public final void zzn(JavaScriptMessage javaScriptMessage) {
        zzfk.zzc("Sending js message: " + javaScriptMessage.zza().name() + " [" + javaScriptMessage.zzb().name() + "]");
        this.zzg.add(javaScriptMessage);
        if (this.zzl) {
            JavaScriptMessage javaScriptMessage2 = (JavaScriptMessage) this.zzg.poll();
            while (javaScriptMessage2 != null) {
                this.zzf.zzj(javaScriptMessage2);
                javaScriptMessage2 = (JavaScriptMessage) this.zzg.poll();
            }
        }
    }
}
