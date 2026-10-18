package I4;

import android.os.Bundle;
import com.google.android.gms.internal.measurement.C2532b0;
import com.google.android.gms.internal.measurement.C2550e0;
import com.google.android.gms.internal.measurement.C2562g0;
import com.google.android.gms.internal.measurement.C2568h0;
import com.google.android.gms.internal.measurement.C2598m0;
import com.google.android.gms.internal.measurement.H;
import com.google.android.gms.internal.measurement.X;
import com.google.android.gms.internal.measurement.Y;
import com.google.android.gms.internal.measurement.Z;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import p021c4.L0;

/* JADX INFO: loaded from: classes.dex */
public final class c implements L0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C2598m0 f4015a;

    public c(C2598m0 c2598m0) {
        this.f4015a = c2598m0;
    }

    @Override // p021c4.L0
    public final int c(String str) {
        C2598m0 c2598m0 = this.f4015a;
        c2598m0.getClass();
        H h8 = new H();
        c2598m0.b(new C2562g0(c2598m0, str, h8));
        Integer num = (Integer) H.v0(h8.j0(10000L), Integer.class);
        if (num == null) {
            return 25;
        }
        return num.intValue();
    }

    @Override // p021c4.L0
    public final void e(String str) {
        C2598m0 c2598m0 = this.f4015a;
        c2598m0.getClass();
        c2598m0.b(new C2532b0(c2598m0, str, 0));
    }

    @Override // p021c4.L0
    public final List f(String str, String str2) {
        C2598m0 c2598m0 = this.f4015a;
        c2598m0.getClass();
        H h8 = new H();
        c2598m0.b(new Z(c2598m0, str, str2, h8, 1));
        List list = (List) H.v0(h8.j0(5000L), List.class);
        return list == null ? Collections.emptyList() : list;
    }

    @Override // p021c4.L0
    public final Map g(String str, String str2, boolean z7) {
        C2598m0 c2598m0 = this.f4015a;
        c2598m0.getClass();
        H h8 = new H();
        c2598m0.b(new X(c2598m0, str, str2, z7, h8));
        Bundle bundleJ0 = h8.j0(5000L);
        if (bundleJ0 == null || bundleJ0.size() == 0) {
            return Collections.emptyMap();
        }
        HashMap map = new HashMap(bundleJ0.size());
        for (String str3 : bundleJ0.keySet()) {
            Object obj = bundleJ0.get(str3);
            if ((obj instanceof Double) || (obj instanceof Long) || (obj instanceof String)) {
                map.put(str3, obj);
            }
        }
        return map;
    }

    @Override // p021c4.L0
    public final void h(Bundle bundle) {
        C2598m0 c2598m0 = this.f4015a;
        c2598m0.getClass();
        c2598m0.b(new Y(c2598m0, bundle, 0));
    }

    @Override // p021c4.L0
    public final void i(String str, String str2, Bundle bundle) {
        C2598m0 c2598m0 = this.f4015a;
        c2598m0.getClass();
        c2598m0.b(new C2568h0(c2598m0, str, str2, bundle));
    }

    @Override // p021c4.L0
    public final void j(String str, String str2, Bundle bundle) {
        C2598m0 c2598m0 = this.f4015a;
        c2598m0.getClass();
        c2598m0.b(new Z(c2598m0, str, str2, bundle, 0));
    }

    @Override // p021c4.L0
    public final void k(String str) {
        C2598m0 c2598m0 = this.f4015a;
        c2598m0.getClass();
        c2598m0.b(new C2532b0(c2598m0, str, 1));
    }

    @Override // p021c4.L0
    public final long zzb() {
        C2598m0 c2598m0 = this.f4015a;
        c2598m0.getClass();
        H h8 = new H();
        c2598m0.b(new C2550e0(c2598m0, h8, 2));
        Long l4 = (Long) H.v0(h8.j0(500L), Long.class);
        if (l4 != null) {
            return l4.longValue();
        }
        long jNanoTime = System.nanoTime();
        c2598m0.f23202b.getClass();
        long jNextLong = new Random(jNanoTime ^ System.currentTimeMillis()).nextLong();
        int i8 = c2598m0.f23204d + 1;
        c2598m0.f23204d = i8;
        return jNextLong + ((long) i8);
    }

    @Override // p021c4.L0
    public final String zzh() {
        C2598m0 c2598m0 = this.f4015a;
        c2598m0.getClass();
        H h8 = new H();
        c2598m0.b(new C2550e0(c2598m0, h8, 1));
        return (String) H.v0(h8.j0(50L), String.class);
    }

    @Override // p021c4.L0
    public final String zzi() {
        C2598m0 c2598m0 = this.f4015a;
        c2598m0.getClass();
        H h8 = new H();
        c2598m0.b(new C2550e0(c2598m0, h8, 4));
        return (String) H.v0(h8.j0(500L), String.class);
    }

    @Override // p021c4.L0
    public final String zzj() {
        C2598m0 c2598m0 = this.f4015a;
        c2598m0.getClass();
        H h8 = new H();
        c2598m0.b(new C2550e0(c2598m0, h8, 3));
        return (String) H.v0(h8.j0(500L), String.class);
    }

    @Override // p021c4.L0
    public final String zzk() {
        C2598m0 c2598m0 = this.f4015a;
        c2598m0.getClass();
        H h8 = new H();
        c2598m0.b(new C2550e0(c2598m0, h8, 0));
        return (String) H.v0(h8.j0(500L), String.class);
    }
}
