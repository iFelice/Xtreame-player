package Z3;

import android.app.Application;
import android.app.Dialog;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import b7.C0538n;
import java.util.Objects;
import java.util.concurrent.Executor;
import org.json.JSONObject;

/* JADX INFO: renamed from: Z3.w, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0440w implements J {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Application f8392a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C0438u f8393b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Handler f8394c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Executor f8395d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Z f8396e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final C0425g f8397f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final C0430l f8398g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final C0427i f8399h;

    public C0440w(Application application, C0438u c0438u, Handler handler, F f8, Z z7, C0425g c0425g, C0430l c0430l, C0427i c0427i) {
        this.f8392a = application;
        this.f8393b = c0438u;
        this.f8394c = handler;
        this.f8395d = f8;
        this.f8396e = z7;
        this.f8397f = c0425g;
        this.f8398g = c0430l;
        this.f8399h = c0427i;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:17:0x0035  */
    @Override // Z3.J
    public final boolean a(JSONObject jSONObject, String str) {
        byte b8;
        int i8 = 3;
        int i9 = 1;
        switch (str) {
            case "load_complete":
                b8 = 0;
                break;
            case "configure_app_assets":
                b8 = 3;
                break;
            case "browser":
                b8 = 2;
                break;
            case "dismiss":
                b8 = 1;
                break;
            default:
                b8 = -1;
                break;
        }
        C0430l c0430l = this.f8398g;
        if (b8 == 0) {
            C0429k c0429k = (C0429k) c0430l.f8362i.getAndSet(null);
            if (c0429k != null) {
                c0429k.i(c0430l);
            }
            return true;
        }
        if (b8 != 1) {
            if (b8 != 2) {
                if (b8 != 3) {
                    return false;
                }
                this.f8395d.execute(new r(this, i9));
                return true;
            }
            String strOptString = jSONObject.optString("url");
            if (TextUtils.isEmpty(strOptString)) {
                Log.d("UserMessagingPlatform", "Action[browser]: empty url.");
            }
            Uri uri = Uri.parse(strOptString);
            if (uri.getScheme() == null) {
                Log.d("UserMessagingPlatform", "Action[browser]: empty scheme: ".concat(String.valueOf(strOptString)));
            }
            try {
                this.f8393b.startActivity(new Intent("android.intent.action.VIEW", uri));
            } catch (ActivityNotFoundException e8) {
                Log.d("UserMessagingPlatform", "Action[browser]: can not open url: ".concat(String.valueOf(strOptString)), e8);
            }
            return true;
        }
        String strOptString2 = jSONObject.optString("status");
        strOptString2.getClass();
        switch (strOptString2) {
            case "CONSENT_SIGNAL_NOT_REQUIRED":
                i8 = 1;
            case "CONSENT_SIGNAL_NON_PERSONALIZED_ADS":
            case "personalized":
            case "CONSENT_SIGNAL_SUFFICIENT":
            case "CONSENT_SIGNAL_PERSONALIZED_ADS":
            case "non_personalized":
                Dialog dialog = c0430l.f8359f;
                if (dialog != null) {
                    dialog.dismiss();
                    c0430l.f8359f = null;
                }
                c0430l.f8355b.f8387a = null;
                C0428j c0428j = (C0428j) c0430l.f8364k.getAndSet(null);
                if (c0428j != null) {
                    c0428j.f8351H.f8354a.unregisterActivityLifecycleCallbacks(c0428j);
                }
                C0538n c0538n = (C0538n) c0430l.f8363j.getAndSet(null);
                if (c0538n != null) {
                    c0430l.f8356c.f8345b.edit().putInt("consent_status", i8).commit();
                    c0538n.a(null);
                }
                return true;
            default:
                a0 a0Var = new a0(1, "We are getting something wrong with the webview.");
                Dialog dialog2 = c0430l.f8359f;
                if (dialog2 != null) {
                    dialog2.dismiss();
                    c0430l.f8359f = null;
                }
                c0430l.f8355b.f8387a = null;
                C0428j c0428j2 = (C0428j) c0430l.f8364k.getAndSet(null);
                if (c0428j2 != null) {
                    c0428j2.f8351H.f8354a.unregisterActivityLifecycleCallbacks(c0428j2);
                }
                C0538n c0538n2 = (C0538n) c0430l.f8363j.getAndSet(null);
                if (c0538n2 != null) {
                    c0538n2.a(a0Var.a());
                }
                return true;
        }
    }

    public final void b(String str) {
        Log.d("UserMessagingPlatform", "Receive consent action: ".concat(String.valueOf(str)));
        Uri uri = Uri.parse(str);
        String queryParameter = uri.getQueryParameter("action");
        String queryParameter2 = uri.getQueryParameter("args");
        J[] jArr = {this, this.f8397f};
        Z z7 = this.f8396e;
        z7.getClass();
        z7.f8283a.execute(new RunnableC0439v(queryParameter, queryParameter2, jArr, 0));
    }

    @Override // Z3.J
    public final Executor zza() {
        Handler handler = this.f8394c;
        Objects.requireNonNull(handler);
        return new J.e(3, handler);
    }
}
