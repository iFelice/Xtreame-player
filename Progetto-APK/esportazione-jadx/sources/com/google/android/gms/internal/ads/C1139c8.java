package com.google.android.gms.internal.ads;

import C2.C0091g;
import android.content.Context;
import android.os.Bundle;
import java.util.Date;
import java.util.concurrent.ScheduledExecutorService;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p090l3.C3099q;
import p167v3.C3194b;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.c8, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1139c8 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ScheduledExecutorService f18178a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final p167v3.x f18179b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C3194b f18180c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final C0783In f18181d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public RunnableC0878Pf f18182e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public C1088b8 f18183f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public p109o.j f18184g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public String f18185h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f18186i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public long f18187j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public JSONArray f18188k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Context f18189l;

    public C1139c8(ScheduledExecutorService scheduledExecutorService, p167v3.x xVar, C3194b c3194b, C0783In c0783In) {
        this.f18178a = scheduledExecutorService;
        this.f18179b = xVar;
        this.f18180c = c3194b;
        this.f18181d = c0783In;
    }

    public final JSONObject a(String str, String str2) throws JSONException {
        long jLongValue;
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("paw_id", str);
        jSONObject.put("error", str2);
        if (((Boolean) AbstractC2175w8.f21644b.l()).booleanValue()) {
            jLongValue = ((Long) C3099q.f26624d.f26627c.a(Q7.h9)).longValue();
        } else {
            jLongValue = 0;
        }
        jSONObject.put("sdk_ttl_ms", jLongValue);
        e(jSONObject);
        if (((Boolean) AbstractC2175w8.f21643a.l()).booleanValue()) {
            jSONObject.put("appLevelSignals", this.f18180c.a());
        }
        return jSONObject;
    }

    public final JSONObject b(String str, String str2) throws JSONException {
        long jLongValue;
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("paw_id", str);
        jSONObject.put("signal", str2);
        if (((Boolean) AbstractC2175w8.f21644b.l()).booleanValue()) {
            jLongValue = ((Long) C3099q.f26624d.f26627c.a(Q7.h9)).longValue();
        } else {
            jLongValue = 0;
        }
        jSONObject.put("sdk_ttl_ms", jLongValue);
        e(jSONObject);
        if (((Boolean) AbstractC2175w8.f21643a.l()).booleanValue()) {
            jSONObject.put("appLevelSignals", this.f18180c.a());
        }
        return jSONObject;
    }

    public final void c(String str) {
        try {
            p109o.j jVar = this.f18184g;
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("gsppack", true);
            jSONObject.put("fpt", new Date(this.f18187j).toString());
            e(jSONObject);
            if (((Boolean) AbstractC2175w8.f21643a.l()).booleanValue()) {
                jSONObject.put("appLevelSignals", this.f18180c.a());
            }
            jVar.a(jSONObject.toString());
            p167v3.t tVar = new p167v3.t(str, 1, this);
            if (((Boolean) AbstractC2175w8.f21644b.l()).booleanValue()) {
                this.f18179b.b(this.f18184g, tVar);
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putString("query_info_type", "requester_type_6");
            C0091g.s(this.f18189l, new p043f3.f((p043f3.e) new p043f3.e(3).e(bundle)), tVar);
        } catch (JSONException e8) {
            p120p3.h.e("Error creating JSON: ", e8);
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x003a  */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x004a, code lost:
    
        if (((java.lang.Boolean) p090l3.C3099q.f26624d.f26627c.a(com.google.android.gms.internal.ads.Q7.d9)).booleanValue() != false) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void d() {
        /*
            r7 = this;
            com.google.android.gms.internal.ads.b8 r0 = r7.f18183f
            if (r0 != 0) goto La
            java.lang.String r0 = "PACT callback is not present, please initialize the PawCustomTabsImpl."
            p120p3.h.d(r0)
            return
        La:
            java.util.concurrent.atomic.AtomicBoolean r0 = r0.f18017a
            boolean r0 = r0.get()
            if (r0 == 0) goto L13
            return
        L13:
            java.lang.String r0 = r7.f18185h
            if (r0 == 0) goto L9c
            o.j r0 = r7.f18184g
            if (r0 == 0) goto L9c
            java.util.concurrent.ScheduledExecutorService r0 = r7.f18178a
            if (r0 == 0) goto L9c
            long r1 = r7.f18186i
            r3 = 0
            int r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r5 != 0) goto L28
            goto L3a
        L28:
            k3.l r1 = p083k3.l.f25980A
            P3.b r1 = r1.f25990j
            r1.getClass()
            long r1 = android.os.SystemClock.elapsedRealtime()
            long r3 = r7.f18186i
            int r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r5 > 0) goto L3a
            goto L4c
        L3a:
            com.google.android.gms.internal.ads.J7 r1 = com.google.android.gms.internal.ads.Q7.d9
            l3.q r2 = p090l3.C3099q.f26624d
            com.google.android.gms.internal.ads.O7 r2 = r2.f26627c
            java.lang.Object r1 = r2.a(r1)
            java.lang.Boolean r1 = (java.lang.Boolean) r1
            boolean r1 = r1.booleanValue()
            if (r1 == 0) goto L9c
        L4c:
            o.j r1 = r7.f18184g
            java.lang.String r2 = r7.f18185h
            android.net.Uri r2 = android.net.Uri.parse(r2)
            r1.getClass()
            java.lang.Object r3 = r1.f27596K     // Catch: android.os.RemoteException -> L84
            android.app.PendingIntent r3 = (android.app.PendingIntent) r3     // Catch: android.os.RemoteException -> L84
            if (r3 == 0) goto L79
            java.lang.Object r3 = r1.f27593H     // Catch: android.os.RemoteException -> L84
            android.support.customtabs.ICustomTabsService r3 = (android.support.customtabs.ICustomTabsService) r3     // Catch: android.os.RemoteException -> L84
            java.lang.Object r4 = r1.f27594I     // Catch: android.os.RemoteException -> L84
            android.support.customtabs.ICustomTabsCallback r4 = (android.support.customtabs.ICustomTabsCallback) r4     // Catch: android.os.RemoteException -> L84
            android.os.Bundle r5 = new android.os.Bundle     // Catch: android.os.RemoteException -> L84
            r5.<init>()     // Catch: android.os.RemoteException -> L84
            java.lang.Object r1 = r1.f27596K     // Catch: android.os.RemoteException -> L84
            android.app.PendingIntent r1 = (android.app.PendingIntent) r1     // Catch: android.os.RemoteException -> L84
            if (r1 == 0) goto L75
            java.lang.String r6 = "android.support.customtabs.extra.SESSION_ID"
            r5.putParcelable(r6, r1)     // Catch: android.os.RemoteException -> L84
        L75:
            r3.requestPostMessageChannelWithExtras(r4, r2, r5)     // Catch: android.os.RemoteException -> L84
            goto L84
        L79:
            java.lang.Object r3 = r1.f27593H     // Catch: android.os.RemoteException -> L84
            android.support.customtabs.ICustomTabsService r3 = (android.support.customtabs.ICustomTabsService) r3     // Catch: android.os.RemoteException -> L84
            java.lang.Object r1 = r1.f27594I     // Catch: android.os.RemoteException -> L84
            android.support.customtabs.ICustomTabsCallback r1 = (android.support.customtabs.ICustomTabsCallback) r1     // Catch: android.os.RemoteException -> L84
            r3.requestPostMessageChannel(r1, r2)     // Catch: android.os.RemoteException -> L84
        L84:
            com.google.android.gms.internal.ads.Pf r1 = r7.f18182e
            com.google.android.gms.internal.ads.J7 r2 = com.google.android.gms.internal.ads.Q7.e9
            l3.q r3 = p090l3.C3099q.f26624d
            com.google.android.gms.internal.ads.O7 r3 = r3.f26627c
            java.lang.Object r2 = r3.a(r2)
            java.lang.Long r2 = (java.lang.Long) r2
            long r2 = r2.longValue()
            java.util.concurrent.TimeUnit r4 = java.util.concurrent.TimeUnit.MILLISECONDS
            r0.schedule(r1, r2, r4)
            return
        L9c:
            java.lang.String r0 = "PACT max retry connection duration timed out"
            p113o3.I.k(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.C1139c8.d():void");
    }

    public final void e(JSONObject jSONObject) {
        try {
            if (this.f18188k == null) {
                this.f18188k = new JSONArray((String) C3099q.f26624d.f26627c.a(Q7.g9));
            }
            jSONObject.put("eids", this.f18188k);
        } catch (JSONException e8) {
            p120p3.h.e("Error fetching the PACT active eids JSON: ", e8);
        }
    }
}
