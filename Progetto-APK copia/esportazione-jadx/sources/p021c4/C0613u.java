package p021c4;

import J3.v;
import M3.a;
import android.os.Parcel;
import android.os.Parcelable;
import com.bumptech.glide.c;
import com.google.protobuf.U2;

/* JADX INFO: renamed from: c4.u, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0613u extends a {
    public static final Parcelable.Creator<C0613u> CREATOR = new v(9);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final String f11371G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final C0611t f11372H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final String f11373I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final long f11374J;

    public C0613u(C0613u c0613u, long j8) {
        c.h(c0613u);
        this.f11371G = c0613u.f11371G;
        this.f11372H = c0613u.f11372H;
        this.f11373I = c0613u.f11373I;
        this.f11374J = j8;
    }

    public final String toString() {
        String strValueOf = String.valueOf(this.f11372H);
        StringBuilder sb = new StringBuilder("origin=");
        sb.append(this.f11373I);
        sb.append(",name=");
        return U2.n(sb, this.f11371G, ",params=", strValueOf);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        v.a(this, parcel, i8);
    }

    public C0613u(String str, C0611t c0611t, String str2, long j8) {
        this.f11371G = str;
        this.f11372H = c0611t;
        this.f11373I = str2;
        this.f11374J = j8;
    }
}
