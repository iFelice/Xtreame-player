package Q;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;
import p000a.r;

/* JADX INFO: loaded from: classes.dex */
public final class h extends View.BaseSavedState {
    public static final Parcelable.Creator<h> CREATOR = new p016c.a(3);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public int f5998G;

    public final String toString() {
        StringBuilder sb = new StringBuilder("HorizontalScrollView.SavedState{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" scrollPosition=");
        return r.h(sb, this.f5998G, "}");
    }

    @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        super.writeToParcel(parcel, i8);
        parcel.writeInt(this.f5998G);
    }
}
