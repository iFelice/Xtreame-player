package p039f;

import J6.r;
import android.content.Context;
import android.content.IntentFilter;
import android.location.Location;
import android.os.PowerManager;
import android.util.Log;
import java.util.Calendar;
import p096m2.u;

/* JADX INFO: loaded from: classes.dex */
public final class F extends H {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f24899c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ K f24900d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Object f24901e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public F(K k8, Context context) {
        super(k8);
        this.f24900d = k8;
        this.f24901e = (PowerManager) context.getApplicationContext().getSystemService("power");
    }

    @Override // p039f.H
    public final IntentFilter d() {
        switch (this.f24899c) {
            case 0:
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("android.os.action.POWER_SAVE_MODE_CHANGED");
                return intentFilter;
            default:
                IntentFilter intentFilter2 = new IntentFilter();
                intentFilter2.addAction("android.intent.action.TIME_SET");
                intentFilter2.addAction("android.intent.action.TIMEZONE_CHANGED");
                intentFilter2.addAction("android.intent.action.TIME_TICK");
                return intentFilter2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:50:0x00ed A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:51:0x00ef A[ORIG_RETURN, RETURN] */
    @Override // p039f.H
    public final int e() {
        long j8;
        boolean z7;
        int i8 = this.f24899c;
        Object obj = this.f24901e;
        switch (i8) {
            case 0:
                return B.a((PowerManager) obj) ? 2 : 1;
            default:
                u uVar = (u) obj;
                U u7 = (U) uVar.f27280J;
                if (u7.f24994b > System.currentTimeMillis()) {
                    z7 = u7.f24993a;
                } else {
                    Location locationY = r.c((Context) uVar.f27278H, "android.permission.ACCESS_COARSE_LOCATION") == 0 ? uVar.y("network") : null;
                    Location locationY2 = r.c((Context) uVar.f27278H, "android.permission.ACCESS_FINE_LOCATION") == 0 ? uVar.y("gps") : null;
                    if (locationY2 == null || locationY == null ? locationY2 != null : locationY2.getTime() > locationY.getTime()) {
                        locationY = locationY2;
                    }
                    if (locationY == null) {
                        Log.i("TwilightManager", "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values.");
                        int i9 = Calendar.getInstance().get(11);
                        if (i9 < 6 || i9 >= 22) {
                            return 2;
                        }
                        return 1;
                    }
                    U u8 = (U) uVar.f27280J;
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    if (T.f24989d == null) {
                        T.f24989d = new T();
                    }
                    T t7 = T.f24989d;
                    t7.a(jCurrentTimeMillis - 86400000, locationY.getLatitude(), locationY.getLongitude());
                    t7.a(jCurrentTimeMillis, locationY.getLatitude(), locationY.getLongitude());
                    boolean z8 = t7.f24990a == 1;
                    long j9 = t7.f24992c;
                    long j10 = t7.f24991b;
                    t7.a(jCurrentTimeMillis + 86400000, locationY.getLatitude(), locationY.getLongitude());
                    long j11 = t7.f24992c;
                    if (j9 == -1 || j10 == -1) {
                        j8 = 43200000 + jCurrentTimeMillis;
                    } else {
                        if (jCurrentTimeMillis > j10) {
                            j9 = j11;
                        } else if (jCurrentTimeMillis > j9) {
                            j9 = j10;
                        }
                        j8 = j9 + 60000;
                    }
                    u8.f24993a = z8;
                    u8.f24994b = j8;
                    z7 = u7.f24993a;
                }
                if (z7) {
                    return 2;
                }
                return 1;
        }
    }

    @Override // p039f.H
    public final void h() throws IllegalAccessException {
        int i8 = this.f24899c;
        K k8 = this.f24900d;
        switch (i8) {
            case 0:
                k8.l(true, true);
                break;
            default:
                k8.l(true, true);
                break;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public F(K k8, u uVar) {
        super(k8);
        this.f24900d = k8;
        this.f24901e = uVar;
    }
}
