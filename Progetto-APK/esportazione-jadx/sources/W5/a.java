package W5;

import J3.v;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class a implements Parcelable {
    public static final Parcelable.Creator<a> CREATOR = new v(23);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public String f7492G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public List f7493H;

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        return "ExpandableGroup{title='" + this.f7492G + "', items=" + this.f7493H + '}';
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        parcel.writeString(this.f7492G);
        List list = this.f7493H;
        if (list == null) {
            parcel.writeByte((byte) 0);
            parcel.writeInt(0);
            return;
        }
        parcel.writeByte((byte) 1);
        parcel.writeInt(list.size());
        if (list.size() > 0) {
            parcel.writeSerializable(((Parcelable) list.get(0)).getClass());
        }
        parcel.writeList(list);
    }
}
