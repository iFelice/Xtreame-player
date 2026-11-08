package p076j4;

import S.b;
import android.os.Parcel;
import android.os.Parcelable;
import p086l.m1;

/* JADX INFO: loaded from: classes.dex */
public final class a extends b {
    public static final Parcelable.Creator<a> CREATOR = new m1(5);

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final int f25708I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final float f25709J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final boolean f25710K;

    public a(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.f25708I = parcel.readInt();
        this.f25709J = parcel.readFloat();
        this.f25710K = parcel.readByte() != 0;
    }

    @Override // S.b, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        super.writeToParcel(parcel, i8);
        parcel.writeInt(this.f25708I);
        parcel.writeFloat(this.f25709J);
        parcel.writeByte(this.f25710K ? (byte) 1 : (byte) 0);
    }
}
