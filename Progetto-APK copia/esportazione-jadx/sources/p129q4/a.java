package p129q4;

import android.R;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.util.StateSet;

/* JADX INFO: loaded from: classes.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int[] f29575a = {R.attr.state_pressed};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int[] f29576b = {R.attr.state_selected, R.attr.state_pressed};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int[] f29577c = {R.attr.state_selected};

    public static ColorStateList a(ColorStateList colorStateList) {
        int[][] iArr = new int[2][];
        int[] iArr2 = new int[2];
        iArr[0] = f29577c;
        int colorForState = colorStateList != null ? colorStateList.getColorForState(f29576b, colorStateList.getDefaultColor()) : 0;
        int iMin = Math.min(Color.alpha(colorForState) * 2, 255);
        ThreadLocal threadLocal = G.a.f3273a;
        if (iMin < 0 || iMin > 255) {
            throw new IllegalArgumentException("alpha must be between 0 and 255.");
        }
        iArr2[0] = (colorForState & 16777215) | (iMin << 24);
        iArr[1] = StateSet.NOTHING;
        int colorForState2 = colorStateList != null ? colorStateList.getColorForState(f29575a, colorStateList.getDefaultColor()) : 0;
        int iMin2 = Math.min(Color.alpha(colorForState2) * 2, 255);
        if (iMin2 < 0 || iMin2 > 255) {
            throw new IllegalArgumentException("alpha must be between 0 and 255.");
        }
        iArr2[1] = (iMin2 << 24) | (colorForState2 & 16777215);
        return new ColorStateList(iArr, iArr2);
    }
}
