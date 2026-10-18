package p193z;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.util.Arrays;
import java.util.HashMap;
import p170w.a;

/* JADX INFO: loaded from: classes.dex */
public abstract class c extends View {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public int[] f31472G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public int f31473H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public Context f31474I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public a f31475J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public String f31476K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public String f31477L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public HashMap f31478M;

    /* JADX WARN: Code duplicated, block: B:27:0x004d  */
    public final void a(String str) {
        Context context;
        int identifier;
        HashMap map;
        if (str == null || str.length() == 0 || (context = this.f31474I) == null) {
            return;
        }
        String strTrim = str.trim();
        ConstraintLayout constraintLayout = getParent() instanceof ConstraintLayout ? (ConstraintLayout) getParent() : null;
        if (!isInEditMode() || constraintLayout == null) {
            identifier = 0;
        } else {
            Object obj = ((strTrim instanceof String) && (map = constraintLayout.f8962S) != null && map.containsKey(strTrim)) ? constraintLayout.f8962S.get(strTrim) : null;
            if (obj instanceof Integer) {
                identifier = ((Integer) obj).intValue();
            } else {
                identifier = 0;
            }
        }
        if (identifier == 0 && constraintLayout != null) {
            identifier = d(constraintLayout, strTrim);
        }
        if (identifier == 0) {
            try {
                identifier = q.class.getField(strTrim).getInt(null);
            } catch (Exception unused) {
            }
        }
        if (identifier == 0) {
            identifier = context.getResources().getIdentifier(strTrim, "id", context.getPackageName());
        }
        if (identifier != 0) {
            this.f31478M.put(Integer.valueOf(identifier), strTrim);
            b(identifier);
        } else {
            Log.w("ConstraintHelper", "Could not find id of \"" + strTrim + "\"");
        }
    }

    public final void b(int i8) {
        if (i8 == getId()) {
            return;
        }
        int i9 = this.f31473H + 1;
        int[] iArr = this.f31472G;
        if (i9 > iArr.length) {
            this.f31472G = Arrays.copyOf(iArr, iArr.length * 2);
        }
        int[] iArr2 = this.f31472G;
        int i10 = this.f31473H;
        iArr2[i10] = i8;
        this.f31473H = i10 + 1;
    }

    public final void c(String str) {
        if (str == null || str.length() == 0 || this.f31474I == null) {
            return;
        }
        String strTrim = str.trim();
        ConstraintLayout constraintLayout = getParent() instanceof ConstraintLayout ? (ConstraintLayout) getParent() : null;
        if (constraintLayout == null) {
            Log.w("ConstraintHelper", "Parent not a ConstraintLayout");
            return;
        }
        int childCount = constraintLayout.getChildCount();
        for (int i8 = 0; i8 < childCount; i8++) {
            View childAt = constraintLayout.getChildAt(i8);
            ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
            if ((layoutParams instanceof e) && strTrim.equals(((e) layoutParams).f31504Y)) {
                if (childAt.getId() == -1) {
                    Log.w("ConstraintHelper", "to use ConstraintTag view " + childAt.getClass().getSimpleName() + " must have an ID");
                } else {
                    b(childAt.getId());
                }
            }
        }
    }

    public final int d(ConstraintLayout constraintLayout, String str) {
        Resources resources;
        String resourceEntryName;
        if (str == null || constraintLayout == null || (resources = this.f31474I.getResources()) == null) {
            return 0;
        }
        int childCount = constraintLayout.getChildCount();
        for (int i8 = 0; i8 < childCount; i8++) {
            View childAt = constraintLayout.getChildAt(i8);
            if (childAt.getId() != -1) {
                try {
                    resourceEntryName = resources.getResourceEntryName(childAt.getId());
                } catch (Resources.NotFoundException unused) {
                    resourceEntryName = null;
                }
                if (str.equals(resourceEntryName)) {
                    return childAt.getId();
                }
            }
        }
        return 0;
    }

    public final void e() {
        if (this.f31475J == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams instanceof e) {
            ((e) layoutParams).f31537p0 = this.f31475J;
        }
    }

    public int[] getReferencedIds() {
        return Arrays.copyOf(this.f31472G, this.f31473H);
    }

    @Override // android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        String str = this.f31476K;
        if (str != null) {
            setIds(str);
        }
        String str2 = this.f31477L;
        if (str2 != null) {
            setReferenceTags(str2);
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i8, int i9) {
        setMeasuredDimension(0, 0);
    }

    public void setIds(String str) {
        this.f31476K = str;
        if (str == null) {
            return;
        }
        int i8 = 0;
        this.f31473H = 0;
        while (true) {
            int iIndexOf = str.indexOf(44, i8);
            if (iIndexOf == -1) {
                a(str.substring(i8));
                return;
            } else {
                a(str.substring(i8, iIndexOf));
                i8 = iIndexOf + 1;
            }
        }
    }

    public void setReferenceTags(String str) {
        this.f31477L = str;
        if (str == null) {
            return;
        }
        int i8 = 0;
        this.f31473H = 0;
        while (true) {
            int iIndexOf = str.indexOf(44, i8);
            if (iIndexOf == -1) {
                c(str.substring(i8));
                return;
            } else {
                c(str.substring(i8, iIndexOf));
                i8 = iIndexOf + 1;
            }
        }
    }

    public void setReferencedIds(int[] iArr) {
        this.f31476K = null;
        this.f31473H = 0;
        for (int i8 : iArr) {
            b(i8);
        }
    }

    @Override // android.view.View
    public final void setTag(int i8, Object obj) {
        super.setTag(i8, obj);
        if (obj == null && this.f31476K == null) {
            b(i8);
        }
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
    }
}
