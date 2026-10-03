package p113o3;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.google.android.gms.internal.ads.J7;
import com.google.android.gms.internal.ads.Q7;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Objects;
import p083k3.l;
import p090l3.C3099q;

/* JADX INFO: loaded from: classes.dex */
public final class C {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HashMap f27872a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f27873b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Context f27874c;

    public C(Context context) {
        this.f27874c = context;
    }

    public final void a() {
        J7 j8 = Q7.I9;
        C3099q c3099q = C3099q.f26624d;
        if (((Boolean) c3099q.f26627c.a(j8)).booleanValue()) {
            O o4 = l.f25980A.f25983c;
            HashMap mapH = O.H((String) c3099q.f26627c.a(Q7.N9));
            for (String str : mapH.keySet()) {
                synchronized (this) {
                    try {
                        if (!this.f27872a.containsKey(str)) {
                            SharedPreferences defaultSharedPreferences = Objects.equals(str, "__default__") ? PreferenceManager.getDefaultSharedPreferences(this.f27874c) : this.f27874c.getSharedPreferences(str, 0);
                            B b8 = new B(this, str);
                            this.f27872a.put(str, b8);
                            defaultSharedPreferences.registerOnSharedPreferenceChangeListener(b8);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            b(new A(mapH));
        }
    }

    public final synchronized void b(A a8) {
        this.f27873b.add(a8);
    }
}
