package E3;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class l extends r {

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public final /* synthetic */ int f2914Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public final /* synthetic */ JSONObject f2915a0 = null;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public final /* synthetic */ j f2916b0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ l(j jVar, int i8) {
        super(jVar, false);
        this.f2914Z = i8;
        this.f2916b0 = jVar;
    }

    @Override // E3.r
    public final void Q0() {
        int i8 = this.f2914Z;
        JSONObject jSONObject = this.f2915a0;
        j jVar = this.f2916b0;
        switch (i8) {
            case 0:
                jVar.f2904c.d(R0(), -1, jSONObject);
                break;
            case 1:
                jVar.f2904c.d(R0(), 1, jSONObject);
                break;
            case 2:
                H3.n nVar = jVar.f2904c;
                H3.o oVarR0 = R0();
                nVar.getClass();
                JSONObject jSONObject2 = new JSONObject();
                long jB = nVar.b();
                try {
                    jSONObject2.put("requestId", jB);
                    jSONObject2.put("type", "PAUSE");
                    jSONObject2.put("mediaSessionId", nVar.p());
                    if (jSONObject != null) {
                        jSONObject2.put("customData", jSONObject);
                    }
                    break;
                } catch (JSONException unused) {
                }
                nVar.c(jB, jSONObject2.toString());
                nVar.f3701k.a(jB, oVarR0);
                break;
            default:
                H3.n nVar2 = jVar.f2904c;
                H3.o oVarR1 = R0();
                nVar2.getClass();
                JSONObject jSONObject3 = new JSONObject();
                long jB2 = nVar2.b();
                try {
                    jSONObject3.put("requestId", jB2);
                    jSONObject3.put("type", "PLAY");
                    jSONObject3.put("mediaSessionId", nVar2.p());
                    if (jSONObject != null) {
                        jSONObject3.put("customData", jSONObject);
                    }
                    break;
                } catch (JSONException unused2) {
                }
                nVar2.c(jB2, jSONObject3.toString());
                nVar2.f3702l.a(jB2, oVarR1);
                break;
        }
    }
}
