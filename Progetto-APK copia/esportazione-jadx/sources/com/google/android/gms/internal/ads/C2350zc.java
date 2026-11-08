package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.api.Service;
import com.google.protobuf.DescriptorProtos$FileOptions;
import com.google.protobuf.DescriptorProtos$MethodOptions;
import java.util.ArrayList;
import okhttp3.internal.ws.WebSocketProtocol;
import org.eclipse.paho.client.mqttv3.MqttConnectOptions;
import p039f.AbstractC2987b;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.zc, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2350zc implements Parcelable.Creator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f22167a;

    public /* synthetic */ C2350zc(int i8) {
        this.f22167a = i8;
    }

    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        boolean zY = false;
        int iD = 0;
        int iD2 = 0;
        int iD3 = 0;
        int iD4 = 0;
        int iD5 = 0;
        IBinder iBinderC = null;
        byte[] bArrI = null;
        byte[] bArrI2 = null;
        String strN = null;
        byte[] bArrI3 = null;
        String strN2 = null;
        String strN3 = null;
        String strN4 = null;
        p090l3.b1 b1Var = null;
        ParcelFileDescriptor parcelFileDescriptor = null;
        ArrayList arrayListP = null;
        switch (this.f22167a) {
            case 0:
                int iH = AbstractC2987b.H(parcel);
                IBinder iBinderC2 = null;
                while (parcel.dataPosition() < iH) {
                    int i8 = parcel.readInt();
                    char c8 = (char) i8;
                    if (c8 == 1) {
                        iBinderC = AbstractC2987b.C(i8, parcel);
                    } else if (c8 != 2) {
                        AbstractC2987b.G(i8, parcel);
                    } else {
                        iBinderC2 = AbstractC2987b.C(i8, parcel);
                    }
                }
                AbstractC2987b.t(iH, parcel);
                return new C2298yc(iBinderC, iBinderC2);
            case 1:
                int iH2 = AbstractC2987b.H(parcel);
                long jE = 0;
                long jE2 = 0;
                Bundle bundleG = null;
                p090l3.b1 b1Var2 = null;
                p090l3.d1 d1Var = null;
                String strN5 = null;
                ApplicationInfo applicationInfo = null;
                PackageInfo packageInfo = null;
                String strN6 = null;
                String strN7 = null;
                String strN8 = null;
                p120p3.a aVar = null;
                Bundle bundleG2 = null;
                ArrayList arrayListP2 = null;
                Bundle bundleG3 = null;
                String strN9 = null;
                String strN10 = null;
                ArrayList arrayListP3 = null;
                String strN11 = null;
                M8 m8 = null;
                ArrayList arrayListP4 = null;
                String strN12 = null;
                String strN13 = null;
                String strN14 = null;
                Bundle bundleG4 = null;
                String strN15 = null;
                p090l3.E0 e8 = null;
                Bundle bundleG5 = null;
                String strN16 = null;
                String strN17 = null;
                String strN18 = null;
                ArrayList arrayListK = null;
                String strN19 = null;
                ArrayList arrayListP5 = null;
                ArrayList arrayListP6 = null;
                String strN20 = null;
                C1621la c1621la = null;
                String strN21 = null;
                Bundle bundleG6 = null;
                int iD6 = 0;
                int iD7 = 0;
                boolean zY2 = false;
                int iD8 = 0;
                int iD9 = 0;
                float fB = 0.0f;
                float fB2 = 0.0f;
                boolean zY3 = false;
                int iD10 = 0;
                int iD11 = 0;
                boolean zY4 = false;
                boolean zY5 = false;
                int iD12 = 0;
                boolean zY6 = false;
                boolean zY7 = false;
                int iD13 = 0;
                boolean zY8 = false;
                boolean zY9 = false;
                boolean zY10 = false;
                while (parcel.dataPosition() < iH2) {
                    int i9 = parcel.readInt();
                    switch ((char) i9) {
                        case 1:
                            iD6 = AbstractC2987b.D(i9, parcel);
                            break;
                        case 2:
                            bundleG = AbstractC2987b.g(i9, parcel);
                            break;
                        case 3:
                            b1Var2 = (p090l3.b1) AbstractC2987b.m(parcel, i9, p090l3.b1.CREATOR);
                            break;
                        case 4:
                            d1Var = (p090l3.d1) AbstractC2987b.m(parcel, i9, p090l3.d1.CREATOR);
                            break;
                        case 5:
                            strN5 = AbstractC2987b.n(i9, parcel);
                            break;
                        case 6:
                            applicationInfo = (ApplicationInfo) AbstractC2987b.m(parcel, i9, ApplicationInfo.CREATOR);
                            break;
                        case 7:
                            packageInfo = (PackageInfo) AbstractC2987b.m(parcel, i9, PackageInfo.CREATOR);
                            break;
                        case '\b':
                            strN6 = AbstractC2987b.n(i9, parcel);
                            break;
                        case '\t':
                            strN7 = AbstractC2987b.n(i9, parcel);
                            break;
                        case '\n':
                            strN8 = AbstractC2987b.n(i9, parcel);
                            break;
                        case 11:
                            aVar = (p120p3.a) AbstractC2987b.m(parcel, i9, p120p3.a.CREATOR);
                            break;
                        case '\f':
                            bundleG2 = AbstractC2987b.g(i9, parcel);
                            break;
                        case '\r':
                            iD7 = AbstractC2987b.D(i9, parcel);
                            break;
                        case 14:
                            arrayListP2 = AbstractC2987b.p(i9, parcel);
                            break;
                        case 15:
                            bundleG3 = AbstractC2987b.g(i9, parcel);
                            break;
                        case 16:
                            zY2 = AbstractC2987b.y(i9, parcel);
                            break;
                        case 17:
                        case 22:
                        case 23:
                        case 24:
                        case ' ':
                        case '&':
                        case '>':
                        default:
                            AbstractC2987b.G(i9, parcel);
                            break;
                        case 18:
                            iD8 = AbstractC2987b.D(i9, parcel);
                            break;
                        case 19:
                            iD9 = AbstractC2987b.D(i9, parcel);
                            break;
                        case 20:
                            fB = AbstractC2987b.B(i9, parcel);
                            break;
                        case 21:
                            strN9 = AbstractC2987b.n(i9, parcel);
                            break;
                        case 25:
                            jE = AbstractC2987b.E(i9, parcel);
                            break;
                        case Service.BILLING_FIELD_NUMBER /* 26 */:
                            strN10 = AbstractC2987b.n(i9, parcel);
                            break;
                        case 27:
                            arrayListP3 = AbstractC2987b.p(i9, parcel);
                            break;
                        case Service.MONITORING_FIELD_NUMBER /* 28 */:
                            strN11 = AbstractC2987b.n(i9, parcel);
                            break;
                        case Service.SYSTEM_PARAMETERS_FIELD_NUMBER /* 29 */:
                            m8 = (M8) AbstractC2987b.m(parcel, i9, M8.CREATOR);
                            break;
                        case MqttConnectOptions.CONNECTION_TIMEOUT_DEFAULT /* 30 */:
                            arrayListP4 = AbstractC2987b.p(i9, parcel);
                            break;
                        case DescriptorProtos$FileOptions.CC_ENABLE_ARENAS_FIELD_NUMBER /* 31 */:
                            jE2 = AbstractC2987b.E(i9, parcel);
                            break;
                        case '!':
                            strN12 = AbstractC2987b.n(i9, parcel);
                            break;
                        case DescriptorProtos$MethodOptions.IDEMPOTENCY_LEVEL_FIELD_NUMBER /* 34 */:
                            fB2 = AbstractC2987b.B(i9, parcel);
                            break;
                        case '#':
                            iD10 = AbstractC2987b.D(i9, parcel);
                            break;
                        case DescriptorProtos$FileOptions.OBJC_CLASS_PREFIX_FIELD_NUMBER /* 36 */:
                            iD11 = AbstractC2987b.D(i9, parcel);
                            break;
                        case '%':
                            zY4 = AbstractC2987b.y(i9, parcel);
                            break;
                        case DescriptorProtos$FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                            strN13 = AbstractC2987b.n(i9, parcel);
                            break;
                        case DescriptorProtos$FileOptions.PHP_CLASS_PREFIX_FIELD_NUMBER /* 40 */:
                            zY3 = AbstractC2987b.y(i9, parcel);
                            break;
                        case DescriptorProtos$FileOptions.PHP_NAMESPACE_FIELD_NUMBER /* 41 */:
                            strN14 = AbstractC2987b.n(i9, parcel);
                            break;
                        case DescriptorProtos$FileOptions.PHP_GENERIC_SERVICES_FIELD_NUMBER /* 42 */:
                            zY5 = AbstractC2987b.y(i9, parcel);
                            break;
                        case '+':
                            iD12 = AbstractC2987b.D(i9, parcel);
                            break;
                        case DescriptorProtos$FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                            bundleG4 = AbstractC2987b.g(i9, parcel);
                            break;
                        case DescriptorProtos$FileOptions.RUBY_PACKAGE_FIELD_NUMBER /* 45 */:
                            strN15 = AbstractC2987b.n(i9, parcel);
                            break;
                        case '.':
                            e8 = (p090l3.E0) AbstractC2987b.m(parcel, i9, p090l3.E0.CREATOR);
                            break;
                        case '/':
                            zY6 = AbstractC2987b.y(i9, parcel);
                            break;
                        case '0':
                            bundleG5 = AbstractC2987b.g(i9, parcel);
                            break;
                        case '1':
                            strN16 = AbstractC2987b.n(i9, parcel);
                            break;
                        case '2':
                            strN17 = AbstractC2987b.n(i9, parcel);
                            break;
                        case '3':
                            strN18 = AbstractC2987b.n(i9, parcel);
                            break;
                        case '4':
                            zY7 = AbstractC2987b.y(i9, parcel);
                            break;
                        case '5':
                            arrayListK = AbstractC2987b.k(i9, parcel);
                            break;
                        case '6':
                            strN19 = AbstractC2987b.n(i9, parcel);
                            break;
                        case '7':
                            arrayListP5 = AbstractC2987b.p(i9, parcel);
                            break;
                        case '8':
                            iD13 = AbstractC2987b.D(i9, parcel);
                            break;
                        case '9':
                            zY8 = AbstractC2987b.y(i9, parcel);
                            break;
                        case ':':
                            zY9 = AbstractC2987b.y(i9, parcel);
                            break;
                        case ';':
                            zY10 = AbstractC2987b.y(i9, parcel);
                            break;
                        case MqttConnectOptions.KEEP_ALIVE_INTERVAL_DEFAULT /* 60 */:
                            arrayListP6 = AbstractC2987b.p(i9, parcel);
                            break;
                        case '=':
                            strN20 = AbstractC2987b.n(i9, parcel);
                            break;
                        case '?':
                            c1621la = (C1621la) AbstractC2987b.m(parcel, i9, C1621la.CREATOR);
                            break;
                        case WebSocketProtocol.B0_FLAG_RSV1 /* 64 */:
                            strN21 = AbstractC2987b.n(i9, parcel);
                            break;
                        case 'A':
                            bundleG6 = AbstractC2987b.g(i9, parcel);
                            break;
                    }
                }
                AbstractC2987b.t(iH2, parcel);
                return new C0712Ec(iD6, bundleG, b1Var2, d1Var, strN5, applicationInfo, packageInfo, strN6, strN7, strN8, aVar, bundleG2, iD7, arrayListP2, bundleG3, zY2, iD8, iD9, fB, strN9, jE, strN10, arrayListP3, strN11, m8, arrayListP4, jE2, strN12, fB2, zY3, iD10, iD11, zY4, strN13, strN14, zY5, iD12, bundleG4, strN15, e8, zY6, bundleG5, strN16, strN17, strN18, zY7, arrayListK, strN19, arrayListP5, iD13, zY8, zY9, zY10, arrayListP6, strN20, c1621la, strN21, bundleG6);
            case 2:
                int iH3 = AbstractC2987b.H(parcel);
                ApplicationInfo applicationInfo2 = null;
                String strN22 = null;
                PackageInfo packageInfo2 = null;
                String strN23 = null;
                String strN24 = null;
                ArrayList arrayListP7 = null;
                int iD14 = 0;
                boolean zY11 = false;
                boolean zY12 = false;
                while (parcel.dataPosition() < iH3) {
                    int i10 = parcel.readInt();
                    switch ((char) i10) {
                        case 1:
                            applicationInfo2 = (ApplicationInfo) AbstractC2987b.m(parcel, i10, ApplicationInfo.CREATOR);
                            break;
                        case 2:
                            strN22 = AbstractC2987b.n(i10, parcel);
                            break;
                        case 3:
                            packageInfo2 = (PackageInfo) AbstractC2987b.m(parcel, i10, PackageInfo.CREATOR);
                            break;
                        case 4:
                            strN23 = AbstractC2987b.n(i10, parcel);
                            break;
                        case 5:
                            iD14 = AbstractC2987b.D(i10, parcel);
                            break;
                        case 6:
                            strN24 = AbstractC2987b.n(i10, parcel);
                            break;
                        case 7:
                            arrayListP7 = AbstractC2987b.p(i10, parcel);
                            break;
                        case '\b':
                            zY11 = AbstractC2987b.y(i10, parcel);
                            break;
                        case '\t':
                            zY12 = AbstractC2987b.y(i10, parcel);
                            break;
                        default:
                            AbstractC2987b.G(i10, parcel);
                            break;
                    }
                }
                AbstractC2987b.t(iH3, parcel);
                return new C0757Hc(applicationInfo2, strN22, packageInfo2, strN23, iD14, strN24, arrayListP7, zY11, zY12);
            case 3:
                int iH4 = AbstractC2987b.H(parcel);
                while (parcel.dataPosition() < iH4) {
                    int i11 = parcel.readInt();
                    char c9 = (char) i11;
                    if (c9 == 2) {
                        zY = AbstractC2987b.y(i11, parcel);
                    } else if (c9 != 3) {
                        AbstractC2987b.G(i11, parcel);
                    } else {
                        arrayListP = AbstractC2987b.p(i11, parcel);
                    }
                }
                AbstractC2987b.t(iH4, parcel);
                return new C0772Ic(arrayListP, zY);
            case 4:
                int iH5 = AbstractC2987b.H(parcel);
                String strN25 = null;
                Bundle bundleG7 = null;
                byte[] bArrI4 = null;
                String strN26 = null;
                String strN27 = null;
                int iD15 = 0;
                boolean zY13 = false;
                while (parcel.dataPosition() < iH5) {
                    int i12 = parcel.readInt();
                    switch ((char) i12) {
                        case 1:
                            strN25 = AbstractC2987b.n(i12, parcel);
                            break;
                        case 2:
                            iD15 = AbstractC2987b.D(i12, parcel);
                            break;
                        case 3:
                            bundleG7 = AbstractC2987b.g(i12, parcel);
                            break;
                        case 4:
                            bArrI4 = AbstractC2987b.i(i12, parcel);
                            break;
                        case 5:
                            zY13 = AbstractC2987b.y(i12, parcel);
                            break;
                        case 6:
                            strN26 = AbstractC2987b.n(i12, parcel);
                            break;
                        case 7:
                            strN27 = AbstractC2987b.n(i12, parcel);
                            break;
                        default:
                            AbstractC2987b.G(i12, parcel);
                            break;
                    }
                }
                AbstractC2987b.t(iH5, parcel);
                return new C0787Jc(strN25, iD15, bundleG7, bArrI4, zY13, strN26, strN27);
            case 5:
                int iH6 = AbstractC2987b.H(parcel);
                while (parcel.dataPosition() < iH6) {
                    int i13 = parcel.readInt();
                    if (((char) i13) != 2) {
                        AbstractC2987b.G(i13, parcel);
                    } else {
                        parcelFileDescriptor = (ParcelFileDescriptor) AbstractC2987b.m(parcel, i13, ParcelFileDescriptor.CREATOR);
                    }
                }
                AbstractC2987b.t(iH6, parcel);
                return new C0945Uc(parcelFileDescriptor);
            case 6:
                int iH7 = AbstractC2987b.H(parcel);
                Bundle bundleG8 = null;
                p120p3.a aVar2 = null;
                ApplicationInfo applicationInfo3 = null;
                String strN28 = null;
                ArrayList arrayListP8 = null;
                PackageInfo packageInfo3 = null;
                String strN29 = null;
                String strN30 = null;
                C1799ow c1799ow = null;
                String strN31 = null;
                Bundle bundleG9 = null;
                boolean zY14 = false;
                boolean zY15 = false;
                while (parcel.dataPosition() < iH7) {
                    int i14 = parcel.readInt();
                    switch ((char) i14) {
                        case 1:
                            bundleG8 = AbstractC2987b.g(i14, parcel);
                            break;
                        case 2:
                            aVar2 = (p120p3.a) AbstractC2987b.m(parcel, i14, p120p3.a.CREATOR);
                            break;
                        case 3:
                            applicationInfo3 = (ApplicationInfo) AbstractC2987b.m(parcel, i14, ApplicationInfo.CREATOR);
                            break;
                        case 4:
                            strN28 = AbstractC2987b.n(i14, parcel);
                            break;
                        case 5:
                            arrayListP8 = AbstractC2987b.p(i14, parcel);
                            break;
                        case 6:
                            packageInfo3 = (PackageInfo) AbstractC2987b.m(parcel, i14, PackageInfo.CREATOR);
                            break;
                        case 7:
                            strN29 = AbstractC2987b.n(i14, parcel);
                            break;
                        case '\b':
                        default:
                            AbstractC2987b.G(i14, parcel);
                            break;
                        case '\t':
                            strN30 = AbstractC2987b.n(i14, parcel);
                            break;
                        case '\n':
                            c1799ow = (C1799ow) AbstractC2987b.m(parcel, i14, C1799ow.CREATOR);
                            break;
                        case 11:
                            strN31 = AbstractC2987b.n(i14, parcel);
                            break;
                        case '\f':
                            zY14 = AbstractC2987b.y(i14, parcel);
                            break;
                        case '\r':
                            zY15 = AbstractC2987b.y(i14, parcel);
                            break;
                        case 14:
                            bundleG9 = AbstractC2987b.g(i14, parcel);
                            break;
                    }
                }
                AbstractC2987b.t(iH7, parcel);
                return new C0973Wc(bundleG8, aVar2, applicationInfo3, strN28, arrayListP8, packageInfo3, strN29, strN30, c1799ow, strN31, zY14, zY15, bundleG9);
            case 7:
                int iH8 = AbstractC2987b.H(parcel);
                String strN32 = null;
                while (parcel.dataPosition() < iH8) {
                    int i15 = parcel.readInt();
                    char c10 = (char) i15;
                    if (c10 == 2) {
                        b1Var = (p090l3.b1) AbstractC2987b.m(parcel, i15, p090l3.b1.CREATOR);
                    } else if (c10 != 3) {
                        AbstractC2987b.G(i15, parcel);
                    } else {
                        strN32 = AbstractC2987b.n(i15, parcel);
                    }
                }
                AbstractC2987b.t(iH8, parcel);
                return new C1418hd(b1Var, strN32);
            case 8:
                int iH9 = AbstractC2987b.H(parcel);
                while (parcel.dataPosition() < iH9) {
                    int i16 = parcel.readInt();
                    char c11 = (char) i16;
                    if (c11 == 2) {
                        strN4 = AbstractC2987b.n(i16, parcel);
                    } else if (c11 != 3) {
                        AbstractC2987b.G(i16, parcel);
                    } else {
                        iD5 = AbstractC2987b.D(i16, parcel);
                    }
                }
                AbstractC2987b.t(iH9, parcel);
                return new C1624ld(strN4, iD5);
            case 9:
                int iH10 = AbstractC2987b.H(parcel);
                String strN33 = null;
                while (parcel.dataPosition() < iH10) {
                    int i17 = parcel.readInt();
                    char c12 = (char) i17;
                    if (c12 == 1) {
                        strN3 = AbstractC2987b.n(i17, parcel);
                    } else if (c12 != 2) {
                        AbstractC2987b.G(i17, parcel);
                    } else {
                        strN33 = AbstractC2987b.n(i17, parcel);
                    }
                }
                AbstractC2987b.t(iH10, parcel);
                return new C0668Bd(strN3, strN33);
            case 10:
                int iH11 = AbstractC2987b.H(parcel);
                String strN34 = null;
                String strN35 = null;
                ArrayList arrayListP9 = null;
                ArrayList arrayListP10 = null;
                boolean zY16 = false;
                boolean zY17 = false;
                boolean zY18 = false;
                boolean zY19 = false;
                while (parcel.dataPosition() < iH11) {
                    int i18 = parcel.readInt();
                    switch ((char) i18) {
                        case 2:
                            strN34 = AbstractC2987b.n(i18, parcel);
                            break;
                        case 3:
                            strN35 = AbstractC2987b.n(i18, parcel);
                            break;
                        case 4:
                            zY16 = AbstractC2987b.y(i18, parcel);
                            break;
                        case 5:
                            zY17 = AbstractC2987b.y(i18, parcel);
                            break;
                        case 6:
                            arrayListP9 = AbstractC2987b.p(i18, parcel);
                            break;
                        case 7:
                            zY18 = AbstractC2987b.y(i18, parcel);
                            break;
                        case '\b':
                            zY19 = AbstractC2987b.y(i18, parcel);
                            break;
                        case '\t':
                            arrayListP10 = AbstractC2987b.p(i18, parcel);
                            break;
                        default:
                            AbstractC2987b.G(i18, parcel);
                            break;
                    }
                }
                AbstractC2987b.t(iH11, parcel);
                return new C0743Gd(strN34, strN35, zY16, zY17, arrayListP9, zY18, zY19, arrayListP10);
            case 11:
                int iH12 = AbstractC2987b.H(parcel);
                String strN36 = null;
                p090l3.d1 d1Var2 = null;
                p090l3.b1 b1Var3 = null;
                while (parcel.dataPosition() < iH12) {
                    int i19 = parcel.readInt();
                    char c13 = (char) i19;
                    if (c13 == 1) {
                        strN2 = AbstractC2987b.n(i19, parcel);
                    } else if (c13 == 2) {
                        strN36 = AbstractC2987b.n(i19, parcel);
                    } else if (c13 == 3) {
                        d1Var2 = (p090l3.d1) AbstractC2987b.m(parcel, i19, p090l3.d1.CREATOR);
                    } else if (c13 != 4) {
                        AbstractC2987b.G(i19, parcel);
                    } else {
                        b1Var3 = (p090l3.b1) AbstractC2987b.m(parcel, i19, p090l3.b1.CREATOR);
                    }
                }
                AbstractC2987b.t(iH12, parcel);
                return new C1212de(strN2, strN36, d1Var2, b1Var3);
            case 12:
                return new Gu(parcel);
            case 13:
                return new Vu(parcel);
            case 14:
                return new C2213wv(parcel);
            case 15:
                int iH13 = AbstractC2987b.H(parcel);
                String strN37 = null;
                int iD16 = 0;
                int iD17 = 0;
                int iD18 = 0;
                int iD19 = 0;
                int iD20 = 0;
                int iD21 = 0;
                while (parcel.dataPosition() < iH13) {
                    int i20 = parcel.readInt();
                    switch ((char) i20) {
                        case 1:
                            iD16 = AbstractC2987b.D(i20, parcel);
                            break;
                        case 2:
                            iD17 = AbstractC2987b.D(i20, parcel);
                            break;
                        case 3:
                            iD18 = AbstractC2987b.D(i20, parcel);
                            break;
                        case 4:
                            iD19 = AbstractC2987b.D(i20, parcel);
                            break;
                        case 5:
                            strN37 = AbstractC2987b.n(i20, parcel);
                            break;
                        case 6:
                            iD20 = AbstractC2987b.D(i20, parcel);
                            break;
                        case 7:
                            iD21 = AbstractC2987b.D(i20, parcel);
                            break;
                        default:
                            AbstractC2987b.G(i20, parcel);
                            break;
                    }
                }
                AbstractC2987b.t(iH13, parcel);
                return new C1799ow(iD16, iD17, iD18, iD19, iD20, iD21, strN37);
            case 16:
                int iH14 = AbstractC2987b.H(parcel);
                while (parcel.dataPosition() < iH14) {
                    int i21 = parcel.readInt();
                    char c14 = (char) i21;
                    if (c14 == 1) {
                        iD4 = AbstractC2987b.D(i21, parcel);
                    } else if (c14 != 2) {
                        AbstractC2987b.G(i21, parcel);
                    } else {
                        bArrI3 = AbstractC2987b.i(i21, parcel);
                    }
                }
                AbstractC2987b.t(iH14, parcel);
                return new C2216wy(iD4, bArrI3);
            case 17:
                int iH15 = AbstractC2987b.H(parcel);
                String strN38 = null;
                while (parcel.dataPosition() < iH15) {
                    int i22 = parcel.readInt();
                    char c15 = (char) i22;
                    if (c15 == 1) {
                        iD3 = AbstractC2987b.D(i22, parcel);
                    } else if (c15 == 2) {
                        strN = AbstractC2987b.n(i22, parcel);
                    } else if (c15 != 3) {
                        AbstractC2987b.G(i22, parcel);
                    } else {
                        strN38 = AbstractC2987b.n(i22, parcel);
                    }
                }
                AbstractC2987b.t(iH15, parcel);
                return new C2320yy(iD3, strN, strN38);
            case 18:
                int iH16 = AbstractC2987b.H(parcel);
                while (parcel.dataPosition() < iH16) {
                    int i23 = parcel.readInt();
                    char c16 = (char) i23;
                    if (c16 == 1) {
                        iD2 = AbstractC2987b.D(i23, parcel);
                    } else if (c16 != 2) {
                        AbstractC2987b.G(i23, parcel);
                    } else {
                        bArrI2 = AbstractC2987b.i(i23, parcel);
                    }
                }
                AbstractC2987b.t(iH16, parcel);
                return new C2372zy(iD2, bArrI2);
            case 19:
                int iH17 = AbstractC2987b.H(parcel);
                String strN39 = null;
                String strN40 = null;
                int iD22 = 0;
                int iD23 = 0;
                int iD24 = 0;
                while (parcel.dataPosition() < iH17) {
                    int i24 = parcel.readInt();
                    char c17 = (char) i24;
                    if (c17 == 1) {
                        iD22 = AbstractC2987b.D(i24, parcel);
                    } else if (c17 == 2) {
                        iD23 = AbstractC2987b.D(i24, parcel);
                    } else if (c17 == 3) {
                        strN39 = AbstractC2987b.n(i24, parcel);
                    } else if (c17 == 4) {
                        strN40 = AbstractC2987b.n(i24, parcel);
                    } else if (c17 != 5) {
                        AbstractC2987b.G(i24, parcel);
                    } else {
                        iD24 = AbstractC2987b.D(i24, parcel);
                    }
                }
                AbstractC2987b.t(iH17, parcel);
                return new By(iD22, iD23, iD24, strN39, strN40);
            case 20:
                int iH18 = AbstractC2987b.H(parcel);
                int iD25 = 0;
                while (parcel.dataPosition() < iH18) {
                    int i25 = parcel.readInt();
                    char c18 = (char) i25;
                    if (c18 == 1) {
                        iD = AbstractC2987b.D(i25, parcel);
                    } else if (c18 == 2) {
                        bArrI = AbstractC2987b.i(i25, parcel);
                    } else if (c18 != 3) {
                        AbstractC2987b.G(i25, parcel);
                    } else {
                        iD25 = AbstractC2987b.D(i25, parcel);
                    }
                }
                AbstractC2987b.t(iH18, parcel);
                return new Cy(iD, bArrI, iD25);
            case 21:
                return new C1672mO(parcel);
            default:
                return new C1155cO(parcel);
        }
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i8) {
        switch (this.f22167a) {
            case 0:
                return new C2298yc[i8];
            case 1:
                return new C0712Ec[i8];
            case 2:
                return new C0757Hc[i8];
            case 3:
                return new C0772Ic[i8];
            case 4:
                return new C0787Jc[i8];
            case 5:
                return new C0945Uc[i8];
            case 6:
                return new C0973Wc[i8];
            case 7:
                return new C1418hd[i8];
            case 8:
                return new C1624ld[i8];
            case 9:
                return new C0668Bd[i8];
            case 10:
                return new C0743Gd[i8];
            case 11:
                return new C1212de[i8];
            case 12:
                return new Gu[i8];
            case 13:
                return new Vu[i8];
            case 14:
                return new C2213wv[i8];
            case 15:
                return new C1799ow[i8];
            case 16:
                return new C2216wy[i8];
            case 17:
                return new C2320yy[i8];
            case 18:
                return new C2372zy[i8];
            case 19:
                return new By[i8];
            case 20:
                return new Cy[i8];
            case 21:
                return new C1672mO[i8];
            default:
                return new C1155cO[i8];
        }
    }
}
