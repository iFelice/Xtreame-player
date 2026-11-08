package C3;

import B0.w0;
import android.os.Bundle;
import com.google.android.gms.cast.CastDevice;
import java.util.Arrays;
import java.util.Set;
import java.util.UUID;

/* JADX INFO: renamed from: C3.e, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0105e implements com.google.android.gms.common.api.c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CastDevice f1505b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final D3.I f1506c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Bundle f1507d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f1508e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f1509f = UUID.randomUUID().toString();

    public /* synthetic */ C0105e(w0 w0Var) {
        this.f1505b = (CastDevice) w0Var.f1121I;
        this.f1506c = (D3.I) w0Var.f1122J;
        this.f1508e = w0Var.f1120H;
        this.f1507d = (Bundle) w0Var.f1123K;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C0105e)) {
            return false;
        }
        C0105e c0105e = (C0105e) obj;
        if (U4.a.c(this.f1505b, c0105e.f1505b)) {
            Bundle bundle = this.f1507d;
            Bundle bundle2 = c0105e.f1507d;
            if (bundle == null || bundle2 == null) {
                if (bundle == bundle2) {
                    if (this.f1508e != c0105e.f1508e && U4.a.c(this.f1509f, c0105e.f1509f)) {
                        return true;
                    }
                }
            } else if (bundle.size() == bundle2.size()) {
                Set<String> setKeySet = bundle.keySet();
                if (setKeySet.containsAll(bundle2.keySet())) {
                    for (String str : setKeySet) {
                        if (!U4.a.c(bundle.get(str), bundle2.get(str))) {
                        }
                    }
                    if (this.f1508e != c0105e.f1508e) {
                    }
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f1505b, this.f1507d, Integer.valueOf(this.f1508e), this.f1509f});
    }
}
