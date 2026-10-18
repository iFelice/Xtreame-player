package p016c;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public final class b implements Parcelable {
    public static final Parcelable.Creator<b> CREATOR = new a(0);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f10541G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Intent f10542H;

    public b(int i8, Intent intent) {
        this.f10541G = i8;
        this.f10542H = intent;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        String strValueOf;
        StringBuilder sb = new StringBuilder("ActivityResult{resultCode=");
        int i8 = this.f10541G;
        if (i8 != -1) {
            strValueOf = i8 != 0 ? String.valueOf(i8) : "RESULT_CANCELED";
        } else {
            strValueOf = "RESULT_OK";
        }
        sb.append(strValueOf);
        sb.append(", data=");
        sb.append(this.f10542H);
        sb.append('}');
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        parcel.writeInt(this.f10541G);
        Intent intent = this.f10542H;
        parcel.writeInt(intent == null ? 0 : 1);
        if (intent != null) {
            intent.writeToParcel(parcel, i8);
        }
    }

    public b(Parcel parcel) {
        this.f10541G = parcel.readInt();
        this.f10542H = parcel.readInt() == 0 ? null : (Intent) Intent.CREATOR.createFromParcel(parcel);
    }
}
