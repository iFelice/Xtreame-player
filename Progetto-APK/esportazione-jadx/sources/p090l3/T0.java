package p090l3;

import M3.a;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Objects;
import p039f.AbstractC2987b;

/* JADX INFO: loaded from: classes.dex */
public final class T0 extends a {
    public static final Parcelable.Creator<T0> CREATOR = new p016c.a(24);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final String f26500G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final int f26501H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final b1 f26502I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final int f26503J;

    public T0(String str, int i8, b1 b1Var, int i9) {
        this.f26500G = str;
        this.f26501H = i8;
        this.f26502I = b1Var;
        this.f26503J = i9;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof T0) {
            T0 t7 = (T0) obj;
            if (this.f26500G.equals(t7.f26500G) && this.f26501H == t7.f26501H && this.f26502I.i(t7.f26502I)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(this.f26500G, Integer.valueOf(this.f26501H), this.f26502I);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.Q(parcel, 1, this.f26500G);
        AbstractC2987b.v0(parcel, 2, 4);
        parcel.writeInt(this.f26501H);
        AbstractC2987b.P(parcel, 3, this.f26502I, i8);
        AbstractC2987b.v0(parcel, 4, 4);
        parcel.writeInt(this.f26503J);
        AbstractC2987b.p0(iX, parcel);
    }
}
