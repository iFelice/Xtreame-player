package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class O9 implements N9 {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f15143G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final C1895qo f15144H;

    public O9(C1895qo c1895qo, int i8) {
        this.f15143G = i8;
        if (i8 != 1) {
            com.bumptech.glide.c.i(c1895qo, "The Inspector Manager must not be null");
            this.f15144H = c1895qo;
        } else {
            com.bumptech.glide.c.i(c1895qo, "The Inspector Manager must not be null");
            this.f15144H = c1895qo;
        }
    }

    private final void a(Map map) {
        if (map == null || !map.containsKey("persistentData") || TextUtils.isEmpty((CharSequence) map.get("persistentData"))) {
            return;
        }
        C1895qo c1895qo = this.f15144H;
        String str = (String) map.get("persistentData");
        synchronized (c1895qo) {
            c1895qo.f20640x = str;
            p083k3.l.f25980A.f25987g.d().g(c1895qo.f20640x);
        }
    }

    @Override // com.google.android.gms.internal.ads.N9
    public final void f(Object obj, Map map) {
        switch (this.f15143G) {
            case 0:
                a(map);
                return;
            default:
                if (map == null || !map.containsKey("extras")) {
                    return;
                }
                long j8 = Long.MAX_VALUE;
                if (map.containsKey("expires")) {
                    try {
                        j8 = Long.parseLong((String) map.get("expires"));
                        break;
                    } catch (NumberFormatException unused) {
                    }
                }
                C1895qo c1895qo = this.f15144H;
                String str = (String) map.get("extras");
                synchronized (c1895qo) {
                    c1895qo.f20631o = str;
                    c1895qo.f20633q = j8;
                    c1895qo.j();
                }
                return;
        }
    }
}
