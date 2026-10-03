package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import java.util.Objects;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Id, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class SharedPreferencesOnSharedPreferenceChangeListenerC0773Id implements SharedPreferences.OnSharedPreferenceChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f13886a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SharedPreferences f13887b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final p113o3.K f13888c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f13889d = "-1";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f13890e = -1;

    public SharedPreferencesOnSharedPreferenceChangeListenerC0773Id(Context context, p113o3.K k8) {
        this.f13887b = PreferenceManager.getDefaultSharedPreferences(context);
        this.f13888c = k8;
        this.f13886a = context;
    }

    public final void a(int i8, String str) {
        Context context;
        J7 j8 = Q7.f15931s0;
        C3099q c3099q = C3099q.f26624d;
        boolean z7 = true;
        if (!((Boolean) c3099q.f26627c.a(j8)).booleanValue() ? !(str.isEmpty() || str.charAt(0) != '1') : !(i8 == 0 || str.isEmpty() || (str.charAt(0) != '1' && !str.equals("-1")))) {
            z7 = false;
        }
        ((p113o3.L) this.f13888c).h(z7);
        if (((Boolean) c3099q.f26627c.a(Q7.f15651J5)).booleanValue() && z7 && (context = this.f13886a) != null) {
            context.deleteDatabase("OfflineUpload.db");
        }
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        try {
            J7 j8 = Q7.f15947u0;
            C3099q c3099q = C3099q.f26624d;
            if (!((Boolean) c3099q.f26627c.a(j8)).booleanValue()) {
                String string = sharedPreferences.getString("IABTCF_PurposeConsents", "-1");
                int i8 = sharedPreferences.getInt("gad_has_consent_for_cookies", -1);
                String strValueOf = String.valueOf(str);
                if (!strValueOf.equals("gad_has_consent_for_cookies")) {
                    if (!strValueOf.equals("IABTCF_PurposeConsents") || string.equals("-1") || this.f13889d.equals(string)) {
                        return;
                    }
                    this.f13889d = string;
                    a(i8, string);
                    return;
                }
                if (!((Boolean) c3099q.f26627c.a(Q7.f15931s0)).booleanValue() || i8 == -1 || this.f13890e == i8) {
                    return;
                }
                this.f13890e = i8;
                a(i8, string);
                return;
            }
            boolean zEquals = Objects.equals(str, "gad_has_consent_for_cookies");
            Context context = this.f13886a;
            p113o3.K k8 = this.f13888c;
            if (zEquals) {
                int i9 = sharedPreferences.getInt("gad_has_consent_for_cookies", -1);
                p113o3.L l4 = (p113o3.L) k8;
                l4.s();
                if (i9 != l4.f27906m) {
                    ((p113o3.L) k8).h(true);
                    J6.r.v(context);
                }
                ((p113o3.L) k8).e(i9);
                return;
            }
            if (Objects.equals(str, "IABTCF_TCString")) {
                String string2 = sharedPreferences.getString(str, "-1");
                p113o3.L l8 = (p113o3.L) k8;
                l8.s();
                if (!Objects.equals(string2, l8.f27905l)) {
                    ((p113o3.L) k8).h(true);
                    J6.r.v(context);
                }
                ((p113o3.L) k8).n(string2);
            }
        } catch (Throwable th) {
            p083k3.l.f25980A.f25987g.i("AdMobPlusIdlessListener.onSharedPreferenceChanged", th);
            p113o3.I.l("onSharedPreferenceChanged, errorMessage = ", th);
        }
    }
}
