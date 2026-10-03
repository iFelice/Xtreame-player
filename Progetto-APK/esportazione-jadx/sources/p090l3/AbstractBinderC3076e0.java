package p090l3;

import R3.a;
import R3.b;
import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.internal.ads.A5;
import com.google.android.gms.internal.ads.AbstractBinderC2328z5;
import com.google.android.gms.internal.ads.BinderC0977Wg;
import com.google.android.gms.internal.ads.BinderC1054ab;
import com.google.android.gms.internal.ads.C0803Kd;
import com.google.android.gms.internal.ads.C0848Nd;
import com.google.android.gms.internal.ads.C0890Qd;
import com.google.android.gms.internal.ads.C1273eo;
import com.google.android.gms.internal.ads.C1467ia;
import com.google.android.gms.internal.ads.EnumC1843po;
import com.google.android.gms.internal.ads.InterfaceC1157cb;
import com.google.android.gms.internal.ads.InterfaceC1517ja;
import com.google.android.gms.internal.ads.J7;
import com.google.android.gms.internal.ads.MJ;
import com.google.android.gms.internal.ads.Q7;
import com.google.android.gms.internal.ads.RunnableC0755Ha;
import com.google.android.gms.internal.ads.RunnableC0963Vg;
import com.google.android.gms.internal.ads.Uy;
import java.io.IOException;
import java.util.ArrayList;
import okhttp3.HttpUrl;
import p083k3.l;
import p113o3.C3151i;
import p113o3.O;
import p120p3.h;

