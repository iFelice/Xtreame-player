package p083k3;

import Z3.C0429k;
import Z3.C0436s;
import Z3.C0440w;
import Z3.a0;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.internal.ads.C1077ay;
import com.google.android.gms.internal.ads.I4;
import com.google.android.gms.internal.ads.Rx;
import java.util.Locale;
import p090l3.C3097p;
import p090l3.InterfaceC3110w;
import p113o3.r;
import p120p3.d;
import p120p3.h;

/* JADX INFO: loaded from: classes.dex */
public final class i extends WebViewClient {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f25967a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f25968b;

    public /* synthetic */ i(C0436s c0436s) {
        this.f25967a = 2;
        this.f25968b = c0436s;
    }

    @Override // android.webkit.WebViewClient
    public final void onLoadResource(WebView webView, String str) {
        switch (this.f25967a) {
            case 2:
                C0436s c0436s = (C0436s) this.f25968b;
                int i8 = C0436s.f8381J;
                if (str != null && str.startsWith("consent://")) {
                    c0436s.f8383H.b(str);
                    break;
                }
                break;
            default:
                super.onLoadResource(webView, str);
                break;
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        switch (this.f25967a) {
            case 2:
                C0436s c0436s = (C0436s) this.f25968b;
                if (!c0436s.f8384I) {
                    Log.d("UserMessagingPlatform", "Wall html loaded.");
                    c0436s.f8384I = true;
                }
                break;
            default:
                super.onPageFinished(webView, str);
                break;
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, int i8, String str, String str2) {
        switch (this.f25967a) {
            case 2:
                C0440w c0440w = ((C0436s) this.f25968b).f8383H;
                c0440w.getClass();
                Locale locale = Locale.US;
                a0 a0Var = new a0(2, "WebResourceError(" + i8 + ", " + str2 + "): " + str);
                C0429k c0429k = (C0429k) c0440w.f8398g.f8362i.getAndSet(null);
                if (c0429k != null) {
                    c0429k.a(a0Var.a());
                    break;
                }
                break;
            default:
                super.onReceivedError(webView, i8, str, str2);
                break;
        }
    }

    @Override // android.webkit.WebViewClient
    public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        switch (this.f25967a) {
            case 1:
                Log.w("NativeBridge", "WebView renderer gone: " + renderProcessGoneDetail.toString() + "for WebView: " + String.valueOf(webView));
                Rx rx = (Rx) this.f25968b;
                if (rx.a() == webView) {
                    Log.w("NativeBridge", "Deallocating the Native bridge as it is unusable. No further events will be generated for this session.");
                    rx.f15521b = new C1077ay(null);
                }
                webView.destroy();
                return true;
            default:
                return super.onRenderProcessGone(webView, renderProcessGoneDetail);
        }
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        switch (this.f25967a) {
            case 2:
                String string = webResourceRequest.getUrl().toString();
                C0436s c0436s = (C0436s) this.f25968b;
                int i8 = C0436s.f8381J;
                if (string == null || !string.startsWith("consent://")) {
                    return false;
                }
                c0436s.f8383H.b(string);
                return true;
            default:
                return super.shouldOverrideUrlLoading(webView, webResourceRequest);
        }
    }

    public /* synthetic */ i(Object obj, int i8) {
        this.f25967a = i8;
        this.f25968b = obj;
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        int i8 = this.f25967a;
        int iO = 0;
        Object obj = this.f25968b;
        switch (i8) {
            case 0:
                k kVar = (k) obj;
                if (str.startsWith(kVar.zzq())) {
                    return false;
                }
                if (str.startsWith("gmsg://noAdLoaded")) {
                    InterfaceC3110w interfaceC3110w = kVar.f25977M;
                    if (interfaceC3110w != null) {
                        try {
                            interfaceC3110w.c(r.H(3, null, null));
                        } catch (RemoteException e8) {
                            h.i("#007 Could not call remote method.", e8);
                        }
                    }
                    InterfaceC3110w interfaceC3110w2 = kVar.f25977M;
                    if (interfaceC3110w2 != null) {
                        try {
                            interfaceC3110w2.d(3);
                        } catch (RemoteException e9) {
                            h.i("#007 Could not call remote method.", e9);
                        }
                    }
                    kVar.z3(0);
                    break;
                } else {
                    if (str.startsWith("gmsg://scriptLoadFailed")) {
                        InterfaceC3110w interfaceC3110w3 = kVar.f25977M;
                        if (interfaceC3110w3 != null) {
                            try {
                                interfaceC3110w3.c(r.H(1, null, null));
                            } catch (RemoteException e10) {
                                h.i("#007 Could not call remote method.", e10);
                            }
                        }
                        InterfaceC3110w interfaceC3110w4 = kVar.f25977M;
                        if (interfaceC3110w4 != null) {
                            try {
                                interfaceC3110w4.d(0);
                            } catch (RemoteException e11) {
                                h.i("#007 Could not call remote method.", e11);
                            }
                        }
                        kVar.z3(0);
                    } else {
                        boolean zStartsWith = str.startsWith("gmsg://adResized");
                        Context context = kVar.f25974J;
                        if (zStartsWith) {
                            InterfaceC3110w interfaceC3110w5 = kVar.f25977M;
                            if (interfaceC3110w5 != null) {
                                try {
                                    interfaceC3110w5.zzi();
                                } catch (RemoteException e12) {
                                    h.i("#007 Could not call remote method.", e12);
                                }
                            }
                            String queryParameter = Uri.parse(str).getQueryParameter("height");
                            if (!TextUtils.isEmpty(queryParameter)) {
                                try {
                                    d dVar = C3097p.f26618f.f26619a;
                                    iO = d.o(context, Integer.parseInt(queryParameter));
                                    break;
                                } catch (NumberFormatException unused) {
                                }
                            }
                            kVar.z3(iO);
                        } else if (!str.startsWith("gmsg://")) {
                            InterfaceC3110w interfaceC3110w6 = kVar.f25977M;
                            if (interfaceC3110w6 != null) {
                                try {
                                    interfaceC3110w6.zzc();
                                    ((k) obj).f25977M.zzh();
                                } catch (RemoteException e13) {
                                    h.i("#007 Could not call remote method.", e13);
                                }
                            }
                            if (kVar.f25978N != null) {
                                Uri uriA = Uri.parse(str);
                                try {
                                    uriA = kVar.f25978N.a(uriA, context, null, null);
                                } catch (I4 e14) {
                                    h.h("Unable to process ad data", e14);
                                }
                                str = uriA.toString();
                            }
                            Intent intent = new Intent("android.intent.action.VIEW");
                            intent.setData(Uri.parse(str));
                            context.startActivity(intent);
                        }
                    }
                    break;
                }
                return true;
            case 1:
            default:
                return super.shouldOverrideUrlLoading(webView, str);
            case 2:
                C0436s c0436s = (C0436s) obj;
                int i9 = C0436s.f8381J;
                if (str == null || !str.startsWith("consent://")) {
                    return false;
                }
                c0436s.f8383H.b(str);
                return true;
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        switch (this.f25967a) {
            case 0:
                k kVar = (k) this.f25968b;
                InterfaceC3110w interfaceC3110w = kVar.f25977M;
                if (interfaceC3110w != null) {
                    try {
                        interfaceC3110w.c(r.H(1, null, null));
                    } catch (RemoteException e8) {
                        h.i("#007 Could not call remote method.", e8);
                    }
                }
                InterfaceC3110w interfaceC3110w2 = kVar.f25977M;
                if (interfaceC3110w2 != null) {
                    try {
                        interfaceC3110w2.d(0);
                    } catch (RemoteException e9) {
                        h.i("#007 Could not call remote method.", e9);
                        return;
                    }
                }
                break;
            default:
                super.onReceivedError(webView, webResourceRequest, webResourceError);
                break;
        }
    }
}
