package p021c4;

import J3.v;
import M3.a;
import android.os.Parcel;
import android.os.Parcelable;
import com.bumptech.glide.c;
import p039f.AbstractC2987b;

/* JADX INFO: renamed from: c4.f, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0578f extends a {
    public static final Parcelable.Creator<C0578f> CREATOR = new v(6);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public String f11160G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public String f11161H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public F1 f11162I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public long f11163J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public boolean f11164K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public String f11165L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final C0613u f11166M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public long f11167N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public C0613u f11168O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final long f11169P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public final C0613u f11170Q;

    public C0578f(C0578f c0578f) {
        c.h(c0578f);
        this.f11160G = c0578f.f11160G;
        this.f11161H = c0578f.f11161H;
        this.f11162I = c0578f.f11162I;
        this.f11163J = c0578f.f11163J;
        this.f11164K = c0578f.f11164K;
        this.f11165L = c0578f.f11165L;
        this.f11166M = c0578f.f11166M;
        this.f11167N = c0578f.f11167N;
        this.f11168O = c0578f.f11168O;
        this.f11169P = c0578f.f11169P;
        this.f11170Q = c0578f.f11170Q;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.Q(parcel, 2, this.f11160G);
        AbstractC2987b.Q(parcel, 3, this.f11161H);
        AbstractC2987b.P(parcel, 4, this.f11162I, i8);
        long j8 = this.f11163J;
        AbstractC2987b.v0(parcel, 5, 8);
        parcel.writeLong(j8);
        boolean z7 = this.f11164K;
        AbstractC2987b.v0(parcel, 6, 4);
        parcel.writeInt(z7 ? 1 : 0);
        AbstractC2987b.Q(parcel, 7, this.f11165L);
        AbstractC2987b.P(parcel, 8, this.f11166M, i8);
        long j9 = this.f11167N;
        AbstractC2987b.v0(parcel, 9, 8);
        parcel.writeLong(j9);
        AbstractC2987b.P(parcel, 10, this.f11168O, i8);
        AbstractC2987b.v0(parcel, 11, 8);
        parcel.writeLong(this.f11169P);
        AbstractC2987b.P(parcel, 12, this.f11170Q, i8);
        AbstractC2987b.p0(iX, parcel);
    }

    public C0578f(String str, String str2, F1 f8, long j8, boolean z7, String str3, C0613u c0613u, long j9, C0613u c0613u2, long j10, C0613u c0613u3) {
        this.f11160G = str;
        this.f11161H = str2;
        this.f11162I = f8;
        this.f11163J = j8;
        this.f11164K = z7;
        this.f11165L = str3;
        this.f11166M = c0613u;
        this.f11167N = j9;
        this.f11168O = c0613u2;
        this.f11169P = j10;
        this.f11170Q = c0613u3;
    }
}
