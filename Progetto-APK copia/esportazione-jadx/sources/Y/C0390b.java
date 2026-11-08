package Y;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.ArrayList;

/* JADX INFO: renamed from: Y.b, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0390b implements Parcelable {
    public static final Parcelable.Creator<C0390b> CREATOR = new p016c.a(4);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int[] f7835G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final ArrayList f7836H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final int[] f7837I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final int[] f7838J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final int f7839K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final String f7840L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final int f7841M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final int f7842N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final CharSequence f7843O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final int f7844P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public final CharSequence f7845Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public final ArrayList f7846R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public final ArrayList f7847S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public final boolean f7848T;

    public C0390b(C0389a c0389a) {
        int size = c0389a.f7813c.size();
        this.f7835G = new int[size * 6];
        if (!c0389a.f7819i) {
            throw new IllegalStateException("Not on back stack");
        }
        this.f7836H = new ArrayList(size);
        this.f7837I = new int[size];
        this.f7838J = new int[size];
        int i8 = 0;
        for (int i9 = 0; i9 < size; i9++) {
            Q q7 = (Q) c0389a.f7813c.get(i9);
            int i10 = i8 + 1;
            this.f7835G[i8] = q7.f7781a;
            ArrayList arrayList = this.f7836H;
            AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s = q7.f7782b;
            arrayList.add(abstractComponentCallbacksC0406s != null ? abstractComponentCallbacksC0406s.f7936L : null);
            int[] iArr = this.f7835G;
            iArr[i10] = q7.f7783c ? 1 : 0;
            iArr[i8 + 2] = q7.f7784d;
            iArr[i8 + 3] = q7.f7785e;
            int i11 = i8 + 5;
            iArr[i8 + 4] = q7.f7786f;
            i8 += 6;
            iArr[i11] = q7.f7787g;
            this.f7837I[i9] = q7.f7788h.ordinal();
            this.f7838J[i9] = q7.f7789i.ordinal();
        }
        this.f7839K = c0389a.f7818h;
        this.f7840L = c0389a.f7820j;
        this.f7841M = c0389a.f7830t;
        this.f7842N = c0389a.f7821k;
        this.f7843O = c0389a.f7822l;
        this.f7844P = c0389a.f7823m;
        this.f7845Q = c0389a.f7824n;
        this.f7846R = c0389a.f7825o;
        this.f7847S = c0389a.f7826p;
        this.f7848T = c0389a.f7827q;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        parcel.writeIntArray(this.f7835G);
        parcel.writeStringList(this.f7836H);
        parcel.writeIntArray(this.f7837I);
        parcel.writeIntArray(this.f7838J);
        parcel.writeInt(this.f7839K);
        parcel.writeString(this.f7840L);
        parcel.writeInt(this.f7841M);
        parcel.writeInt(this.f7842N);
        TextUtils.writeToParcel(this.f7843O, parcel, 0);
        parcel.writeInt(this.f7844P);
        TextUtils.writeToParcel(this.f7845Q, parcel, 0);
        parcel.writeStringList(this.f7846R);
        parcel.writeStringList(this.f7847S);
        parcel.writeInt(this.f7848T ? 1 : 0);
    }

    public C0390b(Parcel parcel) {
        this.f7835G = parcel.createIntArray();
        this.f7836H = parcel.createStringArrayList();
        this.f7837I = parcel.createIntArray();
        this.f7838J = parcel.createIntArray();
        this.f7839K = parcel.readInt();
        this.f7840L = parcel.readString();
        this.f7841M = parcel.readInt();
        this.f7842N = parcel.readInt();
        Parcelable.Creator creator = TextUtils.CHAR_SEQUENCE_CREATOR;
        this.f7843O = (CharSequence) creator.createFromParcel(parcel);
        this.f7844P = parcel.readInt();
        this.f7845Q = (CharSequence) creator.createFromParcel(parcel);
        this.f7846R = parcel.createStringArrayList();
        this.f7847S = parcel.createStringArrayList();
        this.f7848T = parcel.readInt() != 0;
    }
}
