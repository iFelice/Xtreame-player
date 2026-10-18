package com.google.android.gms.internal.ads;

import com.google.api.Service;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.ul, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2099ul implements IJ {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C2218x f21367a;

    public C2099ul(C2218x c2218x) {
        this.f21367a = c2218x;
    }

    @Override // com.google.android.gms.internal.ads.QJ
    public final Object zzb() {
        JSONObject jSONObjectZzp;
        C2218x c2218x = this.f21367a;
        switch (c2218x.f21778G) {
            case 23:
                jSONObjectZzp = (JSONObject) c2218x.f21779H;
                break;
            case Service.BILLING_FIELD_NUMBER /* 26 */:
                jSONObjectZzp = ((InterfaceViewOnClickListenerC1220dm) c2218x.f21779H).zzp();
                break;
            default:
                jSONObjectZzp = null;
                break;
        }
        Cw.N0(jSONObjectZzp);
        return jSONObjectZzp;
    }
}
