package com.google.android.gms.internal.ads;

import com.google.api.Service;
import java.util.Collections;
import java.util.Set;
import okhttp3.internal.ws.WebSocketProtocol;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.wk, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2202wk implements IJ {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f21739a;

    public /* synthetic */ C2202wk(int i8) {
        this.f21739a = i8;
    }

    @Override // com.google.android.gms.internal.ads.QJ
    public final Object zzb() {
        switch (this.f21739a) {
            case 0:
                Set setEmptySet = Collections.emptySet();
                Cw.N0(setEmptySet);
                return setEmptySet;
            case 1:
                Set setEmptySet2 = Collections.emptySet();
                Cw.N0(setEmptySet2);
                return setEmptySet2;
            case 2:
                Set setEmptySet3 = Collections.emptySet();
                Cw.N0(setEmptySet3);
                return setEmptySet3;
            case 3:
                Set setEmptySet4 = Collections.emptySet();
                Cw.N0(setEmptySet4);
                return setEmptySet4;
            case 4:
                Set setEmptySet5 = Collections.emptySet();
                Cw.N0(setEmptySet5);
                return setEmptySet5;
            case 5:
                return new C0750Gk();
            case 6:
                return EnumC2329z6.INTERSTITIAL;
            case 7:
                return "interstitial";
            case 8:
                return EnumC2329z6.AD_LOADER;
            case 9:
                return "native";
            case 10:
                return null;
            case 11:
                return new C1484is();
            case 12:
            case 13:
            case 14:
                return null;
            case 15:
                return new C0983Wm();
            case 16:
                return new C1634ln();
            case 17:
                return new C1842pn();
            case 18:
                C1936re c1936re = AbstractC1988se.f20906a;
                Cw.N0(c1936re);
                return new C1997sn(c1936re);
            case 19:
                return new C2153vn(11, 12, 1007);
            case 20:
                return new C2153vn(19, 20, 1008);
            case 21:
                return new C2153vn(13, 14, 1004);
            case 22:
                return new C2153vn(WebSocketProtocol.CLOSE_CLIENT_GOING_AWAY, 1002, 1003);
            case 23:
                return new C2153vn(15, 16, WebSocketProtocol.CLOSE_NO_STATUS_CODE);
            case 24:
                return new C2153vn(17, 18, 1006);
            case 25:
                return new C0753Gn("ttc", Iw.SIGNALS);
            case Service.BILLING_FIELD_NUMBER /* 26 */:
                return new C0753Gn("t_load_as", Iw.PRELOADED_LOADER);
            case 27:
                return new C1325fo();
            case Service.MONITORING_FIELD_NUMBER /* 28 */:
                return new SharedPreferencesOnSharedPreferenceChangeListenerC1946ro();
            default:
                return new C2272y1();
        }
    }

    public /* synthetic */ C2202wk(int i8, int i9) {
        this.f21739a = i8;
    }
}
