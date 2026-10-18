package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import android.text.TextUtils;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Nd, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0848Nd {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static C0848Nd f14910j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f14911a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f14912b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f14913c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Object f14914d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Object f14915e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Object f14916f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Object f14917g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Object f14918h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Object f14919i;

    public C0848Nd(int i8) {
        if (i8 == 3) {
            this.f14915e = Collections.emptyMap();
            this.f14919i = Collections.emptyList();
        } else {
            this.f14911a = new ArrayBlockingQueue(100);
            this.f14912b = new LinkedHashMap();
            this.f14913c = new HashMap();
            this.f14917g = new HashSet(Arrays.asList("noop", "activeViewPingSent", "viewabilityChanged", "visibilityChanged"));
        }
    }

    public static synchronized C0848Nd b(Context context) {
        try {
            C0848Nd c0848Nd = f14910j;
            if (c0848Nd != null) {
                return c0848Nd;
            }
            Context applicationContext = context.getApplicationContext();
            Q7.a(applicationContext);
            p083k3.l lVar = p083k3.l.f25980A;
            p113o3.L lD = lVar.f25987g.d();
            lD.F(applicationContext);
            C2246xc c2246xc = new C2246xc((AbstractC2142vc) null);
            applicationContext.getClass();
            c2246xc.f21882H = applicationContext;
            P3.b bVar = lVar.f25990j;
            bVar.getClass();
            c2246xc.f21883I = bVar;
            c2246xc.f21884J = lD;
            c2246xc.f21885K = lVar.f26003w;
            C0848Nd c0848NdD = c2246xc.D();
            f14910j = c0848NdD;
            SharedPreferencesOnSharedPreferenceChangeListenerC0773Id sharedPreferencesOnSharedPreferenceChangeListenerC0773Id = (SharedPreferencesOnSharedPreferenceChangeListenerC0773Id) ((MJ) c0848NdD.f14914d).zzb();
            SharedPreferences sharedPreferences = sharedPreferencesOnSharedPreferenceChangeListenerC0773Id.f13887b;
            sharedPreferences.registerOnSharedPreferenceChangeListener(sharedPreferencesOnSharedPreferenceChangeListenerC0773Id);
            sharedPreferencesOnSharedPreferenceChangeListenerC0773Id.onSharedPreferenceChanged(sharedPreferences, "gad_has_consent_for_cookies");
            J7 j8 = Q7.f15947u0;
            C3099q c3099q = C3099q.f26624d;
            if (((Boolean) c3099q.f26627c.a(j8)).booleanValue()) {
                sharedPreferencesOnSharedPreferenceChangeListenerC0773Id.onSharedPreferenceChanged(sharedPreferences, "IABTCF_TCString");
            } else {
                sharedPreferencesOnSharedPreferenceChangeListenerC0773Id.onSharedPreferenceChanged(sharedPreferences, "IABTCF_PurposeConsents");
            }
            C0946Ud c0946Ud = (C0946Ud) ((MJ) f14910j.f14919i).zzb();
            if (((Boolean) c3099q.f26627c.a(Q7.f15900o0)).booleanValue()) {
                HashMap mapH = p113o3.O.H((String) c3099q.f26627c.a(Q7.f15907p0));
                Iterator it = mapH.keySet().iterator();
                while (it.hasNext()) {
                    c0946Ud.a((String) it.next());
                }
                c0946Ud.b(new C0918Sd(c0946Ud, mapH));
            }
            return f14910j;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final LinkedHashMap a(LinkedHashMap linkedHashMap, LinkedHashMap linkedHashMap2) {
        LinkedHashMap linkedHashMap3 = new LinkedHashMap(linkedHashMap);
        for (Map.Entry entry : linkedHashMap2.entrySet()) {
            String str = (String) entry.getKey();
            String str2 = (String) entry.getValue();
            String str3 = (String) linkedHashMap3.get(str);
            T7 t7 = (T7) ((Map) this.f14913c).get(str);
            if (t7 == null) {
                t7 = T7.f16593a;
            }
            linkedHashMap3.put(str, t7.a(str3, str2));
        }
        return linkedHashMap3;
    }

    public final void c(LinkedHashMap linkedHashMap, V7 v7) {
        String str;
        String str2;
        Uri.Builder builderBuildUpon = Uri.parse((String) this.f14914d).buildUpon();
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            builderBuildUpon.appendQueryParameter((String) entry.getKey(), (String) entry.getValue());
        }
        String string = builderBuildUpon.build().toString();
        if (v7 != null) {
            StringBuilder sb = new StringBuilder(string);
            int i8 = v7.f16959G;
            switch (i8) {
                case 0:
                    str = v7.f16960H;
                    break;
                default:
                    str = v7.f16960H;
                    break;
            }
            if (!TextUtils.isEmpty(str)) {
                sb.append("&it=");
                switch (i8) {
                    case 0:
                        str2 = v7.f16960H;
                        break;
                    default:
                        str2 = v7.f16960H;
                        break;
                }
                sb.append(str2);
            }
            if (!TextUtils.isEmpty(v7.f16961I)) {
                sb.append("&blat=");
                sb.append(v7.f16961I);
            }
            string = sb.toString();
        }
        if (!((AtomicBoolean) this.f14918h).get()) {
            p113o3.O o4 = p083k3.l.f25980A.f25983c;
            p113o3.O.j((Context) this.f14915e, (String) this.f14916f, string);
            return;
        }
        File file = (File) this.f14919i;
        if (file == null) {
            p120p3.h.g("CsiReporter: File doesn't exist. Cannot write CSI data to file.");
            return;
        }
        FileOutputStream fileOutputStream = null;
        try {
            try {
                FileOutputStream fileOutputStream2 = new FileOutputStream(file, true);
                try {
                    fileOutputStream2.write(string.getBytes());
                    fileOutputStream2.write(10);
                    try {
                        fileOutputStream2.close();
                    } catch (IOException e8) {
                        p120p3.h.h("CsiReporter: Cannot close file: sdk_csi_data.txt.", e8);
                    }
                } catch (IOException e9) {
                    e = e9;
                    fileOutputStream = fileOutputStream2;
                    p120p3.h.h("CsiReporter: Cannot write to file: sdk_csi_data.txt.", e);
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (IOException e10) {
                            p120p3.h.h("CsiReporter: Cannot close file: sdk_csi_data.txt.", e10);
                        }
                    }
                } catch (Throwable th) {
                    th = th;
                    fileOutputStream = fileOutputStream2;
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (IOException e11) {
                            p120p3.h.h("CsiReporter: Cannot close file: sdk_csi_data.txt.", e11);
                        }
                    }
                    throw th;
                }
            } catch (IOException e12) {
                e = e12;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
