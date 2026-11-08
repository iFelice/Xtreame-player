package com.google.android.gms.internal.ads;

import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.concurrent.Callable;
import org.json.JSONObject;
import p090l3.C3099q;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class H7 implements Callable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f13717a;

    public /* synthetic */ H7(int i8) {
        this.f13717a = i8;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        String strZ;
        String strA;
        String str;
        int i8 = 0;
        Bundle bundle = null;
        int i9 = 1;
        switch (this.f13717a) {
            case 0:
                return Boolean.valueOf("mounted".equals(Environment.getExternalStorageState()));
            case 1:
                p083k3.l lVar = p083k3.l.f25980A;
                lVar.f25990j.getClass();
                return new C2107ut(System.currentTimeMillis() - lVar.f25987g.d().y().f18945f);
            case 2:
                p083k3.l lVar2 = p083k3.l.f25980A;
                p113o3.O o4 = lVar2.f25983c;
                Q5 q5X = lVar2.f25987g.d().x();
                if (q5X != null && (!lVar2.f25987g.d().o() || !lVar2.f25987g.d().p())) {
                    if (q5X.f15558H) {
                        synchronized (q5X.f15559I) {
                            q5X.f15558H = false;
                            q5X.f15559I.notifyAll();
                            p120p3.h.b("ContentFetchThread: wakeup");
                        }
                    }
                    M5 m5A = q5X.a();
                    if (m5A != null) {
                        strZ = m5A.f14638o;
                        str = m5A.f14639p;
                        strA = m5A.f14640q;
                        if (strZ != null) {
                            lVar2.f25987g.d().I(strZ);
                        }
                        if (strA != null) {
                            lVar2.f25987g.d().J(strA);
                        }
                    } else {
                        strZ = lVar2.f25987g.d().z();
                        strA = lVar2.f25987g.d().A();
                        str = null;
                    }
                    Bundle bundle2 = new Bundle(1);
                    if (!lVar2.f25987g.d().p()) {
                        if (strA == null || TextUtils.isEmpty(strA)) {
                            bundle2.putString("v_fp_vertical", "no_hash");
                        } else {
                            bundle2.putString("v_fp_vertical", strA);
                        }
                    }
                    if (strZ != null && !lVar2.f25987g.d().o()) {
                        bundle2.putString("fingerprint", strZ);
                        if (!strZ.equals(str)) {
                            bundle2.putString("v_fp", str);
                        }
                    }
                    if (!bundle2.isEmpty()) {
                        bundle = bundle2;
                    }
                    break;
                }
                return new Bt(i8, bundle);
            case 3:
                p083k3.l lVar3 = p083k3.l.f25980A;
                return new Qs(i9, lVar3.f25993m.a(), lVar3.f25993m.i());
            case 4:
                Bundle bundle3 = new Bundle();
                Runtime runtime = Runtime.getRuntime();
                bundle3.putLong("runtime_free", runtime.freeMemory());
                bundle3.putLong("runtime_max", runtime.maxMemory());
                bundle3.putLong("runtime_total", runtime.totalMemory());
                bundle3.putInt("web_view_count", p083k3.l.f25980A.f25987g.f19814j.get());
                return new Bt(i9, bundle3);
            case 5:
                return new C1744nt(new JSONObject(), 2);
            case 6:
                HashMap map = new HashMap();
                J7 j8 = Q7.f15629H;
                C3099q c3099q = C3099q.f26624d;
                String str2 = (String) c3099q.f26627c.a(j8);
                if (str2 != null && !str2.isEmpty()) {
                    if (Build.VERSION.SDK_INT >= ((Integer) c3099q.f26627c.a(Q7.f15637I)).intValue()) {
                        String[] strArrSplit = str2.split(",", -1);
                        int length = strArrSplit.length;
                        while (i8 < length) {
                            String str3 = strArrSplit[i8];
                            map.put(str3, p113o3.H.a(str3));
                            i8++;
                        }
                    }
                }
                return new C1744nt(map, 5);
            default:
                return null;
        }
    }

    public /* synthetic */ H7(int i8, int i9) {
        this.f13717a = i8;
    }
}
