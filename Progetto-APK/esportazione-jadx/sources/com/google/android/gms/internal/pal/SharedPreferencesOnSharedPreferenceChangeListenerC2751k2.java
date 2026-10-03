package com.google.android.gms.internal.pal;

import O1.C0325y;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.ConditionVariable;
import android.os.StrictMode;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.k2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class SharedPreferencesOnSharedPreferenceChangeListenerC2751k2 implements SharedPreferences.OnSharedPreferenceChangeListener {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Context f23914g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f23908a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ConditionVariable f23909b = new ConditionVariable();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile boolean f23910c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public volatile boolean f23911d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public SharedPreferences f23912e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Bundle f23913f = new Bundle();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public JSONObject f23915h = new JSONObject();

    public final Object a(C0325y c0325y) {
        if (!this.f23909b.block(5000L)) {
            synchronized (this.f23908a) {
                try {
                    if (!this.f23911d) {
                        throw new IllegalStateException("Flags.initialize() was not called!");
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        if (!this.f23910c || this.f23912e == null) {
            synchronized (this.f23908a) {
                if (this.f23910c && this.f23912e != null) {
                }
                return c0325y.f5561c;
            }
        }
        int i8 = c0325y.f5559a;
        if (i8 == 2) {
            Bundle bundle = this.f23913f;
            return bundle == null ? c0325y.f5561c : c0325y.u(bundle);
        }
        if (i8 == 1 && this.f23915h.has((String) c0325y.f5560b)) {
            return c0325y.t(this.f23915h);
        }
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        try {
            StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitDiskReads().permitDiskWrites().build());
            return c0325y.v(this.f23912e);
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }

    public final void b() {
        if (this.f23912e == null) {
            return;
        }
        try {
            this.f23915h = new JSONObject((String) AbstractC2864y4.l(new C2805r1(this, 2)));
        } catch (JSONException unused) {
        }
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        if ("flag_configuration".equals(str)) {
            b();
        }
    }
}
