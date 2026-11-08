package J3;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.C;
import com.google.android.gms.common.internal.D;
import com.google.android.gms.internal.measurement.V;
import com.google.android.gms.internal.measurement.W;
import com.google.api.Service;
import com.google.protobuf.DescriptorProtos$FileOptions;
import com.google.protobuf.DescriptorProtos$MethodOptions;
import java.util.ArrayList;
import okhttp3.HttpUrl;
import org.eclipse.paho.client.mqttv3.MqttConnectOptions;
import p021c4.C0575e;
import p021c4.C0578f;
import p021c4.C0590j;
import p021c4.C0611t;
import p021c4.C0613u;
import p021c4.F1;
import p021c4.J1;
import p021c4.o1;
import p021c4.r1;
import p021c4.s1;
import p021c4.t1;
import p039f.AbstractC2987b;

/* JADX INFO: loaded from: classes.dex */
public final class v implements Parcelable.Creator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4179a;

    public /* synthetic */ v(int i8) {
        this.f4179a = i8;
    }

    public static void a(C0613u c0613u, Parcel parcel, int i8) {
        String str = c0613u.f11371G;
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.Q(parcel, 2, str);
        AbstractC2987b.P(parcel, 3, c0613u.f11372H, i8);
        AbstractC2987b.Q(parcel, 4, c0613u.f11373I);
        AbstractC2987b.v0(parcel, 5, 8);
        parcel.writeLong(c0613u.f11374J);
        AbstractC2987b.p0(iX, parcel);
    }

    public static void b(F1 f8, Parcel parcel) {
        int i8 = f8.f10839G;
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.v0(parcel, 1, 4);
        parcel.writeInt(i8);
        AbstractC2987b.Q(parcel, 2, f8.f10840H);
        AbstractC2987b.v0(parcel, 3, 8);
        parcel.writeLong(f8.f10841I);
        Long l4 = f8.f10842J;
        if (l4 != null) {
            AbstractC2987b.v0(parcel, 4, 8);
            parcel.writeLong(l4.longValue());
        }
        AbstractC2987b.Q(parcel, 6, f8.f10843K);
        AbstractC2987b.Q(parcel, 7, f8.f10844L);
        Double d6 = f8.f10845M;
        if (d6 != null) {
            AbstractC2987b.v0(parcel, 8, 8);
            parcel.writeDouble(d6.doubleValue());
        }
        AbstractC2987b.p0(iX, parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        long jE = 0;
        boolean zY = false;
        int iD = 0;
        int iD2 = 0;
        int iD3 = 0;
        int iD4 = 0;
        int iD5 = 0;
        boolean zY2 = false;
        String strN = null;
        b bVar = null;
        C c8 = null;
        ArrayList arrayListP = null;
        Intent intent = null;
        ArrayList arrayListR = null;
        ArrayList arrayListK = null;
        String strN2 = null;
        Bundle bundleG = null;
        Bundle bundleG2 = null;
        String strN3 = null;
        String strN4 = null;
        switch (this.f4179a) {
            case 0:
                int iH = AbstractC2987b.H(parcel);
                String strN5 = null;
                IBinder iBinderC = null;
                boolean zY3 = false;
                boolean zY4 = false;
                boolean zY5 = false;
                boolean zY6 = false;
                while (parcel.dataPosition() < iH) {
                    int i8 = parcel.readInt();
                    switch ((char) i8) {
                        case 1:
                            strN5 = AbstractC2987b.n(i8, parcel);
                            break;
                        case 2:
                            zY3 = AbstractC2987b.y(i8, parcel);
                            break;
                        case 3:
                            zY4 = AbstractC2987b.y(i8, parcel);
                            break;
                        case 4:
                            iBinderC = AbstractC2987b.C(i8, parcel);
                            break;
                        case 5:
                            zY5 = AbstractC2987b.y(i8, parcel);
                            break;
                        case 6:
                            zY6 = AbstractC2987b.y(i8, parcel);
                            break;
                        default:
                            AbstractC2987b.G(i8, parcel);
                            break;
                    }
                }
                AbstractC2987b.t(iH, parcel);
                return new u(strN5, zY3, zY4, iBinderC, zY5, zY6);
            case 1:
                int iH2 = AbstractC2987b.H(parcel);
                int iD6 = 0;
                int iD7 = 0;
                while (parcel.dataPosition() < iH2) {
                    int i9 = parcel.readInt();
                    char c9 = (char) i9;
                    if (c9 == 1) {
                        zY = AbstractC2987b.y(i9, parcel);
                    } else if (c9 == 2) {
                        strN = AbstractC2987b.n(i9, parcel);
                    } else if (c9 == 3) {
                        iD6 = AbstractC2987b.D(i9, parcel);
                    } else if (c9 != 4) {
                        AbstractC2987b.G(i9, parcel);
                    } else {
                        iD7 = AbstractC2987b.D(i9, parcel);
                    }
                }
                AbstractC2987b.t(iH2, parcel);
                return new w(strN, iD6, iD7, zY);
            case 2:
                int iH3 = AbstractC2987b.H(parcel);
                IBinder iBinderC2 = null;
                boolean zY7 = false;
                while (parcel.dataPosition() < iH3) {
                    int i10 = parcel.readInt();
                    char c10 = (char) i10;
                    if (c10 == 1) {
                        strN4 = AbstractC2987b.n(i10, parcel);
                    } else if (c10 == 2) {
                        iBinderC2 = AbstractC2987b.C(i10, parcel);
                    } else if (c10 == 3) {
                        zY2 = AbstractC2987b.y(i10, parcel);
                    } else if (c10 != 4) {
                        AbstractC2987b.G(i10, parcel);
                    } else {
                        zY7 = AbstractC2987b.y(i10, parcel);
                    }
                }
                AbstractC2987b.t(iH3, parcel);
                return new x(strN4, iBinderC2, zY2, zY7);
            case 3:
                int iH4 = AbstractC2987b.H(parcel);
                long jE2 = 0;
                long jE3 = 0;
                String strN6 = null;
                String strN7 = null;
                String strN8 = null;
                Bundle bundleG3 = null;
                String strN9 = null;
                boolean zY8 = false;
                while (parcel.dataPosition() < iH4) {
                    int i11 = parcel.readInt();
                    switch ((char) i11) {
                        case 1:
                            jE2 = AbstractC2987b.E(i11, parcel);
                            break;
                        case 2:
                            jE3 = AbstractC2987b.E(i11, parcel);
                            break;
                        case 3:
                            zY8 = AbstractC2987b.y(i11, parcel);
                            break;
                        case 4:
                            strN6 = AbstractC2987b.n(i11, parcel);
                            break;
                        case 5:
                            strN7 = AbstractC2987b.n(i11, parcel);
                            break;
                        case 6:
                            strN8 = AbstractC2987b.n(i11, parcel);
                            break;
                        case 7:
                            bundleG3 = AbstractC2987b.g(i11, parcel);
                            break;
                        case '\b':
                            strN9 = AbstractC2987b.n(i11, parcel);
                            break;
                        default:
                            AbstractC2987b.G(i11, parcel);
                            break;
                    }
                }
                AbstractC2987b.t(iH4, parcel);
                return new V(jE2, jE3, zY8, strN6, strN7, strN8, bundleG3, strN9);
            case 4:
                int iH5 = AbstractC2987b.H(parcel);
                Intent intent2 = null;
                while (parcel.dataPosition() < iH5) {
                    int i12 = parcel.readInt();
                    char c11 = (char) i12;
                    if (c11 == 1) {
                        iD5 = AbstractC2987b.D(i12, parcel);
                    } else if (c11 == 2) {
                        strN3 = AbstractC2987b.n(i12, parcel);
                    } else if (c11 != 3) {
                        AbstractC2987b.G(i12, parcel);
                    } else {
                        intent2 = (Intent) AbstractC2987b.m(parcel, i12, Intent.CREATOR);
                    }
                }
                AbstractC2987b.t(iH5, parcel);
                return new W(iD5, strN3, intent2);
            case 5:
                int iH6 = AbstractC2987b.H(parcel);
                long jE4 = 0;
                long jE5 = 0;
                int iD8 = 0;
                while (parcel.dataPosition() < iH6) {
                    int i13 = parcel.readInt();
                    char c12 = (char) i13;
                    if (c12 == 1) {
                        jE4 = AbstractC2987b.E(i13, parcel);
                    } else if (c12 == 2) {
                        iD8 = AbstractC2987b.D(i13, parcel);
                    } else if (c12 != 3) {
                        AbstractC2987b.G(i13, parcel);
                    } else {
                        jE5 = AbstractC2987b.E(i13, parcel);
                    }
                }
                AbstractC2987b.t(iH6, parcel);
                return new C0575e(iD8, jE4, jE5);
            case 6:
                int iH7 = AbstractC2987b.H(parcel);
                long jE6 = 0;
                long jE7 = 0;
                long jE8 = 0;
                String strN10 = null;
                String strN11 = null;
                F1 f8 = null;
                String strN12 = null;
                C0613u c0613u = null;
                C0613u c0613u2 = null;
                C0613u c0613u3 = null;
                boolean zY9 = false;
                while (parcel.dataPosition() < iH7) {
                    int i14 = parcel.readInt();
                    switch ((char) i14) {
                        case 2:
                            strN10 = AbstractC2987b.n(i14, parcel);
                            break;
                        case 3:
                            strN11 = AbstractC2987b.n(i14, parcel);
                            break;
                        case 4:
                            f8 = (F1) AbstractC2987b.m(parcel, i14, F1.CREATOR);
                            break;
                        case 5:
                            jE6 = AbstractC2987b.E(i14, parcel);
                            break;
                        case 6:
                            zY9 = AbstractC2987b.y(i14, parcel);
                            break;
                        case 7:
                            strN12 = AbstractC2987b.n(i14, parcel);
                            break;
                        case '\b':
                            c0613u = (C0613u) AbstractC2987b.m(parcel, i14, C0613u.CREATOR);
                            break;
                        case '\t':
                            jE7 = AbstractC2987b.E(i14, parcel);
                            break;
                        case '\n':
                            c0613u2 = (C0613u) AbstractC2987b.m(parcel, i14, C0613u.CREATOR);
                            break;
                        case 11:
                            jE8 = AbstractC2987b.E(i14, parcel);
                            break;
                        case '\f':
                            c0613u3 = (C0613u) AbstractC2987b.m(parcel, i14, C0613u.CREATOR);
                            break;
                        default:
                            AbstractC2987b.G(i14, parcel);
                            break;
                    }
                }
                AbstractC2987b.t(iH7, parcel);
                return new C0578f(strN10, strN11, f8, jE6, zY9, strN12, c0613u, jE7, c0613u2, jE8, c0613u3);
            case 7:
                int iH8 = AbstractC2987b.H(parcel);
                while (parcel.dataPosition() < iH8) {
                    int i15 = parcel.readInt();
                    if (((char) i15) != 1) {
                        AbstractC2987b.G(i15, parcel);
                    } else {
                        bundleG2 = AbstractC2987b.g(i15, parcel);
                    }
                }
                AbstractC2987b.t(iH8, parcel);
                return new C0590j(bundleG2);
            case 8:
                int iH9 = AbstractC2987b.H(parcel);
                while (parcel.dataPosition() < iH9) {
                    int i16 = parcel.readInt();
                    if (((char) i16) != 2) {
                        AbstractC2987b.G(i16, parcel);
                    } else {
                        bundleG = AbstractC2987b.g(i16, parcel);
                    }
                }
                AbstractC2987b.t(iH9, parcel);
                return new C0611t(bundleG);
            case 9:
                int iH10 = AbstractC2987b.H(parcel);
                long jE9 = 0;
                String strN13 = null;
                C0611t c0611t = null;
                String strN14 = null;
                while (parcel.dataPosition() < iH10) {
                    int i17 = parcel.readInt();
                    char c13 = (char) i17;
                    if (c13 == 2) {
                        strN13 = AbstractC2987b.n(i17, parcel);
                    } else if (c13 == 3) {
                        c0611t = (C0611t) AbstractC2987b.m(parcel, i17, C0611t.CREATOR);
                    } else if (c13 == 4) {
                        strN14 = AbstractC2987b.n(i17, parcel);
                    } else if (c13 != 5) {
                        AbstractC2987b.G(i17, parcel);
                    } else {
                        jE9 = AbstractC2987b.E(i17, parcel);
                    }
                }
                AbstractC2987b.t(iH10, parcel);
                return new C0613u(strN13, c0611t, strN14, jE9);
            case 10:
                int iH11 = AbstractC2987b.H(parcel);
                while (parcel.dataPosition() < iH11) {
                    int i18 = parcel.readInt();
                    char c14 = (char) i18;
                    if (c14 == 1) {
                        strN2 = AbstractC2987b.n(i18, parcel);
                    } else if (c14 == 2) {
                        jE = AbstractC2987b.E(i18, parcel);
                    } else if (c14 != 3) {
                        AbstractC2987b.G(i18, parcel);
                    } else {
                        iD4 = AbstractC2987b.D(i18, parcel);
                    }
                }
                AbstractC2987b.t(iH11, parcel);
                return new o1(iD4, jE, strN2);
            case 11:
                int iH12 = AbstractC2987b.H(parcel);
                long jE10 = 0;
                long jE11 = 0;
                byte[] bArrI = null;
                String strN15 = null;
                Bundle bundleG4 = null;
                String strN16 = null;
                int iD9 = 0;
                while (parcel.dataPosition() < iH12) {
                    int i19 = parcel.readInt();
                    switch ((char) i19) {
                        case 1:
                            jE10 = AbstractC2987b.E(i19, parcel);
                            break;
                        case 2:
                            bArrI = AbstractC2987b.i(i19, parcel);
                            break;
                        case 3:
                            strN15 = AbstractC2987b.n(i19, parcel);
                            break;
                        case 4:
                            bundleG4 = AbstractC2987b.g(i19, parcel);
                            break;
                        case 5:
                            iD9 = AbstractC2987b.D(i19, parcel);
                            break;
                        case 6:
                            jE11 = AbstractC2987b.E(i19, parcel);
                            break;
                        case 7:
                            strN16 = AbstractC2987b.n(i19, parcel);
                            break;
                        default:
                            AbstractC2987b.G(i19, parcel);
                            break;
                    }
                }
                AbstractC2987b.t(iH12, parcel);
                return new r1(jE10, bArrI, strN15, bundleG4, iD9, jE11, strN16);
            case 12:
                int iH13 = AbstractC2987b.H(parcel);
                while (parcel.dataPosition() < iH13) {
                    int i20 = parcel.readInt();
                    if (((char) i20) != 1) {
                        AbstractC2987b.G(i20, parcel);
                    } else {
                        arrayListK = AbstractC2987b.k(i20, parcel);
                    }
                }
                AbstractC2987b.t(iH13, parcel);
                return new s1(arrayListK);
            case 13:
                int iH14 = AbstractC2987b.H(parcel);
                while (parcel.dataPosition() < iH14) {
                    int i21 = parcel.readInt();
                    if (((char) i21) != 1) {
                        AbstractC2987b.G(i21, parcel);
                    } else {
                        arrayListR = AbstractC2987b.r(parcel, i21, r1.CREATOR);
                    }
                }
                AbstractC2987b.t(iH14, parcel);
                return new t1(arrayListR);
            case 14:
                int iH15 = AbstractC2987b.H(parcel);
                long jE12 = 0;
                String strN17 = null;
                Long lValueOf = null;
                Float fValueOf = null;
                String strN18 = null;
                String strN19 = null;
                Double dValueOf = null;
                int iD10 = 0;
                while (parcel.dataPosition() < iH15) {
                    int i22 = parcel.readInt();
                    switch ((char) i22) {
                        case 1:
                            iD10 = AbstractC2987b.D(i22, parcel);
                            break;
                        case 2:
                            strN17 = AbstractC2987b.n(i22, parcel);
                            break;
                        case 3:
                            jE12 = AbstractC2987b.E(i22, parcel);
                            break;
                        case 4:
                            int iF = AbstractC2987b.F(i22, parcel);
                            if (iF != 0) {
                                AbstractC2987b.g0(parcel, iF, 8);
                                lValueOf = Long.valueOf(parcel.readLong());
                            } else {
                                lValueOf = null;
                            }
                            break;
                        case 5:
                            int iF2 = AbstractC2987b.F(i22, parcel);
                            if (iF2 != 0) {
                                AbstractC2987b.g0(parcel, iF2, 4);
                                fValueOf = Float.valueOf(parcel.readFloat());
                            } else {
                                fValueOf = null;
                            }
                            break;
                        case 6:
                            strN18 = AbstractC2987b.n(i22, parcel);
                            break;
                        case 7:
                            strN19 = AbstractC2987b.n(i22, parcel);
                            break;
                        case '\b':
                            int iF3 = AbstractC2987b.F(i22, parcel);
                            if (iF3 != 0) {
                                AbstractC2987b.g0(parcel, iF3, 8);
                                dValueOf = Double.valueOf(parcel.readDouble());
                            } else {
                                dValueOf = null;
                            }
                            break;
                        default:
                            AbstractC2987b.G(i22, parcel);
                            break;
                    }
                }
                AbstractC2987b.t(iH15, parcel);
                return new F1(iD10, strN17, jE12, lValueOf, fValueOf, strN18, strN19, dValueOf);
            case 15:
                int iH16 = AbstractC2987b.H(parcel);
                String strN20 = HttpUrl.FRAGMENT_ENCODE_SET;
                String strN21 = strN20;
                String strN22 = strN21;
                String strN23 = strN22;
                long jE13 = 0;
                long jE14 = 0;
                long jE15 = 0;
                long jE16 = 0;
                long jE17 = 0;
                long jE18 = 0;
                long jE19 = 0;
                long jE20 = -2147483648L;
                String strN24 = null;
                String strN25 = null;
                String strN26 = null;
                String strN27 = null;
                String strN28 = null;
                String strN29 = null;
                String strN30 = null;
                Boolean boolZ = null;
                ArrayList arrayListP2 = null;
                String strN31 = null;
                String strN32 = null;
                String strN33 = null;
                boolean zY10 = true;
                boolean zY11 = false;
                int iD11 = 0;
                boolean zY12 = true;
                boolean zY13 = false;
                boolean zY14 = false;
                int iD12 = 100;
                int iD13 = 0;
                int iD14 = 0;
                while (parcel.dataPosition() < iH16) {
                    int i23 = parcel.readInt();
                    switch ((char) i23) {
                        case 2:
                            strN24 = AbstractC2987b.n(i23, parcel);
                            break;
                        case 3:
                            strN25 = AbstractC2987b.n(i23, parcel);
                            break;
                        case 4:
                            strN26 = AbstractC2987b.n(i23, parcel);
                            break;
                        case 5:
                            strN27 = AbstractC2987b.n(i23, parcel);
                            break;
                        case 6:
                            jE13 = AbstractC2987b.E(i23, parcel);
                            break;
                        case 7:
                            jE14 = AbstractC2987b.E(i23, parcel);
                            break;
                        case '\b':
                            strN28 = AbstractC2987b.n(i23, parcel);
                            break;
                        case '\t':
                            zY10 = AbstractC2987b.y(i23, parcel);
                            break;
                        case '\n':
                            zY11 = AbstractC2987b.y(i23, parcel);
                            break;
                        case 11:
                            jE20 = AbstractC2987b.E(i23, parcel);
                            break;
                        case '\f':
                            strN29 = AbstractC2987b.n(i23, parcel);
                            break;
                        case '\r':
                        case 17:
                        case 20:
                        case '!':
                        default:
                            AbstractC2987b.G(i23, parcel);
                            break;
                        case 14:
                            jE15 = AbstractC2987b.E(i23, parcel);
                            break;
                        case 15:
                            iD11 = AbstractC2987b.D(i23, parcel);
                            break;
                        case 16:
                            zY12 = AbstractC2987b.y(i23, parcel);
                            break;
                        case 18:
                            zY13 = AbstractC2987b.y(i23, parcel);
                            break;
                        case 19:
                            strN30 = AbstractC2987b.n(i23, parcel);
                            break;
                        case 21:
                            boolZ = AbstractC2987b.z(i23, parcel);
                            break;
                        case 22:
                            jE16 = AbstractC2987b.E(i23, parcel);
                            break;
                        case 23:
                            arrayListP2 = AbstractC2987b.p(i23, parcel);
                            break;
                        case 24:
                            strN31 = AbstractC2987b.n(i23, parcel);
                            break;
                        case 25:
                            strN20 = AbstractC2987b.n(i23, parcel);
                            break;
                        case Service.BILLING_FIELD_NUMBER /* 26 */:
                            strN21 = AbstractC2987b.n(i23, parcel);
                            break;
                        case 27:
                            strN32 = AbstractC2987b.n(i23, parcel);
                            break;
                        case Service.MONITORING_FIELD_NUMBER /* 28 */:
                            zY14 = AbstractC2987b.y(i23, parcel);
                            break;
                        case Service.SYSTEM_PARAMETERS_FIELD_NUMBER /* 29 */:
                            jE17 = AbstractC2987b.E(i23, parcel);
                            break;
                        case MqttConnectOptions.CONNECTION_TIMEOUT_DEFAULT /* 30 */:
                            iD12 = AbstractC2987b.D(i23, parcel);
                            break;
                        case DescriptorProtos$FileOptions.CC_ENABLE_ARENAS_FIELD_NUMBER /* 31 */:
                            strN22 = AbstractC2987b.n(i23, parcel);
                            break;
                        case ' ':
                            iD13 = AbstractC2987b.D(i23, parcel);
                            break;
                        case DescriptorProtos$MethodOptions.IDEMPOTENCY_LEVEL_FIELD_NUMBER /* 34 */:
                            jE18 = AbstractC2987b.E(i23, parcel);
                            break;
                        case '#':
                            strN33 = AbstractC2987b.n(i23, parcel);
                            break;
                        case DescriptorProtos$FileOptions.OBJC_CLASS_PREFIX_FIELD_NUMBER /* 36 */:
                            strN23 = AbstractC2987b.n(i23, parcel);
                            break;
                        case '%':
                            jE19 = AbstractC2987b.E(i23, parcel);
                            break;
                        case '&':
                            iD14 = AbstractC2987b.D(i23, parcel);
                            break;
                    }
                }
                AbstractC2987b.t(iH16, parcel);
                return new J1(strN24, strN25, strN26, strN27, jE13, jE14, strN28, zY10, zY11, jE20, strN29, jE15, iD11, zY12, zY13, strN30, boolZ, jE16, arrayListP2, strN31, strN20, strN21, strN32, zY14, jE17, iD12, strN22, iD13, jE18, strN33, strN23, jE19, iD14);
            case 16:
                int iH17 = AbstractC2987b.H(parcel);
                int iD15 = 0;
                while (parcel.dataPosition() < iH17) {
                    int i24 = parcel.readInt();
                    char c15 = (char) i24;
                    if (c15 == 1) {
                        iD3 = AbstractC2987b.D(i24, parcel);
                    } else if (c15 == 2) {
                        iD15 = AbstractC2987b.D(i24, parcel);
                    } else if (c15 != 3) {
                        AbstractC2987b.G(i24, parcel);
                    } else {
                        intent = (Intent) AbstractC2987b.m(parcel, i24, Intent.CREATOR);
                    }
                }
                AbstractC2987b.t(iH17, parcel);
                return new p044f4.b(iD3, iD15, intent);
            case 17:
                int iH18 = AbstractC2987b.H(parcel);
                String strN34 = null;
                while (parcel.dataPosition() < iH18) {
                    int i25 = parcel.readInt();
                    char c16 = (char) i25;
                    if (c16 == 1) {
                        arrayListP = AbstractC2987b.p(i25, parcel);
                    } else if (c16 != 2) {
                        AbstractC2987b.G(i25, parcel);
                    } else {
                        strN34 = AbstractC2987b.n(i25, parcel);
                    }
                }
                AbstractC2987b.t(iH18, parcel);
                return new p044f4.g(strN34, arrayListP);
            case 18:
                int iH19 = AbstractC2987b.H(parcel);
                while (parcel.dataPosition() < iH19) {
                    int i26 = parcel.readInt();
                    char c17 = (char) i26;
                    if (c17 == 1) {
                        iD2 = AbstractC2987b.D(i26, parcel);
                    } else if (c17 != 2) {
                        AbstractC2987b.G(i26, parcel);
                    } else {
                        c8 = (C) AbstractC2987b.m(parcel, i26, C.CREATOR);
                    }
                }
                AbstractC2987b.t(iH19, parcel);
                return new p044f4.h(iD2, c8);
            case 19:
                int iH20 = AbstractC2987b.H(parcel);
                D d6 = null;
                while (parcel.dataPosition() < iH20) {
                    int i27 = parcel.readInt();
                    char c18 = (char) i27;
                    if (c18 == 1) {
                        iD = AbstractC2987b.D(i27, parcel);
                    } else if (c18 == 2) {
                        bVar = (b) AbstractC2987b.m(parcel, i27, b.CREATOR);
                    } else if (c18 != 3) {
                        AbstractC2987b.G(i27, parcel);
                    } else {
                        d6 = (D) AbstractC2987b.m(parcel, i27, D.CREATOR);
                    }
                }
                AbstractC2987b.t(iH20, parcel);
                return new p044f4.i(iD, bVar, d6);
            case 20:
                return new p153t4.c(parcel.readInt(), parcel.readInt(), parcel.readInt() == 0 ? parcel.readString() : null, parcel.readInt() == 0 ? parcel.readString() : null, parcel.readInt() == 0 ? parcel.readString() : null);
            case 21:
                return new p153t4.d(parcel.readArrayList(p153t4.b.class.getClassLoader()));
            case 22:
                R5.b bVar2 = new R5.b();
                bVar2.f6311I = HttpUrl.FRAGMENT_ENCODE_SET;
                bVar2.f6310H = parcel.readString();
                return bVar2;
            default:
                W5.a aVar = new W5.a();
                aVar.f7492G = parcel.readString();
                byte b8 = parcel.readByte();
                int i28 = parcel.readInt();
                if (b8 == 1) {
                    ArrayList arrayList = new ArrayList(i28);
                    aVar.f7493H = arrayList;
                    parcel.readList(arrayList, ((Class) parcel.readSerializable()).getClassLoader());
                } else {
                    aVar.f7493H = null;
                }
                return aVar;
        }
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i8) {
        switch (this.f4179a) {
            case 0:
                return new u[i8];
            case 1:
                return new w[i8];
            case 2:
                return new x[i8];
            case 3:
                return new V[i8];
            case 4:
                return new W[i8];
            case 5:
                return new C0575e[i8];
            case 6:
                return new C0578f[i8];
            case 7:
                return new C0590j[i8];
            case 8:
                return new C0611t[i8];
            case 9:
                return new C0613u[i8];
            case 10:
                return new o1[i8];
            case 11:
                return new r1[i8];
            case 12:
                return new s1[i8];
            case 13:
                return new t1[i8];
            case 14:
                return new F1[i8];
            case 15:
                return new J1[i8];
            case 16:
                return new p044f4.b[i8];
            case 17:
                return new p044f4.g[i8];
            case 18:
                return new p044f4.h[i8];
            case 19:
                return new p044f4.i[i8];
            case 20:
                return new p153t4.c[i8];
            case 21:
                return new p153t4.d[i8];
            case 22:
                return new R5.b[i8];
            default:
                return new W5.a[i8];
        }
    }
}
