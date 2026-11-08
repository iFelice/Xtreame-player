package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import org.json.JSONObject;
import p090l3.C3099q;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class Zs implements InterfaceC2056tu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f17808a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f17809b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f17810c;

    public /* synthetic */ Zs(int i8, Object obj, Object obj2) {
        this.f17808a = i8;
        this.f17809b = obj;
        this.f17810c = obj2;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2056tu
    public final void a(Object obj) {
        switch (this.f17808a) {
            case 0:
                C1072at c1072at = (C1072at) this.f17809b;
                Bundle bundle = (Bundle) this.f17810c;
                Bundle bundle2 = (Bundle) obj;
                c1072at.getClass();
                J7 j8 = Q7.f15827f5;
                C3099q c3099q = C3099q.f26624d;
                if (!((Boolean) c3099q.f26627c.a(j8)).booleanValue()) {
                    if (((Boolean) c3099q.f26627c.a(Q7.f15818e5)).booleanValue()) {
                        synchronized (C1072at.f17982k) {
                            c1072at.f17987e.c(c1072at.f17989g.f17677d);
                            bundle2.putBundle("quality_signals", c1072at.f17988f.a());
                        }
                    } else {
                        c1072at.f17987e.c(c1072at.f17989g.f17677d);
                        bundle2.putBundle("quality_signals", c1072at.f17988f.a());
                    }
                    break;
                } else {
                    bundle2.putBundle("quality_signals", bundle);
                }
                bundle2.putString("seq_num", c1072at.f17984b);
                if (!c1072at.f17990h.r()) {
                    bundle2.putString("session_id", c1072at.f17985c);
                }
                bundle2.putBoolean("client_purpose_one", !c1072at.f17990h.r());
                if (((Boolean) c3099q.f26627c.a(Q7.f15836g5)).booleanValue()) {
                    try {
                        p113o3.O o4 = p083k3.l.f25980A.f25983c;
                        bundle2.putString("_app_id", p113o3.O.E(c1072at.f17983a));
                    } catch (RemoteException | RuntimeException e8) {
                        p083k3.l.f25980A.f25987g.i("AppStatsSignal_AppId", e8);
                    }
                    break;
                }
                J7 j9 = Q7.f15845h5;
                C3099q c3099q2 = C3099q.f26624d;
                if (((Boolean) c3099q2.f26627c.a(j9)).booleanValue() && c1072at.f17989g.f17679f != null) {
                    Bundle bundle3 = new Bundle();
                    Long l4 = (Long) c1072at.f17992j.f16116d.get(c1072at.f17989g.f17679f);
                    bundle3.putLong("dload", l4 == null ? -1L : l4.longValue());
                    Integer num = (Integer) c1072at.f17992j.f16114b.get(c1072at.f17989g.f17679f);
                    bundle3.putInt("pcc", num == null ? 0 : num.intValue());
                    bundle2.putBundle("ad_unit_quality_signals", bundle3);
                }
                if (((Boolean) c3099q2.f26627c.a(Q7.X8)).booleanValue()) {
                    p083k3.l lVar = p083k3.l.f25980A;
                    if (lVar.f25987g.f19815k.get() > 0) {
                        bundle2.putInt("nrwv", lVar.f25987g.f19815k.get());
                        return;
                    }
                    return;
                }
                return;
            case 1:
                JSONObject jSONObject = (JSONObject) this.f17809b;
                Bundle bundle4 = (Bundle) obj;
                if (jSONObject != null) {
                    bundle4.putString("fwd_cld", jSONObject.toString());
                }
                JSONObject jSONObject2 = (JSONObject) this.f17810c;
                if (jSONObject2 != null) {
                    bundle4.putString("fwd_common_cld", jSONObject2.toString());
                    return;
                }
                return;
            default:
                Bundle bundle5 = (Bundle) obj;
                bundle5.putString("rtb", (String) this.f17809b);
                Bundle bundle6 = (Bundle) this.f17810c;
                if (bundle6.isEmpty()) {
                    return;
                }
                bundle5.putBundle("adapter_initialization_status", bundle6);
                return;
        }
    }
}
