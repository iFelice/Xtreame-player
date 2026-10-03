package com.google.android.gms.cast;

import C3.H;
import H3.z;
import M3.a;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.protobuf.U2;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import okhttp3.HttpUrl;
import p000a.r;
import p039f.AbstractC2987b;

/* JADX INFO: loaded from: classes.dex */
public class CastDevice extends a implements ReflectedParcelable {
    public static final Parcelable.Creator<CastDevice> CREATOR = new H(15);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final String f11678G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final String f11679H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final InetAddress f11680I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final String f11681J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final String f11682K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final String f11683L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final int f11684M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final List f11685N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final int f11686O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final int f11687P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public final String f11688Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public final String f11689R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public final int f11690S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public final String f11691T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public final byte[] f11692U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public final String f11693V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public final boolean f11694W;

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public final z f11695X;

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public final Integer f11696Y;

    public CastDevice(String str, String str2, String str3, String str4, String str5, int i8, ArrayList arrayList, int i9, int i10, String str6, String str7, int i11, String str8, byte[] bArr, String str9, boolean z7, z zVar, Integer num) {
        String str10 = HttpUrl.FRAGMENT_ENCODE_SET;
        this.f11678G = str == null ? HttpUrl.FRAGMENT_ENCODE_SET : str;
        String str11 = str2 == null ? HttpUrl.FRAGMENT_ENCODE_SET : str2;
        this.f11679H = str11;
        if (!TextUtils.isEmpty(str11)) {
            try {
                this.f11680I = InetAddress.getByName(str11);
            } catch (UnknownHostException e8) {
                Log.i("CastDevice", "Unable to convert host address (" + this.f11679H + ") to ipaddress: " + e8.getMessage());
            }
        }
        this.f11681J = str3 == null ? HttpUrl.FRAGMENT_ENCODE_SET : str3;
        this.f11682K = str4 == null ? HttpUrl.FRAGMENT_ENCODE_SET : str4;
        this.f11683L = str5 == null ? HttpUrl.FRAGMENT_ENCODE_SET : str5;
        this.f11684M = i8;
        this.f11685N = arrayList == null ? new ArrayList() : arrayList;
        this.f11686O = i9;
        this.f11687P = i10;
        this.f11688Q = str6 != null ? str6 : str10;
        this.f11689R = str7;
        this.f11690S = i11;
        this.f11691T = str8;
        this.f11692U = bArr;
        this.f11693V = str9;
        this.f11694W = z7;
        this.f11695X = zVar;
        this.f11696Y = num;
    }

    public static CastDevice i(Bundle bundle) {
        ClassLoader classLoader;
        if (bundle == null || (classLoader = CastDevice.class.getClassLoader()) == null) {
            return null;
        }
        bundle.setClassLoader(classLoader);
        return (CastDevice) bundle.getParcelable("com.google.android.gms.cast.EXTRA_CAST_DEVICE");
    }

    public final boolean equals(Object obj) {
        int i8;
        int i9;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CastDevice)) {
            return false;
        }
        CastDevice castDevice = (CastDevice) obj;
        String str = this.f11678G;
        if (str == null) {
            return castDevice.f11678G == null;
        }
        if (H3.a.e(str, castDevice.f11678G) && H3.a.e(this.f11680I, castDevice.f11680I) && H3.a.e(this.f11682K, castDevice.f11682K) && H3.a.e(this.f11681J, castDevice.f11681J)) {
            String str2 = this.f11683L;
            String str3 = castDevice.f11683L;
            if (H3.a.e(str2, str3) && (i8 = this.f11684M) == (i9 = castDevice.f11684M) && H3.a.e(this.f11685N, castDevice.f11685N) && this.f11686O == castDevice.f11686O && this.f11687P == castDevice.f11687P && H3.a.e(this.f11688Q, castDevice.f11688Q) && H3.a.e(Integer.valueOf(this.f11690S), Integer.valueOf(castDevice.f11690S)) && H3.a.e(this.f11691T, castDevice.f11691T) && H3.a.e(this.f11689R, castDevice.f11689R) && H3.a.e(str2, str3) && i8 == i9) {
                byte[] bArr = castDevice.f11692U;
                byte[] bArr2 = this.f11692U;
                if (((bArr2 == null && bArr == null) || Arrays.equals(bArr2, bArr)) && H3.a.e(this.f11693V, castDevice.f11693V) && this.f11694W == castDevice.f11694W && H3.a.e(n(), castDevice.n())) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.f11678G;
        if (str == null) {
            return 0;
        }
        return str.hashCode();
    }

    public final boolean l(int i8) {
        return (this.f11686O & i8) == i8;
    }

    public final z n() {
        z zVar = this.f11695X;
        if (zVar == null) {
            return (l(32) || l(64)) ? new z(1, false, false) : zVar;
        }
        return zVar;
    }

    public final String toString() {
        Locale locale = Locale.ROOT;
        String str = this.f11681J;
        if (!TextUtils.isEmpty(str)) {
            int length = str.length();
            if (length <= 2) {
                str = length == 2 ? "xx" : "x";
            } else {
                str = String.format(locale, "%c%d%c", Character.valueOf(str.charAt(0)), Integer.valueOf(length - 2), Character.valueOf(str.charAt(length - 1)));
            }
        }
        return r.j(U2.p("\"", str, "\" ("), this.f11678G, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.Q(parcel, 2, this.f11678G);
        AbstractC2987b.Q(parcel, 3, this.f11679H);
        AbstractC2987b.Q(parcel, 4, this.f11681J);
        AbstractC2987b.Q(parcel, 5, this.f11682K);
        AbstractC2987b.Q(parcel, 6, this.f11683L);
        AbstractC2987b.v0(parcel, 7, 4);
        parcel.writeInt(this.f11684M);
        AbstractC2987b.U(parcel, 8, Collections.unmodifiableList(this.f11685N));
        AbstractC2987b.v0(parcel, 9, 4);
        parcel.writeInt(this.f11686O);
        AbstractC2987b.v0(parcel, 10, 4);
        parcel.writeInt(this.f11687P);
        AbstractC2987b.Q(parcel, 11, this.f11688Q);
        AbstractC2987b.Q(parcel, 12, this.f11689R);
        AbstractC2987b.v0(parcel, 13, 4);
        parcel.writeInt(this.f11690S);
        AbstractC2987b.Q(parcel, 14, this.f11691T);
        AbstractC2987b.K(parcel, 15, this.f11692U);
        AbstractC2987b.Q(parcel, 16, this.f11693V);
        AbstractC2987b.v0(parcel, 17, 4);
        parcel.writeInt(this.f11694W ? 1 : 0);
        AbstractC2987b.P(parcel, 18, n(), i8);
        Integer num = this.f11696Y;
        if (num != null) {
            AbstractC2987b.v0(parcel, 19, 4);
            parcel.writeInt(num.intValue());
        }
        AbstractC2987b.p0(iX, parcel);
    }
}
