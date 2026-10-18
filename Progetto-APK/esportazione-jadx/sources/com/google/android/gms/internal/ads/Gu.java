package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class Gu implements K9 {
    public static final Parcelable.Creator<Gu> CREATOR = new C2350zc(12);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final String f13651G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final byte[] f13652H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final int f13653I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final int f13654J;

    public /* synthetic */ Gu(Parcel parcel) {
        String string = parcel.readString();
        int i8 = Et.f13234a;
        this.f13651G = string;
        byte[] bArrCreateByteArray = parcel.createByteArray();
        this.f13652H = bArrCreateByteArray;
        this.f13653I = parcel.readInt();
        int i9 = parcel.readInt();
        this.f13654J = i9;
        a(i9, string, bArrCreateByteArray);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:20:0x003f  */
    public static void a(int i8, String str, byte[] bArr) {
        byte b8;
        byte b9;
        boolean z7 = true;
        switch (str) {
            case "com.android.capture.fps":
                b8 = 0;
                break;
            case "editable.tracks.samples.location":
                b8 = 4;
                break;
            case "editable.tracks.length":
                b8 = 2;
                break;
            case "editable.tracks.offset":
                b8 = 1;
                break;
            case "editable.tracks.map":
                b8 = 3;
                break;
            default:
                b8 = -1;
                break;
        }
        if (b8 == 0) {
            p113o3.r.J(i8 == 23 && bArr.length == 4);
            return;
        }
        if (b8 == 1 || b8 == 2) {
            p113o3.r.J(i8 == 78 && bArr.length == 8);
            return;
        }
        if (b8 == 3) {
            p113o3.r.J(i8 == 0);
            return;
        }
        if (b8 != 4) {
            return;
        }
        if (i8 != 75 || bArr.length != 1 || ((b9 = bArr[0]) != 0 && b9 != 1)) {
            z7 = false;
        }
        p113o3.r.J(z7);
    }

    @Override // com.google.android.gms.internal.ads.K9
    public final /* synthetic */ void b(A8 a8) {
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && Gu.class == obj.getClass()) {
            Gu gu = (Gu) obj;
            if (this.f13651G.equals(gu.f13651G) && Arrays.equals(this.f13652H, gu.f13652H) && this.f13653I == gu.f13653I && this.f13654J == gu.f13654J) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((Arrays.hashCode(this.f13652H) + ((this.f13651G.hashCode() + 527) * 31)) * 31) + this.f13653I) * 31) + this.f13654J;
    }

    /* JADX WARN: Code duplicated, block: B:25:0x008a  */
    /* JADX WARN: Code duplicated, block: B:28:0x0094 A[LOOP:0: B:26:0x0091->B:28:0x0094, LOOP_END] */
    public final String toString() {
        String string;
        StringBuilder sb;
        String str = this.f13651G;
        int i8 = 0;
        byte[] bArr = this.f13652H;
        int i9 = this.f13654J;
        if (i9 != 0) {
            if (i9 == 1) {
                int i10 = Et.f13234a;
                string = new String(bArr, StandardCharsets.UTF_8);
            } else if (i9 == 23) {
                string = String.valueOf(Float.intBitsToFloat(Cw.l1(bArr)));
            } else if (i9 == 67) {
                string = String.valueOf(Cw.l1(bArr));
            } else if (i9 == 75) {
                string = String.valueOf(bArr[0] & 255);
            } else if (i9 != 78) {
                int length = bArr.length;
                sb = new StringBuilder(length + length);
                while (i8 < bArr.length) {
                    sb.append(Character.forDigit((bArr[i8] >> 4) & 15, 16));
                    sb.append(Character.forDigit(bArr[i8] & 15, 16));
                    i8++;
                }
                string = sb.toString();
            } else {
                string = String.valueOf(new C1534jr(bArr).F());
            }
        } else if (str.equals("editable.tracks.map")) {
            StringBuilder sbO = com.google.protobuf.U2.o("track types = ");
            byte b8 = bArr[1];
            ArrayList arrayList = new ArrayList();
            while (i8 < b8) {
                arrayList.add(Integer.valueOf(bArr[i8 + 2]));
                i8++;
            }
            a7.b.t(sbO, arrayList.iterator(), ",");
            string = sbO.toString();
        } else {
            int length2 = bArr.length;
            sb = new StringBuilder(length2 + length2);
            while (i8 < bArr.length) {
                sb.append(Character.forDigit((bArr[i8] >> 4) & 15, 16));
                sb.append(Character.forDigit(bArr[i8] & 15, 16));
                i8++;
            }
            string = sb.toString();
        }
        return com.google.protobuf.U2.m("mdta: key=", str, ", value=", string);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        parcel.writeString(this.f13651G);
        parcel.writeByteArray(this.f13652H);
        parcel.writeInt(this.f13653I);
        parcel.writeInt(this.f13654J);
    }

    public Gu(String str, byte[] bArr, int i8, int i9) {
        a(i9, str, bArr);
        this.f13651G = str;
        this.f13652H = bArr;
        this.f13653I = i8;
        this.f13654J = i9;
    }
}
