package p043f3;

import B0.w0;
import org.json.JSONException;
import org.json.JSONObject;
import p090l3.C3117z0;
import p090l3.g1;

/* JADX INFO: loaded from: classes.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final g1 f25181a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final w0 f25182b;

    public h(g1 g1Var) {
        this.f25181a = g1Var;
        C3117z0 c3117z0 = g1Var.f26579I;
        this.f25182b = c3117z0 == null ? null : c3117z0.i();
    }

    public final JSONObject a() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        g1 g1Var = this.f25181a;
        jSONObject.put("Adapter", g1Var.f26577G);
        jSONObject.put("Latency", g1Var.f26578H);
        String str = g1Var.f26581K;
        if (str == null) {
            jSONObject.put("Ad Source Name", "null");
        } else {
            jSONObject.put("Ad Source Name", str);
        }
        String str2 = g1Var.f26582L;
        if (str2 == null) {
            jSONObject.put("Ad Source ID", "null");
        } else {
            jSONObject.put("Ad Source ID", str2);
        }
        String str3 = g1Var.f26583M;
        if (str3 == null) {
            jSONObject.put("Ad Source Instance Name", "null");
        } else {
            jSONObject.put("Ad Source Instance Name", str3);
        }
        String str4 = g1Var.f26584N;
        if (str4 == null) {
            jSONObject.put("Ad Source Instance ID", "null");
        } else {
            jSONObject.put("Ad Source Instance ID", str4);
        }
        JSONObject jSONObject2 = new JSONObject();
        for (String str5 : g1Var.f26580J.keySet()) {
            jSONObject2.put(str5, g1Var.f26580J.get(str5));
        }
        jSONObject.put("Credentials", jSONObject2);
        w0 w0Var = this.f25182b;
        if (w0Var == null) {
            jSONObject.put("Ad Error", "null");
        } else {
            jSONObject.put("Ad Error", w0Var.k());
        }
        return jSONObject;
    }

    public final String toString() {
        try {
            return a().toString(2);
        } catch (JSONException unused) {
            return "Error forming toString output.";
        }
    }
}
