package p021c4;

import P3.b;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import com.bumptech.glide.c;
import com.google.android.gms.internal.ads.AbstractC2090uc;
import com.google.android.gms.internal.measurement.K0;
import com.google.protobuf.U2;
import java.util.ArrayList;

/* JADX INFO: renamed from: c4.m0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0599m0 implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f11287G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ BinderC0608r0 f11288H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ J1 f11289I;

    public /* synthetic */ RunnableC0599m0(BinderC0608r0 binderC0608r0, J1 j8, int i8) {
        this.f11287G = i8;
        this.f11288H = binderC0608r0;
        this.f11289I = j8;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f11287G;
        J1 j8 = this.f11289I;
        BinderC0608r0 binderC0608r0 = this.f11288H;
        switch (i8) {
            case 0:
                A1 a8 = binderC0608r0.f11346G;
                a8.i();
                a8.O(j8);
                break;
            case 1:
                A1 a9 = binderC0608r0.f11346G;
                a9.i();
                a9.N(j8);
                break;
            case 2:
                binderC0608r0.f11346G.i();
                binderC0608r0.f11346G.K(j8);
                break;
            case 3:
                binderC0608r0.f11346G.i();
                A1 a10 = binderC0608r0.f11346G;
                a10.d().m();
                a10.j();
                c.h(j8);
                String str = j8.f10876G;
                c.e(str);
                int i9 = 0;
                if (a10.c0().B(null, E.f10834z0)) {
                    ((b) a10.c()).getClass();
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    int iT = a10.c0().t(null, E.f10789i0);
                    a10.c0();
                    long jLongValue = jCurrentTimeMillis - ((Long) E.f10776e.a(null)).longValue();
                    while (i9 < iT && a10.D(jLongValue, null)) {
                        i9++;
                    }
                } else {
                    a10.c0();
                    long jIntValue = ((Integer) E.f10797l.a(null)).intValue();
                    while (i9 < jIntValue && a10.D(0L, str)) {
                        i9++;
                    }
                }
                if (a10.c0().B(null, E.f10713A0)) {
                    a10.d().m();
                    a10.B();
                }
                if (a10.c0().B(null, E.f10747R0)) {
                    int iC = AbstractC2090uc.c(j8.f10908m0);
                    w1 w1Var = a10.f10661P;
                    w1Var.m();
                    if (((C0597l0) w1Var.f10616G).f11256M.B(null, E.f10745Q0) && iC == 2 && !w1.p(str)) {
                        C0579f0 c0579f0 = w1Var.f11343H.f10652G;
                        A1.I(c0579f0);
                        K0 k0C = c0579f0.C(str);
                        if (k0C != null && k0C.J() && !k0C.x().u().isEmpty()) {
                            a10.b().f11047T.b(str, "[sgtm] Going background, trigger client side upload. appId");
                            ((b) a10.c()).getClass();
                            a10.U(System.currentTimeMillis(), str);
                            break;
                        }
                    }
                }
                break;
            case 4:
                binderC0608r0.f11346G.i();
                A1 a11 = binderC0608r0.f11346G;
                U2.t(a11);
                c.e(j8.f10876G);
                a11.b0(j8);
                break;
            case 5:
                binderC0608r0.f11346G.i();
                A1 a12 = binderC0608r0.f11346G;
                if (a12.f10676e0 != null) {
                    ArrayList arrayList = new ArrayList();
                    a12.f10677f0 = arrayList;
                    arrayList.addAll(a12.f10676e0);
                }
                C0602o c0602o = a12.f10654I;
                A1.I(c0602o);
                String str2 = j8.f10876G;
                c.h(str2);
                c.e(str2);
                c0602o.m();
                c0602o.n();
                try {
                    SQLiteDatabase sQLiteDatabaseJ0 = c0602o.j0();
                    String[] strArr = {str2};
                    int iDelete = sQLiteDatabaseJ0.delete("apps", "app_id=?", strArr) + sQLiteDatabaseJ0.delete("events", "app_id=?", strArr) + sQLiteDatabaseJ0.delete("events_snapshot", "app_id=?", strArr) + sQLiteDatabaseJ0.delete("user_attributes", "app_id=?", strArr) + sQLiteDatabaseJ0.delete("conditional_properties", "app_id=?", strArr) + sQLiteDatabaseJ0.delete("raw_events", "app_id=?", strArr) + sQLiteDatabaseJ0.delete("raw_events_metadata", "app_id=?", strArr) + sQLiteDatabaseJ0.delete("queue", "app_id=?", strArr) + sQLiteDatabaseJ0.delete("audience_filter_values", "app_id=?", strArr) + sQLiteDatabaseJ0.delete("main_event_params", "app_id=?", strArr) + sQLiteDatabaseJ0.delete("default_event_params", "app_id=?", strArr) + sQLiteDatabaseJ0.delete("trigger_uris", "app_id=?", strArr) + sQLiteDatabaseJ0.delete("upload_queue", "app_id=?", strArr);
                    if (iDelete > 0) {
                        T t7 = ((C0597l0) c0602o.f10616G).f11258O;
                        C0597l0.k(t7);
                        t7.f11047T.c(str2, Integer.valueOf(iDelete), "Reset analytics data. app, records");
                    }
                } catch (SQLiteException e8) {
                    T t8 = ((C0597l0) c0602o.f10616G).f11258O;
                    C0597l0.k(t8);
                    t8.f11039L.c(T.t(str2), e8, "Error resetting analytics data. appId, error");
                }
                if (j8.f10883N) {
                    a12.K(j8);
                }
                break;
            default:
                binderC0608r0.f11346G.i();
                A1 a13 = binderC0608r0.f11346G;
                U2.t(a13);
                c.e(j8.f10876G);
                a13.O(j8);
                a13.N(j8);
                break;
        }
    }
}
