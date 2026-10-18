package g7;

import android.util.Base64;
import com.google.android.gms.internal.ads.C1448i6;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
import p135r2.m;
import p135r2.n;
import p143s2.g;
import pe.hf.black20.encryption.Encrypt;
import pe.hf.black20.util.OTRApp;

/* JADX INFO: loaded from: classes2.dex */
public final class b extends g {

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public final /* synthetic */ int f25376W;

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public final /* synthetic */ Object f25377X;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ b(Object obj, int i8, String str, JSONObject jSONObject, n nVar, m mVar, int i9) {
        super(i8, str, jSONObject, nVar, mVar);
        this.f25376W = i9;
        this.f25377X = obj;
    }

    @Override // p135r2.k
    public final String e() {
        return "application/json; charset=utf-8";
    }

    @Override // p135r2.k
    public final Map g() {
        int i8 = this.f25376W;
        Object obj = this.f25377X;
        switch (i8) {
            case 0:
                HashMap map = new HashMap();
                C1448i6 c1448i6 = (C1448i6) obj;
                if (c1448i6.f19235c.equals("loginCheckOTR") || c1448i6.f19235c.equals("getUserDevices")) {
                    map.put("Authorization", "Basic " + Base64.encodeToString((((String) c1448i6.f19240h) + ":" + ((String) c1448i6.f19241i)).getBytes(), 2));
                } else if (c1448i6.f19235c.equals("clientContent") || c1448i6.f19235c.equals("otrresponse") || c1448i6.f19235c.equals("renewToken")) {
                    map.put("Authorization", "Bearer " + Encrypt.a(OTRApp.f29417G.getSharedPreferences("pe.hf.black20", 0).getString("otr_access_token", null)));
                }
                return map;
            default:
                HashMap map2 = new HashMap();
                C1448i6 c1448i7 = (C1448i6) obj;
                if (c1448i7.f19235c.equals("loginCheckOTR") || c1448i7.f19235c.equals("getUserDevices")) {
                    map2.put("Authorization", "Basic " + Base64.encodeToString((((String) c1448i7.f19240h) + ":" + ((String) c1448i7.f19241i)).getBytes(), 2));
                } else if (c1448i7.f19235c.equals("clientContent") || c1448i7.f19235c.equals("otrresponse") || c1448i7.f19235c.equals("renewToken")) {
                    map2.put("Authorization", "Bearer " + Encrypt.a(OTRApp.f29417G.getSharedPreferences("pe.hf.black20", 0).getString("otr_access_token", null)));
                }
                return map2;
        }
    }
}
