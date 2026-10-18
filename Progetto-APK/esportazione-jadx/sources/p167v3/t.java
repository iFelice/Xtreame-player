package p167v3;

import C2.C0091g;
import com.google.android.gms.internal.ads.AbstractC2175w8;
import com.google.android.gms.internal.ads.C1139c8;
import com.google.android.gms.internal.ads.C1294f8;
import com.google.android.gms.internal.ads.C1936re;
import com.google.android.gms.internal.ads.Q7;
import java.util.Locale;
import okhttp3.HttpUrl;
import org.json.JSONException;
import org.json.JSONObject;
import p004a3.b;
import p083k3.l;
import p090l3.C3099q;
import p120p3.h;
import p182x3.a;

/* JADX INFO: loaded from: classes.dex */
public final class t extends a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f30690a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f30691b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f30692c;

    public t(String str, int i8, Object obj) {
        this.f30690a = i8;
        this.f30691b = str;
        this.f30692c = obj;
    }

    @Override // p182x3.a
    public final void a(String str) {
        int i8 = this.f30690a;
        String str2 = this.f30691b;
        Object obj = this.f30692c;
        switch (i8) {
            case 0:
                h.g("Failed to generate query info for the tagging library, error: ".concat(String.valueOf(str)));
                String strConcat = ((Boolean) AbstractC2175w8.f21643a.l()).booleanValue() ? ",\"appLevelSignals\":".concat(((C3193a) obj).f30596k.a().toString()) : HttpUrl.FRAGMENT_ENCODE_SET;
                Locale locale = Locale.getDefault();
                Object[] objArr = new Object[4];
                int i9 = 0;
                objArr[0] = str2;
                objArr[1] = str;
                C1294f8 c1294f8 = AbstractC2175w8.f21644b;
                objArr[2] = Long.valueOf(((Boolean) c1294f8.l()).booleanValue() ? ((Long) C3099q.f26624d.f26627c.a(Q7.h9)).longValue() : 0L);
                objArr[3] = strConcat;
                String str3 = String.format(locale, "window.postMessage({\"paw_id\":\"%1$s\",\"error\":\"%2$s\",\"sdk_ttl_ms\":%3$d%4$s}, '*');", objArr);
                if (((Boolean) c1294f8.l()).booleanValue()) {
                    try {
                        ((C3193a) obj).f30593h.execute(new s(this, str3, i9));
                    } catch (RuntimeException e8) {
                        l.f25980A.f25987g.h("TaggingLibraryJsInterface.getQueryInfo.onFailure", e8);
                    }
                } else {
                    ((C3193a) obj).f30587b.evaluateJavascript(str3, null);
                }
                if (((Boolean) AbstractC2175w8.f21643a.l()).booleanValue()) {
                    v vVar = ((C3193a) obj).f30597l;
                    vVar.getClass();
                    ((C1936re) vVar.f30697c).execute(new u(vVar, i9));
                }
                break;
            default:
                h.g("Failed to generate query info for Custom Tab error: ".concat(String.valueOf(str)));
                try {
                    C1139c8 c1139c8 = (C1139c8) obj;
                    c1139c8.f18184g.a(c1139c8.a(str2, str).toString());
                } catch (JSONException e9) {
                    h.e("Error creating PACT Error Response JSON: ", e9);
                }
                break;
        }
    }

    @Override // p182x3.a
    public final void b(C0091g c0091g) {
        String str;
        int i8 = 1;
        int i9 = 0;
        int i10 = this.f30690a;
        String str2 = this.f30691b;
        Object obj = this.f30692c;
        switch (i10) {
            case 0:
                String str3 = (String) ((b) c0091g.f1387H).f8650H;
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("paw_id", str2);
                    jSONObject.put("signal", str3);
                    jSONObject.put("sdk_ttl_ms", ((Boolean) AbstractC2175w8.f21644b.l()).booleanValue() ? ((Long) C3099q.f26624d.f26627c.a(Q7.h9)).longValue() : 0L);
                    if (((Boolean) AbstractC2175w8.f21643a.l()).booleanValue()) {
                        jSONObject.put("appLevelSignals", ((C3193a) obj).f30596k.a());
                    }
                    str = String.format(Locale.getDefault(), "window.postMessage(%1$s, '*');", jSONObject);
                } catch (JSONException unused) {
                    String strConcat = ((Boolean) AbstractC2175w8.f21643a.l()).booleanValue() ? ",\"appLevelSignals\":".concat(((C3193a) obj).f30596k.a().toString()) : HttpUrl.FRAGMENT_ENCODE_SET;
                    Locale locale = Locale.getDefault();
                    Object[] objArr = new Object[4];
                    objArr[0] = str2;
                    objArr[1] = (String) ((b) c0091g.f1387H).f8650H;
                    objArr[2] = Long.valueOf(((Boolean) AbstractC2175w8.f21644b.l()).booleanValue() ? ((Long) C3099q.f26624d.f26627c.a(Q7.h9)).longValue() : 0L);
                    objArr[3] = strConcat;
                    str = String.format(locale, "window.postMessage({\"paw_id\":\"%1$s\",\"signal\":\"%2$s\",\"sdk_ttl_ms\":%3$d%4$s}, '*');", objArr);
                }
                if (((Boolean) AbstractC2175w8.f21644b.l()).booleanValue()) {
                    try {
                        ((C3193a) obj).f30593h.execute(new s(this, str, i8));
                    } catch (RuntimeException e8) {
                        l.f25980A.f25987g.h("TaggingLibraryJsInterface.getQueryInfo.onSuccess", e8);
                    }
                } else {
                    ((C3193a) obj).f30587b.evaluateJavascript(str, null);
                }
                if (((Boolean) AbstractC2175w8.f21643a.l()).booleanValue()) {
                    v vVar = ((C3193a) obj).f30597l;
                    vVar.getClass();
                    ((C1936re) vVar.f30697c).execute(new u(vVar, i9));
                }
                break;
            default:
                try {
                    C1139c8 c1139c8 = (C1139c8) obj;
                    c1139c8.f18184g.a(c1139c8.b(str2, (String) ((b) c0091g.f1387H).f8650H).toString());
                } catch (JSONException e9) {
                    h.e("Error creating PACT Signal Response JSON: ", e9);
                }
                break;
        }
    }
}
