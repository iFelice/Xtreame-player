package Y;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public final class O implements Parcelable {
    public static final Parcelable.Creator<O> CREATOR = new p016c.a(8);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final String f7763G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final String f7764H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final boolean f7765I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final int f7766J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final int f7767K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final String f7768L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final boolean f7769M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final boolean f7770N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final boolean f7771O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final Bundle f7772P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public final boolean f7773Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public final int f7774R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public Bundle f7775S;

    public O(AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s) {
        this.f7763G = abstractComponentCallbacksC0406s.getClass().getName();
        this.f7764H = abstractComponentCallbacksC0406s.f7936L;
        this.f7765I = abstractComponentCallbacksC0406s.f7944T;
        this.f7766J = abstractComponentCallbacksC0406s.f7953c0;
        this.f7767K = abstractComponentCallbacksC0406s.f7954d0;
        this.f7768L = abstractComponentCallbacksC0406s.f7955e0;
        this.f7769M = abstractComponentCallbacksC0406s.f7958h0;
        this.f7770N = abstractComponentCallbacksC0406s.f7943S;
        this.f7771O = abstractComponentCallbacksC0406s.f7957g0;
        this.f7772P = abstractComponentCallbacksC0406s.f7937M;
        this.f7773Q = abstractComponentCallbacksC0406s.f7956f0;
        this.f7774R = abstractComponentCallbacksC0406s.f7970t0.ordinal();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentState{");
        sb.append(this.f7763G);
        sb.append(" (");
        sb.append(this.f7764H);
        sb.append(")}:");
        if (this.f7765I) {
            sb.append(" fromLayout");
        }
        int i8 = this.f7767K;
        if (i8 != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(i8));
        }
        String str = this.f7768L;
        if (str != null && !str.isEmpty()) {
            sb.append(" tag=");
            sb.append(str);
        }
        if (this.f7769M) {
            sb.append(" retainInstance");
        }
        if (this.f7770N) {
            sb.append(" removing");
        }
        if (this.f7771O) {
            sb.append(" detached");
        }
        if (this.f7773Q) {
            sb.append(" hidden");
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        parcel.writeString(this.f7763G);
        parcel.writeString(this.f7764H);
        parcel.writeInt(this.f7765I ? 1 : 0);
        parcel.writeInt(this.f7766J);
        parcel.writeInt(this.f7767K);
        parcel.writeString(this.f7768L);
        parcel.writeInt(this.f7769M ? 1 : 0);
        parcel.writeInt(this.f7770N ? 1 : 0);
        parcel.writeInt(this.f7771O ? 1 : 0);
        parcel.writeBundle(this.f7772P);
        parcel.writeInt(this.f7773Q ? 1 : 0);
        parcel.writeBundle(this.f7775S);
        parcel.writeInt(this.f7774R);
    }

    public O(Parcel parcel) {
        this.f7763G = parcel.readString();
        this.f7764H = parcel.readString();
        this.f7765I = parcel.readInt() != 0;
        this.f7766J = parcel.readInt();
        this.f7767K = parcel.readInt();
        this.f7768L = parcel.readString();
        this.f7769M = parcel.readInt() != 0;
        this.f7770N = parcel.readInt() != 0;
        this.f7771O = parcel.readInt() != 0;
        this.f7772P = parcel.readBundle();
        this.f7773Q = parcel.readInt() != 0;
        this.f7775S = parcel.readBundle();
        this.f7774R = parcel.readInt();
    }
}
