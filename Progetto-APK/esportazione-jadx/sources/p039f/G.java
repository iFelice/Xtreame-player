package p039f;

import A0.O;
import B0.M0;
import D0.C0114d;
import D0.C0116f;
import E1.e0;
import J2.r;
import J2.s;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import android.telephony.TelephonyManager;
import android.util.Log;
import com.google.android.gms.internal.ads.EL;
import com.google.android.gms.internal.ads.Et;
import com.google.android.gms.internal.ads.GL;
import com.google.android.gms.internal.ads.H5;
import com.google.android.gms.internal.ads.Kq;
import com.google.android.gms.internal.ads.Z4;
import com.google.android.gms.internal.cast.X;
import com.google.android.gms.internal.measurement.C2578i4;
import com.google.android.gms.internal.pal.F1;
import java.util.ArrayList;
import java.util.Map;
import java.util.concurrent.Executor;
import p021c4.C0591j0;
import p021c4.C0597l0;
import p021c4.E;
import p021c4.T;
import p082k2.d;
import p117p0.A;
import p117p0.C;
import p161u5.g;
import pe.hf.black20.LoginActivity;
import pe.hf.black20.PlayStreamEPGActivity;
import pe.hf.black20.SeriesActivity;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class G extends BroadcastReceiver {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ int f24902c = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f24903a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f24904b;

    public /* synthetic */ G(int i8, Object obj) {
        this.f24903a = i8;
        this.f24904b = obj;
    }

    /* JADX WARN: Code duplicated, block: B:51:0x013a  */
    /* JADX WARN: Code duplicated, block: B:66:0x0162  */
    /* JADX WARN: Code duplicated, block: B:67:0x0164  */
    /* JADX WARN: Code duplicated, block: B:69:0x016b  */
    /* JADX WARN: Code duplicated, block: B:70:0x016d  */
    /* JADX WARN: Code duplicated, block: B:72:0x0173  */
    /* JADX WARN: Code duplicated, block: B:73:0x0176  */
    /* JADX WARN: Code duplicated, block: B:74:0x0178  */
    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        int i8 = 2;
        int i9 = 8;
        int i10 = 4;
        int i11 = 7;
        int i12 = 1;
        switch (this.f24903a) {
            case 0:
                ((H) this.f24904b).h();
                return;
            case 1:
                ((Executor) ((C) this.f24904b).f28024I).execute(new RunnableC3004t(i11, this, context));
                return;
            case 2:
                O.I(this.f24904b);
                throw null;
            case 3:
                if (isInitialStickyBroadcast()) {
                    return;
                }
                C0116f c0116f = (C0116f) this.f24904b;
                c0116f.a(C0114d.b(context, intent, c0116f.f1933i, c0116f.f1932h));
                return;
            case 4:
                ((e0) this.f24904b).a();
                return;
            case 5:
                if (intent.getAction().equals("android.media.VOLUME_CHANGED_ACTION") && intent.getIntExtra("android.media.EXTRA_VOLUME_STREAM_TYPE", -1) == 3 && intent.getIntExtra("android.media.EXTRA_VOLUME_STREAM_VALUE", -1) >= 0) {
                    O.I(this.f24904b);
                    throw null;
                }
                return;
            case 6:
                q0.h(context, "context");
                q0.h(intent, "intent");
                ((d) this.f24904b).g(intent);
                return;
            case 7:
                s sVar = (s) this.f24904b;
                sVar.getClass();
                s.f4116M.execute(new r(sVar, i8));
                return;
            case 8:
                p113o3.G g8 = (p113o3.G) this.f24904b;
                synchronized (g8) {
                    try {
                        ArrayList arrayList = new ArrayList();
                        for (Map.Entry entry : ((Map) g8.f27885e).entrySet()) {
                            if (((IntentFilter) entry.getValue()).hasAction(intent.getAction())) {
                                arrayList.add((BroadcastReceiver) entry.getKey());
                            }
                        }
                        int size = arrayList.size();
                        for (int i13 = 0; i13 < size; i13++) {
                            ((BroadcastReceiver) arrayList.get(i13)).onReceive(context, intent);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return;
            case 9:
                boolean zEquals = "android.intent.action.USER_PRESENT".equals(intent.getAction());
                Object obj = this.f24904b;
                if (zEquals) {
                    ((p113o3.O) obj).f27929e = true;
                    return;
                } else {
                    if ("android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
                        ((p113o3.O) obj).f27929e = false;
                        return;
                    }
                    return;
                }
            case 10:
                Z4 z7 = (Z4) this.f24904b;
                Handler handler = Z4.f17715S;
                z7.c();
                return;
            case 11:
                H5 h8 = (H5) this.f24904b;
                int i14 = H5.f13702V;
                h8.c(3);
                return;
            case 12:
                ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
                if (connectivityManager == null) {
                    i8 = 0;
                } else {
                    try {
                        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                        if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
                            i8 = 1;
                        } else {
                            int type = activeNetworkInfo.getType();
                            if (type == 0) {
                                switch (activeNetworkInfo.getSubtype()) {
                                    case 1:
                                    case 2:
                                        i8 = 3;
                                        break;
                                    case 3:
                                    case 4:
                                    case 5:
                                    case 6:
                                    case 7:
                                    case 8:
                                    case 9:
                                    case 10:
                                    case 11:
                                    case 12:
                                    case 14:
                                    case 15:
                                    case 17:
                                        i8 = 4;
                                        break;
                                    case 13:
                                        i8 = 5;
                                        break;
                                    case 16:
                                    case 19:
                                    default:
                                        i8 = 6;
                                        break;
                                    case 18:
                                        break;
                                    case 20:
                                        if (Et.f13234a >= 29) {
                                            i8 = 9;
                                        } else {
                                            i8 = 0;
                                        }
                                        break;
                                }
                            } else if (type != 1) {
                                if (type == 4 || type == 5) {
                                    switch (activeNetworkInfo.getSubtype()) {
                                        case 1:
                                        case 2:
                                            i8 = 3;
                                            break;
                                        case 3:
                                        case 4:
                                        case 5:
                                        case 6:
                                        case 7:
                                        case 8:
                                        case 9:
                                        case 10:
                                        case 11:
                                        case 12:
                                        case 14:
                                        case 15:
                                        case 17:
                                            i8 = 4;
                                            break;
                                        case 13:
                                            i8 = 5;
                                            break;
                                        case 16:
                                        case 19:
                                        default:
                                            i8 = 6;
                                            break;
                                        case 18:
                                            break;
                                        case 20:
                                            if (Et.f13234a >= 29) {
                                                i8 = 9;
                                            } else {
                                                i8 = 0;
                                            }
                                            break;
                                    }
                                } else if (type != 6) {
                                    i8 = type != 9 ? 8 : 7;
                                } else {
                                    i8 = 5;
                                }
                            }
                        }
                    } catch (SecurityException unused) {
                    }
                }
                int i15 = Et.f13234a;
                Object obj2 = this.f24904b;
                if (i15 < 31 || i8 != 5) {
                    Kq.f((Kq) obj2, i8);
                    return;
                }
                Kq kq = (Kq) obj2;
                try {
                    TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                    telephonyManager.getClass();
                    A a8 = new A(kq, i12);
                    telephonyManager.registerTelephonyCallback(context.getMainExecutor(), a8);
                    telephonyManager.unregisterTelephonyCallback(a8);
                    return;
                } catch (RuntimeException unused2) {
                    Kq.f(kq, 5);
                    return;
                }
            case 13:
                if (isInitialStickyBroadcast()) {
                    return;
                }
                GL gl = (GL) this.f24904b;
                gl.b(EL.c(context, intent, gl.f13519h, gl.f13518g));
                return;
            case 14:
                F1 f8 = (F1) this.f24904b;
                Handler handler2 = F1.f23509S;
                f8.c();
                return;
            case 15:
                Object obj3 = this.f24904b;
                if (intent == null) {
                    T t7 = ((C0597l0) obj3).f11258O;
                    C0597l0.k(t7);
                    t7.f11042O.a("App receiver called with null intent");
                    return;
                }
                String action = intent.getAction();
                if (action == null) {
                    T t8 = ((C0597l0) obj3).f11258O;
                    C0597l0.k(t8);
                    t8.f11042O.a("App receiver called with null action");
                    return;
                }
                if (action.equals("com.google.android.gms.measurement.BATCHES_AVAILABLE")) {
                    C0597l0 c0597l0 = (C0597l0) obj3;
                    if (c0597l0.f11256M.B(null, E.f10749S0)) {
                        T t9 = c0597l0.f11258O;
                        C0597l0.k(t9);
                        t9.f11047T.a("[sgtm] App Receiver notified batches are available");
                        C0591j0 c0591j0 = c0597l0.f11259P;
                        C0597l0.k(c0591j0);
                        c0591j0.x(new X(this, i9));
                        return;
                    }
                    return;
                }
                if (!action.equals("com.google.android.gms.measurement.TRIGGERS_AVAILABLE")) {
                    T t10 = ((C0597l0) obj3).f11258O;
                    C0597l0.k(t10);
                    t10.f11042O.a("App receiver called with unknown action");
                    return;
                }
                C0597l0 c0597l1 = (C0597l0) obj3;
                C2578i4.b();
                if (c0597l1.f11256M.B(null, E.f10759X0)) {
                    T t11 = c0597l1.f11258O;
                    C0597l0.k(t11);
                    t11.f11047T.a("App receiver notified triggers are available");
                    C0591j0 c0591j1 = c0597l1.f11259P;
                    C0597l0.k(c0591j1);
                    c0591j1.x(new X(c0597l1, i11));
                    return;
                }
                return;
            case 16:
                if ("android.intent.action.BATTERY_CHANGED".equals(intent.getAction())) {
                    ((g) this.f24904b).f30521d.post(new M0(i10, this, intent.getIntExtra("plugged", -1) <= 0));
                    return;
                }
                return;
            case 17:
                Log.e("FirstReceiver", "FirstReceiver");
                if (intent.getAction().equals("finish_alert_login")) {
                    ((LoginActivity) this.f24904b).finish();
                    return;
                }
                return;
            case 18:
                PlayStreamEPGActivity playStreamEPGActivity = (PlayStreamEPGActivity) this.f24904b;
                if (playStreamEPGActivity == null) {
                    return;
                }
                playStreamEPGActivity.runOnUiThread(new U0.r(19, this, intent));
                return;
            default:
                Log.e("FirstReceiver", "FirstReceiver");
                if (intent.getAction().equals("SeriesActivity_finish_alert")) {
                    ((SeriesActivity) this.f24904b).finish();
                    return;
                }
                return;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ G(C0116f c0116f) {
        this(c0116f, 3);
        this.f24903a = 3;
    }

    public G(C0597l0 c0597l0) {
        this.f24903a = 15;
        this.f24904b = c0597l0;
    }

    public /* synthetic */ G(Object obj, int i8) {
        this.f24903a = i8;
        this.f24904b = obj;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ G(C c8) {
        this(c8, 1);
        this.f24903a = 1;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ G(g gVar) {
        this(gVar, 16);
        this.f24903a = 16;
    }
}
