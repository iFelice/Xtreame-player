package C3;

import android.accounts.Account;
import android.app.PendingIntent;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaTrack;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.BinderWrapper;
import com.google.android.gms.common.internal.C0634j;
import com.google.android.gms.common.internal.C0635k;
import com.google.android.gms.common.internal.C0641q;
import com.google.android.gms.common.internal.C0642s;
import com.google.android.gms.common.internal.C0643t;
import com.google.android.gms.common.internal.S;
import com.google.api.Service;
import java.util.ArrayList;
import p039f.AbstractC2987b;

/* JADX INFO: loaded from: classes.dex */
public final class H implements Parcelable.Creator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1466a;

    public /* synthetic */ H(int i8) {
        this.f1466a = i8;
    }

    public static void a(C0635k c0635k, Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        int i9 = c0635k.f11861G;
        AbstractC2987b.v0(parcel, 1, 4);
        parcel.writeInt(i9);
        AbstractC2987b.v0(parcel, 2, 4);
        parcel.writeInt(c0635k.f11862H);
        AbstractC2987b.v0(parcel, 3, 4);
        parcel.writeInt(c0635k.f11863I);
        AbstractC2987b.Q(parcel, 4, c0635k.f11864J);
        AbstractC2987b.L(parcel, 5, c0635k.f11865K);
        AbstractC2987b.T(parcel, 6, c0635k.f11866L, i8);
        AbstractC2987b.J(parcel, 7, c0635k.f11867M);
        AbstractC2987b.P(parcel, 8, c0635k.f11868N, i8);
        AbstractC2987b.T(parcel, 10, c0635k.f11869O, i8);
        AbstractC2987b.T(parcel, 11, c0635k.f11870P, i8);
        AbstractC2987b.v0(parcel, 12, 4);
        parcel.writeInt(c0635k.f11871Q ? 1 : 0);
        AbstractC2987b.v0(parcel, 13, 4);
        parcel.writeInt(c0635k.f11872R);
        boolean z7 = c0635k.f11873S;
        AbstractC2987b.v0(parcel, 14, 4);
        parcel.writeInt(z7 ? 1 : 0);
        AbstractC2987b.Q(parcel, 15, c0635k.f11874T);
        AbstractC2987b.p0(iX, parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        double dA = 0.0d;
        long jE = 0;
        int iD = 0;
        String strN = null;
        String strN2 = null;
        PendingIntent pendingIntent = null;
        Bundle bundleG = null;
        Account account = null;
        ArrayList arrayListR = null;
        Uri uri = null;
        String strN3 = null;
        String strN4 = null;
        String strN5 = null;
        k kVar = null;
        String strN6 = null;
        String strN7 = null;
        String strN8 = null;
        ArrayList arrayListR2 = null;
        switch (this.f1466a) {
            case 0:
                int iH = AbstractC2987b.H(parcel);
                long jE2 = 0;
                long jE3 = 0;
                String strN9 = null;
                String strN10 = null;
                l lVar = null;
                ArrayList arrayListR3 = null;
                t tVar = null;
                String strN11 = null;
                ArrayList arrayListR4 = null;
                ArrayList arrayListR5 = null;
                String strN12 = null;
                u uVar = null;
                String strN13 = null;
                String strN14 = null;
                String strN15 = null;
                String strN16 = null;
                int iD2 = 0;
                while (parcel.dataPosition() < iH) {
                    int i8 = parcel.readInt();
                    switch ((char) i8) {
                        case 2:
                            strN9 = AbstractC2987b.n(i8, parcel);
                            break;
                        case 3:
                            iD2 = AbstractC2987b.D(i8, parcel);
                            break;
                        case 4:
                            strN10 = AbstractC2987b.n(i8, parcel);
                            break;
                        case 5:
                            lVar = (l) AbstractC2987b.m(parcel, i8, l.CREATOR);
                            break;
                        case 6:
                            jE2 = AbstractC2987b.E(i8, parcel);
                            break;
                        case 7:
                            arrayListR3 = AbstractC2987b.r(parcel, i8, MediaTrack.CREATOR);
                            break;
                        case '\b':
                            tVar = (t) AbstractC2987b.m(parcel, i8, t.CREATOR);
                            break;
                        case '\t':
                            strN11 = AbstractC2987b.n(i8, parcel);
                            break;
                        case '\n':
                            arrayListR4 = AbstractC2987b.r(parcel, i8, C0102b.CREATOR);
                            break;
                        case 11:
                            arrayListR5 = AbstractC2987b.r(parcel, i8, C0101a.CREATOR);
                            break;
                        case '\f':
                            strN12 = AbstractC2987b.n(i8, parcel);
                            break;
                        case '\r':
                            uVar = (u) AbstractC2987b.m(parcel, i8, u.CREATOR);
                            break;
                        case 14:
                            jE3 = AbstractC2987b.E(i8, parcel);
                            break;
                        case 15:
                            strN13 = AbstractC2987b.n(i8, parcel);
                            break;
                        case 16:
                            strN14 = AbstractC2987b.n(i8, parcel);
                            break;
                        case 17:
                            strN15 = AbstractC2987b.n(i8, parcel);
                            break;
                        case 18:
                            strN16 = AbstractC2987b.n(i8, parcel);
                            break;
                        default:
                            AbstractC2987b.G(i8, parcel);
                            break;
                    }
                }
                AbstractC2987b.t(iH, parcel);
                return new MediaInfo(strN9, iD2, strN10, lVar, jE2, arrayListR3, tVar, strN11, arrayListR4, arrayListR5, strN12, uVar, jE3, strN13, strN14, strN15, strN16);
            case 1:
                int iH2 = AbstractC2987b.H(parcel);
                long jE4 = 0;
                long jE5 = 0;
                boolean zY = false;
                boolean zY2 = false;
                while (parcel.dataPosition() < iH2) {
                    int i9 = parcel.readInt();
                    char c8 = (char) i9;
                    if (c8 == 2) {
                        jE4 = AbstractC2987b.E(i9, parcel);
                    } else if (c8 == 3) {
                        jE5 = AbstractC2987b.E(i9, parcel);
                    } else if (c8 == 4) {
                        zY = AbstractC2987b.y(i9, parcel);
                    } else if (c8 != 5) {
                        AbstractC2987b.G(i9, parcel);
                    } else {
                        zY2 = AbstractC2987b.y(i9, parcel);
                    }
                }
                AbstractC2987b.t(iH2, parcel);
                return new C0110j(jE4, jE5, zY, zY2);
            case 2:
                int iH3 = AbstractC2987b.H(parcel);
                long jE6 = 0;
                long jE7 = 0;
                long jE8 = 0;
                String strN17 = null;
                String strN18 = null;
                while (parcel.dataPosition() < iH3) {
                    int i10 = parcel.readInt();
                    char c9 = (char) i10;
                    if (c9 == 2) {
                        jE6 = AbstractC2987b.E(i10, parcel);
                    } else if (c9 == 3) {
                        jE7 = AbstractC2987b.E(i10, parcel);
                    } else if (c9 == 4) {
                        strN17 = AbstractC2987b.n(i10, parcel);
                    } else if (c9 == 5) {
                        strN18 = AbstractC2987b.n(i10, parcel);
                    } else if (c9 != 6) {
                        AbstractC2987b.G(i10, parcel);
                    } else {
                        jE8 = AbstractC2987b.E(i10, parcel);
                    }
                }
                AbstractC2987b.t(iH3, parcel);
                return new C0103c(jE6, jE7, strN17, strN18, jE8);
            case 3:
                int iH4 = AbstractC2987b.H(parcel);
                double dA2 = 0.0d;
                long jE9 = 0;
                long jE10 = 0;
                MediaInfo mediaInfo = null;
                n nVar = null;
                Boolean boolZ = null;
                long[] jArrL = null;
                String strN19 = null;
                String strN20 = null;
                String strN21 = null;
                String strN22 = null;
                while (parcel.dataPosition() < iH4) {
                    int i11 = parcel.readInt();
                    switch ((char) i11) {
                        case 2:
                            mediaInfo = (MediaInfo) AbstractC2987b.m(parcel, i11, MediaInfo.CREATOR);
                            break;
                        case 3:
                            nVar = (n) AbstractC2987b.m(parcel, i11, n.CREATOR);
                            break;
                        case 4:
                            boolZ = AbstractC2987b.z(i11, parcel);
                            break;
                        case 5:
                            jE9 = AbstractC2987b.E(i11, parcel);
                            break;
                        case 6:
                            dA2 = AbstractC2987b.A(i11, parcel);
                            break;
                        case 7:
                            jArrL = AbstractC2987b.l(i11, parcel);
                            break;
                        case '\b':
                            strN = AbstractC2987b.n(i11, parcel);
                            break;
                        case '\t':
                            strN19 = AbstractC2987b.n(i11, parcel);
                            break;
                        case '\n':
                            strN20 = AbstractC2987b.n(i11, parcel);
                            break;
                        case 11:
                            strN21 = AbstractC2987b.n(i11, parcel);
                            break;
                        case '\f':
                            strN22 = AbstractC2987b.n(i11, parcel);
                            break;
                        case '\r':
                            jE10 = AbstractC2987b.E(i11, parcel);
                            break;
                        default:
                            AbstractC2987b.G(i11, parcel);
                            break;
                    }
                }
                AbstractC2987b.t(iH4, parcel);
                return new k(mediaInfo, nVar, boolZ, jE9, dA2, jArrL, H3.a.a(strN), strN19, strN20, strN21, strN22, jE10);
            case 4:
                int iH5 = AbstractC2987b.H(parcel);
                Bundle bundleG2 = null;
                while (parcel.dataPosition() < iH5) {
                    int i12 = parcel.readInt();
                    char c10 = (char) i12;
                    if (c10 == 2) {
                        arrayListR2 = AbstractC2987b.r(parcel, i12, L3.a.CREATOR);
                    } else if (c10 == 3) {
                        bundleG2 = AbstractC2987b.g(i12, parcel);
                    } else if (c10 != 4) {
                        AbstractC2987b.G(i12, parcel);
                    } else {
                        iD = AbstractC2987b.D(i12, parcel);
                    }
                }
                AbstractC2987b.t(iH5, parcel);
                return new l(arrayListR2, bundleG2, iD);
            case 5:
                int iH6 = AbstractC2987b.H(parcel);
                ArrayList arrayListR6 = null;
                ArrayList arrayListR7 = null;
                while (parcel.dataPosition() < iH6) {
                    int i13 = parcel.readInt();
                    char c11 = (char) i13;
                    if (c11 == 2) {
                        iD = AbstractC2987b.D(i13, parcel);
                    } else if (c11 == 3) {
                        strN8 = AbstractC2987b.n(i13, parcel);
                    } else if (c11 == 4) {
                        arrayListR6 = AbstractC2987b.r(parcel, i13, l.CREATOR);
                    } else if (c11 == 5) {
                        arrayListR7 = AbstractC2987b.r(parcel, i13, L3.a.CREATOR);
                    } else if (c11 != 6) {
                        AbstractC2987b.G(i13, parcel);
                    } else {
                        dA = AbstractC2987b.A(i13, parcel);
                    }
                }
                AbstractC2987b.t(iH6, parcel);
                m mVar = new m();
                mVar.f1541G = iD;
                mVar.f1542H = strN8;
                mVar.f1543I = arrayListR6;
                mVar.f1544J = arrayListR7;
                mVar.f1545K = dA;
                return mVar;
            case 6:
                int iH7 = AbstractC2987b.H(parcel);
                String strN23 = null;
                String strN24 = null;
                m mVar2 = null;
                ArrayList arrayListR8 = null;
                int iD3 = 0;
                int iD4 = 0;
                boolean zY3 = false;
                while (parcel.dataPosition() < iH7) {
                    int i14 = parcel.readInt();
                    switch ((char) i14) {
                        case 2:
                            strN7 = AbstractC2987b.n(i14, parcel);
                            break;
                        case 3:
                            strN23 = AbstractC2987b.n(i14, parcel);
                            break;
                        case 4:
                            iD = AbstractC2987b.D(i14, parcel);
                            break;
                        case 5:
                            strN24 = AbstractC2987b.n(i14, parcel);
                            break;
                        case 6:
                            mVar2 = (m) AbstractC2987b.m(parcel, i14, m.CREATOR);
                            break;
                        case 7:
                            iD3 = AbstractC2987b.D(i14, parcel);
                            break;
                        case '\b':
                            arrayListR8 = AbstractC2987b.r(parcel, i14, p.CREATOR);
                            break;
                        case '\t':
                            iD4 = AbstractC2987b.D(i14, parcel);
                            break;
                        case '\n':
                            jE = AbstractC2987b.E(i14, parcel);
                            break;
                        case 11:
                            zY3 = AbstractC2987b.y(i14, parcel);
                            break;
                        default:
                            AbstractC2987b.G(i14, parcel);
                            break;
                    }
                }
                AbstractC2987b.t(iH7, parcel);
                n nVar2 = new n();
                nVar2.f1546G = strN7;
                nVar2.f1547H = strN23;
                nVar2.f1548I = iD;
                nVar2.f1549J = strN24;
                nVar2.f1550K = mVar2;
                nVar2.f1551L = iD3;
                nVar2.f1552M = arrayListR8;
                nVar2.f1553N = iD4;
                nVar2.f1554O = jE;
                nVar2.f1555P = zY3;
                return nVar2;
            case 7:
                int iH8 = AbstractC2987b.H(parcel);
                double dA3 = 0.0d;
                double dA4 = 0.0d;
                double dA5 = 0.0d;
                MediaInfo mediaInfo2 = null;
                long[] jArrL2 = null;
                String strN25 = null;
                int iD5 = 0;
                boolean zY4 = false;
                while (parcel.dataPosition() < iH8) {
                    int i15 = parcel.readInt();
                    switch ((char) i15) {
                        case 2:
                            mediaInfo2 = (MediaInfo) AbstractC2987b.m(parcel, i15, MediaInfo.CREATOR);
                            break;
                        case 3:
                            iD5 = AbstractC2987b.D(i15, parcel);
                            break;
                        case 4:
                            zY4 = AbstractC2987b.y(i15, parcel);
                            break;
                        case 5:
                            dA3 = AbstractC2987b.A(i15, parcel);
                            break;
                        case 6:
                            dA4 = AbstractC2987b.A(i15, parcel);
                            break;
                        case 7:
                            dA5 = AbstractC2987b.A(i15, parcel);
                            break;
                        case '\b':
                            jArrL2 = AbstractC2987b.l(i15, parcel);
                            break;
                        case '\t':
                            strN25 = AbstractC2987b.n(i15, parcel);
                            break;
                        default:
                            AbstractC2987b.G(i15, parcel);
                            break;
                    }
                }
                AbstractC2987b.t(iH8, parcel);
                return new p(mediaInfo2, iD5, zY4, dA3, dA4, dA5, jArrL2, strN25);
            case 8:
                int iH9 = AbstractC2987b.H(parcel);
                double dA6 = 0.0d;
                double dA7 = 0.0d;
                long jE11 = 0;
                long jE12 = 0;
                long jE13 = 0;
                MediaInfo mediaInfo3 = null;
                long[] jArrL3 = null;
                String strN26 = null;
                ArrayList arrayListR9 = null;
                C0103c c0103c = null;
                v vVar = null;
                C0110j c0110j = null;
                n nVar3 = null;
                int iD6 = 0;
                int iD7 = 0;
                int iD8 = 0;
                boolean zY5 = false;
                int iD9 = 0;
                int iD10 = 0;
                int iD11 = 0;
                boolean zY6 = false;
                while (parcel.dataPosition() < iH9) {
                    int i16 = parcel.readInt();
                    switch ((char) i16) {
                        case 2:
                            mediaInfo3 = (MediaInfo) AbstractC2987b.m(parcel, i16, MediaInfo.CREATOR);
                            break;
                        case 3:
                            jE11 = AbstractC2987b.E(i16, parcel);
                            break;
                        case 4:
                            iD6 = AbstractC2987b.D(i16, parcel);
                            break;
                        case 5:
                            dA6 = AbstractC2987b.A(i16, parcel);
                            break;
                        case 6:
                            iD7 = AbstractC2987b.D(i16, parcel);
                            break;
                        case 7:
                            iD8 = AbstractC2987b.D(i16, parcel);
                            break;
                        case '\b':
                            jE12 = AbstractC2987b.E(i16, parcel);
                            break;
                        case '\t':
                            jE13 = AbstractC2987b.E(i16, parcel);
                            break;
                        case '\n':
                            dA7 = AbstractC2987b.A(i16, parcel);
                            break;
                        case 11:
                            zY5 = AbstractC2987b.y(i16, parcel);
                            break;
                        case '\f':
                            jArrL3 = AbstractC2987b.l(i16, parcel);
                            break;
                        case '\r':
                            iD9 = AbstractC2987b.D(i16, parcel);
                            break;
                        case 14:
                            iD10 = AbstractC2987b.D(i16, parcel);
                            break;
                        case 15:
                            strN26 = AbstractC2987b.n(i16, parcel);
                            break;
                        case 16:
                            iD11 = AbstractC2987b.D(i16, parcel);
                            break;
                        case 17:
                            arrayListR9 = AbstractC2987b.r(parcel, i16, p.CREATOR);
                            break;
                        case 18:
                            zY6 = AbstractC2987b.y(i16, parcel);
                            break;
                        case 19:
                            c0103c = (C0103c) AbstractC2987b.m(parcel, i16, C0103c.CREATOR);
                            break;
                        case 20:
                            vVar = (v) AbstractC2987b.m(parcel, i16, v.CREATOR);
                            break;
                        case 21:
                            c0110j = (C0110j) AbstractC2987b.m(parcel, i16, C0110j.CREATOR);
                            break;
                        case 22:
                            nVar3 = (n) AbstractC2987b.m(parcel, i16, n.CREATOR);
                            break;
                        default:
                            AbstractC2987b.G(i16, parcel);
                            break;
                    }
                }
                AbstractC2987b.t(iH9, parcel);
                return new r(mediaInfo3, jE11, iD6, dA6, iD7, iD8, jE12, jE13, dA7, zY5, jArrL3, iD9, iD10, strN26, iD11, arrayListR9, zY6, c0103c, vVar, c0110j, nVar3);
            case 9:
                int iH10 = AbstractC2987b.H(parcel);
                long jE14 = 0;
                String strN27 = null;
                String strN28 = null;
                String strN29 = null;
                String strN30 = null;
                ArrayList arrayListP = null;
                int iD12 = 0;
                int iD13 = 0;
                while (parcel.dataPosition() < iH10) {
                    int i17 = parcel.readInt();
                    switch ((char) i17) {
                        case 2:
                            jE14 = AbstractC2987b.E(i17, parcel);
                            break;
                        case 3:
                            iD12 = AbstractC2987b.D(i17, parcel);
                            break;
                        case 4:
                            strN27 = AbstractC2987b.n(i17, parcel);
                            break;
                        case 5:
                            strN28 = AbstractC2987b.n(i17, parcel);
                            break;
                        case 6:
                            strN29 = AbstractC2987b.n(i17, parcel);
                            break;
                        case 7:
                            strN30 = AbstractC2987b.n(i17, parcel);
                            break;
                        case '\b':
                            iD13 = AbstractC2987b.D(i17, parcel);
                            break;
                        case '\t':
                            arrayListP = AbstractC2987b.p(i17, parcel);
                            break;
                        case '\n':
                            strN6 = AbstractC2987b.n(i17, parcel);
                            break;
                        default:
                            AbstractC2987b.G(i17, parcel);
                            break;
                    }
                }
                AbstractC2987b.t(iH10, parcel);
                return new MediaTrack(jE14, iD12, strN27, strN28, strN29, strN30, iD13, arrayListP, H3.a.a(strN6));
            case 10:
                int iH11 = AbstractC2987b.H(parcel);
                String strN31 = null;
                String strN32 = null;
                ArrayList arrayListP2 = null;
                String strN33 = null;
                Uri uri2 = null;
                String strN34 = null;
                String strN35 = null;
                Boolean boolZ2 = null;
                Boolean boolZ3 = null;
                while (parcel.dataPosition() < iH11) {
                    int i18 = parcel.readInt();
                    switch ((char) i18) {
                        case 2:
                            strN31 = AbstractC2987b.n(i18, parcel);
                            break;
                        case 3:
                            strN32 = AbstractC2987b.n(i18, parcel);
                            break;
                        case 4:
                            AbstractC2987b.r(parcel, i18, L3.a.CREATOR);
                            break;
                        case 5:
                            arrayListP2 = AbstractC2987b.p(i18, parcel);
                            break;
                        case 6:
                            strN33 = AbstractC2987b.n(i18, parcel);
                            break;
                        case 7:
                            uri2 = (Uri) AbstractC2987b.m(parcel, i18, Uri.CREATOR);
                            break;
                        case '\b':
                            strN34 = AbstractC2987b.n(i18, parcel);
                            break;
                        case '\t':
                            strN35 = AbstractC2987b.n(i18, parcel);
                            break;
                        case '\n':
                            boolZ2 = AbstractC2987b.z(i18, parcel);
                            break;
                        case 11:
                            boolZ3 = AbstractC2987b.z(i18, parcel);
                            break;
                        default:
                            AbstractC2987b.G(i18, parcel);
                            break;
                    }
                }
                AbstractC2987b.t(iH11, parcel);
                return new C0104d(strN31, strN32, arrayListP2, strN33, uri2, strN34, strN35, boolZ2, boolZ3);
            case 11:
                int iH12 = AbstractC2987b.H(parcel);
                String strN36 = null;
                while (parcel.dataPosition() < iH12) {
                    int i19 = parcel.readInt();
                    char c12 = (char) i19;
                    if (c12 == 2) {
                        kVar = (k) AbstractC2987b.m(parcel, i19, k.CREATOR);
                    } else if (c12 != 3) {
                        AbstractC2987b.G(i19, parcel);
                    } else {
                        strN36 = AbstractC2987b.n(i19, parcel);
                    }
                }
                AbstractC2987b.t(iH12, parcel);
                return new s(kVar, H3.a.a(strN36));
            case 12:
                int iH13 = AbstractC2987b.H(parcel);
                String strN37 = null;
                String strN38 = null;
                float fB = 0.0f;
                int iD14 = 0;
                int iD15 = 0;
                int iD16 = 0;
                int iD17 = 0;
                int iD18 = 0;
                int iD19 = 0;
                int iD20 = 0;
                int iD21 = 0;
                int iD22 = 0;
                while (parcel.dataPosition() < iH13) {
                    int i20 = parcel.readInt();
                    switch ((char) i20) {
                        case 2:
                            fB = AbstractC2987b.B(i20, parcel);
                            break;
                        case 3:
                            iD14 = AbstractC2987b.D(i20, parcel);
                            break;
                        case 4:
                            iD15 = AbstractC2987b.D(i20, parcel);
                            break;
                        case 5:
                            iD16 = AbstractC2987b.D(i20, parcel);
                            break;
                        case 6:
                            iD17 = AbstractC2987b.D(i20, parcel);
                            break;
                        case 7:
                            iD18 = AbstractC2987b.D(i20, parcel);
                            break;
                        case '\b':
                            iD19 = AbstractC2987b.D(i20, parcel);
                            break;
                        case '\t':
                            iD20 = AbstractC2987b.D(i20, parcel);
                            break;
                        case '\n':
                            strN37 = AbstractC2987b.n(i20, parcel);
                            break;
                        case 11:
                            iD21 = AbstractC2987b.D(i20, parcel);
                            break;
                        case '\f':
                            iD22 = AbstractC2987b.D(i20, parcel);
                            break;
                        case '\r':
                            strN38 = AbstractC2987b.n(i20, parcel);
                            break;
                        default:
                            AbstractC2987b.G(i20, parcel);
                            break;
                    }
                }
                AbstractC2987b.t(iH13, parcel);
                return new t(fB, iD14, iD15, iD16, iD17, iD18, iD19, iD20, strN37, iD21, iD22, strN38);
            case 13:
                int iH14 = AbstractC2987b.H(parcel);
                String strN39 = null;
                while (parcel.dataPosition() < iH14) {
                    int i21 = parcel.readInt();
                    char c13 = (char) i21;
                    if (c13 == 2) {
                        strN5 = AbstractC2987b.n(i21, parcel);
                    } else if (c13 != 3) {
                        AbstractC2987b.G(i21, parcel);
                    } else {
                        strN39 = AbstractC2987b.n(i21, parcel);
                    }
                }
                AbstractC2987b.t(iH14, parcel);
                return new u(strN5, strN39);
            case 14:
                int iH15 = AbstractC2987b.H(parcel);
                int iD23 = 0;
                int iD24 = 0;
                while (parcel.dataPosition() < iH15) {
                    int i22 = parcel.readInt();
                    char c14 = (char) i22;
                    if (c14 == 2) {
                        iD = AbstractC2987b.D(i22, parcel);
                    } else if (c14 == 3) {
                        iD23 = AbstractC2987b.D(i22, parcel);
                    } else if (c14 != 4) {
                        AbstractC2987b.G(i22, parcel);
                    } else {
                        iD24 = AbstractC2987b.D(i22, parcel);
                    }
                }
                AbstractC2987b.t(iH15, parcel);
                return new v(iD, iD23, iD24);
            case 15:
                int iH16 = AbstractC2987b.H(parcel);
                String strN40 = null;
                String strN41 = null;
                String strN42 = null;
                String strN43 = null;
                String strN44 = null;
                ArrayList arrayListR10 = null;
                String strN45 = null;
                String strN46 = null;
                String strN47 = null;
                byte[] bArrI = null;
                String strN48 = null;
                H3.z zVar = null;
                Integer numValueOf = null;
                int iD25 = 0;
                int iD26 = 0;
                int iD27 = -1;
                int iD28 = 0;
                boolean zY7 = false;
                while (parcel.dataPosition() < iH16) {
                    int i23 = parcel.readInt();
                    switch ((char) i23) {
                        case 2:
                            strN40 = AbstractC2987b.n(i23, parcel);
                            break;
                        case 3:
                            strN41 = AbstractC2987b.n(i23, parcel);
                            break;
                        case 4:
                            strN42 = AbstractC2987b.n(i23, parcel);
                            break;
                        case 5:
                            strN43 = AbstractC2987b.n(i23, parcel);
                            break;
                        case 6:
                            strN44 = AbstractC2987b.n(i23, parcel);
                            break;
                        case 7:
                            iD25 = AbstractC2987b.D(i23, parcel);
                            break;
                        case '\b':
                            arrayListR10 = AbstractC2987b.r(parcel, i23, L3.a.CREATOR);
                            break;
                        case '\t':
                            iD26 = AbstractC2987b.D(i23, parcel);
                            break;
                        case '\n':
                            iD27 = AbstractC2987b.D(i23, parcel);
                            break;
                        case 11:
                            strN45 = AbstractC2987b.n(i23, parcel);
                            break;
                        case '\f':
                            strN46 = AbstractC2987b.n(i23, parcel);
                            break;
                        case '\r':
                            iD28 = AbstractC2987b.D(i23, parcel);
                            break;
                        case 14:
                            strN47 = AbstractC2987b.n(i23, parcel);
                            break;
                        case 15:
                            bArrI = AbstractC2987b.i(i23, parcel);
                            break;
                        case 16:
                            strN48 = AbstractC2987b.n(i23, parcel);
                            break;
                        case 17:
                            zY7 = AbstractC2987b.y(i23, parcel);
                            break;
                        case 18:
                            zVar = (H3.z) AbstractC2987b.m(parcel, i23, H3.z.CREATOR);
                            break;
                        case 19:
                            int iF = AbstractC2987b.F(i23, parcel);
                            if (iF != 0) {
                                AbstractC2987b.g0(parcel, iF, 4);
                                numValueOf = Integer.valueOf(parcel.readInt());
                            } else {
                                numValueOf = null;
                            }
                            break;
                        default:
                            AbstractC2987b.G(i23, parcel);
                            break;
                    }
                }
                AbstractC2987b.t(iH16, parcel);
                return new CastDevice(strN40, strN41, strN42, strN43, strN44, iD25, arrayListR10, iD26, iD27, strN45, strN46, iD28, strN47, bArrI, strN48, zY7, zVar, numValueOf);
            case 16:
                int iH17 = AbstractC2987b.H(parcel);
                while (parcel.dataPosition() < iH17) {
                    int i24 = parcel.readInt();
                    char c15 = (char) i24;
                    if (c15 == 1) {
                        iD = AbstractC2987b.D(i24, parcel);
                    } else if (c15 != 2) {
                        AbstractC2987b.G(i24, parcel);
                    } else {
                        strN4 = AbstractC2987b.n(i24, parcel);
                    }
                }
                AbstractC2987b.t(iH17, parcel);
                return new Scope(iD, strN4);
            case 17:
                int iH18 = AbstractC2987b.H(parcel);
                PendingIntent pendingIntent2 = null;
                J3.b bVar = null;
                while (parcel.dataPosition() < iH18) {
                    int i25 = parcel.readInt();
                    char c16 = (char) i25;
                    if (c16 == 1) {
                        iD = AbstractC2987b.D(i25, parcel);
                    } else if (c16 == 2) {
                        strN3 = AbstractC2987b.n(i25, parcel);
                    } else if (c16 == 3) {
                        pendingIntent2 = (PendingIntent) AbstractC2987b.m(parcel, i25, PendingIntent.CREATOR);
                    } else if (c16 != 4) {
                        AbstractC2987b.G(i25, parcel);
                    } else {
                        bVar = (J3.b) AbstractC2987b.m(parcel, i25, J3.b.CREATOR);
                    }
                }
                AbstractC2987b.t(iH18, parcel);
                return new Status(iD, strN3, pendingIntent2, bVar);
            case 18:
                int iH19 = AbstractC2987b.H(parcel);
                int iD29 = 0;
                int iD30 = 0;
                while (parcel.dataPosition() < iH19) {
                    int i26 = parcel.readInt();
                    char c17 = (char) i26;
                    if (c17 == 1) {
                        iD = AbstractC2987b.D(i26, parcel);
                    } else if (c17 == 2) {
                        uri = (Uri) AbstractC2987b.m(parcel, i26, Uri.CREATOR);
                    } else if (c17 == 3) {
                        iD29 = AbstractC2987b.D(i26, parcel);
                    } else if (c17 != 4) {
                        AbstractC2987b.G(i26, parcel);
                    } else {
                        iD30 = AbstractC2987b.D(i26, parcel);
                    }
                }
                AbstractC2987b.t(iH19, parcel);
                return new L3.a(iD, uri, iD29, iD30);
            case 19:
                int iH20 = AbstractC2987b.H(parcel);
                while (parcel.dataPosition() < iH20) {
                    int i27 = parcel.readInt();
                    char c18 = (char) i27;
                    if (c18 == 1) {
                        iD = AbstractC2987b.D(i27, parcel);
                    } else if (c18 != 2) {
                        AbstractC2987b.G(i27, parcel);
                    } else {
                        arrayListR = AbstractC2987b.r(parcel, i27, C0641q.CREATOR);
                    }
                }
                AbstractC2987b.t(iH20, parcel);
                return new C0643t(iD, arrayListR);
            case 20:
                int iH21 = AbstractC2987b.H(parcel);
                long jE15 = 0;
                long jE16 = 0;
                String strN49 = null;
                String strN50 = null;
                int iD31 = 0;
                int iD32 = 0;
                int iD33 = 0;
                int iD34 = 0;
                int iD35 = -1;
                while (parcel.dataPosition() < iH21) {
                    int i28 = parcel.readInt();
                    switch ((char) i28) {
                        case 1:
                            iD31 = AbstractC2987b.D(i28, parcel);
                            break;
                        case 2:
                            iD32 = AbstractC2987b.D(i28, parcel);
                            break;
                        case 3:
                            iD33 = AbstractC2987b.D(i28, parcel);
                            break;
                        case 4:
                            jE15 = AbstractC2987b.E(i28, parcel);
                            break;
                        case 5:
                            jE16 = AbstractC2987b.E(i28, parcel);
                            break;
                        case 6:
                            strN49 = AbstractC2987b.n(i28, parcel);
                            break;
                        case 7:
                            strN50 = AbstractC2987b.n(i28, parcel);
                            break;
                        case '\b':
                            iD34 = AbstractC2987b.D(i28, parcel);
                            break;
                        case '\t':
                            iD35 = AbstractC2987b.D(i28, parcel);
                            break;
                        default:
                            AbstractC2987b.G(i28, parcel);
                            break;
                    }
                }
                AbstractC2987b.t(iH21, parcel);
                return new C0641q(iD31, iD32, iD33, jE15, jE16, strN49, strN50, iD34, iD35);
            case 21:
                int iH22 = AbstractC2987b.H(parcel);
                GoogleSignInAccount googleSignInAccount = null;
                int iD36 = 0;
                while (parcel.dataPosition() < iH22) {
                    int i29 = parcel.readInt();
                    char c19 = (char) i29;
                    if (c19 == 1) {
                        iD = AbstractC2987b.D(i29, parcel);
                    } else if (c19 == 2) {
                        account = (Account) AbstractC2987b.m(parcel, i29, Account.CREATOR);
                    } else if (c19 == 3) {
                        iD36 = AbstractC2987b.D(i29, parcel);
                    } else if (c19 != 4) {
                        AbstractC2987b.G(i29, parcel);
                    } else {
                        googleSignInAccount = (GoogleSignInAccount) AbstractC2987b.m(parcel, i29, GoogleSignInAccount.CREATOR);
                    }
                }
                AbstractC2987b.t(iH22, parcel);
                return new com.google.android.gms.common.internal.C(iD, account, iD36, googleSignInAccount);
            case 22:
                int iH23 = AbstractC2987b.H(parcel);
                IBinder iBinderC = null;
                J3.b bVar2 = null;
                int iD37 = 0;
                boolean zY8 = false;
                boolean zY9 = false;
                while (parcel.dataPosition() < iH23) {
                    int i30 = parcel.readInt();
                    char c20 = (char) i30;
                    if (c20 == 1) {
                        iD37 = AbstractC2987b.D(i30, parcel);
                    } else if (c20 == 2) {
                        iBinderC = AbstractC2987b.C(i30, parcel);
                    } else if (c20 == 3) {
                        bVar2 = (J3.b) AbstractC2987b.m(parcel, i30, J3.b.CREATOR);
                    } else if (c20 == 4) {
                        zY8 = AbstractC2987b.y(i30, parcel);
                    } else if (c20 != 5) {
                        AbstractC2987b.G(i30, parcel);
                    } else {
                        zY9 = AbstractC2987b.y(i30, parcel);
                    }
                }
                AbstractC2987b.t(iH23, parcel);
                return new com.google.android.gms.common.internal.D(iD37, iBinderC, bVar2, zY8, zY9);
            case 23:
                int iH24 = AbstractC2987b.H(parcel);
                int iD38 = 0;
                boolean zY10 = false;
                boolean zY11 = false;
                int iD39 = 0;
                int iD40 = 0;
                while (parcel.dataPosition() < iH24) {
                    int i31 = parcel.readInt();
                    char c21 = (char) i31;
                    if (c21 == 1) {
                        iD38 = AbstractC2987b.D(i31, parcel);
                    } else if (c21 == 2) {
                        zY10 = AbstractC2987b.y(i31, parcel);
                    } else if (c21 == 3) {
                        zY11 = AbstractC2987b.y(i31, parcel);
                    } else if (c21 == 4) {
                        iD39 = AbstractC2987b.D(i31, parcel);
                    } else if (c21 != 5) {
                        AbstractC2987b.G(i31, parcel);
                    } else {
                        iD40 = AbstractC2987b.D(i31, parcel);
                    }
                }
                AbstractC2987b.t(iH24, parcel);
                return new C0642s(iD38, zY10, zY11, iD39, iD40);
            case 24:
                return new BinderWrapper(parcel);
            case 25:
                int iH25 = AbstractC2987b.H(parcel);
                J3.d[] dVarArr = null;
                C0634j c0634j = null;
                while (parcel.dataPosition() < iH25) {
                    int i32 = parcel.readInt();
                    char c22 = (char) i32;
                    if (c22 == 1) {
                        bundleG = AbstractC2987b.g(i32, parcel);
                    } else if (c22 == 2) {
                        dVarArr = (J3.d[]) AbstractC2987b.q(parcel, i32, J3.d.CREATOR);
                    } else if (c22 == 3) {
                        iD = AbstractC2987b.D(i32, parcel);
                    } else if (c22 != 4) {
                        AbstractC2987b.G(i32, parcel);
                    } else {
                        c0634j = (C0634j) AbstractC2987b.m(parcel, i32, C0634j.CREATOR);
                    }
                }
                AbstractC2987b.t(iH25, parcel);
                S s7 = new S();
                s7.f11811G = bundleG;
                s7.f11812H = dVarArr;
                s7.f11813I = iD;
                s7.f11814J = c0634j;
                return s7;
            case Service.BILLING_FIELD_NUMBER /* 26 */:
                int iH26 = AbstractC2987b.H(parcel);
                C0642s c0642s = null;
                int[] iArrJ = null;
                int[] iArrJ2 = null;
                boolean zY12 = false;
                boolean zY13 = false;
                int iD41 = 0;
                while (parcel.dataPosition() < iH26) {
                    int i33 = parcel.readInt();
                    switch ((char) i33) {
                        case 1:
                            c0642s = (C0642s) AbstractC2987b.m(parcel, i33, C0642s.CREATOR);
                            break;
                        case 2:
                            zY12 = AbstractC2987b.y(i33, parcel);
                            break;
                        case 3:
                            zY13 = AbstractC2987b.y(i33, parcel);
                            break;
                        case 4:
                            iArrJ = AbstractC2987b.j(i33, parcel);
                            break;
                        case 5:
                            iD41 = AbstractC2987b.D(i33, parcel);
                            break;
                        case 6:
                            iArrJ2 = AbstractC2987b.j(i33, parcel);
                            break;
                        default:
                            AbstractC2987b.G(i33, parcel);
                            break;
                    }
                }
                AbstractC2987b.t(iH26, parcel);
                return new C0634j(c0642s, zY12, zY13, iArrJ, iD41, iArrJ2);
            case 27:
                int iH27 = AbstractC2987b.H(parcel);
                Scope[] scopeArr = C0635k.f11859U;
                Bundle bundle = new Bundle();
                J3.d[] dVarArr2 = C0635k.f11860V;
                J3.d[] dVarArr3 = dVarArr2;
                String strN51 = null;
                IBinder iBinderC2 = null;
                Account account2 = null;
                String strN52 = null;
                int iD42 = 0;
                int iD43 = 0;
                int iD44 = 0;
                boolean zY14 = false;
                int iD45 = 0;
                boolean zY15 = false;
                while (parcel.dataPosition() < iH27) {
                    int i34 = parcel.readInt();
                    switch ((char) i34) {
                        case 1:
                            iD42 = AbstractC2987b.D(i34, parcel);
                            break;
                        case 2:
                            iD43 = AbstractC2987b.D(i34, parcel);
                            break;
                        case 3:
                            iD44 = AbstractC2987b.D(i34, parcel);
                            break;
                        case 4:
                            strN51 = AbstractC2987b.n(i34, parcel);
                            break;
                        case 5:
                            iBinderC2 = AbstractC2987b.C(i34, parcel);
                            break;
                        case 6:
                            scopeArr = (Scope[]) AbstractC2987b.q(parcel, i34, Scope.CREATOR);
                            break;
                        case 7:
                            bundle = AbstractC2987b.g(i34, parcel);
                            break;
                        case '\b':
                            account2 = (Account) AbstractC2987b.m(parcel, i34, Account.CREATOR);
                            break;
                        case '\t':
                        default:
                            AbstractC2987b.G(i34, parcel);
                            break;
                        case '\n':
                            dVarArr2 = (J3.d[]) AbstractC2987b.q(parcel, i34, J3.d.CREATOR);
                            break;
                        case 11:
                            dVarArr3 = (J3.d[]) AbstractC2987b.q(parcel, i34, J3.d.CREATOR);
                            break;
                        case '\f':
                            zY14 = AbstractC2987b.y(i34, parcel);
                            break;
                        case '\r':
                            iD45 = AbstractC2987b.D(i34, parcel);
                            break;
                        case 14:
                            zY15 = AbstractC2987b.y(i34, parcel);
                            break;
                        case 15:
                            strN52 = AbstractC2987b.n(i34, parcel);
                            break;
                    }
                }
                AbstractC2987b.t(iH27, parcel);
                return new C0635k(iD42, iD43, iD44, strN51, iBinderC2, scopeArr, bundle, account2, dVarArr2, dVarArr3, zY14, iD45, zY15, strN52);
            case Service.MONITORING_FIELD_NUMBER /* 28 */:
                int iH28 = AbstractC2987b.H(parcel);
                String strN53 = null;
                int iD46 = 0;
                while (parcel.dataPosition() < iH28) {
                    int i35 = parcel.readInt();
                    char c23 = (char) i35;
                    if (c23 == 1) {
                        iD = AbstractC2987b.D(i35, parcel);
                    } else if (c23 == 2) {
                        iD46 = AbstractC2987b.D(i35, parcel);
                    } else if (c23 == 3) {
                        pendingIntent = (PendingIntent) AbstractC2987b.m(parcel, i35, PendingIntent.CREATOR);
                    } else if (c23 != 4) {
                        AbstractC2987b.G(i35, parcel);
                    } else {
                        strN53 = AbstractC2987b.n(i35, parcel);
                    }
                }
                AbstractC2987b.t(iH28, parcel);
                return new J3.b(iD, iD46, pendingIntent, strN53);
            default:
                int iH29 = AbstractC2987b.H(parcel);
                long jE17 = -1;
                while (parcel.dataPosition() < iH29) {
                    int i36 = parcel.readInt();
                    char c24 = (char) i36;
                    if (c24 == 1) {
                        strN2 = AbstractC2987b.n(i36, parcel);
                    } else if (c24 == 2) {
                        iD = AbstractC2987b.D(i36, parcel);
                    } else if (c24 != 3) {
                        AbstractC2987b.G(i36, parcel);
                    } else {
                        jE17 = AbstractC2987b.E(i36, parcel);
                    }
                }
                AbstractC2987b.t(iH29, parcel);
                return new J3.d(iD, jE17, strN2);
        }
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i8) {
        switch (this.f1466a) {
            case 0:
                return new MediaInfo[i8];
            case 1:
                return new C0110j[i8];
            case 2:
                return new C0103c[i8];
            case 3:
                return new k[i8];
            case 4:
                return new l[i8];
            case 5:
                return new m[i8];
            case 6:
                return new n[i8];
            case 7:
                return new p[i8];
            case 8:
                return new r[i8];
            case 9:
                return new MediaTrack[i8];
            case 10:
                return new C0104d[i8];
            case 11:
                return new s[i8];
            case 12:
                return new t[i8];
            case 13:
                return new u[i8];
            case 14:
                return new v[i8];
            case 15:
                return new CastDevice[i8];
            case 16:
                return new Scope[i8];
            case 17:
                return new Status[i8];
            case 18:
                return new L3.a[i8];
            case 19:
                return new C0643t[i8];
            case 20:
                return new C0641q[i8];
            case 21:
                return new com.google.android.gms.common.internal.C[i8];
            case 22:
                return new com.google.android.gms.common.internal.D[i8];
            case 23:
                return new C0642s[i8];
            case 24:
                return new BinderWrapper[i8];
            case 25:
                return new S[i8];
            case Service.BILLING_FIELD_NUMBER /* 26 */:
                return new C0634j[i8];
            case 27:
                return new C0635k[i8];
            case Service.MONITORING_FIELD_NUMBER /* 28 */:
                return new J3.b[i8];
            default:
                return new J3.d[i8];
        }
    }
}
