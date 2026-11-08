package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import android.webkit.JavascriptInterface;
import okhttp3.HttpUrl;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Vf, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0962Vf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InterfaceC0976Wf f17074a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final L9 f17075b;

    public C0962Vf(InterfaceC0976Wf interfaceC0976Wf, L9 l9) {
        this.f17075b = l9;
        this.f17074a = interfaceC0976Wf;
    }

    @JavascriptInterface
    public String getClickSignals(String str) {
        if (TextUtils.isEmpty(str)) {
            p113o3.I.k("Click string is empty, not proceeding.");
            return HttpUrl.FRAGMENT_ENCODE_SET;
        }
        InterfaceC0976Wf interfaceC0976Wf = this.f17074a;
        H4 h4T = ((InterfaceC0715Ef) interfaceC0976Wf).T();
        if (h4T == null) {
            p113o3.I.k("Signal utils is empty, ignoring.");
            return HttpUrl.FRAGMENT_ENCODE_SET;
        }
        E4 e8 = h4T.f13700b;
        if (e8 == null) {
            p113o3.I.k("Signals object is empty, ignoring.");
            return HttpUrl.FRAGMENT_ENCODE_SET;
        }
        if (interfaceC0976Wf.getContext() != null) {
            return e8.d(interfaceC0976Wf.getContext(), str, ((InterfaceC1111bg) interfaceC0976Wf).j(), interfaceC0976Wf.zzi());
        }
        p113o3.I.k("Context is null, ignoring.");
        return HttpUrl.FRAGMENT_ENCODE_SET;
    }

    @JavascriptInterface
    public String getViewSignals() {
        InterfaceC0976Wf interfaceC0976Wf = this.f17074a;
        H4 h4T = ((InterfaceC0715Ef) interfaceC0976Wf).T();
        if (h4T == null) {
            p113o3.I.k("Signal utils is empty, ignoring.");
            return HttpUrl.FRAGMENT_ENCODE_SET;
        }
        E4 e8 = h4T.f13700b;
        if (e8 == null) {
            p113o3.I.k("Signals object is empty, ignoring.");
            return HttpUrl.FRAGMENT_ENCODE_SET;
        }
        if (interfaceC0976Wf.getContext() != null) {
            return e8.zzh(interfaceC0976Wf.getContext(), ((InterfaceC1111bg) interfaceC0976Wf).j(), interfaceC0976Wf.zzi());
        }
        p113o3.I.k("Context is null, ignoring.");
        return HttpUrl.FRAGMENT_ENCODE_SET;
    }

    @JavascriptInterface
    public void notify(String str) {
        if (TextUtils.isEmpty(str)) {
            p120p3.h.g("URL is empty, ignoring message");
        } else {
            p113o3.O.f27924l.post(new RunnableC0755Ha(19, this, str));
        }
    }
}
