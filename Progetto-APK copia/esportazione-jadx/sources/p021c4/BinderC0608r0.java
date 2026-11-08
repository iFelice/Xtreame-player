package p021c4;

import J3.j;
import J3.k;
import K3.V;
import P3.b;
import S3.e;
import Z3.RunnableC0439v;
import android.content.Context;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.text.TextUtils;
import com.bumptech.glide.c;
import com.google.android.gms.internal.measurement.AbstractBinderC2653x;
import com.google.android.gms.internal.measurement.AbstractC2658y;
import com.google.api.Service;
import com.google.protobuf.DescriptorProtos$FileOptions;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;
import org.eclipse.paho.client.mqttv3.MqttConnectOptions;
import p079k.RunnableC3015g;
import p104n2.t;
import p113o3.F;
import p167v3.CallableC3196d;

/* JADX INFO: renamed from: c4.r0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class BinderC0608r0 extends AbstractBinderC2653x implements G {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final A1 f11346G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public Boolean f11347H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public String f11348I;

    public BinderC0608r0(A1 a8) {
        super("com.google.android.gms.measurement.internal.IMeasurementService");
        c.h(a8);
        this.f11346G = a8;
        this.f11348I = null;
    }

    @Override // p021c4.G
    public final void A2(J1 j8, C0575e c0575e) {
        if (this.f11346G.c0().B(null, E.f10745Q0)) {
            r1(j8);
            v0(new RunnableC0439v(this, j8, c0575e, 3));
        }
    }

    @Override // p021c4.G
    public final List F1(String str, String str2, String str3, boolean z7) {
        i2(str, true);
        A1 a8 = this.f11346G;
        try {
            List<G1> list = (List) a8.d().s(new CallableC0605p0(this, str, str2, str3, 1)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (G1 g8 : list) {
                if (z7 || !I1.h0(g8.f10851c)) {
                    arrayList.add(new F1(g8));
                }
            }
            return arrayList;
        } catch (InterruptedException e8) {
            e = e8;
            T tB = a8.b();
            tB.f11039L.c(T.t(str), e, "Failed to get user properties as. appId");
            return Collections.emptyList();
        } catch (ExecutionException e9) {
            e = e9;
            T tB2 = a8.b();
            tB2.f11039L.c(T.t(str), e, "Failed to get user properties as. appId");
            return Collections.emptyList();
        }
    }

    @Override // p021c4.G
    public final void I2(J1 j8, Bundle bundle, I i8) {
        r1(j8);
        String str = j8.f10876G;
        c.h(str);
        this.f11346G.d().x(new t(this, j8, bundle, i8, str, 3, 0));
    }

    @Override // p021c4.G
    public final void M0(J1 j8) {
        r1(j8);
        v0(new RunnableC0599m0(this, j8, 2));
    }

    @Override // p021c4.G
    public final void R2(J1 j8) {
        r1(j8);
        v0(new RunnableC0599m0(this, j8, 4));
    }

    @Override // p021c4.G
    public final void T2(J1 j8, s1 s1Var, K k8) {
        A1 a8 = this.f11346G;
        if (a8.c0().B(null, E.f10745Q0)) {
            r1(j8);
            String str = j8.f10876G;
            c.h(str);
            a8.d().x(new RunnableC3015g(this, str, s1Var, k8, 9, 0));
            return;
        }
        try {
            k8.B1(new t1(Collections.emptyList()));
            a8.b().f11047T.a("[sgtm] Client upload is not enabled on the service side.");
        } catch (RemoteException e8) {
            a8.b().f11042O.b(e8, "[sgtm] UploadBatchesCallback failed.");
        }
    }

    @Override // p021c4.G
    public final void W0(J1 j8) {
        c.e(j8.f10876G);
        c.h(j8.f10896a0);
        j0(new RunnableC0599m0(this, j8, 6));
    }

    @Override // p021c4.G
    public final void X0(C0613u c0613u, J1 j8) {
        c.h(c0613u);
        r1(j8);
        v0(new RunnableC0439v(this, c0613u, j8, 5, 0));
    }

    @Override // com.google.android.gms.internal.measurement.AbstractBinderC2653x
    public final boolean Y(int i8, Parcel parcel, Parcel parcel2) {
        boolean z7;
        List listEmptyList;
        A1 a8 = this.f11346G;
        ArrayList arrayList = null;
        I h8 = null;
        K j8 = null;
        switch (i8) {
            case 1:
                C0613u c0613u = (C0613u) AbstractC2658y.a(parcel, C0613u.CREATOR);
                J1 j9 = (J1) AbstractC2658y.a(parcel, J1.CREATOR);
                AbstractC2658y.b(parcel);
                X0(c0613u, j9);
                parcel2.writeNoException();
                return true;
            case 2:
                F1 f8 = (F1) AbstractC2658y.a(parcel, F1.CREATOR);
                J1 j10 = (J1) AbstractC2658y.a(parcel, J1.CREATOR);
                AbstractC2658y.b(parcel);
                b0(f8, j10);
                parcel2.writeNoException();
                return true;
            case 3:
            case 8:
            case 22:
            case 23:
            case Service.MONITORING_FIELD_NUMBER /* 28 */:
            default:
                return false;
            case 4:
                J1 j11 = (J1) AbstractC2658y.a(parcel, J1.CREATOR);
                AbstractC2658y.b(parcel);
                M0(j11);
                parcel2.writeNoException();
                return true;
            case 5:
                C0613u c0613u2 = (C0613u) AbstractC2658y.a(parcel, C0613u.CREATOR);
                String string = parcel.readString();
                parcel.readString();
                AbstractC2658y.b(parcel);
                c.h(c0613u2);
                c.e(string);
                i2(string, true);
                v0(new RunnableC0439v(this, c0613u2, string));
                parcel2.writeNoException();
                return true;
            case 6:
                J1 j12 = (J1) AbstractC2658y.a(parcel, J1.CREATOR);
                AbstractC2658y.b(parcel);
                R2(j12);
                parcel2.writeNoException();
                return true;
            case 7:
                J1 j13 = (J1) AbstractC2658y.a(parcel, J1.CREATOR);
                z7 = parcel.readInt() != 0;
                AbstractC2658y.b(parcel);
                r1(j13);
                String str = j13.f10876G;
                c.h(str);
                try {
                    List<G1> list = (List) a8.d().s(new F(this, str, 3)).get();
                    ArrayList arrayList2 = new ArrayList(list.size());
                    for (G1 g8 : list) {
                        if (z7 || !I1.h0(g8.f10851c)) {
                            arrayList2.add(new F1(g8));
                        }
                        break;
                    }
                    arrayList = arrayList2;
                } catch (InterruptedException e8) {
                    e = e8;
                    a8.b().f11039L.c(T.t(str), e, "Failed to get user properties. appId");
                } catch (ExecutionException e9) {
                    e = e9;
                    a8.b().f11039L.c(T.t(str), e, "Failed to get user properties. appId");
                }
                parcel2.writeNoException();
                parcel2.writeTypedList(arrayList);
                return true;
            case 9:
                C0613u c0613u3 = (C0613u) AbstractC2658y.a(parcel, C0613u.CREATOR);
                String string2 = parcel.readString();
                AbstractC2658y.b(parcel);
                byte[] bArrM0 = m0(c0613u3, string2);
                parcel2.writeNoException();
                parcel2.writeByteArray(bArrM0);
                return true;
            case 10:
                long j14 = parcel.readLong();
                String string3 = parcel.readString();
                String string4 = parcel.readString();
                String string5 = parcel.readString();
                AbstractC2658y.b(parcel);
                v3(j14, string3, string4, string5);
                parcel2.writeNoException();
                return true;
            case 11:
                J1 j15 = (J1) AbstractC2658y.a(parcel, J1.CREATOR);
                AbstractC2658y.b(parcel);
                String strW1 = w1(j15);
                parcel2.writeNoException();
                parcel2.writeString(strW1);
                return true;
            case 12:
                C0578f c0578f = (C0578f) AbstractC2658y.a(parcel, C0578f.CREATOR);
                J1 j16 = (J1) AbstractC2658y.a(parcel, J1.CREATOR);
                AbstractC2658y.b(parcel);
                o2(c0578f, j16);
                parcel2.writeNoException();
                return true;
            case 13:
                C0578f c0578f2 = (C0578f) AbstractC2658y.a(parcel, C0578f.CREATOR);
                AbstractC2658y.b(parcel);
                c.h(c0578f2);
                c.h(c0578f2.f11162I);
                c.e(c0578f2.f11160G);
                i2(c0578f2.f11160G, true);
                v0(new V(7, this, new C0578f(c0578f2)));
                parcel2.writeNoException();
                return true;
            case 14:
                String string6 = parcel.readString();
                String string7 = parcel.readString();
                ClassLoader classLoader = AbstractC2658y.f23412a;
                z7 = parcel.readInt() != 0;
                J1 j17 = (J1) AbstractC2658y.a(parcel, J1.CREATOR);
                AbstractC2658y.b(parcel);
                List listK0 = k0(string6, string7, z7, j17);
                parcel2.writeNoException();
                parcel2.writeTypedList(listK0);
                return true;
            case 15:
                String string8 = parcel.readString();
                String string9 = parcel.readString();
                String string10 = parcel.readString();
                ClassLoader classLoader2 = AbstractC2658y.f23412a;
                z7 = parcel.readInt() != 0;
                AbstractC2658y.b(parcel);
                List listF1 = F1(string8, string9, string10, z7);
                parcel2.writeNoException();
                parcel2.writeTypedList(listF1);
                return true;
            case 16:
                String string11 = parcel.readString();
                String string12 = parcel.readString();
                J1 j18 = (J1) AbstractC2658y.a(parcel, J1.CREATOR);
                AbstractC2658y.b(parcel);
                List listD0 = d0(string11, string12, j18);
                parcel2.writeNoException();
                parcel2.writeTypedList(listD0);
                return true;
            case 17:
                String string13 = parcel.readString();
                String string14 = parcel.readString();
                String string15 = parcel.readString();
                AbstractC2658y.b(parcel);
                List listZ0 = Z0(string13, string14, string15);
                parcel2.writeNoException();
                parcel2.writeTypedList(listZ0);
                return true;
            case 18:
                J1 j19 = (J1) AbstractC2658y.a(parcel, J1.CREATOR);
                AbstractC2658y.b(parcel);
                r3(j19);
                parcel2.writeNoException();
                return true;
            case 19:
                Bundle bundle = (Bundle) AbstractC2658y.a(parcel, Bundle.CREATOR);
                J1 j20 = (J1) AbstractC2658y.a(parcel, J1.CREATOR);
                AbstractC2658y.b(parcel);
                b1(bundle, j20);
                parcel2.writeNoException();
                return true;
            case 20:
                J1 j21 = (J1) AbstractC2658y.a(parcel, J1.CREATOR);
                AbstractC2658y.b(parcel);
                W0(j21);
                parcel2.writeNoException();
                return true;
            case 21:
                J1 j22 = (J1) AbstractC2658y.a(parcel, J1.CREATOR);
                AbstractC2658y.b(parcel);
                C0590j c0590jY0 = Y0(j22);
                parcel2.writeNoException();
                if (c0590jY0 == null) {
                    parcel2.writeInt(0);
                } else {
                    parcel2.writeInt(1);
                    c0590jY0.writeToParcel(parcel2, 1);
                }
                return true;
            case 24:
                J1 j23 = (J1) AbstractC2658y.a(parcel, J1.CREATOR);
                Bundle bundle2 = (Bundle) AbstractC2658y.a(parcel, Bundle.CREATOR);
                AbstractC2658y.b(parcel);
                r1(j23);
                String str2 = j23.f10876G;
                c.h(str2);
                if (!a8.c0().B(null, E.f10790i1)) {
                    try {
                        listEmptyList = (List) a8.d().s(new CallableC0607q0(this, j23, bundle2, 1)).get();
                    } catch (InterruptedException | ExecutionException e10) {
                        a8.b().f11039L.c(T.t(str2), e10, "Failed to get trigger URIs. appId");
                        listEmptyList = Collections.emptyList();
                    }
                    break;
                } else {
                    try {
                        listEmptyList = (List) a8.d().t(new CallableC0607q0(this, j23, bundle2, 0)).get(10000L, TimeUnit.MILLISECONDS);
                    } catch (InterruptedException | ExecutionException | TimeoutException e11) {
                        a8.b().f11039L.c(T.t(str2), e11, "Failed to get trigger URIs. appId");
                        listEmptyList = Collections.emptyList();
                    }
                    break;
                }
                parcel2.writeNoException();
                parcel2.writeTypedList(listEmptyList);
                return true;
            case 25:
                J1 j24 = (J1) AbstractC2658y.a(parcel, J1.CREATOR);
                AbstractC2658y.b(parcel);
                a0(j24);
                parcel2.writeNoException();
                return true;
            case Service.BILLING_FIELD_NUMBER /* 26 */:
                J1 j25 = (J1) AbstractC2658y.a(parcel, J1.CREATOR);
                AbstractC2658y.b(parcel);
                t2(j25);
                parcel2.writeNoException();
                return true;
            case 27:
                J1 j26 = (J1) AbstractC2658y.a(parcel, J1.CREATOR);
                AbstractC2658y.b(parcel);
                t0(j26);
                parcel2.writeNoException();
                return true;
            case Service.SYSTEM_PARAMETERS_FIELD_NUMBER /* 29 */:
                J1 j27 = (J1) AbstractC2658y.a(parcel, J1.CREATOR);
                s1 s1Var = (s1) AbstractC2658y.a(parcel, s1.CREATOR);
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder != null) {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.measurement.internal.IUploadBatchesCallback");
                    j8 = iInterfaceQueryLocalInterface instanceof K ? (K) iInterfaceQueryLocalInterface : new J(strongBinder, "com.google.android.gms.measurement.internal.IUploadBatchesCallback", 4);
                }
                AbstractC2658y.b(parcel);
                T2(j27, s1Var, j8);
                parcel2.writeNoException();
                return true;
            case MqttConnectOptions.CONNECTION_TIMEOUT_DEFAULT /* 30 */:
                J1 j28 = (J1) AbstractC2658y.a(parcel, J1.CREATOR);
                C0575e c0575e = (C0575e) AbstractC2658y.a(parcel, C0575e.CREATOR);
                AbstractC2658y.b(parcel);
                A2(j28, c0575e);
                parcel2.writeNoException();
                return true;
            case DescriptorProtos$FileOptions.CC_ENABLE_ARENAS_FIELD_NUMBER /* 31 */:
                J1 j29 = (J1) AbstractC2658y.a(parcel, J1.CREATOR);
                Bundle bundle3 = (Bundle) AbstractC2658y.a(parcel, Bundle.CREATOR);
                IBinder strongBinder2 = parcel.readStrongBinder();
                if (strongBinder2 != null) {
                    IInterface iInterfaceQueryLocalInterface2 = strongBinder2.queryLocalInterface("com.google.android.gms.measurement.internal.ITriggerUrisCallback");
                    h8 = iInterfaceQueryLocalInterface2 instanceof I ? (I) iInterfaceQueryLocalInterface2 : new H(strongBinder2, "com.google.android.gms.measurement.internal.ITriggerUrisCallback", 4);
                }
                AbstractC2658y.b(parcel);
                I2(j29, bundle3, h8);
                parcel2.writeNoException();
                return true;
        }
    }

    @Override // p021c4.G
    public final C0590j Y0(J1 j8) {
        r1(j8);
        String str = j8.f10876G;
        c.e(str);
        A1 a8 = this.f11346G;
        try {
            return (C0590j) a8.d().t(new F(this, j8, 4)).get(10000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e8) {
            T tB = a8.b();
            tB.f11039L.c(T.t(str), e8, "Failed to get consent. appId");
            return new C0590j(null);
        }
    }

    @Override // p021c4.G
    public final List Z0(String str, String str2, String str3) {
        i2(str, true);
        A1 a8 = this.f11346G;
        try {
            return (List) a8.d().s(new CallableC0605p0(this, str, str2, str3, 3)).get();
        } catch (InterruptedException | ExecutionException e8) {
            a8.b().f11039L.b(e8, "Failed to get conditional user properties as");
            return Collections.emptyList();
        }
    }

    @Override // p021c4.G
    public final void a0(J1 j8) {
        c.e(j8.f10876G);
        c.h(j8.f10896a0);
        j0(new RunnableC0599m0(this, j8, 0));
    }

    @Override // p021c4.G
    public final void b0(F1 f8, J1 j8) {
        c.h(f8);
        r1(j8);
        v0(new RunnableC0439v(this, f8, j8, 7, 0));
    }

    @Override // p021c4.G
    public final void b1(Bundle bundle, J1 j8) {
        r1(j8);
        String str = j8.f10876G;
        c.h(str);
        v0(new RunnableC3015g(this, bundle, str, j8, 10, 0));
    }

    @Override // p021c4.G
    public final List d0(String str, String str2, J1 j8) {
        r1(j8);
        String str3 = j8.f10876G;
        c.h(str3);
        A1 a8 = this.f11346G;
        try {
            return (List) a8.d().s(new CallableC0605p0(this, str3, str, str2, 2)).get();
        } catch (InterruptedException | ExecutionException e8) {
            a8.b().f11039L.b(e8, "Failed to get conditional user properties");
            return Collections.emptyList();
        }
    }

    public final void i2(String str, boolean z7) {
        boolean zIsEmpty = TextUtils.isEmpty(str);
        A1 a8 = this.f11346G;
        if (zIsEmpty) {
            a8.b().f11039L.a("Measurement Service called without app package");
            throw new SecurityException("Measurement Service called without app package");
        }
        if (z7) {
            try {
                if (this.f11347H == null) {
                    boolean z8 = true;
                    if (!"com.google.android.gms".equals(this.f11348I) && !e.i(a8.f10663R.f11250G, Binder.getCallingUid()) && !k.b(a8.f10663R.f11250G).e(Binder.getCallingUid())) {
                        z8 = false;
                    }
                    this.f11347H = Boolean.valueOf(z8);
                }
                if (this.f11347H.booleanValue()) {
                    return;
                }
            } catch (SecurityException e8) {
                a8.b().f11039L.b(T.t(str), "Measurement Service called with invalid calling package. appId");
                throw e8;
            }
        }
        if (this.f11348I == null) {
            Context context = a8.f10663R.f11250G;
            int callingUid = Binder.getCallingUid();
            AtomicBoolean atomicBoolean = j.f4147a;
            if (e.r(callingUid, context, str)) {
                this.f11348I = str;
            }
        }
        if (str.equals(this.f11348I)) {
            return;
        }
        throw new SecurityException("Unknown calling package name '" + str + "'.");
    }

    public final void j0(Runnable runnable) {
        A1 a8 = this.f11346G;
        if (a8.d().z()) {
            ((RunnableC0599m0) runnable).run();
        } else {
            a8.d().y(runnable);
        }
    }

    @Override // p021c4.G
    public final List k0(String str, String str2, boolean z7, J1 j8) {
        r1(j8);
        String str3 = j8.f10876G;
        c.h(str3);
        A1 a8 = this.f11346G;
        try {
            List<G1> list = (List) a8.d().s(new CallableC0605p0(this, str3, str, str2, 0)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (G1 g8 : list) {
                if (z7 || !I1.h0(g8.f10851c)) {
                    arrayList.add(new F1(g8));
                }
            }
            return arrayList;
        } catch (InterruptedException e8) {
            e = e8;
            T tB = a8.b();
            tB.f11039L.c(T.t(str3), e, "Failed to query user properties. appId");
            return Collections.emptyList();
        } catch (ExecutionException e9) {
            e = e9;
            T tB2 = a8.b();
            tB2.f11039L.c(T.t(str3), e, "Failed to query user properties. appId");
            return Collections.emptyList();
        }
    }

    @Override // p021c4.G
    public final byte[] m0(C0613u c0613u, String str) {
        c.e(str);
        c.h(c0613u);
        i2(str, true);
        A1 a8 = this.f11346G;
        T tB = a8.b();
        C0597l0 c0597l0 = a8.f10663R;
        O o4 = c0597l0.f11262S;
        String str2 = c0613u.f11371G;
        tB.f11046S.b(o4.d(str2), "Log and bundle. event");
        ((b) a8.c()).getClass();
        long jNanoTime = System.nanoTime() / 1000000;
        try {
            byte[] bArr = (byte[]) a8.d().t(new CallableC3196d(this, c0613u, str)).get();
            if (bArr == null) {
                a8.b().f11039L.b(T.t(str), "Log and bundle returned null. appId");
                bArr = new byte[0];
            }
            ((b) a8.c()).getClass();
            a8.b().f11046S.d(c0597l0.f11262S.d(str2), Integer.valueOf(bArr.length), Long.valueOf((System.nanoTime() / 1000000) - jNanoTime), "Log and bundle processed. event, size, time_ms");
            return bArr;
        } catch (InterruptedException e8) {
            e = e8;
            T tB2 = a8.b();
            tB2.f11039L.d(T.t(str), c0597l0.f11262S.d(str2), e, "Failed to log and bundle. appId, event, error");
            return null;
        } catch (ExecutionException e9) {
            e = e9;
            T tB3 = a8.b();
            tB3.f11039L.d(T.t(str), c0597l0.f11262S.d(str2), e, "Failed to log and bundle. appId, event, error");
            return null;
        }
    }

    public final void n2(C0613u c0613u, J1 j8) {
        A1 a8 = this.f11346G;
        a8.i();
        a8.n(c0613u, j8);
    }

    @Override // p021c4.G
    public final void o2(C0578f c0578f, J1 j8) {
        c.h(c0578f);
        c.h(c0578f.f11162I);
        r1(j8);
        C0578f c0578f2 = new C0578f(c0578f);
        c0578f2.f11160G = j8.f10876G;
        v0(new RunnableC0439v(this, c0578f2, j8, 4, 0));
    }

    public final void r1(J1 j8) {
        c.h(j8);
        String str = j8.f10876G;
        c.e(str);
        i2(str, false);
        this.f11346G.f().W(j8.f10877H, j8.f10891V);
    }

    @Override // p021c4.G
    public final void r3(J1 j8) {
        String str = j8.f10876G;
        c.e(str);
        i2(str, false);
        v0(new RunnableC0599m0(this, j8, 5));
    }

    @Override // p021c4.G
    public final void t0(J1 j8) {
        r1(j8);
        v0(new RunnableC0599m0(this, j8, 3));
    }

    @Override // p021c4.G
    public final void t2(J1 j8) {
        c.e(j8.f10876G);
        c.h(j8.f10896a0);
        j0(new RunnableC0599m0(this, j8, 1));
    }

    public final void v0(Runnable runnable) {
        A1 a8 = this.f11346G;
        if (a8.d().z()) {
            runnable.run();
        } else {
            a8.d().x(runnable);
        }
    }

    @Override // p021c4.G
    public final void v3(long j8, String str, String str2, String str3) {
        v0(new RunnableC0601n0(this, str2, str3, str, j8, 0));
    }

    @Override // p021c4.G
    public final String w1(J1 j8) {
        r1(j8);
        A1 a8 = this.f11346G;
        try {
            return (String) a8.d().s(new F(a8, j8, 5)).get(30000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e8) {
            T tB = a8.b();
            tB.f11039L.c(T.t(j8.f10876G), e8, "Failed to get app instance id. appId");
            return null;
        }
    }
}
