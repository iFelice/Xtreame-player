package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Jn, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0798Jn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HashMap f14203a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f14204b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Executor f14205c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final p120p3.k f14206d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f14207e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final T1.a f14208f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final boolean f14209g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f14210h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AtomicBoolean f14211i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final AtomicReference f14212j;

    public AbstractC0798Jn(C1936re c1936re, p120p3.k kVar, T1.a aVar, Context context) {
        this.f14203a = new HashMap();
        this.f14211i = new AtomicBoolean();
        this.f14212j = new AtomicReference(new Bundle());
        this.f14205c = c1936re;
        this.f14206d = kVar;
        J7 j8 = Q7.f15694P1;
        C3099q c3099q = C3099q.f26624d;
        this.f14207e = ((Boolean) c3099q.f26627c.a(j8)).booleanValue();
        this.f14208f = aVar;
        J7 j9 = Q7.f15718S1;
        O7 o7 = c3099q.f26627c;
        this.f14209g = ((Boolean) o7.a(j9)).booleanValue();
        this.f14210h = ((Boolean) o7.a(Q7.f15976x6)).booleanValue();
        this.f14204b = context;
    }

    public final void a(Map map, boolean z7) {
        Bundle bundleU;
        if (map.isEmpty()) {
            p120p3.h.b("Empty paramMap.");
            return;
        }
        if (map.isEmpty()) {
            p120p3.h.b("Empty or null paramMap.");
        } else {
            int i8 = 1;
            boolean andSet = this.f14211i.getAndSet(true);
            AtomicReference atomicReference = this.f14212j;
            if (!andSet) {
                String str = (String) C3099q.f26624d.f26627c.a(Q7.O9);
                SharedPreferencesOnSharedPreferenceChangeListenerC0932Td sharedPreferencesOnSharedPreferenceChangeListenerC0932Td = new SharedPreferencesOnSharedPreferenceChangeListenerC0932Td(str, i8, this);
                if (TextUtils.isEmpty(str)) {
                    bundleU = Bundle.EMPTY;
                } else {
                    Context context = this.f14204b;
                    PreferenceManager.getDefaultSharedPreferences(context).registerOnSharedPreferenceChangeListener(sharedPreferencesOnSharedPreferenceChangeListenerC0932Td);
                    bundleU = J6.r.u(context, str);
                }
                atomicReference.set(bundleU);
            }
            Bundle bundle = (Bundle) atomicReference.get();
            for (String str2 : bundle.keySet()) {
                map.put(str2, String.valueOf(bundle.get(str2)));
            }
        }
        String strA = this.f14208f.a(map);
        p113o3.I.k(strA);
        boolean z8 = Boolean.parseBoolean((String) map.get("scar"));
        if (this.f14207e) {
            if (!z7 || this.f14209g) {
                if (!z8 || this.f14210h) {
                    this.f14205c.execute(new RunnableC0755Ha(27, this, strA));
                }
            }
        }
    }
}
