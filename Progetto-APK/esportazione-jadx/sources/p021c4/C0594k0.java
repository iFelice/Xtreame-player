package p021c4;

import android.app.BroadcastOptions;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import java.util.List;
import java.util.Map;
import okhttp3.HttpUrl;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: c4.k0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0594k0 implements M0 {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final C0597l0 f11239G;

    public /* synthetic */ C0594k0(C0597l0 c0597l0) {
        this.f11239G = c0597l0;
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0026  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v2, types: [c4.s0] */
    /* JADX WARN: Type inference failed for: r16v3 */
    /* JADX WARN: Type inference failed for: r16v4 */
    /* JADX WARN: Type inference failed for: r16v5 */
    /* JADX WARN: Type inference failed for: r1v2, types: [c4.T, c4.s0] */
    /* JADX WARN: Type inference failed for: r1v29, types: [c4.T] */
    /* JADX WARN: Type inference failed for: r1v30 */
    /* JADX WARN: Type inference failed for: r1v31 */
    /* JADX WARN: Type inference failed for: r1v32 */
    /* JADX WARN: Type inference failed for: r1v33 */
    /* JADX WARN: Type inference failed for: r1v34 */
    /* JADX WARN: Type inference failed for: r1v35 */
    /* JADX WARN: Type inference failed for: r1v36 */
    /* JADX WARN: Type inference failed for: r1v37 */
    /* JADX WARN: Type inference failed for: r1v38 */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5, types: [c4.T, c4.s0] */
    /* JADX WARN: Type inference failed for: r1v7 */
    @Override // p021c4.M0
    public final void a(String str, int i8, Throwable th, byte[] bArr, Map map) {
        ?? r7;
        ?? r8;
        ?? r16;
        ?? r17;
        int i9 = i8;
        C0597l0 c0597l0 = this.f11239G;
        if (i9 == 200 || i9 == 204) {
            if (th == null) {
                Z z7 = c0597l0.f11257N;
                C0597l0.i(z7);
                z7.f11104a0.a(true);
                r7 = c0597l0.f11258O;
                if (bArr != null || bArr.length == 0) {
                    C0597l0.k(r7);
                    r7.f11046S.a("Deferred Deep Link response empty.");
                    return;
                }
                try {
                    JSONObject jSONObject = new JSONObject(new String(bArr));
                    String strOptString = jSONObject.optString("deeplink", HttpUrl.FRAGMENT_ENCODE_SET);
                    if (TextUtils.isEmpty(strOptString)) {
                        C0597l0.k(r7);
                        r7.f11046S.a("Deferred Deep Link is empty.");
                        r7 = r7;
                    } else {
                        String strOptString2 = jSONObject.optString("gclid", HttpUrl.FRAGMENT_ENCODE_SET);
                        String strOptString3 = jSONObject.optString("gbraid", HttpUrl.FRAGMENT_ENCODE_SET);
                        String strOptString4 = jSONObject.optString("gad_source", HttpUrl.FRAGMENT_ENCODE_SET);
                        double dOptDouble = jSONObject.optDouble("timestamp", 0.0d);
                        Bundle bundle = new Bundle();
                        I1 i10 = c0597l0.f11261R;
                        C0597l0.i(i10);
                        C0597l0 c0597l1 = (C0597l0) i10.f10616G;
                        if (TextUtils.isEmpty(strOptString)) {
                            r17 = r7;
                        } else {
                            Context context = c0597l1.f11250G;
                            r16 = r7;
                            try {
                                List<ResolveInfo> listQueryIntentActivities = context.getPackageManager().queryIntentActivities(new Intent("android.intent.action.VIEW", Uri.parse(strOptString)), 0);
                                r17 = r16;
                                if (listQueryIntentActivities != null && !listQueryIntentActivities.isEmpty()) {
                                    if (!TextUtils.isEmpty(strOptString3)) {
                                        r17 = r16;
                                        bundle.putString("gbraid", strOptString3);
                                    }
                                    r17 = r16;
                                    if (!TextUtils.isEmpty(strOptString4)) {
                                        bundle.putString("gad_source", strOptString4);
                                    }
                                    bundle.putString("gclid", strOptString2);
                                    bundle.putString("_cis", "ddp");
                                    c0597l0.f11265V.y("auto", "_cmp", bundle);
                                    boolean zIsEmpty = TextUtils.isEmpty(strOptString);
                                    r7 = zIsEmpty;
                                    if (!zIsEmpty) {
                                        try {
                                            SharedPreferences.Editor editorEdit = context.getSharedPreferences("google.analytics.deferred.deeplink.prefs", 0).edit();
                                            editorEdit.putString("deeplink", strOptString);
                                            editorEdit.putLong("timestamp", Double.doubleToRawLongBits(dOptDouble));
                                            boolean zCommit = editorEdit.commit();
                                            r7 = editorEdit;
                                            if (zCommit) {
                                                Intent intent = new Intent("android.google.analytics.action.DEEPLINK_ACTION");
                                                Context context2 = ((C0597l0) i10.f10616G).f11250G;
                                                if (Build.VERSION.SDK_INT < 34) {
                                                    context2.sendBroadcast(intent);
                                                    r7 = context2;
                                                } else {
                                                    context2.sendBroadcast(intent, null, BroadcastOptions.makeBasic().setShareIdentityEnabled(true).toBundle());
                                                    r7 = context2;
                                                }
                                            }
                                        } catch (RuntimeException e8) {
                                            T t7 = ((C0597l0) i10.f10616G).f11258O;
                                            C0597l0.k(t7);
                                            Q q7 = t7.f11039L;
                                            q7.b(e8, "Failed to persist Deferred Deep Link. exception");
                                            r7 = q7;
                                        }
                                    }
                                }
                            } catch (JSONException e9) {
                                e = e9;
                                r8 = r16;
                                C0597l0.k(r8);
                                r8.f11039L.b(e, "Failed to parse the Deferred Deep Link response. exception");
                                return;
                            }
                        }
                        r17 = r16;
                        C0597l0.k(r17);
                        ?? r9 = r17;
                        r9.f11042O.d(strOptString2, strOptString3, strOptString, "Deferred Deep Link validation failed. gclid, gbraid, deep link");
                        r7 = r9;
                    }
                    return;
                } catch (JSONException e10) {
                    e = e10;
                    r8 = r7;
                }
            }
        } else if (i9 == 304) {
            i9 = 304;
            if (th == null) {
                Z z8 = c0597l0.f11257N;
                C0597l0.i(z8);
                z8.f11104a0.a(true);
                r7 = c0597l0.f11258O;
                if (bArr != null) {
                }
                C0597l0.k(r7);
                r7.f11046S.a("Deferred Deep Link response empty.");
                return;
            }
        }
        T t8 = c0597l0.f11258O;
        C0597l0.k(t8);
        t8.f11042O.c(Integer.valueOf(i9), th, "Network Request for Deferred Deep Link failed. response, exception");
    }

    public final void b(String str, Bundle bundle) {
        String string;
        C0597l0 c0597l0 = this.f11239G;
        C0591j0 c0591j0 = c0597l0.f11259P;
        C0597l0.k(c0591j0);
        c0591j0.m();
        if (c0597l0.f()) {
            return;
        }
        if (bundle.isEmpty()) {
            string = null;
        } else {
            if (true == str.isEmpty()) {
                str = "auto";
            }
            Uri.Builder builder = new Uri.Builder();
            builder.path(str);
            for (String str2 : bundle.keySet()) {
                builder.appendQueryParameter(str2, bundle.getString(str2));
            }
            string = builder.build().toString();
        }
        if (TextUtils.isEmpty(string)) {
            return;
        }
        Z z7 = c0597l0.f11257N;
        C0597l0.i(z7);
        z7.f11107d0.o(string);
        c0597l0.f11263T.getClass();
        z7.f11108e0.b(System.currentTimeMillis());
    }

    public final boolean c() {
        C0597l0 c0597l0 = this.f11239G;
        if (!TextUtils.isEmpty(c0597l0.f11251H)) {
            return false;
        }
        T t7 = c0597l0.f11258O;
        C0597l0.k(t7);
        return Log.isLoggable(t7.x(), 3);
    }

    public final boolean d() {
        Z z7 = this.f11239G.f11257N;
        C0597l0.i(z7);
        return z7.f11108e0.a() > 0;
    }

    public final boolean e() {
        if (!d()) {
            return false;
        }
        C0597l0 c0597l0 = this.f11239G;
        c0597l0.f11263T.getClass();
        long jCurrentTimeMillis = System.currentTimeMillis();
        Z z7 = c0597l0.f11257N;
        C0597l0.i(z7);
        return jCurrentTimeMillis - z7.f11108e0.a() > c0597l0.f11256M.w(null, E.f10792j0);
    }

    public C0594k0(C0597l0 c0597l0, int i8) {
        this.f11239G = c0597l0;
    }
}
