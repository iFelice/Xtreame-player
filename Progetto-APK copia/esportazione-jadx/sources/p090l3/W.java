package p090l3;

import R3.a;
import R3.b;
import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.view.View;
import com.google.android.gms.ads.internal.ClientApi;
import com.google.android.gms.internal.ads.A5;
import com.google.android.gms.internal.ads.AbstractBinderC2328z5;
import com.google.android.gms.internal.ads.AbstractC1317fg;
import com.google.android.gms.internal.ads.BinderC0928Sn;
import com.google.android.gms.internal.ads.BinderC0977Wg;
import com.google.android.gms.internal.ads.BinderC1054ab;
import com.google.android.gms.internal.ads.BinderC1800ox;
import com.google.android.gms.internal.ads.C0671Bg;
import com.google.android.gms.internal.ads.C0731Fg;
import com.google.android.gms.internal.ads.C0821Lg;
import com.google.android.gms.internal.ads.InterfaceC1016Zd;
import com.google.android.gms.internal.ads.InterfaceC1157cb;
import com.google.android.gms.internal.ads.InterfaceC1210dc;
import com.google.android.gms.internal.ads.InterfaceC1519jc;
import com.google.android.gms.internal.ads.InterfaceC1884qd;
import com.google.android.gms.internal.ads.MJ;
import com.google.android.gms.internal.ads.Mv;
import com.google.android.gms.internal.ads.ViewTreeObserverOnGlobalLayoutListenerC0898Ql;
import com.google.android.gms.internal.ads.X8;
import com.google.android.gms.internal.ads.Y9;
import com.google.android.gms.internal.ads.Z9;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public abstract class W extends AbstractBinderC2328z5 implements X {
    @Override // com.google.android.gms.internal.ads.AbstractBinderC2328z5
    public final boolean y3(int i8, Parcel parcel, Parcel parcel2) {
        Z9 y9 = null;
        switch (i8) {
            case 1:
                a aVarJ0 = b.j0(parcel.readStrongBinder());
                d1 d1Var = (d1) A5.a(parcel, d1.CREATOR);
                String string = parcel.readString();
                InterfaceC1157cb interfaceC1157cbZ3 = BinderC1054ab.z3(parcel.readStrongBinder());
                int i9 = parcel.readInt();
                A5.b(parcel);
                J jJ2 = ((ClientApi) this).J2(aVarJ0, d1Var, string, interfaceC1157cbZ3, i9);
                parcel2.writeNoException();
                A5.e(parcel2, jJ2);
                return true;
            case 2:
                a aVarJ1 = b.j0(parcel.readStrongBinder());
                d1 d1Var2 = (d1) A5.a(parcel, d1.CREATOR);
                String string2 = parcel.readString();
                InterfaceC1157cb interfaceC1157cbZ4 = BinderC1054ab.z3(parcel.readStrongBinder());
                int i10 = parcel.readInt();
                A5.b(parcel);
                J jZ1 = ((ClientApi) this).Z1(aVarJ1, d1Var2, string2, interfaceC1157cbZ4, i10);
                parcel2.writeNoException();
                A5.e(parcel2, jZ1);
                return true;
            case 3:
                a aVarJ2 = b.j0(parcel.readStrongBinder());
                String string3 = parcel.readString();
                InterfaceC1157cb interfaceC1157cbZ5 = BinderC1054ab.z3(parcel.readStrongBinder());
                int i11 = parcel.readInt();
                A5.b(parcel);
                F fM2 = ((ClientApi) this).M2(aVarJ2, string3, interfaceC1157cbZ5, i11);
                parcel2.writeNoException();
                A5.e(parcel2, fM2);
                return true;
            case 4:
                b.j0(parcel.readStrongBinder());
                A5.b(parcel);
                parcel2.writeNoException();
                A5.e(parcel2, null);
                return true;
            case 5:
                a aVarJ3 = b.j0(parcel.readStrongBinder());
                a aVarJ4 = b.j0(parcel.readStrongBinder());
                A5.b(parcel);
                X8 x8K0 = ((ClientApi) this).K0(aVarJ3, aVarJ4);
                parcel2.writeNoException();
                A5.e(parcel2, x8K0);
                return true;
            case 6:
                a aVarJ5 = b.j0(parcel.readStrongBinder());
                InterfaceC1157cb interfaceC1157cbZ6 = BinderC1054ab.z3(parcel.readStrongBinder());
                int i12 = parcel.readInt();
                A5.b(parcel);
                Context context = (Context) b.v0(aVarJ5);
                C0731Fg c0731Fg = new C0731Fg(AbstractC1317fg.b(context, interfaceC1157cbZ6, i12).f12432c);
                context.getClass();
                c0731Fg.f13386b = context;
                Mv mv = (Mv) ((MJ) c0731Fg.a().f14917g).zzb();
                parcel2.writeNoException();
                A5.e(parcel2, mv);
                return true;
            case 7:
                b.j0(parcel.readStrongBinder());
                A5.b(parcel);
                parcel2.writeNoException();
                A5.e(parcel2, null);
                return true;
            case 8:
                a aVarJ6 = b.j0(parcel.readStrongBinder());
                A5.b(parcel);
                InterfaceC1519jc interfaceC1519jcY = ((ClientApi) this).y(aVarJ6);
                parcel2.writeNoException();
                A5.e(parcel2, interfaceC1519jcY);
                return true;
            case 9:
                a aVarJ7 = b.j0(parcel.readStrongBinder());
                int i13 = parcel.readInt();
                A5.b(parcel);
                BinderC0977Wg binderC0977Wg = (BinderC0977Wg) AbstractC1317fg.b((Context) b.v0(aVarJ7), null, i13).f12470z.zzb();
                parcel2.writeNoException();
                A5.e(parcel2, binderC0977Wg);
                return true;
            case 10:
                a aVarJ8 = b.j0(parcel.readStrongBinder());
                d1 d1Var3 = (d1) A5.a(parcel, d1.CREATOR);
                String string4 = parcel.readString();
                int i14 = parcel.readInt();
                A5.b(parcel);
                J jE2 = ((ClientApi) this).e2(aVarJ8, d1Var3, string4, i14);
                parcel2.writeNoException();
                A5.e(parcel2, jE2);
                return true;
            case 11:
                a aVarJ9 = b.j0(parcel.readStrongBinder());
                a aVarJ10 = b.j0(parcel.readStrongBinder());
                a aVarJ11 = b.j0(parcel.readStrongBinder());
                A5.b(parcel);
                ViewTreeObserverOnGlobalLayoutListenerC0898Ql viewTreeObserverOnGlobalLayoutListenerC0898Ql = new ViewTreeObserverOnGlobalLayoutListenerC0898Ql((View) b.v0(aVarJ9), (HashMap) b.v0(aVarJ10), (HashMap) b.v0(aVarJ11));
                parcel2.writeNoException();
                A5.e(parcel2, viewTreeObserverOnGlobalLayoutListenerC0898Ql);
                return true;
            case 12:
                a aVarJ12 = b.j0(parcel.readStrongBinder());
                String string5 = parcel.readString();
                InterfaceC1157cb interfaceC1157cbZ7 = BinderC1054ab.z3(parcel.readStrongBinder());
                int i15 = parcel.readInt();
                A5.b(parcel);
                InterfaceC1884qd interfaceC1884qdE0 = ((ClientApi) this).e0(aVarJ12, string5, interfaceC1157cbZ7, i15);
                parcel2.writeNoException();
                A5.e(parcel2, interfaceC1884qdE0);
                return true;
            case 13:
                a aVarJ13 = b.j0(parcel.readStrongBinder());
                d1 d1Var4 = (d1) A5.a(parcel, d1.CREATOR);
                String string6 = parcel.readString();
                InterfaceC1157cb interfaceC1157cbZ8 = BinderC1054ab.z3(parcel.readStrongBinder());
                int i16 = parcel.readInt();
                A5.b(parcel);
                J jY2 = ((ClientApi) this).Y2(aVarJ13, d1Var4, string6, interfaceC1157cbZ8, i16);
                parcel2.writeNoException();
                A5.e(parcel2, jY2);
                return true;
            case 14:
                a aVarJ14 = b.j0(parcel.readStrongBinder());
                InterfaceC1157cb interfaceC1157cbZ9 = BinderC1054ab.z3(parcel.readStrongBinder());
                int i17 = parcel.readInt();
                A5.b(parcel);
                InterfaceC1016Zd interfaceC1016ZdT3 = ((ClientApi) this).t3(aVarJ14, interfaceC1157cbZ9, i17);
                parcel2.writeNoException();
                A5.e(parcel2, interfaceC1016ZdT3);
                return true;
            case 15:
                a aVarJ15 = b.j0(parcel.readStrongBinder());
                InterfaceC1157cb interfaceC1157cbZ10 = BinderC1054ab.z3(parcel.readStrongBinder());
                int i18 = parcel.readInt();
                A5.b(parcel);
                InterfaceC1210dc interfaceC1210dcX1 = ((ClientApi) this).x1(aVarJ15, interfaceC1157cbZ10, i18);
                parcel2.writeNoException();
                A5.e(parcel2, interfaceC1210dcX1);
                return true;
            case 16:
                a aVarJ16 = b.j0(parcel.readStrongBinder());
                InterfaceC1157cb interfaceC1157cbZ11 = BinderC1054ab.z3(parcel.readStrongBinder());
                int i19 = parcel.readInt();
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder != null) {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.h5.client.IH5AdsEventListener");
                    y9 = iInterfaceQueryLocalInterface instanceof Z9 ? (Z9) iInterfaceQueryLocalInterface : new Y9(strongBinder, "com.google.android.gms.ads.internal.h5.client.IH5AdsEventListener", 0);
                }
                A5.b(parcel);
                Context context2 = (Context) b.v0(aVarJ16);
                C0671Bg c0671BgB = AbstractC1317fg.b(context2, interfaceC1157cbZ11, i19);
                context2.getClass();
                y9.getClass();
                BinderC0928Sn binderC0928Sn = (BinderC0928Sn) new C0821Lg(c0671BgB.f12432c, context2, y9).f14529e.zzb();
                parcel2.writeNoException();
                A5.e(parcel2, binderC0928Sn);
                return true;
            case 17:
                a aVarJ17 = b.j0(parcel.readStrongBinder());
                InterfaceC1157cb interfaceC1157cbZ12 = BinderC1054ab.z3(parcel.readStrongBinder());
                int i20 = parcel.readInt();
                A5.b(parcel);
                InterfaceC3105t0 interfaceC3105t0G3 = ((ClientApi) this).g3(aVarJ17, interfaceC1157cbZ12, i20);
                parcel2.writeNoException();
                A5.e(parcel2, interfaceC3105t0G3);
                return true;
            case 18:
                a aVarJ18 = b.j0(parcel.readStrongBinder());
                InterfaceC1157cb interfaceC1157cbZ13 = BinderC1054ab.z3(parcel.readStrongBinder());
                int i21 = parcel.readInt();
                A5.b(parcel);
                BinderC1800ox binderC1800ox = (BinderC1800ox) AbstractC1317fg.b((Context) b.v0(aVarJ18), interfaceC1157cbZ13, i21).f12403A.zzb();
                parcel2.writeNoException();
                A5.e(parcel2, binderC1800ox);
                return true;
            default:
                return false;
        }
    }
}
