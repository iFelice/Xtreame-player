package B;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import java.lang.reflect.Constructor;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class d extends ViewGroup.MarginLayoutParams {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public a f659a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f660b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f661c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f662d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f663e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f664f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f665g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f666h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f667i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f668j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public View f669k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public View f670l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f671m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f672n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f673o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final Rect f674p;

    public d() {
        super(-2, -2);
        this.f660b = false;
        this.f661c = 0;
        this.f662d = 0;
        this.f663e = -1;
        this.f664f = -1;
        this.f665g = 0;
        this.f666h = 0;
        this.f674p = new Rect();
    }

    public final boolean a(int i8) {
        if (i8 == 0) {
            return this.f672n;
        }
        if (i8 != 1) {
            return false;
        }
        return this.f673o;
    }

    public d(Context context, AttributeSet attributeSet) {
        a aVar;
        super(context, attributeSet);
        this.f660b = false;
        this.f661c = 0;
        this.f662d = 0;
        this.f663e = -1;
        this.f664f = -1;
        this.f665g = 0;
        this.f666h = 0;
        this.f674p = new Rect();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, A.a.f1b);
        this.f661c = typedArrayObtainStyledAttributes.getInteger(0, 0);
        this.f664f = typedArrayObtainStyledAttributes.getResourceId(1, -1);
        this.f662d = typedArrayObtainStyledAttributes.getInteger(2, 0);
        this.f663e = typedArrayObtainStyledAttributes.getInteger(6, -1);
        this.f665g = typedArrayObtainStyledAttributes.getInt(5, 0);
        this.f666h = typedArrayObtainStyledAttributes.getInt(4, 0);
        boolean zHasValue = typedArrayObtainStyledAttributes.hasValue(3);
        this.f660b = zHasValue;
        if (zHasValue) {
            String string = typedArrayObtainStyledAttributes.getString(3);
            String str = CoordinatorLayout.f8966b0;
            if (TextUtils.isEmpty(string)) {
                aVar = null;
            } else {
                if (string.startsWith(".")) {
                    string = context.getPackageName() + string;
                } else if (string.indexOf(46) < 0) {
                    String str2 = CoordinatorLayout.f8966b0;
                    if (!TextUtils.isEmpty(str2)) {
                        string = str2 + '.' + string;
                    }
                }
                try {
                    ThreadLocal threadLocal = CoordinatorLayout.f8968d0;
                    Map map = (Map) threadLocal.get();
                    if (map == null) {
                        map = new HashMap();
                        threadLocal.set(map);
                    }
                    Constructor<?> constructor = (Constructor) map.get(string);
                    if (constructor == null) {
                        constructor = context.getClassLoader().loadClass(string).getConstructor(CoordinatorLayout.f8967c0);
                        constructor.setAccessible(true);
                        map.put(string, constructor);
                    }
                    aVar = (a) constructor.newInstance(context, attributeSet);
                } catch (Exception e8) {
                    throw new RuntimeException(p148t.a.c("Could not inflate Behavior subclass ", string), e8);
                }
            }
            this.f659a = aVar;
        }
        typedArrayObtainStyledAttributes.recycle();
        a aVar2 = this.f659a;
        if (aVar2 != null) {
            aVar2.c(this);
        }
    }

    public d(d dVar) {
        super((ViewGroup.MarginLayoutParams) dVar);
        this.f660b = false;
        this.f661c = 0;
        this.f662d = 0;
        this.f663e = -1;
        this.f664f = -1;
        this.f665g = 0;
        this.f666h = 0;
        this.f674p = new Rect();
    }

    public d(ViewGroup.MarginLayoutParams marginLayoutParams) {
        super(marginLayoutParams);
        this.f660b = false;
        this.f661c = 0;
        this.f662d = 0;
        this.f663e = -1;
        this.f664f = -1;
        this.f665g = 0;
        this.f666h = 0;
        this.f674p = new Rect();
    }

    public d(ViewGroup.LayoutParams layoutParams) {
        super(layoutParams);
        this.f660b = false;
        this.f661c = 0;
        this.f662d = 0;
        this.f663e = -1;
        this.f664f = -1;
        this.f665g = 0;
        this.f666h = 0;
        this.f674p = new Rect();
    }
}
