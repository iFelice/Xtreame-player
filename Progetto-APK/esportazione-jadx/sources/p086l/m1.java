package p086l;

import B.e;
import O1.V;
import S.b;
import android.os.Parcel;
import android.os.Parcelable;
import p003a2.g;
import p076j4.a;

/* JADX INFO: loaded from: classes.dex */
public final class m1 implements Parcelable.ClassLoaderCreator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f26294a;

    public /* synthetic */ m1(int i8) {
        this.f26294a = i8;
    }

    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        switch (this.f26294a) {
            case 0:
                return new n1(parcel, null);
            case 1:
                return new e(parcel, null);
            case 2:
                if (parcel.readParcelable(null) == null) {
                    return b.f6315H;
                }
                throw new IllegalStateException("superState must be null");
            case 3:
                return new V(parcel, null);
            case 4:
                return new g(parcel, null);
            case 5:
                return new a(parcel, null);
            default:
                return new p098m4.b(parcel, (ClassLoader) null);
        }
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i8) {
        switch (this.f26294a) {
            case 0:
                return new n1[i8];
            case 1:
                return new e[i8];
            case 2:
                return new b[i8];
            case 3:
                return new V[i8];
            case 4:
                return new g[i8];
            case 5:
                return new a[i8];
            default:
                return new p098m4.b[i8];
        }
    }

    @Override // android.os.Parcelable.ClassLoaderCreator
    public final Object createFromParcel(Parcel parcel, ClassLoader classLoader) {
        switch (this.f26294a) {
            case 0:
                return new n1(parcel, classLoader);
            case 1:
                return new e(parcel, classLoader);
            case 2:
                if (parcel.readParcelable(classLoader) == null) {
                    return b.f6315H;
                }
                throw new IllegalStateException("superState must be null");
            case 3:
                return new V(parcel, classLoader);
            case 4:
                return new g(parcel, classLoader);
            case 5:
                return new a(parcel, classLoader);
            default:
                return new p098m4.b(parcel, classLoader);
        }
    }
}
