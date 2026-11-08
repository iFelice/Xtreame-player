package p016c;

import android.content.Intent;
import android.content.IntentSender;
import android.os.Parcel;
import android.os.Parcelable;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class h implements Parcelable {
    public static final Parcelable.Creator<h> CREATOR = new a(1);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final IntentSender f10558G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Intent f10559H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final int f10560I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final int f10561J;

    public h(IntentSender intentSender, Intent intent, int i8, int i9) {
        q0.h(intentSender, "intentSender");
        this.f10558G = intentSender;
        this.f10559H = intent;
        this.f10560I = i8;
        this.f10561J = i9;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        q0.h(parcel, "dest");
        parcel.writeParcelable(this.f10558G, i8);
        parcel.writeParcelable(this.f10559H, i8);
        parcel.writeInt(this.f10560I);
        parcel.writeInt(this.f10561J);
    }
}
