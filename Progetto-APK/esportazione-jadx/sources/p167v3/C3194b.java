package p167v3;

import Q3.c;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.util.Base64;
import com.google.android.gms.internal.ads.Q7;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;
import p083k3.l;
import p090l3.C3099q;
import p120p3.a;

/* JADX INFO: renamed from: v3.b, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3194b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f30598a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ApplicationInfo f30599b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f30600c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final a f30601d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final JSONObject f30602e = new JSONObject();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AtomicBoolean f30603f = new AtomicBoolean(false);

    public C3194b(Context context, ArrayList arrayList, a aVar) {
        this.f30598a = context;
        this.f30599b = context.getApplicationInfo();
        this.f30600c = arrayList;
        this.f30601d = aVar;
    }

    public final JSONObject a() {
        if (!this.f30603f.get()) {
            b();
        }
        return this.f30602e;
    }

    public final void b() {
        if (this.f30603f.getAndSet(true)) {
            return;
        }
        ApplicationInfo applicationInfo = this.f30599b;
        PackageInfo packageInfoC = null;
        if (applicationInfo != null) {
            try {
                packageInfoC = c.a(this.f30598a).c(0, applicationInfo.packageName);
            } catch (PackageManager.NameNotFoundException unused) {
            }
        }
        JSONObject jSONObject = this.f30602e;
        if (packageInfoC != null) {
            try {
                jSONObject.put("vc", packageInfoC.versionCode);
                jSONObject.put("vnm", packageInfoC.versionName);
            } catch (JSONException e8) {
                l.f25980A.f25987g.i("PawAppSignalGenerator.initialize", e8);
                return;
            }
        }
        if (applicationInfo != null) {
            jSONObject.put("pn", applicationInfo.packageName);
        }
        List list = this.f30600c;
        ArrayList arrayList = new ArrayList();
        for (String str : ((String) C3099q.f26624d.f26627c.a(Q7.a9)).split(",", -1)) {
            if (list.contains(str)) {
                arrayList.add(str);
            }
        }
        jSONObject.put("eid", arrayList);
        jSONObject.put("js", this.f30601d.f28196G);
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            Object obj = jSONObject.get(next);
            if (obj != null) {
                jSONObject.put(next, Base64.encodeToString(obj.toString().getBytes(), 2));
            }
        }
    }
}
