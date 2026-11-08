package com.google.android.gms.internal.ads;

import java.util.AbstractMap;
import java.util.HashSet;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
import p039f.AbstractC2987b;
import p090l3.C3097p;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Ma, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0830Ma implements InterfaceC2036ta, InterfaceC0815La {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final InterfaceC0815La f14707G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final HashSet f14708H = new HashSet();

    public C0830Ma(InterfaceC0815La interfaceC0815La) {
        this.f14707G = interfaceC0815La;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0815La
    public final void C(String str, N9 n9) {
        this.f14707G.C(str, n9);
        this.f14708H.add(new AbstractMap.SimpleEntry(str, n9));
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1984sa
    public final /* synthetic */ void b(JSONObject jSONObject, String str) {
        AbstractC2987b.r0(this, str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2036ta, com.google.android.gms.internal.ads.InterfaceC2296ya
    public final void c(String str) {
        this.f14707G.c(str);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2296ya
    public final void d(String str, String str2) {
        c(str + "(" + str2 + ");");
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2296ya
    public final void g(JSONObject jSONObject, String str) {
        d(str, jSONObject.toString());
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1984sa
    public final void w(String str, Map map) {
        try {
            b(C3097p.f26618f.f26619a.i(map), str);
        } catch (JSONException unused) {
            p120p3.h.g("Could not convert parameters to JSON.");
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0815La
    public final void z(String str, N9 n9) {
        this.f14707G.z(str, n9);
        this.f14708H.remove(new AbstractMap.SimpleEntry(str, n9));
    }
}
