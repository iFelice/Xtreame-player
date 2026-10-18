package p105n3;

import M3.a;
import R3.b;
import android.content.Intent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import p039f.AbstractC2987b;
import p090l3.f1;

/* JADX INFO: loaded from: classes.dex */
public final class f extends a {
    public static final Parcelable.Creator<f> CREATOR = new f1(4);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final String f27494G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final String f27495H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final String f27496I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final String f27497J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final String f27498K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final String f27499L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final String f27500M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final Intent f27501N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final a f27502O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final boolean f27503P;

    public f(String str, String str2, String str3, String str4, String str5, String str6, String str7, Intent intent, IBinder iBinder, boolean z7) {
        this.f27494G = str;
        this.f27495H = str2;
        this.f27496I = str3;
        this.f27497J = str4;
        this.f27498K = str5;
        this.f27499L = str6;
        this.f27500M = str7;
        this.f27501N = intent;
        this.f27502O = (a) b.v0(b.j0(iBinder));
        this.f27503P = z7;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.Q(parcel, 2, this.f27494G);
        AbstractC2987b.Q(parcel, 3, this.f27495H);
        AbstractC2987b.Q(parcel, 4, this.f27496I);
        AbstractC2987b.Q(parcel, 5, this.f27497J);
        AbstractC2987b.Q(parcel, 6, this.f27498K);
        AbstractC2987b.Q(parcel, 7, this.f27499L);
        AbstractC2987b.Q(parcel, 8, this.f27500M);
        AbstractC2987b.P(parcel, 9, this.f27501N, i8);
        AbstractC2987b.L(parcel, 10, new b(this.f27502O));
        AbstractC2987b.v0(parcel, 11, 4);
        parcel.writeInt(this.f27503P ? 1 : 0);
        AbstractC2987b.p0(iX, parcel);
    }

    public f(Intent intent, a aVar) {
        this(null, null, null, null, null, null, null, intent, new b(aVar), false);
    }

    public f(String str, String str2, String str3, String str4, String str5, String str6, String str7, a aVar) {
        this(str, str2, str3, str4, str5, str6, str7, null, new b(aVar), false);
    }
}
