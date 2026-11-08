package com.google.android.gms.internal.ads;

import android.R;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.os.Message;
import android.support.v4.media.session.PlaybackStateCompat;
import android.view.View;
import android.view.WindowManager;
import android.webkit.ConsoleMessage;
import android.webkit.GeolocationPermissions;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebStorage;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Df, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0700Df extends WebChromeClient {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InterfaceC0715Ef f12837a;

    public C0700Df(C0892Qf c0892Qf) {
        this.f12837a = c0892Qf;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final Context b(WebView webView) {
        if (!(webView instanceof InterfaceC0715Ef)) {
            return webView.getContext();
        }
        InterfaceC0715Ef interfaceC0715Ef = (InterfaceC0715Ef) webView;
        Activity activityZzi = interfaceC0715Ef.zzi();
        return activityZzi != null ? activityZzi : interfaceC0715Ef.getContext();
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0056 A[Catch: BadTokenException -> 0x0041, TryCatch #0 {BadTokenException -> 0x0041, blocks: (B:4:0x0008, B:6:0x000e, B:8:0x0016, B:10:0x001e, B:12:0x0024, B:16:0x0044, B:18:0x0056, B:19:0x009c), top: B:23:0x0008 }] */
    /* JADX WARN: Code duplicated, block: B:19:0x009c A[Catch: BadTokenException -> 0x0041, TRY_LEAVE, TryCatch #0 {BadTokenException -> 0x0041, blocks: (B:4:0x0008, B:6:0x000e, B:8:0x0016, B:10:0x001e, B:12:0x0024, B:16:0x0044, B:18:0x0056, B:19:0x009c), top: B:23:0x0008 }] */
    public final boolean a(Context context, String str, String str2, String str3, String str4, JsResult jsResult, JsPromptResult jsPromptResult, boolean z7) {
        p083k3.b bVar;
        AlertDialog.Builder builderI;
        InterfaceC0715Ef interfaceC0715Ef = this.f12837a;
        if (interfaceC0715Ef != null) {
            try {
                if (interfaceC0715Ef.zzN() != null && interfaceC0715Ef.zzN().f17478b0 != null && (bVar = interfaceC0715Ef.zzN().f17478b0) != null && !bVar.b()) {
                    bVar.a("window." + str + "('" + str3 + "')");
                    return false;
                }
                p113o3.O o4 = p083k3.l.f25980A.f25983c;
                builderI = p113o3.O.i(context);
                builderI.setTitle(str2);
                if (z7) {
                    LinearLayout linearLayout = new LinearLayout(context);
                    linearLayout.setOrientation(1);
                    TextView textView = new TextView(context);
                    textView.setText(str3);
                    EditText editText = new EditText(context);
                    editText.setText(str4);
                    linearLayout.addView(textView);
                    linearLayout.addView(editText);
                    builderI.setView(linearLayout).setPositiveButton(R.string.ok, new DialogInterfaceOnClickListenerC1275eq(2, jsPromptResult, editText)).setNegativeButton(R.string.cancel, new DialogInterfaceOnClickListenerC0958Vb(jsPromptResult, 1)).setOnCancelListener(new DialogInterfaceOnCancelListenerC0655Af(jsPromptResult, 1)).create().show();
                } else {
                    builderI.setMessage(str3).setPositiveButton(R.string.ok, new DialogInterfaceOnClickListenerC0670Bf(jsResult, 1)).setNegativeButton(R.string.cancel, new DialogInterfaceOnClickListenerC0670Bf(jsResult, 0)).setOnCancelListener(new DialogInterfaceOnCancelListenerC0655Af(jsResult, 0)).create().show();
                }
            } catch (WindowManager.BadTokenException e8) {
                p120p3.h.h("Fail to display Dialog.", e8);
            }
        } else {
            p113o3.O o7 = p083k3.l.f25980A.f25983c;
            builderI = p113o3.O.i(context);
            builderI.setTitle(str2);
            if (z7) {
                LinearLayout linearLayout2 = new LinearLayout(context);
                linearLayout2.setOrientation(1);
                TextView textView2 = new TextView(context);
                textView2.setText(str3);
                EditText editText2 = new EditText(context);
                editText2.setText(str4);
                linearLayout2.addView(textView2);
                linearLayout2.addView(editText2);
                builderI.setView(linearLayout2).setPositiveButton(R.string.ok, new DialogInterfaceOnClickListenerC1275eq(2, jsPromptResult, editText2)).setNegativeButton(R.string.cancel, new DialogInterfaceOnClickListenerC0958Vb(jsPromptResult, 1)).setOnCancelListener(new DialogInterfaceOnCancelListenerC0655Af(jsPromptResult, 1)).create().show();
            } else {
                builderI.setMessage(str3).setPositiveButton(R.string.ok, new DialogInterfaceOnClickListenerC0670Bf(jsResult, 1)).setNegativeButton(R.string.cancel, new DialogInterfaceOnClickListenerC0670Bf(jsResult, 0)).setOnCancelListener(new DialogInterfaceOnCancelListenerC0655Af(jsResult, 0)).create().show();
            }
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.webkit.WebChromeClient
    public final void onCloseWindow(WebView webView) {
        if (!(webView instanceof InterfaceC0715Ef)) {
            p120p3.h.g("Tried to close a WebView that wasn't an AdWebView.");
            return;
        }
        p105n3.k kVarB = ((InterfaceC0715Ef) webView).B();
        if (kVarB == null) {
            p120p3.h.g("Tried to close an AdWebView not associated with an overlay.");
        } else {
            kVarB.zzb();
        }
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onConsoleMessage(ConsoleMessage consoleMessage) {
        String strMessage = consoleMessage.message();
        String strSourceId = consoleMessage.sourceId();
        String strH = p000a.r.h(com.google.protobuf.U2.q("JS: ", strMessage, " (", strSourceId, ":"), consoleMessage.lineNumber(), ")");
        if (strH.contains("Application Cache")) {
            return super.onConsoleMessage(consoleMessage);
        }
        int i8 = AbstractC0685Cf.f12638a[consoleMessage.messageLevel().ordinal()];
        if (i8 == 1) {
            p120p3.h.d(strH);
        } else if (i8 == 2) {
            p120p3.h.g(strH);
        } else if (i8 == 3 || i8 == 4 || i8 != 5) {
            p120p3.h.f(strH);
        } else {
            p120p3.h.b(strH);
        }
        return super.onConsoleMessage(consoleMessage);
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onCreateWindow(WebView webView, boolean z7, boolean z8, Message message) {
        WebView.WebViewTransport webViewTransport = (WebView.WebViewTransport) message.obj;
        WebView webView2 = new WebView(webView.getContext());
        InterfaceC0715Ef interfaceC0715Ef = this.f12837a;
        if (interfaceC0715Ef.Q() != null) {
            webView2.setWebViewClient(interfaceC0715Ef.Q());
        }
        webViewTransport.setWebView(webView2);
        message.sendToTarget();
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public final void onExceededDatabaseQuota(String str, String str2, long j8, long j9, long j10, WebStorage.QuotaUpdater quotaUpdater) {
        long j11 = 5242880 - j10;
        if (j11 <= 0) {
            quotaUpdater.updateQuota(j8);
            return;
        }
        if (j8 == 0) {
            if (j9 > j11 || j9 > PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED) {
                j9 = 0;
            }
        } else if (j9 == 0) {
            j9 = Math.min(Math.min(PlaybackStateCompat.ACTION_PREPARE_FROM_URI, j11) + j8, PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED);
        } else {
            if (j9 <= Math.min(PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED - j8, j11)) {
                j8 += j9;
            }
            j9 = j8;
        }
        quotaUpdater.updateQuota(j9);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0023  */
    @Override // android.webkit.WebChromeClient
    public final void onGeolocationPermissionsShowPrompt(String str, GeolocationPermissions.Callback callback) {
        boolean z7;
        if (callback != null) {
            p083k3.l lVar = p083k3.l.f25980A;
            p113o3.O o4 = lVar.f25983c;
            InterfaceC0715Ef interfaceC0715Ef = this.f12837a;
            if (p113o3.O.a(interfaceC0715Ef.getContext(), "android.permission.ACCESS_FINE_LOCATION")) {
                z7 = true;
            } else {
                p113o3.O o7 = lVar.f25983c;
                if (p113o3.O.a(interfaceC0715Ef.getContext(), "android.permission.ACCESS_COARSE_LOCATION")) {
                    z7 = true;
                } else {
                    z7 = false;
                }
            }
            callback.invoke(str, z7, true);
        }
    }

    @Override // android.webkit.WebChromeClient
    public final void onHideCustomView() {
        p105n3.k kVarB = this.f12837a.B();
        if (kVarB == null) {
            p120p3.h.g("Could not get ad overlay when hiding custom view.");
        } else {
            kVarB.zzg();
        }
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
        return a(b(webView), "alert", str, str2, null, jsResult, null, false);
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsBeforeUnload(WebView webView, String str, String str2, JsResult jsResult) {
        return a(b(webView), "onBeforeUnload", str, str2, null, jsResult, null, false);
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsConfirm(WebView webView, String str, String str2, JsResult jsResult) {
        return a(b(webView), "confirm", str, str2, null, jsResult, null, false);
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
        return a(b(webView), "prompt", str, str2, str3, null, jsPromptResult, true);
    }

    @Override // android.webkit.WebChromeClient
    public final void onShowCustomView(View view, int i8, WebChromeClient.CustomViewCallback customViewCallback) {
        p105n3.k kVarB = this.f12837a.B();
        if (kVarB == null) {
            p120p3.h.g("Could not get ad overlay when showing custom view.");
            customViewCallback.onCustomViewHidden();
            return;
        }
        Activity activity = kVarB.f27510H;
        FrameLayout frameLayout = new FrameLayout(activity);
        kVarB.f27516N = frameLayout;
        frameLayout.setBackgroundColor(-16777216);
        kVarB.f27516N.addView(view, -1, -1);
        activity.setContentView(kVarB.f27516N);
        kVarB.f27526X = true;
        kVarB.f27517O = customViewCallback;
        kVarB.f27515M = true;
        kVarB.z3(i8);
    }

    @Override // android.webkit.WebChromeClient
    public final void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
        onShowCustomView(view, -1, customViewCallback);
    }
}
