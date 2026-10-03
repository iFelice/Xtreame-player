package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import java.util.Map;
import java.util.Set;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Td, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class SharedPreferencesOnSharedPreferenceChangeListenerC0932Td implements SharedPreferences.OnSharedPreferenceChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f16684a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f16685b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f16686c;

    public /* synthetic */ SharedPreferencesOnSharedPreferenceChangeListenerC0932Td(String str, int i8, Object obj) {
        this.f16684a = i8;
        this.f16686c = obj;
        this.f16685b = str;
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        switch (this.f16684a) {
            case 0:
                synchronized (((C0946Ud) this.f16686c)) {
                    try {
                        for (C0918Sd c0918Sd : ((C0946Ud) this.f16686c).f16851b) {
                            String str2 = this.f16685b;
                            C0946Ud c0946Ud = c0918Sd.f16440a;
                            Map map = c0918Sd.f16441b;
                            c0946Ud.getClass();
                            if (map.containsKey(str2) && ((Set) map.get(str2)).contains(str)) {
                                C0818Ld c0818Ld = c0946Ud.f16853d;
                                ((P3.b) c0818Ld.f14514a).getClass();
                                c0818Ld.f14515b.a(-1, System.currentTimeMillis());
                            }
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                    break;
                }
                return;
            default:
                AbstractC0798Jn abstractC0798Jn = (AbstractC0798Jn) this.f16686c;
                abstractC0798Jn.f14212j.set(J6.r.u(abstractC0798Jn.f14204b, this.f16685b));
                return;
        }
    }
}
