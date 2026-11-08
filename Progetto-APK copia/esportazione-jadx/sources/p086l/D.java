package p086l;

import J6.r;
import L5.b;
import L5.d;
import L5.f;
import N.N;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.leanback.widget.C0494u;
import androidx.leanback.widget.Y;
import java.util.List;
import org.videolan.libvlc.media.MediaPlayer;
import p031e.a;
import p096m2.u;

/* JADX INFO: loaded from: classes.dex */
public final class D {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f26080a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f26081b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f26082c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Object f26083d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Object f26084e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Object f26085f;

    public D(int i8) {
        this.f26080a = i8;
        if (i8 == 2) {
            this.f26081b = 0;
            Y y7 = new Y();
            this.f26082c = y7;
            Y y8 = new Y();
            this.f26083d = y8;
            this.f26084e = y8;
            this.f26085f = y7;
            return;
        }
        if (i8 == 4) {
            this.f26081b = -1;
            return;
        }
        this.f26081b = 0;
        C0494u c0494u = new C0494u(1);
        this.f26082c = c0494u;
        C0494u c0494u2 = new C0494u(0);
        this.f26083d = c0494u2;
        this.f26084e = c0494u2;
        this.f26085f = c0494u;
    }

    public final void a() {
        Drawable drawable = ((ImageView) this.f26082c).getDrawable();
        if (drawable != null) {
            AbstractC3054t0.a(drawable);
        }
        if (drawable != null) {
            int i8 = Build.VERSION.SDK_INT;
            if (i8 <= 21 ? i8 == 21 : ((e1) this.f26083d) != null) {
                if (((e1) this.f26085f) == null) {
                    this.f26085f = new e1(0);
                }
                e1 e1Var = (e1) this.f26085f;
                e1Var.f26253d = null;
                e1Var.f26252c = false;
                e1Var.f26254e = null;
                e1Var.f26251b = false;
                ColorStateList imageTintList = ((ImageView) this.f26082c).getImageTintList();
                if (imageTintList != null) {
                    e1Var.f26252c = true;
                    e1Var.f26253d = imageTintList;
                }
                PorterDuff.Mode imageTintMode = ((ImageView) this.f26082c).getImageTintMode();
                if (imageTintMode != null) {
                    e1Var.f26251b = true;
                    e1Var.f26254e = imageTintMode;
                }
                if (e1Var.f26252c || e1Var.f26251b) {
                    C3063y.d(drawable, e1Var, ((ImageView) this.f26082c).getDrawableState());
                    return;
                }
            }
            e1 e1Var2 = (e1) this.f26084e;
            if (e1Var2 != null) {
                C3063y.d(drawable, e1Var2, ((ImageView) this.f26082c).getDrawableState());
                return;
            }
            e1 e1Var3 = (e1) this.f26083d;
            if (e1Var3 != null) {
                C3063y.d(drawable, e1Var3, ((ImageView) this.f26082c).getDrawableState());
            }
        }
    }

    public final void b(AttributeSet attributeSet, int i8) {
        Drawable drawable;
        Drawable drawable2;
        int iZ;
        Context context = ((ImageView) this.f26082c).getContext();
        int[] iArr = a.f24691f;
        u uVarJ = u.J(context, attributeSet, iArr, i8, 0);
        ImageView imageView = (ImageView) this.f26082c;
        N.l(imageView, imageView.getContext(), iArr, attributeSet, (TypedArray) uVarJ.f27279I, i8);
        try {
            Drawable drawable3 = ((ImageView) this.f26082c).getDrawable();
            if (drawable3 == null && (iZ = uVarJ.z(1, -1)) != -1 && (drawable3 = r.h(((ImageView) this.f26082c).getContext(), iZ)) != null) {
                ((ImageView) this.f26082c).setImageDrawable(drawable3);
            }
            if (drawable3 != null) {
                AbstractC3054t0.a(drawable3);
            }
            if (uVarJ.F(2)) {
                ImageView imageView2 = (ImageView) this.f26082c;
                ColorStateList colorStateListO = uVarJ.o(2);
                int i9 = Build.VERSION.SDK_INT;
                imageView2.setImageTintList(colorStateListO);
                if (i9 == 21 && (drawable2 = imageView2.getDrawable()) != null && imageView2.getImageTintList() != null) {
                    if (drawable2.isStateful()) {
                        drawable2.setState(imageView2.getDrawableState());
                    }
                    imageView2.setImageDrawable(drawable2);
                }
            }
            if (uVarJ.F(3)) {
                ImageView imageView3 = (ImageView) this.f26082c;
                PorterDuff.Mode modeC = AbstractC3054t0.c(uVarJ.x(3, -1), null);
                int i10 = Build.VERSION.SDK_INT;
                imageView3.setImageTintMode(modeC);
                if (i10 == 21 && (drawable = imageView3.getDrawable()) != null && imageView3.getImageTintList() != null) {
                    if (drawable.isStateful()) {
                        drawable.setState(imageView3.getDrawableState());
                    }
                    imageView3.setImageDrawable(drawable);
                }
            }
        } finally {
            uVarJ.P();
        }
    }

