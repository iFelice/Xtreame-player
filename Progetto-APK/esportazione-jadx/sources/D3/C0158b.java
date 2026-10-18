package D3;

import C3.C0109i;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import okhttp3.HttpUrl;
import p039f.AbstractC2987b;
import p090l3.f1;

/* JADX INFO: renamed from: D3.b, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0158b extends M3.a {
    public static final Parcelable.Creator<C0158b> CREATOR;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public static final E f2349W = new E(false);

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public static final F f2350X = new F(0);

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public static final E3.b f2351Y;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final String f2352G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final ArrayList f2353H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final boolean f2354I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final C0109i f2355J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final boolean f2356K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final E3.b f2357L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final boolean f2358M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final double f2359N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final boolean f2360O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final boolean f2361P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public final boolean f2362Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public final List f2363R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public final boolean f2364S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public final boolean f2365T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public final E f2366U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public F f2367V;

    static {
        new E3.g(E3.g.f2865o0, E3.g.f2866p0, 10000L, null, com.bumptech.glide.c.x("smallIconDrawableResId"), com.bumptech.glide.c.x("stopLiveStreamDrawableResId"), com.bumptech.glide.c.x("pauseDrawableResId"), com.bumptech.glide.c.x("playDrawableResId"), com.bumptech.glide.c.x("skipNextDrawableResId"), com.bumptech.glide.c.x("skipPrevDrawableResId"), com.bumptech.glide.c.x("forwardDrawableResId"), com.bumptech.glide.c.x("forward10DrawableResId"), com.bumptech.glide.c.x("forward30DrawableResId"), com.bumptech.glide.c.x("rewindDrawableResId"), com.bumptech.glide.c.x("rewind10DrawableResId"), com.bumptech.glide.c.x("rewind30DrawableResId"), com.bumptech.glide.c.x("disconnectDrawableResId"), com.bumptech.glide.c.x("notificationImageSizeDimenResId"), com.bumptech.glide.c.x("castingToDeviceStringResId"), com.bumptech.glide.c.x("stopLiveStreamStringResId"), com.bumptech.glide.c.x("pauseStringResId"), com.bumptech.glide.c.x("playStringResId"), com.bumptech.glide.c.x("skipNextStringResId"), com.bumptech.glide.c.x("skipPrevStringResId"), com.bumptech.glide.c.x("forwardStringResId"), com.bumptech.glide.c.x("forward10StringResId"), com.bumptech.glide.c.x("forward30StringResId"), com.bumptech.glide.c.x("rewindStringResId"), com.bumptech.glide.c.x("rewind10StringResId"), com.bumptech.glide.c.x("rewind30StringResId"), com.bumptech.glide.c.x("disconnectStringResId"), null, false, false);
        f2351Y = new E3.b("com.google.android.gms.cast.framework.media.MediaIntentReceiver", null, null, null, false, false);
        CREATOR = new f1(18);
    }

    public C0158b(String str, ArrayList arrayList, boolean z7, C0109i c0109i, boolean z8, E3.b bVar, boolean z9, double d6, boolean z10, boolean z11, boolean z12, ArrayList arrayList2, boolean z13, boolean z14, E e8, F f8) {
        this.f2352G = true == TextUtils.isEmpty(str) ? HttpUrl.FRAGMENT_ENCODE_SET : str;
        int size = arrayList == null ? 0 : arrayList.size();
        ArrayList arrayList3 = new ArrayList(size);
        this.f2353H = arrayList3;
        if (size > 0) {
            arrayList3.addAll(arrayList);
        }
        this.f2354I = z7;
        this.f2355J = c0109i == null ? new C0109i() : c0109i;
        this.f2356K = z8;
        this.f2357L = bVar;
        this.f2358M = z9;
        this.f2359N = d6;
        this.f2360O = z10;
        this.f2361P = z11;
        this.f2362Q = z12;
        this.f2363R = arrayList2;
        this.f2364S = z13;
        this.f2365T = z14;
        this.f2366U = e8;
        this.f2367V = f8;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.Q(parcel, 2, this.f2352G);
        AbstractC2987b.S(parcel, 3, Collections.unmodifiableList(this.f2353H));
        AbstractC2987b.v0(parcel, 4, 4);
        parcel.writeInt(this.f2354I ? 1 : 0);
        AbstractC2987b.P(parcel, 5, this.f2355J, i8);
        AbstractC2987b.v0(parcel, 6, 4);
        parcel.writeInt(this.f2356K ? 1 : 0);
        AbstractC2987b.P(parcel, 7, this.f2357L, i8);
        AbstractC2987b.v0(parcel, 8, 4);
        parcel.writeInt(this.f2358M ? 1 : 0);
        AbstractC2987b.v0(parcel, 9, 8);
        parcel.writeDouble(this.f2359N);
        AbstractC2987b.v0(parcel, 10, 4);
        parcel.writeInt(this.f2360O ? 1 : 0);
        AbstractC2987b.v0(parcel, 11, 4);
        parcel.writeInt(this.f2361P ? 1 : 0);
        AbstractC2987b.v0(parcel, 12, 4);
        parcel.writeInt(this.f2362Q ? 1 : 0);
        AbstractC2987b.S(parcel, 13, Collections.unmodifiableList(this.f2363R));
        AbstractC2987b.v0(parcel, 14, 4);
        parcel.writeInt(this.f2364S ? 1 : 0);
        AbstractC2987b.v0(parcel, 15, 4);
        parcel.writeInt(0);
        AbstractC2987b.v0(parcel, 16, 4);
        parcel.writeInt(this.f2365T ? 1 : 0);
        AbstractC2987b.P(parcel, 17, this.f2366U, i8);
        AbstractC2987b.P(parcel, 18, this.f2367V, i8);
        AbstractC2987b.p0(iX, parcel);
    }
}
