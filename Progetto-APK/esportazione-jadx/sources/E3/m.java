package E3;

import android.util.Log;
import com.google.android.gms.cast.MediaInfo;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class m extends r {

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public final /* synthetic */ int f2917Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public final /* synthetic */ j f2918a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public final /* synthetic */ Object f2919b0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ m(j jVar, Object obj, int i8) {
        super(jVar, false);
        this.f2917Z = i8;
        this.f2918a0 = jVar;
        this.f2919b0 = obj;
    }

    @Override // E3.r
    public final void Q0() {
        int i8 = this.f2917Z;
        Object obj = this.f2919b0;
        j jVar = this.f2918a0;
        switch (i8) {
            case 0:
                H3.n nVar = jVar.f2904c;
                H3.o oVarR0 = R0();
                int[] iArr = (int[]) obj;
                nVar.getClass();
                JSONObject jSONObject = new JSONObject();
                long jB = nVar.b();
                try {
                    jSONObject.put("requestId", jB);
                    jSONObject.put("type", "QUEUE_GET_ITEMS");
                    jSONObject.put("mediaSessionId", nVar.p());
                    JSONArray jSONArray = new JSONArray();
                    for (int i9 : iArr) {
                        jSONArray.put(i9);
                    }
                    jSONObject.put("itemIds", jSONArray);
                    break;
                } catch (JSONException unused) {
                }
                nVar.c(jB, jSONObject.toString());
                nVar.f3709s.a(jB, oVarR0);
                return;
            case 1:
                H3.n nVar2 = jVar.f2904c;
                H3.o oVarR1 = R0();
                C3.k kVar = (C3.k) obj;
                nVar2.getClass();
                MediaInfo mediaInfo = kVar.f1523G;
                C3.n nVar3 = kVar.f1524H;
                if (mediaInfo == null && nVar3 == null) {
                    throw new IllegalArgumentException("MediaInfo and MediaQueueData should not be both null");
                }
                JSONObject jSONObject2 = new JSONObject();
                try {
                    MediaInfo mediaInfo2 = kVar.f1523G;
                    if (mediaInfo2 != null) {
                        jSONObject2.put("media", mediaInfo2.i());
                    }
                    if (nVar3 != null) {
                        jSONObject2.put("queueData", nVar3.i());
                    }
                    jSONObject2.putOpt("autoplay", kVar.f1525I);
                    long j8 = kVar.f1526J;
                    if (j8 != -1) {
                        Pattern pattern = H3.a.f3677a;
                        jSONObject2.put("currentTime", j8 / 1000.0d);
                    }
                    jSONObject2.put("playbackRate", kVar.f1527K);
                    jSONObject2.putOpt("credentials", kVar.f1531O);
                    jSONObject2.putOpt("credentialsType", kVar.f1532P);
                    jSONObject2.putOpt("atvCredentials", kVar.f1533Q);
                    jSONObject2.putOpt("atvCredentialsType", kVar.f1534R);
                    long[] jArr = kVar.f1528L;
                    if (jArr != null) {
                        JSONArray jSONArray2 = new JSONArray();
                        for (int i10 = 0; i10 < jArr.length; i10++) {
                            jSONArray2.put(i10, jArr[i10]);
                        }
                        jSONObject2.put("activeTrackIds", jSONArray2);
                    }
                    jSONObject2.putOpt("customData", kVar.f1530N);
                    jSONObject2.put("requestId", kVar.f1535S);
                    break;
                } catch (JSONException e8) {
                    Object[] objArr = {e8};
                    H3.b bVar = C3.k.f1522T;
                    Log.e(bVar.f3679a, bVar.c("Error transforming MediaLoadRequestData into JSONObject", objArr));
                    jSONObject2 = new JSONObject();
                }
                long jB2 = nVar2.b();
                try {
                    jSONObject2.put("requestId", jB2);
                    jSONObject2.put("type", "LOAD");
                    break;
                } catch (JSONException unused2) {
                }
                nVar2.c(jB2, jSONObject2.toString());
                nVar2.f3700j.a(jB2, oVarR1);
                return;
            default:
                H3.n nVar4 = jVar.f2904c;
                H3.o oVarR2 = R0();
                C3.q qVar = (C3.q) obj;
                nVar4.getClass();
                JSONObject jSONObject3 = new JSONObject();
                long jB3 = nVar4.b();
                long j9 = qVar.f1568c ? 4294967296000L : qVar.f1566a;
                try {
                    jSONObject3.put("requestId", jB3);
                    jSONObject3.put("type", "SEEK");
                    jSONObject3.put("mediaSessionId", nVar4.p());
                    Pattern pattern2 = H3.a.f3677a;
                    jSONObject3.put("currentTime", j9 / 1000.0d);
                    int i11 = qVar.f1567b;
                    if (i11 == 1) {
                        jSONObject3.put("resumeState", "PLAYBACK_START");
                    } else if (i11 == 2) {
                        jSONObject3.put("resumeState", "PLAYBACK_PAUSE");
                    }
                    JSONObject jSONObject4 = qVar.f1569d;
                    if (jSONObject4 != null) {
                        jSONObject3.put("customData", jSONObject4);
                    }
                    break;
                } catch (JSONException unused3) {
                }
                nVar4.c(jB3, jSONObject3.toString());
                nVar4.f3697g = Long.valueOf(j9);
                nVar4.f3703m.a(jB3, new H3.k(nVar4, oVarR2, 0));
                return;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m(j jVar, int[] iArr) {
        super(jVar, true);
        this.f2917Z = 0;
        this.f2918a0 = jVar;
        this.f2919b0 = iArr;
    }
}
