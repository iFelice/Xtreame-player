package com.google.android.gms.internal.ads;

import android.content.Context;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import p090l3.C3099q;
import p113o3.C3161t;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Yf, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1004Yf extends AbstractC0990Xf {
    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.webkit.WebViewClient
    public final WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
        String str;
        if (webResourceRequest == null || webResourceRequest.getUrl() == null) {
            return null;
        }
        String string = webResourceRequest.getUrl().toString();
        Map<String, String> requestHeaders = webResourceRequest.getRequestHeaders();
        if (!(webView instanceof InterfaceC0715Ef)) {
            p120p3.h.g("Tried to intercept request from a WebView that wasn't an AdWebView.");
            return null;
        }
        InterfaceC0715Ef interfaceC0715Ef = (InterfaceC0715Ef) webView;
        InterfaceC0758Hd interfaceC0758Hd = this.f17480d0;
        if (interfaceC0758Hd != null) {
            ((C0728Fd) interfaceC0758Hd).a(string, requestHeaders, 1);
        }
        int i8 = Ly.f14592d;
        if (!"mraid.js".equalsIgnoreCase(new File(string).getName())) {
            if (requestHeaders == null) {
                requestHeaders = Collections.emptyMap();
            }
            return K(string, requestHeaders);
        }
        if (interfaceC0715Ef.zzN() != null) {
            AbstractC0990Xf abstractC0990XfZzN = interfaceC0715Ef.zzN();
            synchronized (abstractC0990XfZzN.f17460J) {
                abstractC0990XfZzN.f17468R = false;
                abstractC0990XfZzN.f17473W = true;
                AbstractC1988se.f20910e.execute(new RunnableC0878Pf(abstractC0990XfZzN, 16));
            }
        }
        if (interfaceC0715Ef.l().b()) {
            str = (String) C3099q.f26624d.f26627c.a(Q7.f15660L);
        } else if (interfaceC0715Ef.j0()) {
            str = (String) C3099q.f26624d.f26627c.a(Q7.f15653K);
        } else {
            str = (String) C3099q.f26624d.f26627c.a(Q7.f15645J);
        }
        p083k3.l lVar = p083k3.l.f25980A;
        p113o3.O o4 = lVar.f25983c;
        Context context = interfaceC0715Ef.getContext();
        String str2 = interfaceC0715Ef.zzn().f28196G;
        try {
            HashMap map = new HashMap();
            map.put("User-Agent", lVar.f25983c.w(context, str2));
            map.put("Cache-Control", "max-stale=3600");
            new p113o3.v(context);
            C3161t c3161tA = p113o3.v.a(0, str, map, null);
            String str3 = (String) c3161tA.f21082G.get(60L, TimeUnit.SECONDS);
            if (str3 != null) {
                return new WebResourceResponse("application/javascript", "UTF-8", new ByteArrayInputStream(str3.getBytes("UTF-8")));
            }
            return null;
        } catch (IOException | InterruptedException | ExecutionException | TimeoutException e8) {
            p120p3.h.h("Could not fetch MRAID JS.", e8);
            return null;
        }
    }
}