    public final void c(int i8) {
        if (i8 != 0) {
            Drawable drawableH = r.h(((ImageView) this.f26082c).getContext(), i8);
            if (drawableH != null) {
                AbstractC3054t0.a(drawableH);
            }
            ((ImageView) this.f26082c).setImageDrawable(drawableH);
        } else {
            ((ImageView) this.f26082c).setImageDrawable(null);
        }
        a();
    }

    public final void d(int i8) {
        switch (this.f26080a) {
            case 1:
                this.f26081b = i8;
                if (i8 != 0) {
                    this.f26084e = (C0494u) this.f26082c;
                    this.f26085f = (C0494u) this.f26083d;
                } else {
                    this.f26084e = (C0494u) this.f26083d;
                    this.f26085f = (C0494u) this.f26082c;
                }
                break;
            default:
                this.f26081b = i8;
                if (i8 != 0) {
                    this.f26084e = (Y) this.f26082c;
                    this.f26085f = (Y) this.f26083d;
                } else {
                    this.f26084e = (Y) this.f26083d;
                    this.f26085f = (Y) this.f26082c;
                }
                break;
        }
    }

    public final void e(ColorStateList colorStateList) {
        if (((e1) this.f26084e) == null) {
            this.f26084e = new e1(0);
        }
        e1 e1Var = (e1) this.f26084e;
        e1Var.f26253d = colorStateList;
        e1Var.f26252c = true;
        a();
    }

    public final void f(PorterDuff.Mode mode) {
        if (((e1) this.f26084e) == null) {
            this.f26084e = new e1(0);
        }
        e1 e1Var = (e1) this.f26084e;
        e1Var.f26254e = mode;
        e1Var.f26251b = true;
        a();
    }

    public final String toString() {
        switch (this.f26080a) {
            case 2:
                return "horizontal=" + ((Y) this.f26083d) + "; vertical=" + ((Y) this.f26082c);
            case 3:
            default:
                return super.toString();
            case 4:
                StringBuilder sb = new StringBuilder(MediaPlayer.MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK);
                sb.append("<<\n mode: ");
                sb.append((d) this.f26082c);
                sb.append("\n ecLevel: ");
                sb.append((b) this.f26083d);
                sb.append("\n version: ");
                sb.append((f) this.f26084e);
                sb.append("\n maskPattern: ");
                sb.append(this.f26081b);
                if (((V.b) this.f26085f) == null) {
                    sb.append("\n matrix: null\n");
                } else {
                    sb.append("\n matrix:\n");
                    sb.append((V.b) this.f26085f);
                }
                sb.append(">>\n");
                return sb.toString();
        }
    }

    public D(F0.u uVar) {
        this.f26080a = 3;
        List list = uVar.f3092b;
        int size = list.size();
        this.f26082c = (String[]) uVar.f3091a.toArray(new String[size]);
        int size2 = list.size();
        double[] dArr = new double[size2];
        for (int i8 = 0; i8 < size2; i8++) {
            dArr[i8] = ((Double) list.get(i8)).doubleValue();
        }
        this.f26083d = dArr;
        List list2 = uVar.f3093c;
        int size3 = list2.size();
        double[] dArr2 = new double[size3];
        for (int i9 = 0; i9 < size3; i9++) {
            dArr2[i9] = ((Double) list2.get(i9)).doubleValue();
        }
        this.f26084e = dArr2;
        this.f26085f = new int[size];
        this.f26081b = 0;
    }

    public D(ImageView imageView) {
        this.f26080a = 0;
        this.f26081b = 0;
        this.f26082c = imageView;
    }
}
