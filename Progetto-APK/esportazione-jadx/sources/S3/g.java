package S3;

import K.k;
import Z3.C0420b;
import Z3.F;
import Z3.G;
import Z3.W;
import Z3.Z;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.google.android.gms.internal.ads.Cw;
import com.google.android.gms.internal.measurement.C2542c4;
import com.google.android.gms.internal.measurement.C2554e4;
import com.google.android.gms.internal.measurement.C2632s3;
import com.google.android.gms.internal.measurement.C2642u3;
import com.google.android.gms.internal.measurement.C2647v3;
import com.google.android.gms.internal.measurement.C2657x3;
import com.google.android.gms.internal.measurement.E3;
import com.google.android.gms.internal.measurement.F3;
import com.google.android.gms.internal.measurement.G3;
import com.google.android.gms.internal.measurement.G4;
import com.google.android.gms.internal.measurement.H3;
import com.google.android.gms.internal.measurement.H4;
import com.google.android.gms.internal.measurement.I4;
import com.google.android.gms.internal.measurement.InterfaceC2548d4;
import com.google.android.gms.internal.measurement.InterfaceC2652w3;
import com.google.android.gms.internal.measurement.J3;
import com.google.android.gms.internal.measurement.J4;
import com.google.android.gms.internal.measurement.K4;
import com.google.android.gms.internal.measurement.L2;
import com.google.android.gms.internal.measurement.L4;
import com.google.api.Service;
import java.util.List;
import p021c4.C;
import p021c4.E;

/* JADX INFO: loaded from: classes.dex */
public final class g implements W, p168v4.c, C {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f6432G;

    public g() {
        this.f6432G = 16;
    }

    public static final L2 c(Object obj, Object obj2) {
        L2 l2B = (L2) obj;
        L2 l4 = (L2) obj2;
        if (!l4.isEmpty()) {
            if (!l2B.f22957G) {
                l2B = l2B.b();
            }
            l2B.f();
            if (!l4.isEmpty()) {
                l2B.putAll(l4);
            }
        }
        return l2B;
    }

    public static final boolean d() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    @Override // p168v4.c
    public final void a(k kVar) {
        Log.e("UserMessagingPlatform", "Failed to load and cache a form, error=".concat(String.valueOf((String) kVar.f4295I)));
    }

    public final A2.i b(Context context, String str, b bVar) {
        int iD;
        int iD2;
        int i8 = 0;
        switch (this.f6432G) {
            case 0:
                A2.i iVar = new A2.i(2);
                int iD3 = bVar.d(context, str, true);
                iVar.f631b = iD3;
                if (iD3 != 0) {
                    iVar.f632c = 1;
                } else {
                    int iL = bVar.l(context, str);
                    iVar.f630a = iL;
                    if (iL != 0) {
                        iVar.f632c = -1;
                    }
                }
                return iVar;
            case 1:
            case 2:
            default:
                A2.i iVar2 = new A2.i(2);
                int iL2 = bVar.l(context, str);
                iVar2.f630a = iL2;
                if (iL2 != 0) {
                    iD2 = bVar.d(context, str, false);
                    iVar2.f631b = iD2;
                } else {
                    iD2 = bVar.d(context, str, true);
                    iVar2.f631b = iD2;
                }
                int i9 = iVar2.f630a;
                if (i9 == 0) {
                    if (iD2 != 0) {
                    }
                    iVar2.f632c = i8;
                    return iVar2;
                }
                i8 = i9;
                i8 = iD2 >= i8 ? 1 : -1;
                iVar2.f632c = i8;
                return iVar2;
            case 3:
                A2.i iVar3 = new A2.i(2);
                iVar3.f630a = bVar.l(context, str);
                int iD4 = bVar.d(context, str, true);
                iVar3.f631b = iD4;
                int i10 = iVar3.f630a;
                if (i10 == 0) {
                    if (iD4 != 0) {
                    }
                    iVar3.f632c = i8;
                    return iVar3;
                }
                i8 = i10;
                i8 = i8 >= iD4 ? -1 : 1;
                iVar3.f632c = i8;
                return iVar3;
            case 4:
                A2.i iVar4 = new A2.i(2);
                int iL3 = bVar.l(context, str);
                iVar4.f630a = iL3;
                if (iL3 != 0) {
                    iD = bVar.d(context, str, false);
                    iVar4.f631b = iD;
                } else {
                    iD = bVar.d(context, str, true);
                    iVar4.f631b = iD;
                }
                int i11 = iVar4.f630a;
                if (i11 == 0) {
                    if (iD != 0) {
                    }
                    iVar4.f632c = i8;
                    return iVar4;
                }
                i8 = i11;
                i8 = i8 >= iD ? -1 : 1;
                iVar4.f632c = i8;
                return iVar4;
        }
    }

    @Override // Z3.Y
    public final Object zza() {
        switch (this.f6432G) {
            case 8:
                return new C0420b();
            case 9:
                Handler handler = G.f8254a;
                Cw.a0(handler);
                return handler;
            case 10:
                F f8 = G.f8255b;
                Cw.a0(f8);
                return f8;
            case 11:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            default:
                List list = E.f10764a;
                ((G3) ((F3) E3.f22909H.f22910G.f31450G)).getClass();
                Boolean bool = (Boolean) G3.f22923a.b();
                bool.getClass();
                return bool;
            case 12:
                F f9 = G.f8255b;
                Cw.a0(f9);
                return new Z(f9);
            case 21:
                List list2 = E.f10764a;
                ((J3) H3.f22936H.get()).getClass();
                Boolean bool2 = (Boolean) J3.f22945b.b();
                bool2.getClass();
                return bool2;
            case 22:
                List list3 = E.f10764a;
                ((J3) H3.f22936H.get()).getClass();
                Boolean bool3 = (Boolean) J3.f22944a.b();
                bool3.getClass();
                return bool3;
            case 23:
                List list4 = E.f10764a;
                ((C2642u3) C2632s3.f23252H.get()).getClass();
                return Integer.valueOf((int) ((Long) C2642u3.f23321o0.b()).longValue());
            case 24:
                List list5 = E.f10764a;
                ((J3) H3.f22936H.get()).getClass();
                Boolean bool4 = (Boolean) J3.f22946c.b();
                bool4.getClass();
                return bool4;
            case 25:
                List list6 = E.f10764a;
                ((C2554e4) ((InterfaceC2548d4) C2542c4.f23109H.f23110G.f31450G)).getClass();
                Boolean bool5 = (Boolean) C2554e4.f23120a.b();
                bool5.getClass();
                return bool5;
            case Service.BILLING_FIELD_NUMBER /* 26 */:
                List list7 = E.f10764a;
                ((I4) ((H4) G4.f22925H.f22926G.f31450G)).getClass();
                Boolean bool6 = (Boolean) I4.f22941a.b();
                bool6.getClass();
                return bool6;
            case 27:
                List list8 = E.f10764a;
                ((L4) ((K4) J4.f22947H.f22948G.f31450G)).getClass();
                Boolean bool7 = (Boolean) L4.f22958a.b();
                bool7.getClass();
                return bool7;
            case Service.MONITORING_FIELD_NUMBER /* 28 */:
                List list9 = E.f10764a;
                ((C2657x3) ((InterfaceC2652w3) C2647v3.f23341H.f23342G.f31450G)).getClass();
                return Integer.valueOf((int) ((Long) C2657x3.f23409a.b()).longValue());
        }
    }

    public /* synthetic */ g(int i8) {
        this.f6432G = i8;
    }

    public /* synthetic */ g(int i8, int i9) {
        this.f6432G = i8;
    }
}
