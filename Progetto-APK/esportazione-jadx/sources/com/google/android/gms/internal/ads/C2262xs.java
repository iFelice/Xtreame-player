package com.google.android.gms.internal.ads;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import java.time.Instant;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.xs, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2262xs implements InterfaceC2056tu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f21939a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f21940b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f21941c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Object f21942d;

    public /* synthetic */ C2262xs(Object obj, Object obj2, Object obj3, int i8) {
        this.f21939a = i8;
        this.f21940b = obj;
        this.f21941c = obj2;
        this.f21942d = obj3;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2056tu
    public final void a(Object obj) {
        List<ActivityManager.RunningTaskInfo> runningTasks;
        ActivityManager.RunningTaskInfo runningTaskInfo;
        int i8 = this.f21939a;
        Object obj2 = this.f21941c;
        Object obj3 = this.f21940b;
        Object obj4 = this.f21942d;
        switch (i8) {
            case 0:
                Bundle bundle = (Bundle) obj;
                if (((Boolean) AbstractC2071u8.f21205a.l()).booleanValue()) {
                    Bundle bundle2 = new Bundle();
                    p113o3.O o4 = p083k3.l.f25980A.f25983c;
                    String className = null;
                    try {
                        ActivityManager activityManager = (ActivityManager) ((Context) obj3).getSystemService("activity");
                        if (activityManager != null && (runningTasks = activityManager.getRunningTasks(1)) != null && !runningTasks.isEmpty() && (runningTaskInfo = runningTasks.get(0)) != null && runningTaskInfo.topActivity != null) {
                            className = runningTaskInfo.topActivity.getClassName();
                        }
                        break;
                    } catch (Exception unused) {
                    }
                    bundle2.putString("activity", className);
                    Bundle bundle3 = new Bundle();
                    p090l3.d1 d1Var = (p090l3.d1) obj2;
                    bundle3.putInt("width", d1Var.f26552K);
                    bundle3.putInt("height", d1Var.f26549H);
                    bundle2.putBundle("size", bundle3);
                    List list = (List) obj4;
                    if (!list.isEmpty()) {
                        bundle2.putParcelableArray("parents", (Parcelable[]) list.toArray(new Parcelable[list.size()]));
                    }
                    bundle.putBundle("view_hierarchy", bundle2);
                    break;
                }
                break;
            case 1:
                Bundle bundle4 = (Bundle) obj;
                bundle4.putString("consent_string", (String) obj3);
                bundle4.putString("fc_consent", (String) obj2);
                bundle4.putBundle("iab_consent_info", (Bundle) obj4);
                break;
            default:
                try {
                    JSONObject jSONObjectY = Q3.b.Y((JSONObject) obj, "pii");
                    p075j3.a aVar = (p075j3.a) obj3;
                    if (aVar == null || TextUtils.isEmpty(aVar.f25695a)) {
                        String str = (String) obj2;
                        if (str != null) {
                            jSONObjectY.put("pdid", str);
                            jSONObjectY.put("pdidtype", "ssaid");
                        }
                    } else {
                        jSONObjectY.put("rdid", ((p075j3.a) obj3).f25695a);
                        jSONObjectY.put("is_lat", ((p075j3.a) obj3).f25696b);
                        jSONObjectY.put("idtype", "adid");
                        if (((C0871Om) obj4).r()) {
                            jSONObjectY.put("paidv1_id_android_3p", (String) ((C0871Om) obj4).f15196H);
                            jSONObjectY.put("paidv1_creation_time_android_3p", ((Instant) ((C0871Om) obj4).f15197I).toEpochMilli());
                        }
                    }
                } catch (JSONException e8) {
                    p113o3.I.l("Failed putting Ad ID.", e8);
                    return;
                }
                break;
        }
    }

    public /* synthetic */ C2262xs(String str, String str2, Bundle bundle) {
        this.f21939a = 1;
        this.f21940b = str;
        this.f21941c = str2;
        this.f21942d = bundle;
    }
}
