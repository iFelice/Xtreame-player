package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class H0 implements K9 {
    public static final Parcelable.Creator<H0> CREATOR = new E0(2);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final String f13676G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final String f13677H;

    public H0(Parcel parcel) {
        String string = parcel.readString();
        int i8 = Et.f13234a;
        this.f13676G = string;
        this.f13677H = parcel.readString();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:20:0x0040  */
    @Override // com.google.android.gms.internal.ads.K9
    public final void b(A8 a8) {
        byte b8;
        switch (this.f13676G) {
            case "ALBUM":
                b8 = 2;
                break;
            case "TITLE":
                b8 = 0;
                break;
            case "DESCRIPTION":
                b8 = 4;
                break;
            case "ALBUMARTIST":
                b8 = 3;
                break;
            case "ARTIST":
                b8 = 1;
                break;
            default:
                b8 = -1;
                break;
        }
        String str = this.f13677H;
        if (b8 == 0) {
            a8.f11963a = str;
            return;
        }
        if (b8 == 1) {
            a8.f11964b = str;
            return;
        }
        if (b8 == 2) {
            a8.f11965c = str;
        } else if (b8 == 3) {
            a8.f11966d = str;
        } else {
            if (b8 != 4) {
                return;
            }
            a8.f11967e = str;
        }
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            H0 h8 = (H0) obj;
            if (this.f13676G.equals(h8.f13676G) && this.f13677H.equals(h8.f13677H)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f13677H.hashCode() + ((this.f13676G.hashCode() + 527) * 31);
    }

    public final String toString() {
        return "VC: " + this.f13676G + "=" + this.f13677H;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        parcel.writeString(this.f13676G);
        parcel.writeString(this.f13677H);
    }

    public H0(String str, String str2) {
        this.f13676G = p113o3.r.u(str);
        this.f13677H = str2;
    }
}
