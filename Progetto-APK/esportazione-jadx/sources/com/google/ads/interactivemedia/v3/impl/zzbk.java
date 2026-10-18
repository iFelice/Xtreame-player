package com.google.ads.interactivemedia.v3.impl;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.webkit.CookieManager;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import com.bumptech.glide.c;
import com.google.ads.interactivemedia.v3.internal.zzahj;
import com.google.ads.interactivemedia.v3.internal.zzek;
import com.google.ads.interactivemedia.v3.internal.zzfh;
import com.google.ads.interactivemedia.v3.internal.zzfk;
import com.google.ads.interactivemedia.v3.internal.zzqf;
import com.google.ads.interactivemedia.v3.internal.zzrr;
import com.google.ads.interactivemedia.v3.internal.zzuu;
import com.google.ads.interactivemedia.v3.internal.zzvd;
import com.google.protobuf.U2;
import p011b2.e;

/* JADX INFO: loaded from: classes.dex */
public final class zzbk {
    private WebView zza;
    private zzbh zzc;
    private final zzahj zze;
    private final zzek zzf = new zzek();
    private final Handler zzb = new Handler(Looper.getMainLooper());
    private zzfh zzd = new zzfh();

    private zzbk(WebView webView, zzahj zzahjVar) {
        this.zza = webView;
        this.zze = zzahjVar;
    }

    public static zzbk zzb(WebView webView, Uri uri, zzahj zzahjVar) {
        zzbk zzbkVar = new zzbk(webView, zzahjVar);
        webView.setBackgroundColor(0);
        webView.getSettings().setMixedContentMode(0);
        webView.getSettings().setJavaScriptEnabled(true);
        webView.getSettings().setDomStorageEnabled(true);
        if (c.o("WEB_MESSAGE_LISTENER")) {
            String strL = U2.l(uri.getScheme(), "://", uri.getHost());
            if (uri.getPort() != -1) {
                strL = strL + ":" + uri.getPort();
            }
            e.a(zzbkVar.zza, "androidWebViewCompatSender", zzrr.zzm(strL), new zzbg(zzbkVar));
        }
        webView.setWebViewClient(new zzbj(zzbkVar, zzbkVar.zze));
        webView.setWebChromeClient(new WebChromeClient());
        webView.setOnTouchListener(zzbkVar.zzf);
        webView.getSettings().setMediaPlaybackRequiresUserGesture(false);
        CookieManager cookieManager = CookieManager.getInstance();
        cookieManager.setAcceptCookie(true);
        cookieManager.setAcceptThirdPartyCookies(webView, true);
        webView.loadUrl(uri.toString());
        return zzbkVar;
    }

    private final void zzk(String str, ValueCallback valueCallback, ValueCallback valueCallback2) {
        WebView webView = this.zza;
        if (webView == null) {
            zzfk.zzd("WebView not available at evaluateJavascript");
            return;
        }
        try {
            webView.evaluateJavascript(str, valueCallback);
        } catch (IllegalStateException unused) {
            this.zza.loadUrl(str);
            if (valueCallback2 != null) {
                valueCallback2.onReceiveValue(null);
            }
        }
    }

    public final WebView zza() {
        return this.zza;
    }

    public final zzuu zzc(final String str) {
        final zzvd zzvdVarZzs = zzvd.zzs();
        this.zzb.post(new Runnable() { // from class: com.google.ads.interactivemedia.v3.impl.zzbf
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzf(str, zzvdVarZzs);
            }
        });
        return zzvdVarZzs;
    }

    public final void zzd() {
        this.zzb.post(new Runnable() { // from class: com.google.ads.interactivemedia.v3.impl.zzbd
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zze();
            }
        });
    }

    public final /* synthetic */ void zze() {
        WebView webView = this.zza;
        if (webView != null) {
            webView.destroy();
            this.zza = null;
        }
        this.zzc = null;
        this.zzd = null;
    }

    public final /* synthetic */ void zzf(String str, final zzvd zzvdVar) {
        zzk(str, new ValueCallback() { // from class: com.google.ads.interactivemedia.v3.impl.zzbb
            @Override // android.webkit.ValueCallback
            public final void onReceiveValue(Object obj) {
                zzvdVar.zzc(zzqf.zzh((String) obj));
            }
        }, new ValueCallback() { // from class: com.google.ads.interactivemedia.v3.impl.zzbc
            @Override // android.webkit.ValueCallback
            public final void onReceiveValue(Object obj) {
                zzvdVar.zzc(zzqf.zzf());
            }
        });
    }

    public final /* synthetic */ void zzg(JavaScriptMessage javaScriptMessage) {
        zzfh zzfhVar;
        if (this.zza == null || (zzfhVar = this.zzd) == null) {
            zzfk.zzd("Attempted to send bridge message after cleanup: ".concat(javaScriptMessage.toString()));
            return;
        }
        String strZzc = zzfhVar.zzc(javaScriptMessage);
        zzfk.zzc("Sending Javascript msg: " + javaScriptMessage.toString() + "; URL: " + strZzc);
        zzk(strZzc, null, null);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x002a  */
    public final void zzh(String str, String str2) {
        byte b8;
        JavaScriptMessage javaScriptMessageZza;
        zzfh zzfhVar = this.zzd;
        if (zzfhVar == null) {
            zzfk.zzd("Received JS Message after JavaScriptWebView destroyed");
            return;
        }
        try {
            int iHashCode = str2.hashCode();
            if (iHashCode != 48) {
                if (iHashCode == 52 && str2.equals("4")) {
                    b8 = 1;
                } else {
                    b8 = -1;
                }
            } else if (str2.equals("0")) {
                b8 = 0;
            } else {
                b8 = -1;
            }
            if (b8 != 0) {
                javaScriptMessageZza = b8 != 1 ? null : zzfhVar.zzb(str);
            } else {
                javaScriptMessageZza = zzfhVar.zza(str);
            }
            zzfk.zzc("Received Javascript msg: ".concat(String.valueOf(javaScriptMessageZza)));
            zzbh zzbhVar = this.zzc;
            if (zzbhVar == null) {
                zzfk.zzd("Received JS Message without a listener.");
            } else {
                zzbhVar.zza(javaScriptMessageZza);
            }
        } catch (IllegalArgumentException unused) {
            zzfk.zzd("Invalid internal message. Make sure the Google IMA SDK library is up to date. Message: " + str + ", Message Type: " + str2);
        } catch (Exception e8) {
            zzfk.zzb("Invalid internal message. Message could not be be parsed: " + str + ", Message Type: " + str2, e8);
        }
    }

    public final void zzi(zzbh zzbhVar) {
        this.zzc = zzbhVar;
    }

    public final void zzj(final JavaScriptMessage javaScriptMessage) {
        this.zzb.post(new Runnable() { // from class: com.google.ads.interactivemedia.v3.impl.zzbe
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzg(javaScriptMessage);
            }
        });
    }
}
