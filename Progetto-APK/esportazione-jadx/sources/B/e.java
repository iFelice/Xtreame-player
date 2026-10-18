package B;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import p086l.m1;

/* JADX INFO: loaded from: classes.dex */
public final class e extends S.b {
    public static final Parcelable.Creator<e> CREATOR = new m1(1);

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public SparseArray f675I;

    public e(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        int i8 = parcel.readInt();
        int[] iArr = new int[i8];
        parcel.readIntArray(iArr);
        Parcelable[] parcelableArray = parcel.readParcelableArray(classLoader);
        this.f675I = new SparseArray(i8);
        for (int i9 = 0; i9 < i8; i9++) {
            this.f675I.append(iArr[i9], parcelableArray[i9]);
        }
    }

    @Override // S.b, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        super.writeToParcel(parcel, i8);
        SparseArray sparseArray = this.f675I;
        int size = sparseArray != null ? sparseArray.size() : 0;
        parcel.writeInt(size);
        int[] iArr = new int[size];
        Parcelable[] parcelableArr = new Parcelable[size];
        for (int i9 = 0; i9 < size; i9++) {
            iArr[i9] = this.f675I.keyAt(i9);
            parcelableArr[i9] = (Parcelable) this.f675I.valueAt(i9);
        }
        parcel.writeIntArray(iArr);
        parcel.writeParcelableArray(parcelableArr, i8);
    }
}
