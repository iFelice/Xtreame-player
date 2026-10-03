package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Objects;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Ud, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0946Ud {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HashMap f16850a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f16851b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Context f16852c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final C0818Ld f16853d;

    public C0946Ud(Context context, C0818Ld c0818Ld) {
        this.f16852c = context;
        this.f16853d = c0818Ld;
    }

    public final synchronized void a(String str) {
        try {
            if (this.f16850a.containsKey(str)) {
                return;
            }
            int i8 = 0;
            SharedPreferences defaultSharedPreferences = Objects.equals(str, "__default__") ? PreferenceManager.getDefaultSharedPreferences(this.f16852c) : this.f16852c.getSharedPreferences(str, 0);
            SharedPreferencesOnSharedPreferenceChangeListenerC0932Td sharedPreferencesOnSharedPreferenceChangeListenerC0932Td = new SharedPreferencesOnSharedPreferenceChangeListenerC0932Td(str, i8, this);
            this.f16850a.put(str, sharedPreferencesOnSharedPreferenceChangeListenerC0932Td);
            defaultSharedPreferences.registerOnSharedPreferenceChangeListener(sharedPreferencesOnSharedPreferenceChangeListenerC0932Td);
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void b(C0918Sd c0918Sd) {
        this.f16851b.add(c0918Sd);
    }
}
