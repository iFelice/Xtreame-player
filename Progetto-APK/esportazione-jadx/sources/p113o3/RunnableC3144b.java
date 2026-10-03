package p113o3;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.internal.ads.J7;
import com.google.android.gms.internal.ads.Q7;
import okhttp3.HttpUrl;
import org.json.JSONException;
import org.json.JSONObject;
import p083k3.l;
import p090l3.C3099q;
import p120p3.h;

/* JADX INFO: renamed from: o3.b, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC3144b implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f27939G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ C3151i f27940H;

    public /* synthetic */ RunnableC3144b(C3151i c3151i, int i8) {
        this.f27939G = i8;
        this.f27940H = c3151i;
    }

    private final void a() {
        C3151i c3151i = this.f27940H;
        c3151i.getClass();
        C3154l c3154l = l.f25980A.f25993m;
        String str = c3151i.f27962d;
        String str2 = c3151i.f27963e;
        String str3 = c3151i.f27964f;
        boolean zI = c3154l.i();
        Context context = c3151i.f27959a;
        boolean zG = c3154l.g(context, str, str2);
        synchronized (c3154l.f27977a) {
            c3154l.f27980d = zG;
        }
        if (!c3154l.i()) {
            c3154l.c(context, str, str2);
            return;
        }
        if (!zI && !TextUtils.isEmpty(str3)) {
            c3154l.d(context, str2, str3, str);
        }
        h.b("Device is linked for debug signals.");
        C3154l.f("The device is successfully linked for troubleshooting.", context, false, true);
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f27939G) {
            case 0:
                C3151i c3151i = this.f27940H;
                c3151i.c(c3151i.f27959a);
                return;
            case 1:
                a();
                return;
            case 2:
                C3151i c3151i2 = this.f27940H;
                c3151i2.f27965g = 4;
                c3151i2.b();
                return;
            case 3:
                C3151i c3151i3 = this.f27940H;
                c3151i3.getClass();
                l lVar = l.f25980A;
                C3154l c3154l = lVar.f25993m;
                Context context = c3151i3.f27959a;
                String str = c3151i3.f27962d;
                String str2 = c3151i3.f27963e;
                c3154l.getClass();
                J7 j8 = Q7.f15911p4;
                C3099q c3099q = C3099q.f26624d;
                String strK = C3154l.k(context, c3154l.l(context, (String) c3099q.f26627c.a(j8), str, str2).toString(), str2);
                if (!TextUtils.isEmpty(strK)) {
                    try {
                        JSONObject jSONObject = new JSONObject(strK.trim());
                        String strOptString = jSONObject.optString("gct");
                        c3154l.f27982f = jSONObject.optString("status");
                        if (((Boolean) c3099q.f26627c.a(Q7.w8)).booleanValue()) {
                            boolean z7 = "0".equals(c3154l.f27982f) || "2".equals(c3154l.f27982f);
                            c3154l.e(z7);
                            lVar.f25987g.d().a(!z7 ? HttpUrl.FRAGMENT_ENCODE_SET : str);
                        }
                        synchronized (c3154l.f27977a) {
                            c3154l.f27979c = strOptString;
                            break;
                        }
                        if ("2".equals(c3154l.f27982f)) {
                            h.b("Creative is not pushed for this device.");
                            C3154l.f("There was no creative pushed from DFP to the device.", context, false, false);
                            return;
                        } else if ("1".equals(c3154l.f27982f)) {
                            h.b("The app is not linked for creative preview.");
                            c3154l.c(context, str, str2);
                            return;
                        } else {
                            if ("0".equals(c3154l.f27982f)) {
                                h.b("Device is linked for in app preview.");
                                C3154l.f("The device is successfully linked for creative preview.", context, false, true);
                                return;
                            }
                            return;
                        }
                    } catch (JSONException e8) {
                        h.h("Fail to get in app preview response json.", e8);
                    }
                    break;
                } else {
                    h.b("Not linked for in app preview.");
                }
                C3154l.f("In-app preview failed to load because of a system error. Please try again later.", context, true, true);
                return;
            case 4:
                C3151i c3151i4 = this.f27940H;
                c3151i4.getClass();
                l.f25980A.f25993m.b(c3151i4.f27959a);
                return;
            case 5:
                C3151i c3151i5 = this.f27940H;
                c3151i5.c(c3151i5.f27959a);
                return;
            default:
                C3151i c3151i6 = this.f27940H;
                c3151i6.getClass();
                l.f25980A.f25993m.b(c3151i6.f27959a);
                return;
        }
    }
}
