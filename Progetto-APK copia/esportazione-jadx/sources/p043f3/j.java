package p043f3;

import B0.w0;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class j extends w0 {

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final p f25184L;

    public j(int i8, String str, String str2, w0 w0Var, p pVar) {
        super(i8, str, str2, w0Var);
        this.f25184L = pVar;
    }

    @Override // B0.w0
    public final JSONObject k() throws JSONException {
        JSONObject jSONObjectK = super.k();
        p pVar = this.f25184L;
        if (pVar == null) {
            jSONObjectK.put("Response Info", "null");
        } else {
            jSONObjectK.put("Response Info", pVar.a());
        }
        return jSONObjectK;
    }

    @Override // B0.w0
    public final String toString() {
        try {
            return k().toString(2);
        } catch (JSONException unused) {
            return "Error forming toString output.";
        }
    }
}
