package com.google.android.gms.internal.pal;

import android.app.Activity;
import android.view.View;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class I1 extends Y1 {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f23554h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final View f23555i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Object f23556j;

    public I1(A1 a8, L4 l4, int i8, View view, Activity activity) {
        super(a8, "uJ6tafbdnitpIiJcEDt3zh4lzBZEYeFsW45S60suhbKyZNy2K2MuNEbuksualim4", "Cv/m6MvBjdOit7tT7cC+xPCpFEqovwYj4XIOcXUxCMs=", l4, i8, 62);
        this.f23555i = view;
        this.f23556j = activity;
    }

    private final void c() {
        if (this.f23555i == null) {
            return;
        }
        Boolean bool = (Boolean) C2727h2.f23833d.f23836c.a(AbstractC2759l2.f23932i);
        boolean zBooleanValue = bool.booleanValue();
        Object[] objArr = (Object[]) this.f23702e.invoke(null, this.f23555i, (Activity) this.f23556j, bool);
        synchronized (this.f23701d) {
            try {
                L4 l4 = this.f23701d;
                long jLongValue = ((Long) objArr[0]).longValue();
                if (l4.f23476I) {
                    l4.f();
                    l4.f23476I = false;
                }
                C2765m0.H((C2765m0) l4.f23475H, jLongValue);
                L4 l8 = this.f23701d;
                long jLongValue2 = ((Long) objArr[1]).longValue();
                if (l8.f23476I) {
                    l8.f();
                    l8.f23476I = false;
                }
                C2765m0.I((C2765m0) l8.f23475H, jLongValue2);
                if (zBooleanValue) {
                    L4 l9 = this.f23701d;
                    String str = (String) objArr[2];
                    if (l9.f23476I) {
                        l9.f();
                        l9.f23476I = false;
                    }
                    C2765m0.J((C2765m0) l9.f23475H, str);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.pal.Y1
    public final void a() {
        switch (this.f23554h) {
            case 0:
                c();
                return;
            default:
                Map map = (Map) this.f23556j;
                long jLongValue = map.containsKey(1) ? ((Long) map.get(1)).longValue() : Long.MIN_VALUE;
                Map map2 = (Map) this.f23556j;
                long[] jArr = (long[]) this.f23702e.invoke(null, new long[]{jLongValue, map2.containsKey(2) ? ((Long) map2.get(2)).longValue() : Long.MIN_VALUE}, this.f23698a.f23425a, this.f23555i);
                long j8 = jArr[0];
                ((Map) this.f23556j).put(1, Long.valueOf(jArr[1]));
                long j9 = jArr[2];
                ((Map) this.f23556j).put(2, Long.valueOf(jArr[3]));
                synchronized (this.f23701d) {
                    L4 l4 = this.f23701d;
                    if (l4.f23476I) {
                        l4.f();
                        l4.f23476I = false;
                    }
                    C2765m0.O((C2765m0) l4.f23475H, j8);
                    L4 l8 = this.f23701d;
                    if (l8.f23476I) {
                        l8.f();
                        l8.f23476I = false;
                    }
                    C2765m0.P((C2765m0) l8.f23475H, j9);
                    break;
                }
                return;
        }
    }

    public I1(A1 a8, L4 l4, int i8, HashMap map, View view) {
        super(a8, "RKC3mFMqGi7xOgQ7s39JMoZe9bnzGCFipcdUUf0vlgHDkBg7SvMkVmBGpwLs06ia", "8Xr1ilYJHo+oWZQAYAG91DIHBuqEmXK8yHtxL6KkyfU=", l4, i8, 85);
        this.f23556j = map;
        this.f23555i = view;
    }
}
