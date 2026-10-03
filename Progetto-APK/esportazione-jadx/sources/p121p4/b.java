package p121p4;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import p000a.r;
import p060h4.a;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int[] f28225a = {R.attr.colorPrimary};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int[] f28226b = {R.attr.colorSecondary};

    public static void a(Context context, int[] iArr, String str) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(iArr);
        boolean zHasValue = typedArrayObtainStyledAttributes.hasValue(0);
        typedArrayObtainStyledAttributes.recycle();
        if (!zHasValue) {
            throw new IllegalArgumentException(r.g("The style on this component requires your app theme to be ", str, " (or a descendant)."));
        }
    }

    public static TypedArray b(Context context, AttributeSet attributeSet, int[] iArr, int i8, int i9, int... iArr2) {
        int[] iArr3 = a.f25415h;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr3, i8, i9);
        boolean z7 = true;
        boolean z8 = typedArrayObtainStyledAttributes.getBoolean(1, false);
        typedArrayObtainStyledAttributes.recycle();
        if (z8) {
            a(context, f28226b, "Theme.MaterialComponents");
        }
        a(context, f28225a, "Theme.AppCompat");
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, iArr3, i8, i9);
        if (typedArrayObtainStyledAttributes2.getBoolean(2, false)) {
            if (iArr2.length != 0) {
                TypedArray typedArrayObtainStyledAttributes3 = context.obtainStyledAttributes(attributeSet, iArr, i8, i9);
                int length = iArr2.length;
                int i10 = 0;
                while (true) {
                    if (i10 >= length) {
                        typedArrayObtainStyledAttributes3.recycle();
                        break;
                    }
                    if (typedArrayObtainStyledAttributes3.getResourceId(iArr2[i10], -1) == -1) {
                        typedArrayObtainStyledAttributes3.recycle();
                        z7 = false;
                        break;
                    }
                    i10++;
                }
            } else if (typedArrayObtainStyledAttributes2.getResourceId(0, -1) == -1) {
                z7 = false;
                break;
            }
            typedArrayObtainStyledAttributes2.recycle();
            if (!z7) {
                throw new IllegalArgumentException("This component requires that you specify a valid TextAppearance attribute. Update your app theme to inherit from Theme.MaterialComponents (or a descendant).");
            }
        } else {
            typedArrayObtainStyledAttributes2.recycle();
        }
        return context.obtainStyledAttributes(attributeSet, iArr, i8, i9);
    }
}
