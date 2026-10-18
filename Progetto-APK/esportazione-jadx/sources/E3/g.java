package E3;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.cast.framework.media.MediaIntentReceiver;
import com.google.android.gms.internal.cast.E;
import com.google.android.gms.internal.cast.G;
import com.google.android.gms.internal.cast.K;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import p039f.AbstractC2987b;
import p090l3.f1;

/* JADX INFO: loaded from: classes.dex */
public final class g extends M3.a {
    public static final Parcelable.Creator<g> CREATOR;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public static final K f2865o0;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public static final int[] f2866p0;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final ArrayList f2867G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final int[] f2868H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final long f2869I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final String f2870J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final int f2871K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final int f2872L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final int f2873M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final int f2874N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final int f2875O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final int f2876P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public final int f2877Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public final int f2878R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public final int f2879S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public final int f2880T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public final int f2881U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public final int f2882V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public final int f2883W;

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public final int f2884X;

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public final int f2885Y;

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public final int f2886Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public final int f2887a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public final int f2888b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public final int f2889c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public final int f2890d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public final int f2891e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public final int f2892f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public final int f2893g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public final int f2894h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public final int f2895i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public final int f2896j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public final int f2897k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public final t f2898l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public final boolean f2899m0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public final boolean f2900n0;

    static {
        E e8 = G.f22466H;
        Object[] objArr = {MediaIntentReceiver.ACTION_TOGGLE_PLAYBACK, MediaIntentReceiver.ACTION_STOP_CASTING};
        for (int i8 = 0; i8 < 2; i8++) {
            if (objArr[i8] == null) {
                throw new NullPointerException(p000a.r.f("at index ", i8));
            }
        }
        f2865o0 = G.o(2, objArr);
        f2866p0 = new int[]{0, 1};
        CREATOR = new f1(13);
    }

    public g(List list, int[] iArr, long j8, String str, int i8, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19, int i20, int i21, int i22, int i23, int i24, int i25, int i26, int i27, int i28, int i29, int i30, int i31, int i32, int i33, int i34, IBinder iBinder, boolean z7, boolean z8) {
        t tVar;
        this.f2867G = new ArrayList(list);
        this.f2868H = Arrays.copyOf(iArr, iArr.length);
        this.f2869I = j8;
        this.f2870J = str;
        this.f2871K = i8;
        this.f2872L = i9;
        this.f2873M = i10;
        this.f2874N = i11;
        this.f2875O = i12;
        this.f2876P = i13;
        this.f2877Q = i14;
        this.f2878R = i15;
        this.f2879S = i16;
        this.f2880T = i17;
        this.f2881U = i18;
        this.f2882V = i19;
        this.f2883W = i20;
        this.f2884X = i21;
        this.f2885Y = i22;
        this.f2886Z = i23;
        this.f2887a0 = i24;
        this.f2888b0 = i25;
        this.f2889c0 = i26;
        this.f2890d0 = i27;
        this.f2891e0 = i28;
        this.f2892f0 = i29;
        this.f2893g0 = i30;
        this.f2894h0 = i31;
        this.f2895i0 = i32;
        this.f2896j0 = i33;
        this.f2897k0 = i34;
        this.f2899m0 = z7;
        this.f2900n0 = z8;
        if (iBinder == null) {
            tVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.cast.framework.media.INotificationActionsProvider");
            tVar = iInterfaceQueryLocalInterface instanceof t ? (t) iInterfaceQueryLocalInterface : new t(iBinder, "com.google.android.gms.cast.framework.media.INotificationActionsProvider", 2);
        }
        this.f2898l0 = tVar;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.S(parcel, 2, this.f2867G);
        int[] iArr = this.f2868H;
        AbstractC2987b.M(parcel, 3, Arrays.copyOf(iArr, iArr.length));
        AbstractC2987b.v0(parcel, 4, 8);
        parcel.writeLong(this.f2869I);
        AbstractC2987b.Q(parcel, 5, this.f2870J);
        AbstractC2987b.v0(parcel, 6, 4);
        parcel.writeInt(this.f2871K);
        AbstractC2987b.v0(parcel, 7, 4);
        parcel.writeInt(this.f2872L);
        AbstractC2987b.v0(parcel, 8, 4);
        parcel.writeInt(this.f2873M);
        AbstractC2987b.v0(parcel, 9, 4);
        parcel.writeInt(this.f2874N);
        AbstractC2987b.v0(parcel, 10, 4);
        parcel.writeInt(this.f2875O);
        AbstractC2987b.v0(parcel, 11, 4);
        parcel.writeInt(this.f2876P);
        AbstractC2987b.v0(parcel, 12, 4);
        parcel.writeInt(this.f2877Q);
        AbstractC2987b.v0(parcel, 13, 4);
        parcel.writeInt(this.f2878R);
        AbstractC2987b.v0(parcel, 14, 4);
        parcel.writeInt(this.f2879S);
        AbstractC2987b.v0(parcel, 15, 4);
        parcel.writeInt(this.f2880T);
        AbstractC2987b.v0(parcel, 16, 4);
        parcel.writeInt(this.f2881U);
        AbstractC2987b.v0(parcel, 17, 4);
        parcel.writeInt(this.f2882V);
        AbstractC2987b.v0(parcel, 18, 4);
        parcel.writeInt(this.f2883W);
        AbstractC2987b.v0(parcel, 19, 4);
        parcel.writeInt(this.f2884X);
        AbstractC2987b.v0(parcel, 20, 4);
        parcel.writeInt(this.f2885Y);
        AbstractC2987b.v0(parcel, 21, 4);
        parcel.writeInt(this.f2886Z);
        AbstractC2987b.v0(parcel, 22, 4);
        parcel.writeInt(this.f2887a0);
        AbstractC2987b.v0(parcel, 23, 4);
        parcel.writeInt(this.f2888b0);
        AbstractC2987b.v0(parcel, 24, 4);
        parcel.writeInt(this.f2889c0);
        AbstractC2987b.v0(parcel, 25, 4);
        parcel.writeInt(this.f2890d0);
        AbstractC2987b.v0(parcel, 26, 4);
        parcel.writeInt(this.f2891e0);
        AbstractC2987b.v0(parcel, 27, 4);
        parcel.writeInt(this.f2892f0);
        AbstractC2987b.v0(parcel, 28, 4);
        parcel.writeInt(this.f2893g0);
        AbstractC2987b.v0(parcel, 29, 4);
        parcel.writeInt(this.f2894h0);
        AbstractC2987b.v0(parcel, 30, 4);
        parcel.writeInt(this.f2895i0);
        AbstractC2987b.v0(parcel, 31, 4);
        parcel.writeInt(this.f2896j0);
        AbstractC2987b.v0(parcel, 32, 4);
        parcel.writeInt(this.f2897k0);
        t tVar = this.f2898l0;
        AbstractC2987b.L(parcel, 33, tVar == null ? null : tVar.f21992H);
        AbstractC2987b.v0(parcel, 34, 4);
        parcel.writeInt(this.f2899m0 ? 1 : 0);
        AbstractC2987b.v0(parcel, 35, 4);
        parcel.writeInt(this.f2900n0 ? 1 : 0);
        AbstractC2987b.p0(iX, parcel);
    }
}
