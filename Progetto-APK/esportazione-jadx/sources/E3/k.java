package E3;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class k extends r {

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public final /* synthetic */ int f2912Z = 0;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public final /* synthetic */ j f2913a0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k(j jVar) {
        super(jVar, false);
        this.f2913a0 = jVar;
    }

    @Override // E3.r
    public final void Q0() {
        int i8 = this.f2912Z;
        j jVar = this.f2913a0;
        switch (i8) {
            case 0:
                H3.n nVar = jVar.f2904c;
                H3.o oVarR0 = R0();
                nVar.getClass();
                JSONObject jSONObject = new JSONObject();
                long jB = nVar.b();
                try {
                    jSONObject.put("requestId", jB);
                    jSONObject.put("type", "GET_STATUS");
                    C3.r rVar = nVar.f3696f;
                    if (rVar != null) {
                        jSONObject.put("mediaSessionId", rVar.f1571H);
                    }
                    break;
                } catch (JSONException unused) {
                }
                nVar.c(jB, jSONObject.toString());
                nVar.f3706p.a(jB, oVarR0);
                break;
            default:
                H3.n nVar2 = jVar.f2904c;
                H3.o oVarR1 = R0();
                nVar2.getClass();
                JSONObject jSONObject2 = new JSONObject();
                long jB2 = nVar2.b();
                try {
                    jSONObject2.put("requestId", jB2);
                    jSONObject2.put("type", "QUEUE_GET_ITEM_IDS");
                    jSONObject2.put("mediaSessionId", nVar2.p());
                    break;
                } catch (JSONException unused2) {
                }
                nVar2.c(jB2, jSONObject2.toString());
                nVar2.f3708r.a(jB2, oVarR1);
                break;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k(j jVar, int i8) {
        super(jVar, true);
        this.f2913a0 = jVar;
    }
}
