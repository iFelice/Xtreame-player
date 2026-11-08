package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Vg, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0963Vg implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f17076G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ BinderC0977Wg f17077H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ Runnable f17078I;

    public /* synthetic */ RunnableC0963Vg(BinderC0977Wg binderC0977Wg, Runnable runnable, int i8) {
        this.f17076G = i8;
        this.f17077H = binderC0977Wg;
        this.f17078I = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f17076G;
        Runnable runnable = this.f17078I;
        BinderC0977Wg binderC0977Wg = this.f17077H;
        switch (i8) {
            case 0:
                AbstractC1988se.f20910e.execute(new RunnableC0963Vg(binderC0977Wg, runnable, 1));
                return;
            default:
                binderC0977Wg.getClass();
                com.bumptech.glide.c.d("Adapters must be initialized on the main thread.");
                HashMap map = p083k3.l.f25980A.f25987g.d().y().f18942c;
                if (map.isEmpty()) {
                    return;
                }
                if (runnable != null) {
                    try {
                        runnable.run();
                    } catch (Throwable th) {
                        p120p3.h.h("Could not initialize rewarded ads.", th);
                        return;
                    }
                    break;
                }
                if (((InterfaceC1157cb) binderC0977Wg.f17282I.f20615a.f18625c.get()) != null) {
                    HashMap map2 = new HashMap();
                    Iterator it = map.values().iterator();
                    while (it.hasNext()) {
                        for (C0999Ya c0999Ya : ((C1013Za) it.next()).f17765a) {
                            String str = c0999Ya.f17607b;
                            for (String str2 : c0999Ya.f17606a) {
                                if (!map2.containsKey(str2)) {
                                    map2.put(str2, new ArrayList());
                                }
                                if (str != null) {
                                    ((List) map2.get(str2)).add(str);
                                }
                            }
                        }
                    }
                    JSONObject jSONObject = new JSONObject();
                    for (Map.Entry entry : map2.entrySet()) {
                        String str3 = (String) entry.getKey();
                        try {
                            C2000sq c2000sqA = binderC0977Wg.f17283J.a(jSONObject, str3);
                            if (c2000sqA != null) {
                                C1385gw c1385gw = (C1385gw) c2000sqA.f20994b;
                                boolean zA = c1385gw.a();
                                InterfaceC1260eb interfaceC1260eb = c1385gw.f19025a;
                                if (!zA) {
                                    try {
                                        if (interfaceC1260eb.r()) {
                                            try {
                                                interfaceC1260eb.P0(new R3.b(binderC0977Wg.f17280G), (Oq) c2000sqA.f20995c, (List) entry.getValue());
                                                p120p3.h.b("Initialized rewarded video mediation adapter " + str3);
                                            } catch (Throwable th2) {
                                                throw new C1075aw(th2);
                                            }
                                        }
                                    } catch (Throwable th3) {
                                        throw new C1075aw(th3);
                                    }
                                }
                            }
                        } catch (C1075aw e8) {
                            p120p3.h.h("Failed to initialize rewarded video mediation adapter \"" + str3 + "\"", e8);
                        }
                    }
                    return;
                }
                return;
        }
    }
}
