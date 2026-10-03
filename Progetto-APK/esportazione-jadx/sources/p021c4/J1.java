package p021c4;

import J3.v;
import M3.a;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.bumptech.glide.c;
import java.util.ArrayList;
import java.util.List;
import p039f.AbstractC2987b;

/* JADX INFO: loaded from: classes.dex */
public final class J1 extends a {
    public static final Parcelable.Creator<J1> CREATOR = new v(15);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final String f10876G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final String f10877H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final String f10878I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final String f10879J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final long f10880K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final long f10881L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final String f10882M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final boolean f10883N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final boolean f10884O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final long f10885P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public final String f10886Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public final long f10887R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public final int f10888S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public final boolean f10889T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public final boolean f10890U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public final String f10891V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public final Boolean f10892W;

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public final long f10893X;

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public final List f10894Y;

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public final String f10895Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public final String f10896a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public final String f10897b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public final String f10898c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public final boolean f10899d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public final long f10900e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public final int f10901f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public final String f10902g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public final int f10903h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public final long f10904i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public final String f10905j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public final String f10906k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public final long f10907l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public final int f10908m0;

    public J1(String str, String str2, String str3, long j8, String str4, long j9, long j10, String str5, boolean z7, boolean z8, String str6, long j11, int i8, boolean z9, boolean z10, String str7, Boolean bool, long j12, List list, String str8, String str9, String str10, String str11, boolean z11, long j13, int i9, String str12, int i10, long j14, String str13, String str14, long j15, int i11) {
        c.e(str);
        this.f10876G = str;
        this.f10877H = true == TextUtils.isEmpty(str2) ? null : str2;
        this.f10878I = str3;
        this.f10885P = j8;
        this.f10879J = str4;
        this.f10880K = j9;
        this.f10881L = j10;
        this.f10882M = str5;
        this.f10883N = z7;
        this.f10884O = z8;
        this.f10886Q = str6;
        this.f10887R = j11;
        this.f10888S = i8;
        this.f10889T = z9;
        this.f10890U = z10;
        this.f10891V = str7;
        this.f10892W = bool;
        this.f10893X = j12;
        this.f10894Y = list;
        this.f10895Z = str8;
        this.f10896a0 = str9;
        this.f10897b0 = str10;
        this.f10898c0 = str11;
        this.f10899d0 = z11;
        this.f10900e0 = j13;
        this.f10901f0 = i9;
        this.f10902g0 = str12;
        this.f10903h0 = i10;
        this.f10904i0 = j14;
        this.f10905j0 = str13;
        this.f10906k0 = str14;
        this.f10907l0 = j15;
        this.f10908m0 = i11;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.Q(parcel, 2, this.f10876G);
        AbstractC2987b.Q(parcel, 3, this.f10877H);
        AbstractC2987b.Q(parcel, 4, this.f10878I);
        AbstractC2987b.Q(parcel, 5, this.f10879J);
        AbstractC2987b.v0(parcel, 6, 8);
        parcel.writeLong(this.f10880K);
        AbstractC2987b.v0(parcel, 7, 8);
        parcel.writeLong(this.f10881L);
        AbstractC2987b.Q(parcel, 8, this.f10882M);
        AbstractC2987b.v0(parcel, 9, 4);
        parcel.writeInt(this.f10883N ? 1 : 0);
        AbstractC2987b.v0(parcel, 10, 4);
        parcel.writeInt(this.f10884O ? 1 : 0);
        AbstractC2987b.v0(parcel, 11, 8);
        parcel.writeLong(this.f10885P);
        AbstractC2987b.Q(parcel, 12, this.f10886Q);
        AbstractC2987b.v0(parcel, 14, 8);
        parcel.writeLong(this.f10887R);
        AbstractC2987b.v0(parcel, 15, 4);
        parcel.writeInt(this.f10888S);
        AbstractC2987b.v0(parcel, 16, 4);
        parcel.writeInt(this.f10889T ? 1 : 0);
        AbstractC2987b.v0(parcel, 18, 4);
        parcel.writeInt(this.f10890U ? 1 : 0);
        AbstractC2987b.Q(parcel, 19, this.f10891V);
        AbstractC2987b.I(parcel, 21, this.f10892W);
        AbstractC2987b.v0(parcel, 22, 8);
        parcel.writeLong(this.f10893X);
        AbstractC2987b.S(parcel, 23, this.f10894Y);
        AbstractC2987b.Q(parcel, 24, this.f10895Z);
        AbstractC2987b.Q(parcel, 25, this.f10896a0);
        AbstractC2987b.Q(parcel, 26, this.f10897b0);
        AbstractC2987b.Q(parcel, 27, this.f10898c0);
        AbstractC2987b.v0(parcel, 28, 4);
        parcel.writeInt(this.f10899d0 ? 1 : 0);
        AbstractC2987b.v0(parcel, 29, 8);
        parcel.writeLong(this.f10900e0);
        AbstractC2987b.v0(parcel, 30, 4);
        parcel.writeInt(this.f10901f0);
        AbstractC2987b.Q(parcel, 31, this.f10902g0);
        AbstractC2987b.v0(parcel, 32, 4);
        parcel.writeInt(this.f10903h0);
        AbstractC2987b.v0(parcel, 34, 8);
        parcel.writeLong(this.f10904i0);
        AbstractC2987b.Q(parcel, 35, this.f10905j0);
        AbstractC2987b.Q(parcel, 36, this.f10906k0);
        AbstractC2987b.v0(parcel, 37, 8);
        parcel.writeLong(this.f10907l0);
        AbstractC2987b.v0(parcel, 38, 4);
        parcel.writeInt(this.f10908m0);
        AbstractC2987b.p0(iX, parcel);
    }

    public J1(String str, String str2, String str3, String str4, long j8, long j9, String str5, boolean z7, boolean z8, long j10, String str6, long j11, int i8, boolean z9, boolean z10, String str7, Boolean bool, long j12, ArrayList arrayList, String str8, String str9, String str10, String str11, boolean z11, long j13, int i9, String str12, int i10, long j14, String str13, String str14, long j15, int i11) {
        this.f10876G = str;
        this.f10877H = str2;
        this.f10878I = str3;
        this.f10885P = j10;
        this.f10879J = str4;
        this.f10880K = j8;
        this.f10881L = j9;
        this.f10882M = str5;
        this.f10883N = z7;
        this.f10884O = z8;
        this.f10886Q = str6;
        this.f10887R = j11;
        this.f10888S = i8;
        this.f10889T = z9;
        this.f10890U = z10;
        this.f10891V = str7;
        this.f10892W = bool;
        this.f10893X = j12;
        this.f10894Y = arrayList;
        this.f10895Z = str8;
        this.f10896a0 = str9;
        this.f10897b0 = str10;
        this.f10898c0 = str11;
        this.f10899d0 = z11;
        this.f10900e0 = j13;
        this.f10901f0 = i9;
        this.f10902g0 = str12;
        this.f10903h0 = i10;
        this.f10904i0 = j14;
        this.f10905j0 = str13;
        this.f10906k0 = str14;
        this.f10907l0 = j15;
        this.f10908m0 = i11;
    }
}
