package com.google.android.gms.internal.ads;

import android.webkit.WebView;
import java.util.UUID;
import okhttp3.HttpUrl;
import p021c4.C0621y;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.jq, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C1533jq {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f19504a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f19505b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f19506c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ String f19507d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f19508e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ WebView f19509f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ String f19510g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f19511h;

    public /* synthetic */ C1533jq(String str, int i8, String str2, WebView webView, String str3, int i9) {
        this.f19504a = 0;
        this.f19505b = "Google";
        this.f19506c = str;
        this.f19508e = i8;
        this.f19507d = str2;
        this.f19509f = webView;
        this.f19510g = str3;
        this.f19511h = i9;
    }

    public final Object a() {
        EnumC2319yx enumC2319yx = EnumC2319yx.VIDEO;
        Cx cx = Cx.NONE;
        G.c cVar = Cw.f12720d;
        int i8 = this.f19504a;
        int i9 = this.f19511h;
        int i10 = this.f19508e;
        String str = this.f19507d;
        String str2 = this.f19506c;
        switch (i8) {
            case 0:
                V7 v7A = V7.a("Google", str2);
                Cx cxJ = C0621y.j("javascript");
                EnumC2319yx enumC2319yxH = C0621y.h(AbstractC2090uc.e(i10));
                if (cxJ == cx) {
                    p120p3.h.g("Omid html session error; Unable to parse impression owner: javascript");
                    return null;
                }
                if (enumC2319yxH == null) {
                    p120p3.h.g("Omid html session error; Unable to parse creative type: ".concat(AbstractC2090uc.D(i10)));
                    return null;
                }
                Cx cxJ2 = C0621y.j(str);
                if (enumC2319yxH == enumC2319yx && cxJ2 == cx) {
                    p120p3.h.g("Omid html session error; Video events owner unknown for video creative: ".concat(String.valueOf(str)));
                    return null;
                }
                p086l.s1 s1Var = new p086l.s1(v7A, this.f19509f, this.f19510g, HttpUrl.FRAGMENT_ENCODE_SET, EnumC2215wx.HTML);
                E3.a aVarA = E3.a.a(enumC2319yxH, C0621y.i(AbstractC2090uc.g(i9)), cxJ, cxJ2, true);
                if (cVar.f3280H) {
                    return new C1689mq(new C2267xx(aVarA, s1Var, UUID.randomUUID().toString()), s1Var);
                }
                throw new IllegalStateException("Method called before OM SDK activation");
            default:
                V7 v7A2 = V7.a(this.f19505b, str2);
                Cx cxJ3 = C0621y.j("javascript");
                Cx cxJ4 = C0621y.j(str);
                EnumC2319yx enumC2319yxH2 = C0621y.h(AbstractC2090uc.e(i10));
                if (cxJ3 == cx) {
                    p120p3.h.g("Omid js session error; Unable to parse impression owner: javascript");
                    return null;
                }
                if (enumC2319yxH2 == null) {
                    p120p3.h.g("Omid js session error; Unable to parse creative type: ".concat(AbstractC2090uc.D(i10)));
                    return null;
                }
                if (enumC2319yxH2 == enumC2319yx && cxJ4 == cx) {
                    p120p3.h.g("Omid js session error; Video events owner unknown for video creative: ".concat(String.valueOf(str)));
                    return null;
                }
                p086l.s1 s1Var2 = new p086l.s1(v7A2, this.f19509f, this.f19510g, HttpUrl.FRAGMENT_ENCODE_SET, EnumC2215wx.JAVASCRIPT);
                E3.a aVarA2 = E3.a.a(enumC2319yxH2, C0621y.i(AbstractC2090uc.g(i9)), cxJ3, cxJ4, true);
                if (cVar.f3280H) {
                    return new C1689mq(new C2267xx(aVarA2, s1Var2, UUID.randomUUID().toString()), s1Var2);
                }
                throw new IllegalStateException("Method called before OM SDK activation");
        }
    }

    public /* synthetic */ C1533jq(String str, String str2, String str3, int i8, WebView webView, String str4, int i9) {
        this.f19504a = 1;
        this.f19505b = str;
        this.f19506c = str2;
        this.f19507d = str3;
        this.f19508e = i8;
        this.f19509f = webView;
        this.f19510g = str4;
        this.f19511h = i9;
    }
}
