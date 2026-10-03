package p090l3;

import M3.a;
import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import p039f.AbstractC2987b;
import p043f3.g;
import p120p3.d;

/* JADX INFO: loaded from: classes.dex */
public final class d1 extends a {
    public static final Parcelable.Creator<d1> CREATOR = new p016c.a(29);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final String f26548G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final int f26549H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final int f26550I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final boolean f26551J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final int f26552K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final int f26553L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final d1[] f26554M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final boolean f26555N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final boolean f26556O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public boolean f26557P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public final boolean f26558Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public final boolean f26559R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public final boolean f26560S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public final boolean f26561T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public final boolean f26562U;

    public d1() {
        this("interstitial_mb", 0, 0, true, 0, 0, null, false, false, false, false, false, false, false, false);
    }

    public static d1 i() {
        return new d1("interstitial_mb", 0, 0, false, 0, 0, null, false, false, false, false, true, false, false, false);
    }

    public static d1 l() {
        return new d1("320x50_mb", 0, 0, false, 0, 0, null, true, false, false, false, false, false, false, false);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.Q(parcel, 2, this.f26548G);
        AbstractC2987b.v0(parcel, 3, 4);
        parcel.writeInt(this.f26549H);
        AbstractC2987b.v0(parcel, 4, 4);
        parcel.writeInt(this.f26550I);
        AbstractC2987b.v0(parcel, 5, 4);
        parcel.writeInt(this.f26551J ? 1 : 0);
        AbstractC2987b.v0(parcel, 6, 4);
        parcel.writeInt(this.f26552K);
        AbstractC2987b.v0(parcel, 7, 4);
        parcel.writeInt(this.f26553L);
        AbstractC2987b.T(parcel, 8, this.f26554M, i8);
        AbstractC2987b.v0(parcel, 9, 4);
        parcel.writeInt(this.f26555N ? 1 : 0);
        AbstractC2987b.v0(parcel, 10, 4);
        parcel.writeInt(this.f26556O ? 1 : 0);
        boolean z7 = this.f26557P;
        AbstractC2987b.v0(parcel, 11, 4);
        parcel.writeInt(z7 ? 1 : 0);
        AbstractC2987b.v0(parcel, 12, 4);
        parcel.writeInt(this.f26558Q ? 1 : 0);
        AbstractC2987b.v0(parcel, 13, 4);
        parcel.writeInt(this.f26559R ? 1 : 0);
        AbstractC2987b.v0(parcel, 14, 4);
        parcel.writeInt(this.f26560S ? 1 : 0);
        AbstractC2987b.v0(parcel, 15, 4);
        parcel.writeInt(this.f26561T ? 1 : 0);
        AbstractC2987b.v0(parcel, 16, 4);
        parcel.writeInt(this.f26562U ? 1 : 0);
        AbstractC2987b.p0(iX, parcel);
    }

    public d1(Context context, g gVar) {
        this(context, new g[]{gVar});
    }

