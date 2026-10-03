package p090l3;

import A3.c;
import A3.d;
import C3.C0101a;
import C3.C0102b;
import C3.C0104d;
import C3.C0108h;
import C3.C0109i;
import C3.G;
import C3.u;
import C3.w;
import C3.x;
import D3.C0158b;
import D3.E;
import D3.F;
import E3.b;
import E3.e;
import H3.z;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.cast.MediaError;
import com.google.android.gms.common.api.Scope;
import com.google.api.Service;
import com.google.protobuf.DescriptorProtos$FileOptions;
import com.google.protobuf.DescriptorProtos$MethodOptions;
import java.util.ArrayList;
import org.eclipse.paho.client.mqttv3.MqttConnectOptions;
import p039f.AbstractC2987b;
import p083k3.g;
import p097m3.a;
import p105n3.f;
import p113o3.C3158p;

/* JADX INFO: loaded from: classes.dex */
public final class f1 implements Parcelable.Creator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f26571a;

    public /* synthetic */ f1(int i8) {
        this.f26571a = i8;
    }

    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        double dA = 0.0d;
        float fB = 0.0f;
        int iD = 0;
        boolean zY = false;
        int iD2 = 0;
        boolean zY2 = false;
        int iD3 = 0;
        int iD4 = 0;
        boolean zY3 = false;
        int iD5 = 0;
        int iD6 = 0;
        int iD7 = 0;
        int iD8 = 0;
        String strN = null;
        String strN2 = null;
        w wVar = null;
        String strN3 = null;
        String strN4 = null;
        C0104d c0104d = null;
        String strN5 = null;
        String strN6 = null;
        String strN7 = null;
        String strN8 = null;
        switch (this.f26571a) {
            case 0:
                int iH = AbstractC2987b.H(parcel);
                long jE = 0;
                String strN9 = null;
                int iD9 = 0;
                int iD10 = 0;
                while (parcel.dataPosition() < iH) {
                    int i8 = parcel.readInt();
                    char c8 = (char) i8;
                    if (c8 == 1) {
                        iD9 = AbstractC2987b.D(i8, parcel);
                    } else if (c8 == 2) {
                        iD10 = AbstractC2987b.D(i8, parcel);
                    } else if (c8 == 3) {
                        strN9 = AbstractC2987b.n(i8, parcel);
                    } else if (c8 != 4) {
                        AbstractC2987b.G(i8, parcel);
                    } else {
                        jE = AbstractC2987b.E(i8, parcel);
                    }
                }
                AbstractC2987b.t(iH, parcel);
                return new e1(iD9, iD10, jE, strN9);
            case 1:
                int iH2 = AbstractC2987b.H(parcel);
                long jE2 = 0;
                String strN10 = null;
                C3117z0 c3117z0 = null;
                Bundle bundleG = null;
                String strN11 = null;
                String strN12 = null;
                String strN13 = null;
                String strN14 = null;
                while (parcel.dataPosition() < iH2) {
                    int i9 = parcel.readInt();
                    switch ((char) i9) {
                        case 1:
                            strN10 = AbstractC2987b.n(i9, parcel);
                            break;
                        case 2:
                            jE2 = AbstractC2987b.E(i9, parcel);
                            break;
                        case 3:
                            c3117z0 = (C3117z0) AbstractC2987b.m(parcel, i9, C3117z0.CREATOR);
                            break;
                        case 4:
                            bundleG = AbstractC2987b.g(i9, parcel);
                            break;
                        case 5:
                            strN11 = AbstractC2987b.n(i9, parcel);
                            break;
                        case 6:
                            strN12 = AbstractC2987b.n(i9, parcel);
                            break;
                        case 7:
                            strN13 = AbstractC2987b.n(i9, parcel);
                            break;
                        case '\b':
                            strN14 = AbstractC2987b.n(i9, parcel);
                            break;
                        default:
                            AbstractC2987b.G(i9, parcel);
                            break;
                    }
                }
                AbstractC2987b.t(iH2, parcel);
                return new g1(strN10, jE2, c3117z0, bundleG, strN11, strN12, strN13, strN14);
            case 2:
                int iH3 = AbstractC2987b.H(parcel);
                while (parcel.dataPosition() < iH3) {
                    int i10 = parcel.readInt();
                    if (((char) i10) != 2) {
                        AbstractC2987b.G(i10, parcel);
                    } else {
                        iD = AbstractC2987b.D(i10, parcel);
                    }
                }
                AbstractC2987b.t(iH3, parcel);
                return new h1(iD);
            case 3:
                int iH4 = AbstractC2987b.H(parcel);
                String strN15 = null;
                String strN16 = null;
                while (parcel.dataPosition() < iH4) {
                    int i11 = parcel.readInt();
                    char c9 = (char) i11;
                    if (c9 == 1) {
                        strN = AbstractC2987b.n(i11, parcel);
                    } else if (c9 == 2) {
                        strN15 = AbstractC2987b.n(i11, parcel);
                    } else if (c9 != 3) {
                        AbstractC2987b.G(i11, parcel);
                    } else {
                        strN16 = AbstractC2987b.n(i11, parcel);
                    }
                }
                AbstractC2987b.t(iH4, parcel);
                return new a(strN, strN15, strN16);
            case 4:
                int iH5 = AbstractC2987b.H(parcel);
                String strN17 = null;
                String strN18 = null;
                String strN19 = null;
                String strN20 = null;
                String strN21 = null;
                String strN22 = null;
                String strN23 = null;
                Intent intent = null;
                IBinder iBinderC = null;
                boolean zY4 = false;
                while (parcel.dataPosition() < iH5) {
                    int i12 = parcel.readInt();
                    switch ((char) i12) {
                        case 2:
                            strN17 = AbstractC2987b.n(i12, parcel);
                            break;
                        case 3:
                            strN18 = AbstractC2987b.n(i12, parcel);
                            break;
                        case 4:
                            strN19 = AbstractC2987b.n(i12, parcel);
                            break;
                        case 5:
                            strN20 = AbstractC2987b.n(i12, parcel);
                            break;
                        case 6:
                            strN21 = AbstractC2987b.n(i12, parcel);
                            break;
                        case 7:
                            strN22 = AbstractC2987b.n(i12, parcel);
                            break;
                        case '\b':
                            strN23 = AbstractC2987b.n(i12, parcel);
                            break;
                        case '\t':
                            intent = (Intent) AbstractC2987b.m(parcel, i12, Intent.CREATOR);
                            break;
                        case '\n':
                            iBinderC = AbstractC2987b.C(i12, parcel);
                            break;
                        case 11:
                            zY4 = AbstractC2987b.y(i12, parcel);
                            break;
                        default:
                            AbstractC2987b.G(i12, parcel);
                            break;
                    }
                }
                AbstractC2987b.t(iH5, parcel);
                return new f(strN17, strN18, strN19, strN20, strN21, strN22, strN23, intent, iBinderC, zY4);
            case 5:
                int iH6 = AbstractC2987b.H(parcel);
                long jE3 = 0;
                f fVar = null;
                IBinder iBinderC2 = null;
                IBinder iBinderC3 = null;
                IBinder iBinderC4 = null;
                IBinder iBinderC5 = null;
                String strN24 = null;
                String strN25 = null;
                IBinder iBinderC6 = null;
                String strN26 = null;
                p120p3.a aVar = null;
                String strN27 = null;
                g gVar = null;
                IBinder iBinderC7 = null;
                String strN28 = null;
                String strN29 = null;
                String strN30 = null;
                IBinder iBinderC8 = null;
                IBinder iBinderC9 = null;
                IBinder iBinderC10 = null;
                boolean zY5 = false;
                int iD11 = 0;
                int iD12 = 0;
                boolean zY6 = false;
                while (parcel.dataPosition() < iH6) {
                    int i13 = parcel.readInt();
                    switch ((char) i13) {
                        case 2:
                            fVar = (f) AbstractC2987b.m(parcel, i13, f.CREATOR);
                            break;
                        case 3:
                            iBinderC2 = AbstractC2987b.C(i13, parcel);
                            break;
                        case 4:
                            iBinderC3 = AbstractC2987b.C(i13, parcel);
                            break;
                        case 5:
                            iBinderC4 = AbstractC2987b.C(i13, parcel);
                            break;
                        case 6:
                            iBinderC5 = AbstractC2987b.C(i13, parcel);
                            break;
                        case 7:
                            strN24 = AbstractC2987b.n(i13, parcel);
                            break;
                        case '\b':
                            zY5 = AbstractC2987b.y(i13, parcel);
                            break;
                        case '\t':
                            strN25 = AbstractC2987b.n(i13, parcel);
                            break;
                        case '\n':
                            iBinderC6 = AbstractC2987b.C(i13, parcel);
                            break;
                        case 11:
                            iD11 = AbstractC2987b.D(i13, parcel);
                            break;
                        case '\f':
                            iD12 = AbstractC2987b.D(i13, parcel);
                            break;
                        case '\r':
                            strN26 = AbstractC2987b.n(i13, parcel);
                            break;
                        case 14:
                            aVar = (p120p3.a) AbstractC2987b.m(parcel, i13, p120p3.a.CREATOR);
                            break;
                        case 15:
                        case 20:
                        case 21:
                        case 22:
                        case 23:
                        default:
                            AbstractC2987b.G(i13, parcel);
                            break;
                        case 16:
                            strN27 = AbstractC2987b.n(i13, parcel);
                            break;
                        case 17:
                            gVar = (g) AbstractC2987b.m(parcel, i13, g.CREATOR);
                            break;
                        case 18:
                            iBinderC7 = AbstractC2987b.C(i13, parcel);
                            break;
                        case 19:
                            strN28 = AbstractC2987b.n(i13, parcel);
                            break;
                        case 24:
                            strN29 = AbstractC2987b.n(i13, parcel);
                            break;
                        case 25:
                            strN30 = AbstractC2987b.n(i13, parcel);
                            break;
                        case Service.BILLING_FIELD_NUMBER /* 26 */:
                            iBinderC8 = AbstractC2987b.C(i13, parcel);
                            break;
                        case 27:
                            iBinderC9 = AbstractC2987b.C(i13, parcel);
                            break;
                        case Service.MONITORING_FIELD_NUMBER /* 28 */:
                            iBinderC10 = AbstractC2987b.C(i13, parcel);
                            break;
                        case Service.SYSTEM_PARAMETERS_FIELD_NUMBER /* 29 */:
                            zY6 = AbstractC2987b.y(i13, parcel);
                            break;
                        case MqttConnectOptions.CONNECTION_TIMEOUT_DEFAULT /* 30 */:
                            jE3 = AbstractC2987b.E(i13, parcel);
                            break;
                    }
                }
                AbstractC2987b.t(iH6, parcel);
                return new AdOverlayInfoParcel(fVar, iBinderC2, iBinderC3, iBinderC4, iBinderC5, strN24, zY5, strN25, iBinderC6, iD11, iD12, strN26, aVar, strN27, gVar, iBinderC7, strN28, strN29, strN30, iBinderC8, iBinderC9, iBinderC10, zY6, jE3);
            case 6:
                int iH7 = AbstractC2987b.H(parcel);
                String strN31 = null;
                int iD13 = 0;
                int iD14 = 0;
                boolean zY7 = false;
                boolean zY8 = false;
                while (parcel.dataPosition() < iH7) {
                    int i14 = parcel.readInt();
                    char c10 = (char) i14;
                    if (c10 == 2) {
                        strN31 = AbstractC2987b.n(i14, parcel);
                    } else if (c10 == 3) {
                        iD13 = AbstractC2987b.D(i14, parcel);
                    } else if (c10 == 4) {
                        iD14 = AbstractC2987b.D(i14, parcel);
                    } else if (c10 == 5) {
                        zY7 = AbstractC2987b.y(i14, parcel);
                    } else if (c10 != 6) {
                        AbstractC2987b.G(i14, parcel);
                    } else {
                        zY8 = AbstractC2987b.y(i14, parcel);
                    }
                }
                AbstractC2987b.t(iH7, parcel);
                return new p120p3.a(strN31, iD13, iD14, zY7, zY8);
            case 7:
                int iH8 = AbstractC2987b.H(parcel);
                while (parcel.dataPosition() < iH8) {
                    int i15 = parcel.readInt();
                    char c11 = (char) i15;
                    if (c11 == 1) {
                        strN8 = AbstractC2987b.n(i15, parcel);
                    } else if (c11 != 2) {
                        AbstractC2987b.G(i15, parcel);
                    } else {
                        iD8 = AbstractC2987b.D(i15, parcel);
                    }
                }
                AbstractC2987b.t(iH8, parcel);
                return new C3158p(strN8, iD8);
            case 8:
                int iH9 = AbstractC2987b.H(parcel);
                String strN32 = null;
                boolean zY9 = false;
                boolean zY10 = false;
                boolean zY11 = false;
                float fB2 = 0.0f;
                int iD15 = 0;
                boolean zY12 = false;
                boolean zY13 = false;
                boolean zY14 = false;
                while (parcel.dataPosition() < iH9) {
                    int i16 = parcel.readInt();
                    switch ((char) i16) {
                        case 2:
                            zY9 = AbstractC2987b.y(i16, parcel);
                            break;
                        case 3:
                            zY10 = AbstractC2987b.y(i16, parcel);
                            break;
                        case 4:
                            strN32 = AbstractC2987b.n(i16, parcel);
                            break;
                        case 5:
                            zY11 = AbstractC2987b.y(i16, parcel);
                            break;
                        case 6:
                            fB2 = AbstractC2987b.B(i16, parcel);
                            break;
                        case 7:
                            iD15 = AbstractC2987b.D(i16, parcel);
                            break;
                        case '\b':
                            zY12 = AbstractC2987b.y(i16, parcel);
                            break;
                        case '\t':
                            zY13 = AbstractC2987b.y(i16, parcel);
                            break;
                        case '\n':
                            zY14 = AbstractC2987b.y(i16, parcel);
                            break;
                        default:
                            AbstractC2987b.G(i16, parcel);
                            break;
                    }
                }
                AbstractC2987b.t(iH9, parcel);
                return new g(zY9, zY10, strN32, zY11, fB2, iD15, zY12, zY13, zY14);
            case 9:
                int iH10 = AbstractC2987b.H(parcel);
                String strN33 = null;
                while (parcel.dataPosition() < iH10) {
                    int i17 = parcel.readInt();
                    char c12 = (char) i17;
                    if (c12 == 1) {
                        strN7 = AbstractC2987b.n(i17, parcel);
                    } else if (c12 != 2) {
                        AbstractC2987b.G(i17, parcel);
                    } else {
                        strN33 = AbstractC2987b.n(i17, parcel);
                    }
                }
                AbstractC2987b.t(iH10, parcel);
                return new c(strN7, strN33);
            case 10:
                int iH11 = AbstractC2987b.H(parcel);
                while (parcel.dataPosition() < iH11) {
                    int i18 = parcel.readInt();
                    char c13 = (char) i18;
                    if (c13 == 1) {
                        strN6 = AbstractC2987b.n(i18, parcel);
                    } else if (c13 != 2) {
                        AbstractC2987b.G(i18, parcel);
                    } else {
                        iD7 = AbstractC2987b.D(i18, parcel);
                    }
                }
                AbstractC2987b.t(iH11, parcel);
                return new d(strN6, iD7);
            case 11:
                int iH12 = AbstractC2987b.H(parcel);
                long jE4 = 0;
                String strN34 = null;
                String strN35 = null;
                String strN36 = null;
                String strN37 = null;
                Uri uri = null;
                String strN38 = null;
                String strN39 = null;
                ArrayList arrayListR = null;
                String strN40 = null;
                String strN41 = null;
                int iD16 = 0;
                while (parcel.dataPosition() < iH12) {
                    int i19 = parcel.readInt();
                    switch ((char) i19) {
                        case 1:
                            iD16 = AbstractC2987b.D(i19, parcel);
                            break;
                        case 2:
                            strN34 = AbstractC2987b.n(i19, parcel);
                            break;
                        case 3:
                            strN35 = AbstractC2987b.n(i19, parcel);
                            break;
                        case 4:
                            strN36 = AbstractC2987b.n(i19, parcel);
                            break;
                        case 5:
                            strN37 = AbstractC2987b.n(i19, parcel);
                            break;
                        case 6:
                            uri = (Uri) AbstractC2987b.m(parcel, i19, Uri.CREATOR);
                            break;
                        case 7:
                            strN38 = AbstractC2987b.n(i19, parcel);
                            break;
                        case '\b':
                            jE4 = AbstractC2987b.E(i19, parcel);
                            break;
                        case '\t':
                            strN39 = AbstractC2987b.n(i19, parcel);
                            break;
                        case '\n':
                            arrayListR = AbstractC2987b.r(parcel, i19, Scope.CREATOR);
                            break;
                        case 11:
                            strN40 = AbstractC2987b.n(i19, parcel);
                            break;
                        case '\f':
                            strN41 = AbstractC2987b.n(i19, parcel);
                            break;
                        default:
                            AbstractC2987b.G(i19, parcel);
                            break;
                    }
                }
                AbstractC2987b.t(iH12, parcel);
                return new GoogleSignInAccount(iD16, strN34, strN35, strN36, strN37, uri, strN38, jE4, strN39, arrayListR, strN40, strN41);
            case 12:
                int iH13 = AbstractC2987b.H(parcel);
                String strN42 = null;
                String strN43 = null;
                IBinder iBinderC11 = null;
                E3.g gVar2 = null;
                boolean zY15 = false;
                boolean zY16 = false;
                while (parcel.dataPosition() < iH13) {
                    int i20 = parcel.readInt();
                    switch ((char) i20) {
                        case 2:
                            strN42 = AbstractC2987b.n(i20, parcel);
                            break;
                        case 3:
                            strN43 = AbstractC2987b.n(i20, parcel);
                            break;
                        case 4:
                            iBinderC11 = AbstractC2987b.C(i20, parcel);
                            break;
                        case 5:
                            gVar2 = (E3.g) AbstractC2987b.m(parcel, i20, E3.g.CREATOR);
                            break;
                        case 6:
                            zY15 = AbstractC2987b.y(i20, parcel);
                            break;
                        case 7:
                            zY16 = AbstractC2987b.y(i20, parcel);
                            break;
                        default:
                            AbstractC2987b.G(i20, parcel);
                            break;
                    }
                }
                AbstractC2987b.t(iH13, parcel);
                return new b(strN42, strN43, iBinderC11, gVar2, zY15, zY16);
            case 13:
                int iH14 = AbstractC2987b.H(parcel);
                long jE5 = 0;
                ArrayList arrayListP = null;
                int[] iArrJ = null;
                String strN44 = null;
                IBinder iBinderC12 = null;
                int iD17 = 0;
                int iD18 = 0;
                int iD19 = 0;
                int iD20 = 0;
                int iD21 = 0;
                int iD22 = 0;
                int iD23 = 0;
                int iD24 = 0;
                int iD25 = 0;
                int iD26 = 0;
                int iD27 = 0;
                int iD28 = 0;
                int iD29 = 0;
                int iD30 = 0;
                int iD31 = 0;
                int iD32 = 0;
                int iD33 = 0;
                int iD34 = 0;
                int iD35 = 0;
                int iD36 = 0;
                int iD37 = 0;
                int iD38 = 0;
                int iD39 = 0;
                int iD40 = 0;
                int iD41 = 0;
                int iD42 = 0;
                int iD43 = 0;
                boolean zY17 = false;
                boolean zY18 = false;
                while (parcel.dataPosition() < iH14) {
                    int i21 = parcel.readInt();
                    switch ((char) i21) {
                        case 2:
                            arrayListP = AbstractC2987b.p(i21, parcel);
                            break;
                        case 3:
                            iArrJ = AbstractC2987b.j(i21, parcel);
                            break;
                        case 4:
                            jE5 = AbstractC2987b.E(i21, parcel);
                            break;
                        case 5:
                            strN44 = AbstractC2987b.n(i21, parcel);
                            break;
                        case 6:
                            iD17 = AbstractC2987b.D(i21, parcel);
                            break;
                        case 7:
                            iD18 = AbstractC2987b.D(i21, parcel);
                            break;
                        case '\b':
                            iD19 = AbstractC2987b.D(i21, parcel);
                            break;
                        case '\t':
                            iD20 = AbstractC2987b.D(i21, parcel);
                            break;
                        case '\n':
                            iD21 = AbstractC2987b.D(i21, parcel);
                            break;
                        case 11:
                            iD22 = AbstractC2987b.D(i21, parcel);
                            break;
                        case '\f':
                            iD23 = AbstractC2987b.D(i21, parcel);
                            break;
                        case '\r':
                            iD24 = AbstractC2987b.D(i21, parcel);
                            break;
                        case 14:
                            iD25 = AbstractC2987b.D(i21, parcel);
                            break;
                        case 15:
                            iD26 = AbstractC2987b.D(i21, parcel);
                            break;
                        case 16:
                            iD27 = AbstractC2987b.D(i21, parcel);
                            break;
                        case 17:
                            iD28 = AbstractC2987b.D(i21, parcel);
                            break;
                        case 18:
                            iD29 = AbstractC2987b.D(i21, parcel);
                            break;
                        case 19:
                            iD30 = AbstractC2987b.D(i21, parcel);
                            break;
                        case 20:
                            iD31 = AbstractC2987b.D(i21, parcel);
                            break;
                        case 21:
                            iD32 = AbstractC2987b.D(i21, parcel);
                            break;
                        case 22:
                            iD33 = AbstractC2987b.D(i21, parcel);
                            break;
                        case 23:
                            iD34 = AbstractC2987b.D(i21, parcel);
                            break;
                        case 24:
                            iD35 = AbstractC2987b.D(i21, parcel);
                            break;
                        case 25:
                            iD36 = AbstractC2987b.D(i21, parcel);
                            break;
                        case Service.BILLING_FIELD_NUMBER /* 26 */:
                            iD37 = AbstractC2987b.D(i21, parcel);
                            break;
                        case 27:
                            iD38 = AbstractC2987b.D(i21, parcel);
                            break;
                        case Service.MONITORING_FIELD_NUMBER /* 28 */:
                            iD39 = AbstractC2987b.D(i21, parcel);
                            break;
                        case Service.SYSTEM_PARAMETERS_FIELD_NUMBER /* 29 */:
                            iD40 = AbstractC2987b.D(i21, parcel);
                            break;
                        case MqttConnectOptions.CONNECTION_TIMEOUT_DEFAULT /* 30 */:
                            iD41 = AbstractC2987b.D(i21, parcel);
                            break;
                        case DescriptorProtos$FileOptions.CC_ENABLE_ARENAS_FIELD_NUMBER /* 31 */:
                            iD42 = AbstractC2987b.D(i21, parcel);
                            break;
                        case ' ':
                            iD43 = AbstractC2987b.D(i21, parcel);
                            break;
                        case '!':
                            iBinderC12 = AbstractC2987b.C(i21, parcel);
                            break;
                        case DescriptorProtos$MethodOptions.IDEMPOTENCY_LEVEL_FIELD_NUMBER /* 34 */:
                            zY17 = AbstractC2987b.y(i21, parcel);
                            break;
                        case '#':
                            zY18 = AbstractC2987b.y(i21, parcel);
                            break;
                        default:
                            AbstractC2987b.G(i21, parcel);
                            break;
                    }
                }
                AbstractC2987b.t(iH14, parcel);
                return new E3.g(arrayListP, iArrJ, jE5, strN44, iD17, iD18, iD19, iD20, iD21, iD22, iD23, iD24, iD25, iD26, iD27, iD28, iD29, iD30, iD31, iD32, iD33, iD34, iD35, iD36, iD37, iD38, iD39, iD40, iD41, iD42, iD43, iBinderC12, zY17, zY18);
            case 14:
                int iH15 = AbstractC2987b.H(parcel);
                int iD44 = 0;
                int iD45 = 0;
                while (parcel.dataPosition() < iH15) {
                    int i22 = parcel.readInt();
                    char c14 = (char) i22;
                    if (c14 == 2) {
                        iD6 = AbstractC2987b.D(i22, parcel);
                    } else if (c14 == 3) {
                        iD44 = AbstractC2987b.D(i22, parcel);
                    } else if (c14 != 4) {
                        AbstractC2987b.G(i22, parcel);
                    } else {
                        iD45 = AbstractC2987b.D(i22, parcel);
                    }
                }
                AbstractC2987b.t(iH15, parcel);
                return new E3.c(iD6, iD44, iD45);
            case 15:
                int iH16 = AbstractC2987b.H(parcel);
                String strN45 = null;
                while (parcel.dataPosition() < iH16) {
                    int i23 = parcel.readInt();
                    char c15 = (char) i23;
                    if (c15 == 2) {
                        strN5 = AbstractC2987b.n(i23, parcel);
                    } else if (c15 == 3) {
                        iD5 = AbstractC2987b.D(i23, parcel);
                    } else if (c15 != 4) {
                        AbstractC2987b.G(i23, parcel);
                    } else {
                        strN45 = AbstractC2987b.n(i23, parcel);
                    }
                }
                AbstractC2987b.t(iH16, parcel);
                return new e(strN5, iD5, strN45);
            case 16:
                int iH17 = AbstractC2987b.H(parcel);
                while (parcel.dataPosition() < iH17) {
                    int i24 = parcel.readInt();
                    if (((char) i24) != 2) {
                        AbstractC2987b.G(i24, parcel);
                    } else {
                        zY3 = AbstractC2987b.y(i24, parcel);
                    }
                }
                AbstractC2987b.t(iH17, parcel);
                return new E(zY3);
            case 17:
                int iH18 = AbstractC2987b.H(parcel);
                while (parcel.dataPosition() < iH18) {
                    int i25 = parcel.readInt();
                    if (((char) i25) != 2) {
                        AbstractC2987b.G(i25, parcel);
                    } else {
                        iD4 = AbstractC2987b.D(i25, parcel);
                    }
                }
                AbstractC2987b.t(iH18, parcel);
                return new F(iD4);
            case 18:
                int iH19 = AbstractC2987b.H(parcel);
                double dA2 = 0.0d;
                String strN46 = null;
                ArrayList arrayListP2 = null;
                C0109i c0109i = null;
                b bVar = null;
                ArrayList arrayListP3 = null;
                E e8 = null;
                F f8 = null;
                boolean zY19 = false;
                boolean zY20 = false;
                boolean zY21 = false;
                boolean zY22 = false;
                boolean zY23 = false;
                boolean zY24 = false;
                boolean zY25 = false;
                boolean zY26 = false;
                while (parcel.dataPosition() < iH19) {
                    int i26 = parcel.readInt();
                    switch ((char) i26) {
                        case 2:
                            strN46 = AbstractC2987b.n(i26, parcel);
                            break;
                        case 3:
                            arrayListP2 = AbstractC2987b.p(i26, parcel);
                            break;
                        case 4:
                            zY19 = AbstractC2987b.y(i26, parcel);
                            break;
                        case 5:
                            c0109i = (C0109i) AbstractC2987b.m(parcel, i26, C0109i.CREATOR);
                            break;
                        case 6:
                            zY20 = AbstractC2987b.y(i26, parcel);
                            break;
                        case 7:
                            bVar = (b) AbstractC2987b.m(parcel, i26, b.CREATOR);
                            break;
                        case '\b':
                            zY21 = AbstractC2987b.y(i26, parcel);
                            break;
                        case '\t':
                            dA2 = AbstractC2987b.A(i26, parcel);
                            break;
                        case '\n':
                            zY22 = AbstractC2987b.y(i26, parcel);
                            break;
                        case 11:
                            zY23 = AbstractC2987b.y(i26, parcel);
                            break;
                        case '\f':
                            zY24 = AbstractC2987b.y(i26, parcel);
                            break;
                        case '\r':
                            arrayListP3 = AbstractC2987b.p(i26, parcel);
                            break;
                        case 14:
                            zY25 = AbstractC2987b.y(i26, parcel);
                            break;
                        case 15:
                            AbstractC2987b.D(i26, parcel);
                            break;
                        case 16:
                            zY26 = AbstractC2987b.y(i26, parcel);
                            break;
                        case 17:
                            e8 = (E) AbstractC2987b.m(parcel, i26, E.CREATOR);
                            break;
                        case 18:
                            f8 = (F) AbstractC2987b.m(parcel, i26, F.CREATOR);
                            break;
                        default:
                            AbstractC2987b.G(i26, parcel);
                            break;
                    }
                }
                AbstractC2987b.t(iH19, parcel);
                return new C0158b(strN46, arrayListP2, zY19, c0109i, zY20, bVar, zY21, dA2, zY22, zY23, zY24, arrayListP3, zY25, zY26, e8, f8);
            case 19:
                int iH20 = AbstractC2987b.H(parcel);
                boolean zY27 = false;
                boolean zY28 = false;
                while (parcel.dataPosition() < iH20) {
                    int i27 = parcel.readInt();
                    char c16 = (char) i27;
                    if (c16 == 2) {
                        iD3 = AbstractC2987b.D(i27, parcel);
                    } else if (c16 == 3) {
                        zY27 = AbstractC2987b.y(i27, parcel);
                    } else if (c16 != 4) {
                        AbstractC2987b.G(i27, parcel);
                    } else {
                        zY28 = AbstractC2987b.y(i27, parcel);
                    }
                }
                AbstractC2987b.t(iH20, parcel);
                return new z(iD3, zY27, zY28);
            case 20:
                int iH21 = AbstractC2987b.H(parcel);
                double dA3 = 0.0d;
                x xVar = null;
                int iD46 = 0;
                int iD47 = 0;
                while (parcel.dataPosition() < iH21) {
                    int i28 = parcel.readInt();
                    switch ((char) i28) {
                        case 2:
                            dA = AbstractC2987b.A(i28, parcel);
                            break;
                        case 3:
                            zY2 = AbstractC2987b.y(i28, parcel);
                            break;
                        case 4:
                            iD46 = AbstractC2987b.D(i28, parcel);
                            break;
                        case 5:
                            c0104d = (C0104d) AbstractC2987b.m(parcel, i28, C0104d.CREATOR);
                            break;
                        case 6:
                            iD47 = AbstractC2987b.D(i28, parcel);
                            break;
                        case 7:
                            xVar = (x) AbstractC2987b.m(parcel, i28, x.CREATOR);
                            break;
                        case '\b':
                            dA3 = AbstractC2987b.A(i28, parcel);
                            break;
                        default:
                            AbstractC2987b.G(i28, parcel);
                            break;
                    }
                }
                AbstractC2987b.t(iH21, parcel);
                H3.d dVar = new H3.d();
                dVar.f3683G = dA;
                dVar.f3684H = zY2;
                dVar.f3685I = iD46;
                dVar.f3686J = c0104d;
                dVar.f3687K = iD47;
                dVar.f3688L = xVar;
                dVar.f3689M = dA3;
                return dVar;
            case 21:
                int iH22 = AbstractC2987b.H(parcel);
                while (parcel.dataPosition() < iH22) {
                    int i29 = parcel.readInt();
                    if (((char) i29) != 2) {
                        AbstractC2987b.G(i29, parcel);
                    } else {
                        strN4 = AbstractC2987b.n(i29, parcel);
                    }
                }
                AbstractC2987b.t(iH22, parcel);
                return new H3.c(strN4);
            case 22:
                int iH23 = AbstractC2987b.H(parcel);
                long jE6 = 0;
                long jE7 = 0;
                String strN47 = null;
                String strN48 = null;
                String strN49 = null;
                String strN50 = null;
                String strN51 = null;
                String strN52 = null;
                String strN53 = null;
                String strN54 = null;
                String strN55 = null;
                u uVar = null;
                while (parcel.dataPosition() < iH23) {
                    int i30 = parcel.readInt();
                    switch ((char) i30) {
                        case 2:
                            strN47 = AbstractC2987b.n(i30, parcel);
                            break;
                        case 3:
                            strN48 = AbstractC2987b.n(i30, parcel);
                            break;
                        case 4:
                            jE6 = AbstractC2987b.E(i30, parcel);
                            break;
                        case 5:
                            strN49 = AbstractC2987b.n(i30, parcel);
                            break;
                        case 6:
                            strN50 = AbstractC2987b.n(i30, parcel);
                            break;
                        case 7:
                            strN51 = AbstractC2987b.n(i30, parcel);
                            break;
                        case '\b':
                            strN52 = AbstractC2987b.n(i30, parcel);
                            break;
                        case '\t':
                            strN53 = AbstractC2987b.n(i30, parcel);
                            break;
                        case '\n':
                            strN54 = AbstractC2987b.n(i30, parcel);
                            break;
                        case 11:
                            jE7 = AbstractC2987b.E(i30, parcel);
                            break;
                        case '\f':
                            strN55 = AbstractC2987b.n(i30, parcel);
                            break;
                        case '\r':
                            uVar = (u) AbstractC2987b.m(parcel, i30, u.CREATOR);
                            break;
                        default:
                            AbstractC2987b.G(i30, parcel);
                            break;
                    }
                }
                AbstractC2987b.t(iH23, parcel);
                return new C0101a(strN47, strN48, jE6, strN49, strN50, strN51, strN52, strN53, strN54, jE7, strN55, uVar);
            case 23:
                int iH24 = AbstractC2987b.H(parcel);
                String strN56 = null;
                while (parcel.dataPosition() < iH24) {
                    int i31 = parcel.readInt();
                    char c17 = (char) i31;
                    if (c17 == 1) {
                        strN3 = AbstractC2987b.n(i31, parcel);
                    } else if (c17 != 2) {
                        AbstractC2987b.G(i31, parcel);
                    } else {
                        strN56 = AbstractC2987b.n(i31, parcel);
                    }
                }
                AbstractC2987b.t(iH24, parcel);
                return new C0108h(strN3, strN56);
            case 24:
                int iH25 = AbstractC2987b.H(parcel);
                float fB3 = 0.0f;
                float fB4 = 0.0f;
                while (parcel.dataPosition() < iH25) {
                    int i32 = parcel.readInt();
                    char c18 = (char) i32;
                    if (c18 == 2) {
                        fB = AbstractC2987b.B(i32, parcel);
                    } else if (c18 == 3) {
                        fB3 = AbstractC2987b.B(i32, parcel);
                    } else if (c18 != 4) {
                        AbstractC2987b.G(i32, parcel);
                    } else {
                        fB4 = AbstractC2987b.B(i32, parcel);
                    }
                }
                AbstractC2987b.t(iH25, parcel);
                return new w(fB, fB3, fB4);
            case 25:
                int iH26 = AbstractC2987b.H(parcel);
                w wVar2 = null;
                while (parcel.dataPosition() < iH26) {
                    int i33 = parcel.readInt();
                    char c19 = (char) i33;
                    if (c19 == 2) {
                        wVar = (w) AbstractC2987b.m(parcel, i33, w.CREATOR);
                    } else if (c19 != 3) {
                        AbstractC2987b.G(i33, parcel);
                    } else {
                        wVar2 = (w) AbstractC2987b.m(parcel, i33, w.CREATOR);
                    }
                }
                AbstractC2987b.t(iH26, parcel);
                return new x(wVar, wVar2);
            case Service.BILLING_FIELD_NUMBER /* 26 */:
                int iH27 = AbstractC2987b.H(parcel);
                long jE8 = 0;
                long jE9 = 0;
                String strN57 = null;
                String[] strArrO = null;
                boolean zY29 = false;
                boolean zY30 = false;
                boolean zY31 = false;
                while (parcel.dataPosition() < iH27) {
                    int i34 = parcel.readInt();
                    switch ((char) i34) {
                        case 2:
                            jE8 = AbstractC2987b.E(i34, parcel);
                            break;
                        case 3:
                            strN57 = AbstractC2987b.n(i34, parcel);
                            break;
                        case 4:
                            jE9 = AbstractC2987b.E(i34, parcel);
                            break;
                        case 5:
                            zY29 = AbstractC2987b.y(i34, parcel);
                            break;
                        case 6:
                            strArrO = AbstractC2987b.o(i34, parcel);
                            break;
                        case 7:
                            zY30 = AbstractC2987b.y(i34, parcel);
                            break;
                        case '\b':
                            zY31 = AbstractC2987b.y(i34, parcel);
                            break;
                        default:
                            AbstractC2987b.G(i34, parcel);
                            break;
                    }
                }
                AbstractC2987b.t(iH27, parcel);
                return new C0102b(jE8, strN57, jE9, zY29, strArrO, zY30, zY31);
            case 27:
                int iH28 = AbstractC2987b.H(parcel);
                while (parcel.dataPosition() < iH28) {
                    int i35 = parcel.readInt();
                    if (((char) i35) != 2) {
                        AbstractC2987b.G(i35, parcel);
                    } else {
                        iD2 = AbstractC2987b.D(i35, parcel);
                    }
                }
                AbstractC2987b.t(iH28, parcel);
                return new G(iD2);
            case Service.MONITORING_FIELD_NUMBER /* 28 */:
                int iH29 = AbstractC2987b.H(parcel);
                C0108h c0108h = null;
                boolean zY32 = false;
                while (parcel.dataPosition() < iH29) {
                    int i36 = parcel.readInt();
                    char c20 = (char) i36;
                    if (c20 == 2) {
                        zY = AbstractC2987b.y(i36, parcel);
                    } else if (c20 == 3) {
                        strN2 = AbstractC2987b.n(i36, parcel);
                    } else if (c20 == 4) {
                        zY32 = AbstractC2987b.y(i36, parcel);
                    } else if (c20 != 5) {
                        AbstractC2987b.G(i36, parcel);
                    } else {
                        c0108h = (C0108h) AbstractC2987b.m(parcel, i36, C0108h.CREATOR);
                    }
                }
                AbstractC2987b.t(iH29, parcel);
                return new C0109i(zY, strN2, zY32, c0108h);
            default:
                int iH30 = AbstractC2987b.H(parcel);
                long jE10 = 0;
                String strN58 = null;
                String strN59 = null;
                Integer numValueOf = null;
                String strN60 = null;
                while (parcel.dataPosition() < iH30) {
                    int i37 = parcel.readInt();
                    char c21 = (char) i37;
                    if (c21 == 2) {
                        strN59 = AbstractC2987b.n(i37, parcel);
                    } else if (c21 == 3) {
                        jE10 = AbstractC2987b.E(i37, parcel);
                    } else if (c21 == 4) {
                        int iF = AbstractC2987b.F(i37, parcel);
                        if (iF == 0) {
                            numValueOf = null;
                        } else {
                            AbstractC2987b.g0(parcel, iF, 4);
                            numValueOf = Integer.valueOf(parcel.readInt());
                        }
                    } else if (c21 == 5) {
                        strN60 = AbstractC2987b.n(i37, parcel);
                    } else if (c21 != 6) {
                        AbstractC2987b.G(i37, parcel);
                    } else {
                        strN58 = AbstractC2987b.n(i37, parcel);
                    }
                }
                AbstractC2987b.t(iH30, parcel);
                return new MediaError(strN59, jE10, numValueOf, strN60, H3.a.a(strN58));
        }
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i8) {
        switch (this.f26571a) {
            case 0:
                return new e1[i8];
            case 1:
                return new g1[i8];
            case 2:
                return new h1[i8];
            case 3:
                return new a[i8];
            case 4:
                return new f[i8];
            case 5:
                return new AdOverlayInfoParcel[i8];
            case 6:
                return new p120p3.a[i8];
            case 7:
                return new C3158p[i8];
            case 8:
                return new g[i8];
            case 9:
                return new c[i8];
            case 10:
                return new d[i8];
            case 11:
                return new GoogleSignInAccount[i8];
            case 12:
                return new b[i8];
            case 13:
                return new E3.g[i8];
            case 14:
                return new E3.c[i8];
            case 15:
                return new e[i8];
            case 16:
                return new E[i8];
            case 17:
                return new F[i8];
            case 18:
                return new C0158b[i8];
            case 19:
                return new z[i8];
            case 20:
                return new H3.d[i8];
            case 21:
                return new H3.c[i8];
            case 22:
                return new C0101a[i8];
            case 23:
                return new C0108h[i8];
            case 24:
                return new w[i8];
            case 25:
                return new x[i8];
            case Service.BILLING_FIELD_NUMBER /* 26 */:
                return new C0102b[i8];
            case 27:
                return new G[i8];
            case Service.MONITORING_FIELD_NUMBER /* 28 */:
                return new C0109i[i8];
            default:
                return new MediaError[i8];
        }
    }
}
