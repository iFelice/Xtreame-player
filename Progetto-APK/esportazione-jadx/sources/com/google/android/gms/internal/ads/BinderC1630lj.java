package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import java.util.List;
import okhttp3.HttpUrl;
import org.json.JSONException;
import p090l3.AbstractBinderC3111w0;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.lj, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class BinderC1630lj extends AbstractBinderC3111w0 {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final String f19824G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final String f19825H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final String f19826I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final String f19827J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final List f19828K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final long f19829L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final String f19830M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final C2104uq f19831N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final Bundle f19832O;

    /* JADX WARN: Code duplicated, block: B:29:0x0087  */
    public BinderC1630lj(Ov ov, String str, C2104uq c2104uq, Qv qv, String str2) {
        String str3;
        super("com.google.android.gms.ads.internal.client.IResponseInfo");
        String string = null;
        this.f19825H = ov == null ? null : ov.f15249b0;
        this.f19826I = str2;
        this.f19827J = qv == null ? null : qv.f16150b;
        if ("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter".equals(str) || "com.google.ads.mediation.customevent.CustomEventAdapter".equals(str)) {
            try {
                string = ov.f15288v.getString("class_name");
            } catch (JSONException unused) {
            }
        }
        this.f19824G = string != null ? string : str;
        this.f19828K = c2104uq.f21390a;
        this.f19831N = c2104uq;
        p083k3.l.f25980A.f25990j.getClass();
        this.f19829L = System.currentTimeMillis() / 1000;
        J7 j8 = Q7.f15898n6;
        C3099q c3099q = C3099q.f26624d;
        if (!((Boolean) c3099q.f26627c.a(j8)).booleanValue() || qv == null) {
            this.f19832O = new Bundle();
        } else {
            this.f19832O = qv.f16159k;
        }
        if (((Boolean) c3099q.f26627c.a(Q7.y8)).booleanValue() && qv != null) {
            str3 = qv.f16157i;
            str3 = TextUtils.isEmpty(str3) ? HttpUrl.FRAGMENT_ENCODE_SET : str3;
        }
        this.f19830M = str3;
    }

    @Override // p090l3.InterfaceC3113x0
    public final Bundle zze() {
        return this.f19832O;
    }

    @Override // p090l3.InterfaceC3113x0
    public final p090l3.g1 zzf() {
        C2104uq c2104uq = this.f19831N;
        if (c2104uq != null) {
            return c2104uq.f21395f;
        }
        return null;
    }

    @Override // p090l3.InterfaceC3113x0
    public final String zzg() {
        return this.f19824G;
    }

    @Override // p090l3.InterfaceC3113x0
    public final String zzh() {
        return this.f19826I;
    }

    @Override // p090l3.InterfaceC3113x0
    public final String zzi() {
        return this.f19825H;
    }

    @Override // p090l3.InterfaceC3113x0
    public final List zzj() {
        return this.f19828K;
    }
}
