package p086l;

import android.webkit.WebView;
import com.google.android.gms.internal.ads.AbstractC2073uA;
import com.google.android.gms.internal.ads.C1561kH;
import com.google.android.gms.internal.ads.C1969sA;
import com.google.android.gms.internal.ads.EnumC2215wx;
import com.google.android.gms.internal.ads.J5;
import com.google.android.gms.internal.ads.PA;
import com.google.android.gms.internal.ads.V7;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import okhttp3.internal.connection.RealConnection;
import p132r.m;

/* JADX INFO: loaded from: classes.dex */
public final class s1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f26374a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f26375b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f26376c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Object f26377d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Object f26378e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Object f26379f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Object f26380g;

    public s1(int i8) {
        if (i8 == 4) {
            this.f26376c = new C1561kH(12);
            C1969sA c1969sA = AbstractC2073uA.f21207H;
            PA pa = PA.f15340K;
            this.f26377d = Collections.emptyList();
            this.f26378e = PA.f15340K;
            this.f26379f = new C1561kH(13);
            this.f26380g = J5.f14124a;
            return;
        }
        if (i8 == 6) {
            this.f26379f = new m(0);
            this.f26380g = new m(0);
        } else {
            if (i8 != 10) {
                return;
            }
            this.f26374a = Long.valueOf(RealConnection.IDLE_CONNECTION_HEALTHY_NS);
            this.f26375b = 30000000000L;
            this.f26376c = 300000000000L;
            this.f26377d = 10;
        }
    }

    public s1(V7 v7, WebView webView, String str, String str2, EnumC2215wx enumC2215wx) {
        this.f26376c = new ArrayList();
        this.f26377d = new HashMap();
        this.f26374a = v7;
        this.f26375b = webView;
        this.f26380g = enumC2215wx;
        this.f26379f = str;
        this.f26378e = str2;
    }
}
