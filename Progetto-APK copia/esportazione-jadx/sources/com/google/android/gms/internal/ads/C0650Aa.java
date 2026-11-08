package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.IBinder;
import android.os.IInterface;
import com.google.api.Service;
import java.io.ByteArrayInputStream;
import java.nio.charset.Charset;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONArray;
import org.json.JSONObject;
import p090l3.InterfaceC3067a;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Aa, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0650Aa implements InterfaceC2092ue, InterfaceC2144ve, InterfaceC0845Na, InterfaceC0859Oa, InterfaceC0682Cc, p120p3.i, O, InterfaceC1195dC, InterfaceC1942rk {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f12006G;

    public C0650Aa() {
        this.f12006G = 13;
    }

    public static final void e(JSONObject jSONObject, String str) {
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(str);
        if (jSONArrayOptJSONArray != null) {
            ArrayList arrayList = new ArrayList(jSONArrayOptJSONArray.length());
            for (int i8 = 0; i8 < jSONArrayOptJSONArray.length(); i8++) {
                arrayList.add(jSONArrayOptJSONArray.getString(i8));
            }
            Collections.unmodifiableList(arrayList);
        }
    }

    @Override // com.google.android.gms.internal.ads.O
    public final L[] a(Uri uri, Map map) {
        switch (this.f12006G) {
            case 15:
                AtomicInteger atomicInteger = C2145vf.f21527a0;
                return new L[]{new A1(), new C1287f1()};
            default:
                AtomicInteger atomicInteger2 = C2145vf.f21527a0;
                return new L[]{new A1(), new C1287f1(), new C2220x1(V1.f16932o, 32, PA.f15340K)};
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0682Cc
    public final void b(String str, Throwable th) {
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0682Cc
    public final void c(Throwable th, String str, float f8) {
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0845Na
    public final Object d(JSONObject jSONObject) {
        switch (this.f12006G) {
            case 2:
                Charset charset = AbstractC0873Pa.f15388a;
                return new ByteArrayInputStream(jSONObject.toString().getBytes(AbstractC0873Pa.f15388a));
            default:
                return jSONObject;
        }
    }

    @Override // p120p3.i
    public final Object zza(Object obj) {
        IBinder iBinder = (IBinder) obj;
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCreator");
        return iInterfaceQueryLocalInterface instanceof C2091ud ? (C2091ud) iInterfaceQueryLocalInterface : new C2091ud(iBinder, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCreator", 0);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0859Oa
    public final /* bridge */ /* synthetic */ JSONObject zzb(Object obj) {
        return (JSONObject) obj;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1195dC
    /* JADX INFO: renamed from: zzb */
    public final /* synthetic */ void mo3zzb(Object obj) {
        ((AbstractC2252xi) obj).zzr();
    }

    public /* synthetic */ C0650Aa(int i8) {
        this.f12006G = i8;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2092ue
    public final void zza() {
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2144ve, com.google.android.gms.internal.ads.InterfaceC1942rk, com.google.android.gms.internal.ads.InterfaceC1218dk
    /* JADX INFO: renamed from: zza */
    public final void mo0zza(Object obj) {
        switch (this.f12006G) {
            case 1:
                p113o3.I.k("Ending javascript session.");
                C0830Ma c0830Ma = (C0830Ma) ((InterfaceC0815La) obj);
                HashSet<AbstractMap.SimpleEntry> hashSet = c0830Ma.f14708H;
                for (AbstractMap.SimpleEntry simpleEntry : hashSet) {
                    p113o3.I.k("Unregistering eventhandler: ".concat(String.valueOf(((N9) simpleEntry.getValue()).toString())));
                    c0830Ma.f14707G.z((String) simpleEntry.getKey(), (N9) simpleEntry.getValue());
                }
                hashSet.clear();
                break;
            case Service.BILLING_FIELD_NUMBER /* 26 */:
                ((InterfaceC3067a) obj).x();
                break;
            case 27:
                ((InterfaceC2045tj) obj).zzb();
                break;
            case Service.MONITORING_FIELD_NUMBER /* 28 */:
                ((InterfaceC2305yj) obj).d(p113o3.r.H(11, null, null));
                break;
            default:
                ((InterfaceC0659Aj) obj).zzr();
                break;
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1195dC
    public final void zza(Throwable th) {
    }
}