/* JADX INFO: renamed from: l3.e0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractBinderC3076e0 extends AbstractBinderC2328z5 {
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // com.google.android.gms.internal.ads.AbstractBinderC2328z5
    public final boolean y3(int i8, Parcel parcel, Parcel parcel2) throws RemoteException {
        String strE;
        RunnableC0963Vg runnableC0963Vg;
        InterfaceC1517ja c1467ia = null;
        InterfaceC3092m0 c3088k0 = null;
        int i9 = 0;
        switch (i8) {
            case 1:
                ((BinderC0977Wg) this).zzk();
                parcel2.writeNoException();
                return true;
            case 2:
                float f8 = parcel.readFloat();
                A5.b(parcel);
                ((BinderC0977Wg) this).A3(f8);
                parcel2.writeNoException();
                return true;
            case 3:
                String string = parcel.readString();
                A5.b(parcel);
                ((BinderC0977Wg) this).B3(string);
                parcel2.writeNoException();
                return true;
            case 4:
                boolean zF = A5.f(parcel);
                A5.b(parcel);
                ((BinderC0977Wg) this).z3(zF);
                parcel2.writeNoException();
                return true;
            case 5:
                a aVarJ0 = b.j0(parcel.readStrongBinder());
                String string2 = parcel.readString();
                A5.b(parcel);
                BinderC0977Wg binderC0977Wg = (BinderC0977Wg) this;
                if (aVarJ0 == null) {
                    h.d("Wrapped context is null. Failed to open debug menu.");
                } else {
                    Context context = (Context) b.v0(aVarJ0);
                    if (context == null) {
                        h.d("Context is null. Failed to open debug menu.");
                    } else {
                        C3151i c3151i = new C3151i(context);
                        c3151i.f27962d = string2;
                        c3151i.f27963e = binderC0977Wg.f17281H.f28196G;
                        c3151i.b();
                    }
                }
                parcel2.writeNoException();
                return true;
            case 6:
                String string3 = parcel.readString();
                a aVarJ1 = b.j0(parcel.readStrongBinder());
                A5.b(parcel);
                BinderC0977Wg binderC0977Wg2 = (BinderC0977Wg) this;
                Context context2 = binderC0977Wg2.f17280G;
                Q7.a(context2);
                if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15696P3)).booleanValue()) {
                    try {
                        O o4 = l.f25980A.f25983c;
                        strE = O.E(context2);
                    } catch (RemoteException | RuntimeException e8) {
                        l.f25980A.f25987g.i("NonagonMobileAdsSettingManager_AppId", e8);
                        strE = HttpUrl.FRAGMENT_ENCODE_SET;
                    }
                    break;
                } else {
                    strE = HttpUrl.FRAGMENT_ENCODE_SET;
                }
                String str = true == TextUtils.isEmpty(strE) ? string3 : strE;
                if (!TextUtils.isEmpty(str)) {
                    J7 j8 = Q7.f15641I3;
                    C3099q c3099q = C3099q.f26624d;
                    boolean zBooleanValue = ((Boolean) c3099q.f26627c.a(j8)).booleanValue();
                    J7 j9 = Q7.f15646J0;
                    boolean zBooleanValue2 = zBooleanValue | ((Boolean) c3099q.f26627c.a(j9)).booleanValue();
                    if (((Boolean) c3099q.f26627c.a(j9)).booleanValue()) {
                        runnableC0963Vg = new RunnableC0963Vg(binderC0977Wg2, (Runnable) b.v0(aVarJ1), i9);
                        zBooleanValue2 = true;
                    } else {
                        runnableC0963Vg = null;
                    }
                    if (zBooleanValue2) {
                        l.f25980A.f25991k.k(binderC0977Wg2.f17280G, binderC0977Wg2.f17281H, true, null, str, null, runnableC0963Vg, binderC0977Wg2.f17290Q, binderC0977Wg2.f17293T, binderC0977Wg2.f17295V);
                    }
                }
                parcel2.writeNoException();
                return true;
            case 7:
                float fZze = ((BinderC0977Wg) this).zze();
                parcel2.writeNoException();
                parcel2.writeFloat(fZze);
                return true;
            case 8:
                boolean zC3 = ((BinderC0977Wg) this).C3();
                parcel2.writeNoException();
                ClassLoader classLoader = A5.f11962a;
                parcel2.writeInt(zC3 ? 1 : 0);
                return true;
            case 9:
                String str2 = ((BinderC0977Wg) this).f17281H.f28196G;
                parcel2.writeNoException();
                parcel2.writeString(str2);
                return true;
            case 10:
                String string4 = parcel.readString();
                A5.b(parcel);
                ((BinderC0977Wg) this).f17284K.d(string4);
                parcel2.writeNoException();
                return true;
            case 11:
                InterfaceC1157cb interfaceC1157cbZ3 = BinderC1054ab.z3(parcel.readStrongBinder());
                A5.b(parcel);
                ((BinderC0977Wg) this).f17291R.b(interfaceC1157cbZ3);
                parcel2.writeNoException();
                return true;
            case 12:
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder != null) {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.initialization.IInitializationCallback");
                    c1467ia = iInterfaceQueryLocalInterface instanceof InterfaceC1517ja ? (InterfaceC1517ja) iInterfaceQueryLocalInterface : new C1467ia(strongBinder, "com.google.android.gms.ads.internal.initialization.IInitializationCallback", 0);
                }
                A5.b(parcel);
                C1273eo c1273eo = ((BinderC0977Wg) this).f17285L;
                c1273eo.getClass();
                c1273eo.f18591e.a(new RunnableC0755Ha(29, c1273eo, c1467ia), c1273eo.f18596j);
                parcel2.writeNoException();
                return true;
            case 13:
                ArrayList arrayListA = ((BinderC0977Wg) this).f17285L.a();
                parcel2.writeNoException();
                parcel2.writeTypedList(arrayListA);
                return true;
            case 14:
                A5.b(parcel);
                BinderC0977Wg binderC0977Wg3 = (BinderC0977Wg) this;
                C0890Qd c0890Qd = binderC0977Wg3.f17286M;
                Context context3 = binderC0977Wg3.f17280G;
                c0890Qd.getClass();
                C0848Nd c0848NdB = C0848Nd.b(context3);
                C0803Kd c0803Kd = (C0803Kd) ((MJ) c0848NdB.f14917g).zzb();
                ((P3.b) ((P3.a) c0848NdB.f14911a)).getClass();
                c0803Kd.a(-1, System.currentTimeMillis());
                if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15876l0)).booleanValue() && c0890Qd.e(context3) && C0890Qd.g(context3)) {
                    synchronized (c0890Qd.f16039i) {
                        break;
                    }
                }
                parcel2.writeNoException();
                return true;
            case 15:
                ((BinderC0977Wg) this).f17285L.f18603q = false;
                parcel2.writeNoException();
                return true;
            case 16:
                IBinder strongBinder2 = parcel.readStrongBinder();
                if (strongBinder2 != null) {
                    IInterface iInterfaceQueryLocalInterface2 = strongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.client.IOnAdInspectorClosedListener");
                    c3088k0 = iInterfaceQueryLocalInterface2 instanceof InterfaceC3092m0 ? (InterfaceC3092m0) iInterfaceQueryLocalInterface2 : new C3088k0(strongBinder2, "com.google.android.gms.ads.internal.client.IOnAdInspectorClosedListener", 0);
                }
                A5.b(parcel);
                ((BinderC0977Wg) this).f17288O.d(c3088k0, EnumC1843po.f20487H);
                parcel2.writeNoException();
                return true;
            case 17:
                boolean zF2 = A5.f(parcel);
                A5.b(parcel);
                try {
                    Uy uyG = Uy.g(((BinderC0977Wg) this).f17280G);
                    uyG.f16568f.a(Boolean.valueOf(zF2), "paidv2_publisher_option");
                    if (!zF2) {
                        uyG.h();
                        break;
                    }
                    parcel2.writeNoException();
                    return true;
                } catch (IOException e9) {
                    throw new RemoteException(e9.getMessage());
                }
            case 18:
                String string5 = parcel.readString();
                A5.b(parcel);
                if (((Boolean) C3099q.f26624d.f26627c.a(Q7.H8)).booleanValue()) {
                    l.f25980A.f25987g.f19811g = string5;
                }
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
