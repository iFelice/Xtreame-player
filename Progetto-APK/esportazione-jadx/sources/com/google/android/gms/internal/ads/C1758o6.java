package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;
import okhttp3.HttpUrl;
import p039f.AbstractC2987b;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.o6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1758o6 extends M3.a {
    public static final Parcelable.Creator<C1758o6> CREATOR = new E0(21);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final String f20234G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final long f20235H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final String f20236I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final String f20237J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final String f20238K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final Bundle f20239L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final boolean f20240M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public long f20241N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public String f20242O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public int f20243P;

    public C1758o6(String str, long j8, String str2, String str3, String str4, Bundle bundle, boolean z7, long j9, String str5, int i8) {
        this.f20234G = str;
        this.f20235H = j8;
        this.f20236I = str2 == null ? HttpUrl.FRAGMENT_ENCODE_SET : str2;
        this.f20237J = str3 == null ? HttpUrl.FRAGMENT_ENCODE_SET : str3;
        this.f20238K = str4 == null ? HttpUrl.FRAGMENT_ENCODE_SET : str4;
        this.f20239L = bundle == null ? new Bundle() : bundle;
        this.f20240M = z7;
        this.f20241N = j9;
        this.f20242O = str5;
        this.f20243P = i8;
    }

    public static C1758o6 i(Uri uri) {
        try {
            if (!"gcache".equals(uri.getScheme())) {
                return null;
            }
            List<String> pathSegments = uri.getPathSegments();
            if (pathSegments.size() != 2) {
                p120p3.h.g("Expected 2 path parts for namespace and id, found :" + pathSegments.size());
                return null;
            }
            String str = pathSegments.get(0);
            String str2 = pathSegments.get(1);
            String host = uri.getHost();
            String queryParameter = uri.getQueryParameter("url");
            boolean zEquals = "1".equals(uri.getQueryParameter("read_only"));
            String queryParameter2 = uri.getQueryParameter("expiration");
            long j8 = queryParameter2 == null ? 0L : Long.parseLong(queryParameter2);
            Bundle bundle = new Bundle();
            for (String str3 : uri.getQueryParameterNames()) {
                if (str3.startsWith("tag.")) {
                    bundle.putString(str3.substring(4), uri.getQueryParameter(str3));
                }
            }
            return new C1758o6(queryParameter, j8, host, str, str2, bundle, zEquals, 0L, HttpUrl.FRAGMENT_ENCODE_SET, 0);
        } catch (NullPointerException e8) {
            e = e8;
            p120p3.h.h("Unable to parse Uri into cache offering.", e);
            return null;
        } catch (NumberFormatException e9) {
            e = e9;
            p120p3.h.h("Unable to parse Uri into cache offering.", e);
            return null;
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.Q(parcel, 2, this.f20234G);
        AbstractC2987b.v0(parcel, 3, 8);
        parcel.writeLong(this.f20235H);
        AbstractC2987b.Q(parcel, 4, this.f20236I);
        AbstractC2987b.Q(parcel, 5, this.f20237J);
        AbstractC2987b.Q(parcel, 6, this.f20238K);
        AbstractC2987b.J(parcel, 7, this.f20239L);
        AbstractC2987b.v0(parcel, 8, 4);
        parcel.writeInt(this.f20240M ? 1 : 0);
        long j8 = this.f20241N;
        AbstractC2987b.v0(parcel, 9, 8);
        parcel.writeLong(j8);
        AbstractC2987b.Q(parcel, 10, this.f20242O);
        int i9 = this.f20243P;
        AbstractC2987b.v0(parcel, 11, 4);
        parcel.writeInt(i9);
        AbstractC2987b.p0(iX, parcel);
    }
}
