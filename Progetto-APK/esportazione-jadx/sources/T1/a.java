package T1;

import P1.u;
import android.net.Uri;
import com.google.android.gms.internal.ads.AbstractC1717nH;
import java.util.Map;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class a implements h {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static a f6517H;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public String f6518G;

    public a(String str) {
        q0.h(str, "query");
        this.f6518G = str;
    }

    @Override // T1.h
    public String E() {
        return this.f6518G;
    }

    public String a(Map map) {
        Uri.Builder builderBuildUpon = Uri.parse(this.f6518G).buildUpon();
        for (Map.Entry entry : map.entrySet()) {
            builderBuildUpon.appendQueryParameter((String) entry.getKey(), (String) entry.getValue());
        }
        return builderBuildUpon.build().toString();
    }

    public a() {
        this.f6518G = (String) AbstractC1717nH.f20087F.l();
    }

    @Override // T1.h
    public void k(u uVar) {
    }
}