    /* JADX WARN: Code duplicated, block: B:41:0x00d0  */
    public d1(Context context, g[] gVarArr) {
        int i8;
        int i9;
        String str;
        int dimensionPixelSize;
        g gVar = gVarArr[0];
        this.f26551J = false;
        int i10 = gVar.f25174a;
        int i11 = gVar.f25175b;
        boolean z7 = i10 == -3 && i11 == -4;
        this.f26556O = z7;
        this.f26560S = false;
        boolean z8 = gVar.f25177d;
        this.f26561T = z8;
        boolean z9 = gVar.f25179f;
        this.f26562U = z9;
        if (z7) {
            g gVar2 = g.f25164h;
            this.f26552K = gVar2.f25174a;
            i11 = gVar2.f25175b;
            this.f26549H = i11;
        } else if (z8) {
            this.f26552K = i10;
            i11 = gVar.f25178e;
            this.f26549H = i11;
        } else if (z9) {
            this.f26552K = i10;
            i11 = gVar.f25180g;
            this.f26549H = i11;
        } else {
            this.f26552K = i10;
            this.f26549H = i11;
        }
        boolean z10 = this.f26552K == -1;
        boolean z11 = i11 == -2;
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        if (z10) {
            d dVar = C3097p.f26618f.f26619a;
            if (context.getResources().getConfiguration().orientation == 2) {
                DisplayMetrics displayMetrics2 = context.getResources().getDisplayMetrics();
                if (((int) (displayMetrics2.heightPixels / displayMetrics2.density)) < 600) {
                    DisplayMetrics displayMetrics3 = context.getResources().getDisplayMetrics();
                    WindowManager windowManager = (WindowManager) context.getSystemService("window");
                    if (windowManager != null) {
                        Display defaultDisplay = windowManager.getDefaultDisplay();
                        defaultDisplay.getRealMetrics(displayMetrics3);
                        int i12 = displayMetrics3.heightPixels;
                        int i13 = displayMetrics3.widthPixels;
                        defaultDisplay.getMetrics(displayMetrics3);
                        int i14 = displayMetrics3.heightPixels;
                        int i15 = displayMetrics3.widthPixels;
                        if (i14 == i12 && i15 == i13) {
                            int i16 = displayMetrics.widthPixels;
                            int identifier = context.getResources().getIdentifier("navigation_bar_width", "dimen", "android");
                            dimensionPixelSize = i16 - (identifier > 0 ? context.getResources().getDimensionPixelSize(identifier) : 0);
                            this.f26553L = dimensionPixelSize;
                        } else {
                            dimensionPixelSize = displayMetrics.widthPixels;
                            this.f26553L = dimensionPixelSize;
                        }
                    } else {
                        dimensionPixelSize = displayMetrics.widthPixels;
                        this.f26553L = dimensionPixelSize;
                    }
                } else {
                    dimensionPixelSize = displayMetrics.widthPixels;
                    this.f26553L = dimensionPixelSize;
                }
            } else {
                dimensionPixelSize = displayMetrics.widthPixels;
                this.f26553L = dimensionPixelSize;
            }
            double d6 = dimensionPixelSize / displayMetrics.density;
            i8 = (int) d6;
            if (d6 - ((double) i8) >= 0.01d) {
                i8++;
            }
        } else {
            i8 = this.f26552K;
            d dVar2 = C3097p.f26618f.f26619a;
            this.f26553L = d.l(displayMetrics, i8);
        }
        if (z11) {
            int i17 = (int) (displayMetrics.heightPixels / displayMetrics.density);
            i9 = i17 <= 400 ? 32 : i17 <= 720 ? 50 : 90;
        } else {
            i9 = this.f26549H;
        }
        d dVar3 = C3097p.f26618f.f26619a;
        this.f26550I = d.l(displayMetrics, i9);
        if (!z10 && !z11) {
            if (z8 || z9) {
                str = this.f26552K + "x" + this.f26549H + "_as";
            } else if (!z7) {
                this.f26548G = gVar.f25176c;
            } else {
                str = "320x50_mb";
            }
            this.f26548G = str;
        } else {
            this.f26548G = i8 + "x" + i9 + "_as";
        }
        int length = gVarArr.length;
        if (length > 1) {
            this.f26554M = new d1[length];
            for (int i18 = 0; i18 < gVarArr.length; i18++) {
                this.f26554M[i18] = new d1(context, gVarArr[i18]);
            }
        } else {
            this.f26554M = null;
        }
        this.f26555N = false;
        this.f26557P = false;
    }

    public d1(String str, int i8, int i9, boolean z7, int i10, int i11, d1[] d1VarArr, boolean z8, boolean z9, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15) {
        this.f26548G = str;
        this.f26549H = i8;
        this.f26550I = i9;
        this.f26551J = z7;
        this.f26552K = i10;
        this.f26553L = i11;
        this.f26554M = d1VarArr;
        this.f26555N = z8;
        this.f26556O = z9;
        this.f26557P = z10;
        this.f26558Q = z11;
        this.f26559R = z12;
        this.f26560S = z13;
        this.f26561T = z14;
        this.f26562U = z15;
    }
}
