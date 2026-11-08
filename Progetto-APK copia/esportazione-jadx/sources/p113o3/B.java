package p113o3;

import android.content.SharedPreferences;
import java.util.Map;
import java.util.Set;
import p083k3.l;

/* JADX INFO: loaded from: classes.dex */
public final class B implements SharedPreferences.OnSharedPreferenceChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f27870a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ C f27871b;

    public B(C c8, String str) {
        this.f27871b = c8;
        this.f27870a = str;
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        synchronized (this.f27871b) {
            try {
                for (A a8 : this.f27871b.f27873b) {
                    String str2 = this.f27870a;
                    Map map = a8.f27869a;
                    if (map.containsKey(str2) && ((Set) map.get(str2)).contains(str)) {
                        l.f25980A.f25987g.d().i(false);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
