package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import android.webkit.CookieManager;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.ih, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1473ih implements InterfaceC1215dh {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f19312a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f19313b;

    public /* synthetic */ C1473ih(Object obj, int i8) {
        this.f19312a = i8;
        this.f19313b = obj;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1215dh
    public final void a(HashMap map) {
        int i8 = this.f19312a;
        Object obj = this.f19313b;
        switch (i8) {
            case 0:
                if (((Boolean) C3099q.f26624d.f26627c.a(Q7.I9)).booleanValue()) {
                    Cw.D1(AbstractC1040aC.r(((Mx) obj).a(true)), Throwable.class, new C1422hh(0), AbstractC1988se.f20906a);
                    return;
                }
                return;
            case 1:
                String str = (String) map.get("render_in_browser");
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                try {
                    Nv nv = (Nv) obj;
                    if (Boolean.parseBoolean(str)) {
                        nv.c(1, 2);
                    } else {
                        nv.c(2, 1);
                    }
                    return;
                } catch (Exception e8) {
                    throw new IllegalStateException("Invalid render_in_browser state", e8);
                }
            default:
                CookieManager cookieManager = (CookieManager) obj;
                if (cookieManager == null) {
                    return;
                }
                if (((String) map.get("clear")) == null) {
                    String str2 = (String) map.get("cookie");
                    if (TextUtils.isEmpty(str2)) {
                        return;
                    }
                    cookieManager.setCookie((String) C3099q.f26624d.f26627c.a(Q7.f15630H0), str2);
                    return;
                }
                String str3 = (String) C3099q.f26624d.f26627c.a(Q7.f15630H0);
                String cookie = cookieManager.getCookie(str3);
                if (cookie != null) {
                    List listS = Xu.j(new C2061tz(';')).s(cookie);
                    for (int i9 = 0; i9 < listS.size(); i9++) {
                        String str4 = (String) listS.get(i9);
                        Xu xuJ = Xu.j(new C2061tz('='));
                        str4.getClass();
                        Iterator itT = xuJ.t(str4);
                        if (!itT.hasNext()) {
                            throw new IndexOutOfBoundsException("position (0) must be less than the number of elements that remained (0)");
                        }
                        cookieManager.setCookie(str3, String.valueOf((String) itT.next()).concat(String.valueOf((String) C3099q.f26624d.f26627c.a(Q7.f15939t0))));
                    }
                    return;
                }
                return;
        }
    }

    public C1473ih() {
        this.f19312a = 2;
        p083k3.l.f25980A.f25985e.getClass();
        this.f19313b = F2.G.L();
    }
}
